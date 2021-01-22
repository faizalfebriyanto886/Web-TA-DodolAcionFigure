<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dodol Action Figure</title>
    <link rel="shortcut icon" href="<?php echo base_url() ?>assets/img/DodolLogo.png" />
    <!-- Custom CSS -->

    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/mobile.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/style2.css">
</head>

<body>

    <div id="body">
        <div id="featured">
            <img src="<?php echo base_url('assets/img/welcum2.jpg'); ?>" />
            <div>
                <h2>Selamat Datang di Dodol Action Figure</h2>
                <span>Kami menjual action figure yang murah dan berkualitas.</span>
                <span>Fast respon dan pengiriman cepat.</span>
                <a href="<?php echo base_url() ?>index.php/Welcome/shop">Beli Sekarang !</a>
            </div>
        </div>
        <ul>
            <li>
                <a href="<?php echo base_url() ?>index.php/Welcome/single">
                    <img src="<?php echo base_url('assets/img/front-display-1.jpg'); ?>" />
                    <span>Dante - Devil May Cry 5</span>
                </a>
            </li>
            <li>
                <a href="<?php echo base_url() ?>index.php/Welcome/single">
                    <img src="<?php echo base_url('assets/img/front-display-2.jpg'); ?>" />
                    <span>Mordred Mecha</span>
                </a>
            </li>
            <li>
                <a href="<?php echo base_url() ?>index.php/Welcome/single">
                    <img src="<?php echo base_url('assets/img/front-display-3.jpg'); ?>" />
                    <span>Tokisaki kurumi</span>
                </a>
            </li>
        </ul>
    </div>
    <p><b>CARA PEMBELIAN</b></p>
    <ol>
        <li> Silahkan melakukan <a href="<?php echo base_url() ?>index.php/Welcome/login"><i class="fa fa-user"></i> Login atau Register</a> jika anda sudah mendaftarkan akun anda. </li>
        <li> Pilih<a href="<?php echo base_url() ?>index.php/Welcome/single"> produk</a> yang anda inginkan, lalu klik add to cart. </li>
        <li> Produk yang anda pilih akan masuk ke <a href="<?php echo base_url() ?>index.php/Cart/viewCart"><i class="fa fa-shopping-cart"></i> troli</a> pembelian, silahkan konfirmasi jumlah yang akan dibeli lalu klik tombol purchase.</li>
        <li> Produk yang sudah dibeli akan masuk di bagian <a href="PEMBELIAN.php">pembelian</a>. </li>
        <li> Transaksi akan di proses oleh admin. </li>
    </ol>

    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>

    <!-- Bootstrap JS form CDN -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <!-- jQuery sticky menu -->
    <script src="<?php echo base_url() ?>assets/js/mobile.js"></script>
    <script src="<?php echo base_url() ?>assets/js/owl.carousel.min.js"></script>
    <script src="<?php echo base_url() ?>assets/js/jquery.sticky.js"></script>
</body>

</html>