<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
	          <td><?php echo $entry_companyid; ?></td>
	          <td><input type="text" name="begateway_companyid" value="<?php echo $begateway_companyid; ?>" size="15" />
              <?php if ($error_companyid) { ?>
              <span class="error"><?php echo $error_companyid; ?></span>
              <?php } ?></td>

          </tr>
          <tr>
	          <td><?php echo $entry_encyptionkey; ?></td>
	          <td><input type="text" name="begateway_encryptionkey" value="<?php echo $begateway_encryptionkey; ?>" size="50" />
              <?php if ($error_encyptionkey) { ?>
              <span class="error"><?php echo $error_encyptionkey; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_domain_payment_gateway; ?></td>
            <td><input type="text" name="begateway_domain_payment_gateway" value="<?php echo $begateway_domain_payment_gateway; ?>" size="50" />
              <?php if ($error_domain_payment_gateway) { ?>
              <span class="error"><?php echo $error_domain_payment_gateway; ?></span>
              <?php } ?></td>

          </tr>
          <tr>
            <td><?php echo $entry_domain_payment_page; ?></td>
            <td><input type="text" name="begateway_domain_payment_page" value="<?php echo $begateway_domain_payment_page; ?>" size="50" />
              <?php if ($error_domain_payment_page) { ?>
              <span class="error"><?php echo $error_domain_payment_page; ?></span>
              <?php } ?></td>

          </tr>
          <tr>
            <td><?php echo $entry_order_status_completed_text; ?></td>
            <td><select name="begateway_completed_status_id">
              <?php foreach ($order_statuses as $order_status) { ?>
              <?php if ($order_status['order_status_id'] == $begateway_completed_status_id) { ?>
              <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
              <?php } ?>
              <?php } ?>
              </select>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_order_status_failed_text; ?></td>
            <td><select name="begateway_failed_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $begateway_failed_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </td>
          </tr>
          <tr>
            <td><?php echo $entry_geo_zone; ?></td>
            <td>
              <select name="begateway_geo_zone_id">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $begateway_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </td>
          </tr>

          <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="begateway_status">
                <?php if ($begateway_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_test_mode; ?></td>
            <td><select name="begateway_test_mode">
                <?php if ($begateway_test_mode) { ?>
                <option value="1" selected="selected"><?php echo $text_test_mode; ?></option>
                <option value="0"><?php echo $text_live_mode; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_test_mode; ?></option>
                <option value="0" selected="selected"><?php echo $text_live_mode; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="begateway_sort_order" value="<?php echo $begateway_sort_order; ?>" size="3" /></td>
          </tr>
        </form>
      </table>
  </div>
</div>
<?php echo $footer; ?>
