<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dodol Action Figure</title>
    <link rel="shortcut icon" href="<?php echo base_url() ?>assets/img/DodolLogo.png" />

    <!-- Google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/owl.carousel.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/style.css">
    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/responsive.css">
</head>

<body>

    <?php
    include "include/head.php";
    ?>


    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shopping Cart</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br /><br />

    <div class="container">
        <h3 align="center" id="order_review_heading">Your order</h3>

        <div id="order_review" style="position: relative;">
            <table class="shop_table">
                <?php
                if (isset($total)) {
                    $netTotal = 0;

                ?>
                    <thead>
                        <tr>
                            <th colspan="2" class="product-name">&nbsp;</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr class="cart_item">
                            <td class="product-name">
                                Cart Total </td>
                            <td class="product-total">
                                <span class="amount">Rp.<?php echo $total ?>/-</span>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>

                        <tr class="shipping">
                            <th>Shipping and Handling</th>
                            <td>
                                Rp. 1000/-
                            </td>
                        </tr>


                        <tr class="order-total">
                            <th>Order Total</th>
                            <td><strong><span class="amount">Rp.<?php echo $netTotal = $total + 1000 ?>/-</span></strong> </td>
                        </tr>

                    </tfoot>
            </table>
        </div>
    <?php
                }
    ?>
    </div>

    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>

    <!-- Bootstrap JS form CDN -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <!-- jQuery sticky menu -->
    <script src="<?php echo base_url() ?>assets/js/owl.carousel.min.js"></script>
    <script src="<?php echo base_url() ?>assets/js/jquery.sticky.js"></script>

    <!-- jQuery easing -->
    <script src="<?php echo base_url() ?>assets/js/jquery.easing.1.3.min.js"></script>

    <!-- Main Script -->
    <script src="<?php echo base_url() ?>assets/js/main.js"></script>
</body>

</html>