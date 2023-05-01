#!/bin/sh
echo Starting deploying...
echo Connecting..
ssh -t admin@bejker.xyz "screen -X -S portfolio quit;
screen -R portfolio -md bash -c \"
neofetch
cd ~/portfolio;
git pull;
/home/admin/.cargo/bin/cargo run --release;
\""

