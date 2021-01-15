# Define user home path
home_path=/home/$USER

# Define bitcoin path
bitcoin_path=/home/$USER/bitcoin

# Go to dev folder
cd $user_path

# Clone bitcoin repository
# git clone https://github.com/bitcoin/bitcoin.git

# Go to bitcoin folder
cd $bitcoin_path

# Go to bitcoin depends folder
cd $bitcoin_path/depends

# Build for arm-linux distribution without QT
make HOST=arm-linux-gnueabihf NO_QT=1

# Go to bitcoin folder
cd $bitcoin_path

# Generate build files
./autogen.sh

# COnfigure to use arm-linux with backward compatibility
./configure --prefix=$PWD/depends/arm-linux-gnueabihf --enable-glibc-back-compat --enable-reduce-exports LDFLAGS=-static-libstdc++ --disable-wallet --without-gui

# Compile and Build Bitcoin Core
make

#END
