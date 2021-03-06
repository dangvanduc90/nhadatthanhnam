<!DOCTYPE html>
<html class="no-js" lang="<?= $lang ?>">
    <head>
        <!-- CSS and Jquery start here -->
        <?= $this -> load -> view('guest/includes/header') ?>
        <link rel="stylesheet" type="text/css" href="<?= base_url()?>resources/stylesheets/client/jquery.bootstrap-touchspin.css" />
        <script src="<?= base_url()?>resources/js/client/jquery.bootstrap-touchspin.min.js"></script>
        <!-- CSS and Jquery end here -->
    </head>
    <body lang="<?= $lang ?>">
        <div id="wrapper">
            <!-- Top start here -->
            <div id="top">
                <?= $this -> load -> view('guest/includes/top') ?>
                <?= $this -> load -> view('guest/includes/menu') ?>
                <div class="clear"></div>
            </div>
            <!-- Top end here -->
            <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="row hidden-xs hidden-sm">
                                <div class="col-xs-12">
                                    <div class="header">
                                        <span>Giỏ hàng</span>
                                    </div>
                                    <?= form_open('update-cart'); ?>
                                    <table id="cart">
                                        <?php if ($cart = $this -> cart -> contents()) { ?>
                                            <tr>
                                                <th></th>
                                                <th>Mã - Tên sản phẩm</th>
                                                <th>Hình ảnh</th>
                                                <th>Giá sản phẩm</th>
                                                <th>Số lượng</th>
                                                <th>Thành tiền</th>
                                            </tr>
                                            <?php
                                                $grand_total = 0;
                                                foreach ($cart as $item):
                                                    echo form_hidden('cart['. $item['rowid'] .'][id]', $item['id']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][rowid]', $item['rowid']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][name]', $item['name']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][price]', $item['price']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][SKU]', $item['SKU']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][slug]', $item['slug']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][image]', $item['image']);
                                            ?>
                                            <tr>
                                                <td><a title="Xóa sản phẩm" style="font-size:20px;color:#000;" href="<?= site_url() ?>removecart/<?= $item['rowid'] ?>"><i class="fa fa-trash"></i></a></td>
                                                <td><b><?php if($item['SKU']){echo $item['SKU']. " - ";} ?><?= urldecode($item['name']) ?></b></td>
                                                <td><img class="cart_img" src="<?= base_url() ?>resources/uploads/images/automatic/<?= $item['image'] ?>"></td>
                                                <td><?= number_format($item['price'],0, ".", ".") ?> VNĐ</td>
                                                <td style="width:92px;"><input class="cart_qty" type="text" name="<?= 'cart['. $item['rowid'] .'][qty]' ?>" value="<?= $item['qty'] ?>" /></td>
                                                <td><?= number_format($item['subtotal'],0, ".", ".") ?> VNĐ</td>
                                                <?php $grand_total = $grand_total + $item['subtotal']; ?>
                                            </tr>
                                            <?php endforeach; ?>
                                            <tr>
                                                <td colspan="5">Tổng cộng</td>
                                                <td style="color:#ff0000;font-weight:bold;"><?= number_format($grand_total,0, ".", ",") ?> VNĐ</td>
                                            </tr>
                                            <tr class="no-border">
                                                <td colspan="6">
                                                    <input class="btn1" type="button" value="Xóa giỏ hàng" onclick="clear_cart()" />
                                                    <input style="margin-left:5px;" class="btn1" type="button" value="Tiếp tục mua hàng" onclick="location.href='<?= site_url() ?>'" />
                                                    <input style="float:right;margin-left:5px" class="btn2" type="button" value="Thanh toán" onclick="location.href='<?= base_url() ?>don-hang'" />
                                                    <input style="float:right;margin:5px" class="btn3" type="submit" value="Cập nhật số lượng" />
                                                    
                                                </td>
                                            </tr>
                                        <?php } else { ?>
                                            <tr>
                                                <th>Giỏ hàng trống</th>
                                            </tr>
                                        <?php } ?>
                                        </table>
                                        <?= form_close(); ?>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="row hidden-lg hidden-md">
                                <div class="col-xs-12">
                                    <div class="header">
                                        <span>Giỏ hàng</span>
                                    </div>
                                    <?= form_open('update-cart'); ?>
                                    <table id="cart">
                                        <?php if ($cart = $this -> cart -> contents()) { ?>
                                            <?php
                                                $grand_total = 0;
                                                foreach ($cart as $item):
                                                    echo form_hidden('cart['. $item['rowid'] .'][id]', $item['id']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][rowid]', $item['rowid']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][name]', $item['name']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][price]', $item['price']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][SKU]', $item['SKU']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][slug]', $item['slug']);
                                                    echo form_hidden('cart['. $item['rowid'] .'][image]', $item['image']);
                                            ?>
                                            <tr>
                                                <td colspan="2"><b><?php if($item['SKU']){echo $item['SKU']. " - ";} ?><?= urldecode($item['name']) ?></b></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><img class="cart_img" src="<?= base_url() ?>resources/uploads/images/automatic/<?= $item['image'] ?>"></td>
                                            </tr>
                                            <tr>
                                                <td><?= number_format($item['price'],0, ".", ".") ?> VNĐ</td>
                                                <td style="width:92px;"><input class="cart_qty" maxlength="3" size="1" name="<?= 'cart['. $item['rowid'] .'][qty]' ?>" value="<?= $item['qty'] ?>" /></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="text_last" colspan="2"><?= number_format($item['subtotal'],0, ".", ".") ?> VNĐ</td>
                                            </tr>
                                            <?php $grand_total = $grand_total + $item['subtotal']; ?>
                                            <?php endforeach; ?>
                                            <tr>
                                                <td colspan="2">Tổng cộng</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="color:#ff0000;font-weight:bold;"><?= number_format($grand_total,0, ".", ",") ?> VNĐ</td>
                                            </tr>
                                            <tr class="no-border">
                                                <td colspan="2">
                                                    <input class="btn1" type="button" value="Xóa giỏ hàng" onclick="clear_cart()" />
                                                    <input class="btn1" type="button" value="Tiếp tục mua hàng" onclick="location.href='<?= site_url() ?>'" />
                                                    <input class="btn3" type="submit" value="Cập nhật số lượng" />
                                                    <input class="btn2" type="button" value="Thanh toán" onclick="location.href='<?= base_url() ?>don-hang'" />
                                                </td>
                                            </tr>
                                        <?php } else { ?>
                                            <tr>
                                                <th>Giỏ hàng trống</th>
                                            </tr>
                                        <?php } ?>
                                        </table>
                                        <?= form_close(); ?>
                                    <div class="clear"></div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
            </div>

            <!-- Bottom end here -->
            <div id="bottom">
                <?= $this -> load -> view('guest/includes/footer') ?>
                <div class="clear"></div>
            </div>
            <!-- Bottom end here -->

        </div>
        <?= $this -> load -> view('guest/includes/sticky') ?>
            <?= $this -> load -> view('guest/includes/documentready') ?>
        <script type="text/javascript" charset="utf-8">
            $(".cart_qty").TouchSpin({
                verticalbuttons: true,
                verticalupclass: 'glyphicon glyphicon-plus',
                verticaldownclass: 'glyphicon glyphicon-minus'
            });

            function clear_cart() {
                var result = confirm('Bạn muốn hủy giỏ hàng ?');
                if(result) {
                    window.location = "<?php echo base_url(); ?>removecart/all";
                }else{
                    return false; // cancel button
                }
            }
        </script>
    </body>
</html>