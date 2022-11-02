mkdir -p ~/gallery;
cd ~/gallery
if [ $? -eq 0 ]; then
    rm -rf *;
    unzip ../gallery.zip;
fi
