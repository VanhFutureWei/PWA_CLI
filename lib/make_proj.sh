

make_Android_proj(){
	echo "create Android project..."

	building_Android_proj

}

bubblewrap_gen_apk(){
# echo "Generating Android project..."
	arg1=$1
	echo "the manifest is: $arg1"

	echo "generating Android project for you"
	# bubblewrap init --manifest="$arg1"

bubblewrap init --manifest="https://sadchonks.com/manifest.json" 
	# echo "Please answer a few question"
	# reading_config_file

	# bubblewrap init --manifest $arg1
	# result=$(bubblewrap init --manifest $arg1)
	# echo "result from running bubblewrap is: $result"
	# building_Android_proj
}

building_Android_proj(){

 	bubblewrap_gen_apk
	# the build questions
	# ? Do you want to create one now? Yes
	# ? First and Last names (eg: John Doe): j
	# ? Organizational Unit (eg: Engineering Dept): j
	# ? Organization (eg: Company Name): j
	# ? Country (2 letter code): us
	# ? Password for the Key Store: ******
	# ? Password for the Key: ******
	# keytool Signing Key created successfully

	echo "I'm building Android project for you"
	bubblewrap build
}
