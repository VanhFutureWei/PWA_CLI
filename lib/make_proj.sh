

make_Android_proj(){
	echo "create Android project..."

	bubblewrap_gen_apk
}

bubblewrap_gen_apk(){
# echo "Generating Android project..."
	arg1=$1
	echo "the manifest is: $arg1"

	echo "generating Android project for you"

	#bubblewrap init --manifest="$arg1"

	 bubblewrap init --manifest="https://sadchonks.com/manifest.json" 

}

