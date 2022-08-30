	
building_Android_proj(){

 	# bubblewrap_gen_apk
	# the build questions
	# ? Do you want to create one now? Yes
	# ? First and Last names (eg: John Doe): j
	# ? Organizational Unit (eg: Engineering Dept): j
	# ? Organization (eg: Company Name): j
	# ? Country (2 letter code): us
	# ? Password for the Key Store: ******
	# ? Password for the Key: ******
	# keytool Signing Key created successfully

    # assume the project already exist
	echo "I'm building Android project for you"
	bubblewrap build
}
