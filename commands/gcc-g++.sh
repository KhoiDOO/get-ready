# install specific version of gcc & g++
sudo apt-get install gcc-x g++-x # x is the version (i.e. 12)

# update alternatives after installing
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-x 60 # x is version & 60 is priority mode (higher means more prioritized)
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-x 60 

# remove all
sudo update-alternatives --remove-all gcc 
sudo update-alternatives --remove-all g++
