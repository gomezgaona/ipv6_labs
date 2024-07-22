# The routers' zip file must be in the directory as the script
zipfile_name=$1;
unzip -qq $zipfile_name;

# now a folder with the same name as the file must be extracted in this folder, the folder must contain subfolders for each router
cd ${zipfile_name::-4}

for router_folder in */;do
	cp -r $router_folder /etc/routers
done

# delete the generated files
cd ..
rm -rf ${zipfile_name::-4};
