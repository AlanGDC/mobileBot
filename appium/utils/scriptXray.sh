#!/usr/bin/env bash
project="QS"
testplankey="QS-53"
echo "Create XRAY Token"
curlauth=$(curl -H "Content-Type: application/json" -X POST  \
--data '{"client_id": "A9AEE530BDCD46199BA5D302F3DAC7B9","client_secret": "fd2bae35571633c335c4481b6202cd9c754cd5bd13b7a7a00e8ed64e4d990354"}' \
--url "https://xray.cloud.xpand-it.com/api/v1/authenticate")
echo "Cut '' from response"
token=$(echo "$curlauth" |cut -d '"' -f 2)
echo "Searching file with this pattern SERENITY-JUNIT*.xml under present directory"
find './reports/junit-report' -name *.xml | 
while read -r line; do
	echo "$line"
	echo "Upload run results to jira"
	esponse=$(curl --url "https://xray.cloud.xpand-it.com/api/v1/import/execution/junit?projectKey=BDSD&testPlanKey=BDSD-9645" \
	-H "Authorization: Bearer ${token}"  \
	--data @"$line" -X POST -H "Content-Type: application/xml")
	echo $esponse | grep id


done
echo "Empty Serenity Report Folder"