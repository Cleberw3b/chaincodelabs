# Define user home path
home_path=/home/$USER

# Define bitcoin path
bitcoin_path=$home_path/bitcoin

# Copy the test to bitcoin folder
yes | cp -rf example_test.py $bitcoin_path/

# Go to bitcoin folder
cd $bitcoin_path

# Run example test
test/functional/test_runner.py example_test.py
