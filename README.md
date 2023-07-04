# multisend
tutorial multisend-bulksend

Tutorial Bulksend-Distributor menggunakan remix IDE

Catatan
Sebelum menggunakan ini gunakan wallet baru dan gunakan saldo testnet

-----------------------------------------------------------------------------------------------------
Instal Metamask.
Pastikan Anda memiliki akun di MetaMask yang memiliki saldo token.
Pastikan MetaMask Anda diarahkan ke jaringan yang ingin Anda gunakan.

pilih bulksend.sol / distributor.sol dan deploy mneggunalan https://remix.ethereum.org/
pilih versi solidity sesuai dengan contract di pengaturan
setelah diterapkan, panggil fungsi inisialisasi dengan alamat parameter kontrak pemilik
-----------------------------------------------------------------------------------------------------
" contract BulkSend is Ownable {
    address token = 0x7CC1656CA786587D2fC0aA9C6A1EFAC3d464Eb9e; // Token Contract Address (White)
    uint tokenAmount = 100 * 1e18; // 100 tokens
    uint ethAmount = 0; // 0 ETH " ubah address token yang telah kalian deploy 
-----------------------------------------------------------------------------------------------------

tidak bertanggung jawab atas kerugian dari transaksi yang dihasilkan oleh MultiSender. Beberapa pustaka JavaScript yang mendasari dan alat Ethereum yang digunakan sedang dalam pengembangan aktif. Situs web dan smart contract telah diuji secara menyeluruh, selalu ada kemungkinan terjadi sesuatu yang tidak terduga yang mengakibatkan hilangnya Ethereum dan/atau token.
