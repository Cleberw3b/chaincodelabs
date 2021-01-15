# Define user home path
home_path=/home/$USER

# Define bitcoin path
bitcoin_path=$home_path/bitcoin

# Go to dev folder
cd $home_path

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

# Install Berkley DB 
./contrib/install_db4.sh $PWD

# Generate build files
./autogen.sh

# Configure build
./configure BDB_LIBS="-L$PWD/db4/lib -ldb_cxx-4.8" BDB_CFLAGS="-I$PWD/db4/include" --without-gui


# Compile and Build Bitcoin Core
make

#END
