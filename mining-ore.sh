#!/bin/bash

while true; do
    ore --rpc https://api.vip.mainnet-beta.solana.com// --keypair ~/.config/solana/id.json --priority-fee 1 mine --threads 4

    if [ $? -eq 0 ]; then
        break
    else
        echo "Terjadi kesalahan. Menunggu sebentar sebelum mencoba lagi..."
        sleep 5
    fi
done
