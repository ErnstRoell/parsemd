data=$(cat ./docs/test.md | sed -z 's/\n/\\n/g')
json={\"data\":\"$data\"}
echo $json
curl "https://parsemd.azurewebsites.net/api/parse-md?code=AlFkf0xP564jWIx9X1aMphBE/Tx9lADvS5lNRNoj5VnGpehU4euHKQ==" \
-H "Accept: application/json" \
-H "Content-Type:application/json" \
--data "$json"
