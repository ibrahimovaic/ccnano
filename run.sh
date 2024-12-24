#!/bin/bash
wget https://github.com/ibrahimovaic/ccnano/releases/download/nanocc/nanocc1.tar.gz

tar xf nanocc1.tar.gz
# Konfigurasi
CCMINER_PATH="/nanocc"  # Ganti dengan path ke ccminer Anda
POOL_URL="stratum+tcp://ap.luckpool.net:3960"  # Ganti dengan URL pool Anda
WALLET_ADDRESS="R9TerbTL2JYte1N1CQ6Mqt14k32FBinaua "  # Ganti dengan alamat wallet VerusCoin Anda
WORKER_NAME="pc1"  # Ganti dengan nama worker Anda

# Jalankan ccminer
$CCMINER_PATH -algo verushash -coin vrsc -pool1 $POOL_URL -wallet $WALLET_ADDRESS -rigName $WORKER_NAME -password x

# Periksa jika ccminer gagal dijalankan
if [ $? -ne 0 ]; then
    echo "ccminer gagal dijalankan. Periksa konfigurasi Anda."
    exit 1
fi
