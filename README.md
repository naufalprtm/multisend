# multisend

Tutorial Bulksend-Distributor menggunakan remix IDE

-----------------------------------------------------------------------------------------------------
# Catatan
Sebelum menggunakan ini gunakan wallet baru dan gunakan saldo testnet
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
Install Metamask.
Pastikan Anda memiliki akun di MetaMask yang memiliki saldo token.
Pastikan MetaMask Anda diarahkan ke jaringan yang ingin Anda gunakan.

pilih [bulksend.sol](https://github.com/naufalprtm/multisend/blob/main/bulksend.sol) / [distributor.sol](https://github.com/naufalprtm/multisend/blob/main/distributor.sol) dan deploy menggunakan https://remix.ethereum.org/
pilih versi solidity sesuai dengan contract di pengaturan

# Compile

pilih

compile Bulksend.sol

![3](https://github.com/naufalprtm/multisend/assets/103091329/2e3ef572-831b-4819-bc13-a205747fe156)





pergi ke >DEPLOY & RUN TRANSACTIONS

ENVIRONMENT  "pilih injected provider"


![1](https://github.com/naufalprtm/multisend/assets/103091329/2be9f183-02f7-498d-9c11-f4de1430932b)






lalu pilih bulksend-bulksend.sol pada bagian contract



DEPLOY

# 1. contoh(bulksend.sol):
ubah address token yang telah kalian deploy /atau gunakan alamat token yang sudah tersedia

![7](https://github.com/naufalprtm/multisend/assets/103091329/0f52a779-aa94-4063-806a-6a4dc7d103ce)


![32](https://github.com/naufalprtm/multisend/assets/103091329/0ed3645e-80f7-47cd-afcf-66ab601fb78f)


   
    address token = 0x2f3A40A3db8a7e3D09B0adfEfbCe4f6F81927557;
    uint tokenAmount = 5000 * 1e6; // 5000 tokens
    uint ethAmount = 5000000000000000; // 0.005 ETH

    
  ![Screenshot 2023-07-05 085233](https://github.com/naufalprtm/multisend/assets/103091329/7687792c-a773-4817-93a8-705082a26661)
  
  
Selanjutnya kita menentukan jumlah token, perhatikan bahwa kita menggunakan USDC di sini yang memiliki 6 desimal sedangkan sebagian besar token memiliki 18. Jika Anda menggunakan sesuatu yang standar, Anda akan menggunakan kode ini:


    uint tokenAmount = 5000 * 1e18; // 5000 tokens

atau gunakan GWEI converter untuk menetukan jumlah
https://eth-converter.com/

menentukan jumlah ETH, cukup, yang setara dengan 0 ETH. Perhatikan bahwa kontrak ini mengirimkan ETH dan token sehingga Anda mungkin ingin menyesuaikannya dengan kebutuhan Anda.

    uint ethAmount = 0; // 0 ETH

# 2. Transfer token ke alamat bulksend

Sebelum menjalankan fungsi sendOutFunds() kita perlu mengirimkan token untuk dikirim. lakukan ini dengan mentransfer token ERC20 atau token kalian ke alamat(bulksend) kontrak yang baru yang telah kalian deploy.

# 3.Contoh pengiriman alamat
-
PASTIKAN SUDAH MENIGIRM TOKEN KE ALAMAT YANG BARU DI DEPLOY
-

![8](https://github.com/naufalprtm/multisend/assets/103091329/ed5e3d72-888d-45f5-b468-958cf5bcab9e)


["0xfb512fe04c7abf13231db8f732b65abd64b4af2a","0xefb9b41594bce853159fbe1fae7ba3a91b5d7926"]

-----------------------------------------------------------------------------------------------------
# Menggunakan Distributor
-----------------------------------------------------------------------------------------------------
# 1.Deploy


Pilih [CONTRACT compiled by Remix]

TokenDistributor - distributor.sol

![4](https://github.com/naufalprtm/multisend/assets/103091329/8540b201-2283-434f-b893-95709fd20e3b)

isi address token yang telah kalian deploy /atau gunakan alamat token yang sudah tersedia
pada bagian [DEPLOY]  

#    contoh

            _CONTRACT:0xfb512fe04c7abf13231db8f732b65abd64b4af2a
            _TOKENDECIMAL:18
            
![5](https://github.com/naufalprtm/multisend/assets/103091329/e45645b4-13c8-432b-be27-ca39cbf8a1e6)



# 2.Transfer
-
PASTIKAN SUDAH MENIGIRM TOKEN KE ALAMAT YANG BARU DI DEPLOY
-


Pilih sendAmount 

![Screenshot 2023-07-05 073456](https://github.com/naufalprtm/multisend/assets/103091329/f060c866-73ff-4452-819d-59e8c21ffa83)

          Isi User=alamat address
          Value=Jumlah token

*catatan*
(semua addres akan menerima token dengan jumlah yang sama)





# 3.Contoh pengiriman alamat


["0xfb512fe04c7abf13231db8f732b65abd64b4af2a","0xefb9b41594bce853159fbe1fae7ba3a91b5d7926"]



Jika ingin melakukan spam transaksi bisa menggunakan [address spam.txt](https://github.com/naufalprtm/multisend/blob/main/batch%20addres.txt](https://github.com/naufalprtm/multisend/blob/main/addres.txt))
-----------------------------------------------------------------------------------------------------



-----------------------------------------------------------------------------------------------------
*tidak bertanggung jawab atas kerugian dari transaksi yang dihasilkan oleh MultiSender. Beberapa pustaka JavaScript yang mendasari dan alat Ethereum yang digunakan sedang dalam pengembangan aktif. Situs web dan smart contract telah diuji secara menyeluruh, selalu ada kemungkinan terjadi sesuatu yang tidak terduga yang mengakibatkan hilangnya Ethereum dan/atau token.*
-----------------------------------------------------------------------------------------------------
