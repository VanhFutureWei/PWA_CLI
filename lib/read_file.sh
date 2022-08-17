MODULE="readfile"
TITLE=${MODULE^^}

function reading_file_from_cli(){	
	# read -p "Enter file name: "  filename
	read -p "Enter file name: "  filename
	while read line
	do
		echo "currentline is: $line"
		done < $filename


}


function reading_config_from_file(){

	file='/mnt/d/Dev/PWA/pwa_cli/PWA_CLI/default_ans.txt'
	i=1
	while read line; do
		# echo "Line #: $i : $line"
		domain="$line"
		i=$((i+1))
		# echo "value: $domain"
		echo "Line #: $i and value = $domain"
		continue

		# echo "Line #: $i : $line"
		# URL_path="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# app_name="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# app_id="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# start_ver="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# dispay_mode="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# orientation="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# status_bar_color="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# splash_color="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# icon_url="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# mask_icon_url="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# app_shortcut="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# mono_icon_url="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# play_billing="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# geoloc_per="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# keystore_loc="$line"
		# i=$((i+1))
		# keystore_name="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# pwd_keystore="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# pwd_key="$line"
		# i=$((i+1))
		# echo "Line #: $i : $line"
		# i=$((i+1))

		done < $file
}

reading_config_file(){
	echo "reading data from default config file"
	echo "setting up JDK and SDK"
}

# reading_config_from_file
# reading_file_from_cli
# reading_config_from_file