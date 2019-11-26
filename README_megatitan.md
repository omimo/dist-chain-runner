conda activate nips

cd ~/dist-chain-runner

python rr_target_f.py 5000 apps/doSWrapper.py storage/doS/


## Runs the server to listen on port 5000
## when a  new request comes in, it will parse the info and call the doSWrapper.py script
## it will save the input and output files in the storage/doS folder
