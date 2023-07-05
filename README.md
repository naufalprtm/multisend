# multisend
tutorial multisend-bulksend

Tutorial Bulksend-Distributor menggunakan remix IDE

Catatan
Sebelum menggunakan ini gunakan wallet baru dan gunakan saldo testnet

-----------------------------------------------------------------------------------------------------
Instal Metamask.
Pastikan Anda memiliki akun di MetaMask yang memiliki saldo token.
Pastikan MetaMask Anda diarahkan ke jaringan yang ingin Anda gunakan.

pilih [bulksend.sol](https://github.com/naufalprtm/multisend/blob/main/bulksend.sol) / [distributor.sol](https://github.com/naufalprtm/multisend/blob/main/distributor.sol) dan deploy menggunakan https://remix.ethereum.org/
pilih versi solidity sesuai dengan contract di pengaturan
pergi ke >DEPLOY & RUN TRANSACTIONS

![Screenshot 2023-07-03 082511](https://github.com/naufalprtm/multisend/assets/103091329/53c91705-a3d7-4210-8310-1f09e2b97139)



ENVIRONMENT  "pilih injected provider"
lalu pilih bulksend-bulksend.sol pada bagian contract

![Screenshot 2023-07-03 082511](https://github.com/naufalprtm/multisend/assets/103091329/8555a6d7-dc6d-4672-aa80-47dcc2bb2897)

DEPLOY

# 1 contoh(bulksend.sol):
ubah address token yang telah kalian deploy /atau gunakan alamat token yang sudah tersedia

   
    address token = 0x2f3A40A3db8a7e3D09B0adfEfbCe4f6F81927557;
    uint tokenAmount = 5000 * 1e6; // 5000 tokens
    uint ethAmount = 5000000000000000; // 0.005 ETH
    
Selanjutnya kita menentukan jumlah token, perhatikan bahwa kita menggunakan USDC di sini yang memiliki 6 desimal sedangkan sebagian besar token memiliki 18. Jika Anda menggunakan sesuatu yang standar, Anda akan menggunakan kode ini:


    uint tokenAmount = 5000 * 1e18; // 5000 tokens

atau gunakan GWEI converter untuk menetukan jumlahz

# 2 Transfer token ke alamat bulksend

Sebelum menjalankan fungsi sendOutFunds() kita perlu mengirimkan token untuk dikirim. lakukan ini dengan mentransfer token ERC20 atau token kalian ke alamat kontrak yang baru digunakan.


Jika ingin melakukan spam transaksi bisa menggunkan address spam.txt


tidak bertanggung jawab atas kerugian dari transaksi yang dihasilkan oleh MultiSender. Beberapa pustaka JavaScript yang mendasari dan alat Ethereum yang digunakan sedang dalam pengembangan aktif. Situs web dan smart contract telah diuji secara menyeluruh, selalu ada kemungkinan terjadi sesuatu yang tidak terduga yang mengakibatkan hilangnya Ethereum dan/atau token.
