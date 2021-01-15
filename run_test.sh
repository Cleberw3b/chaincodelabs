# Define user home path
home_path=/home/$USER

# Define bitcoin path
bitcoin_path=/home/$USER/bitcoin

# Go to bitcoin folder
cd $bitcoin_path


# Run example test
test/functional/test_runner.py example_test.py

