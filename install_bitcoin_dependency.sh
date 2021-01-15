#BEGIN

# Prepare linux to build Bitcoin Core #

# Update apt-get refs
sudo apt-get update

# Upgrade packages in silent mode
sudo apt-get upgrade -yq

# Instal build requirements
sudo apt-get install -yq git \
                        build-essential \
                        libtool \
                        autotools-dev \
                        automake \
                        pkg-config \
                        bsdmainutils \
                        python3 \
                        python3-zmq \
                        libevent-dev \
                        libboost-system-dev \
                        libboost-filesystem-dev \
                        libboost-test-dev \
                        libboost-thread-dev \
                        ibsqlite3-dev \
                        libminiupnpc-dev \
                        libnatpmp-dev \
                        libzmq3-dev \
                        g++-arm-linux-gnueabihf \
                        curl


# Remove unused packages
sudo apt-get autoremove -yq

# Clean refs and temps
sudo apt-get autoclean

#END
