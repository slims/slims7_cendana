<?php
/**
 *
 * Copyright (C) 2007,2008  Arie Nugraha (dicarve@yahoo.com)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

/* Gammu SMSDRC configuration */
/* by Heru Subekti,2014 (heroe_soebekti@yahoo.co.id) */

// key to authenticate
define('INDEX_AUTH', '1');
// key to get full database access
define('DB_ACCESS', 'fa');

if (!defined('SENAYAN_BASE_DIR')) {
    // main system configuration
    require '../../../sysconfig.inc.php';
    // start the session
    require SB.'admin/default/session.inc.php';
}
// IP based access limitation
require LIB.'ip_based_access.inc.php';
do_checkIP('smc');
do_checkIP('smc-system');

// only administrator have privileges to change global settings
if ($_SESSION['uid'] != 1) {
    header('Location: '.MWB.'system/content.php');
    die();
}

require SB.'admin/default/session_check.inc.php';
require SIMBIO.'simbio_GUI/form_maker/simbio_form_table_AJAX.inc.php';
require SIMBIO.'simbio_GUI/table/simbio_table.inc.php';
require LIB.'gammu/config.inc.php';

?>
<fieldset class="menuBox">
  <div class="menuBoxInner systemIcon">
    <div class="per_title"><h2>
      <?php echo __('Gammu Application Preferences'); ?></h2>
    </div>
  </div>
</fieldset>
<?php
include 'filter_number.php';
//GET SETTING VALUE
			$handle = @fopen(PATH."smsdrc", "r");
			if ($handle) 
			{
				while (!feof($handle)) 
				{
					$buffer = fgets($handle);
					if (substr_count($buffer, 'port = ') > 0)
					{
						$split = explode("port = ", $buffer);
						$setting['port'] = trim($split[1]);
					}
					if (substr_count($buffer, 'phoneid = ') > 0)
					{
						$split = explode("phoneid = ", $buffer);
						$setting['phone'] = trim($split[1]);
					}
					if (substr_count($buffer, 'connection = ') > 0)
					{
						$split = explode("connection = ", $buffer);
						$setting['conn'] = trim($split[1]);
					}
					if (substr_count($buffer, 'commtimeout = ') > 0)
					{
						$split = explode("commtimeout = ", $buffer);
						$setting['commtimeout'] = trim($split[1]);
					}
					if (substr_count($buffer, 'sendtimeout = ') > 0)
					{
						$split = explode("sendtimeout = ", $buffer);
						$setting['sendtimeout'] = trim($split[1]);
					}
					if (substr_count($buffer, 'send = ') > 0)
					{
						$split = explode("send = ", $buffer);
						$setting['send'] = trim($split[1]);
					}
					if (substr_count($buffer, 'debuglevel = ') > 0)
					{
						$split = explode("debuglevel = ", $buffer);
						$setting['debuglevel'] = trim($split[1]);
					}					
					if (substr_count($buffer, 'receive = ') > 0)
					{
						$split = explode("receive = ", $buffer);
						$setting['receive'] = trim($split[1]);
					}					
				}
			}
			else{
    utility::jsAlert(__('File Configuration Not Found'));
        echo '<script type="text/javascript">parent.jQuery(\'#mainContent\').simbioAJAX(\''.$_SERVER['PHP_SELF'].'?'.$_POST['lastQueryStr'].'\');</script>';
 
			}


if (isset($_POST['updateData'])) {
	
 unlink(PATH."smsdrc");
 $file = PATH.'smsdrc'; 
 $handle = fopen($file , 'w') or die('error reading '.$file ); 
 $content = "[gammu]"."\n";
 $content.= "port = ".trim($_POST['port'])."\n";
 $content.= "connection = ".trim($_POST['conn'])."\n";
 $content.= "[smsd]"."\n";
 $content.= "service = mysql"."\n";
 $content.= "logfile = ".PATH."logsmsdrc"."\n";
 $content.= "debuglevel = ".trim($_POST['debug'])."\n";
 $content.= "phoneid = SLiMS_Gateway"."\n";
 $content.= "commtimeout = ".trim($_POST['commtimeout'])."\n";
 $content.= "sendtimeout = ".trim($_POST['sendtimeout'])."\n";
 $content.= "send = ".trim($_POST['send'])."\n";
 $content.= "receive = ".trim($_POST['receive'])."\n";
 $content.= "checksecurity = 0"."\n";
 $content.= "RunOnReceive = ".PATH."daemon.bat\n";
 $content.= "pc = localhost"."\n";
 $content.= "user = ".DB_USERNAME."\n";
 $content.= "password = ".DB_PASSWORD."\n";
 $content.= "database = ".DB_NAME."\n";

fwrite($handle, $content); 
fclose($handle);


unlink(PATH."gammurc");
$handl = @fopen(PATH."gammurc", "w");
$string = "[gammu]\nport = ".trim($_POST['port'])."\nconnection = ".trim($_POST['conn'])."\n";
fwrite($handl, $string);
fclose($handl);

if(isset($_SESSION['identify']))
  unset($_SESSION['identify']);
}


// create new instance
$form = new simbio_form_table_AJAX('mainForm', $_SERVER['PHP_SELF'], 'post');
$form->submit_button_attr = 'name="updateData" value="'.__('Save Settings').'" class="button"';

// form table attributes
$form->table_attr = 'align="center" id="dataList" cellpadding="5" cellspacing="0"';
$form->table_header_attr = 'class="alterCell" style="font-weight: bold;"';
$form->table_content_attr = 'class="alterCell2"';
//$form->addTextField('text', 'phone', 'Phone/Modem ID', $setting['phone'], 'style="width:50%;"');
// PORT selected
$form->addTextField('text', 'port', 'Port', $setting['port'], 'style="width:20%;"');
// Connection
$options[] = array('at115200', 'AT115200');
$options[] = array('at19200', 'AT19200');
$options[] = array('at9600', 'AT9600');
$options[] = array('at', 'AT');
$form->addSelectList('conn', 'Connection', $options, $setting['conn']);
// Connection
$options = null;
$options[] = array('yes', __('Enable'));
$options[] = array('no', __('Disable'));
$form->addSelectList('send', 'Send SMS', $options, $setting['send']);

$options = null;
$options[] = array('yes', __('Enable'));
$options[] = array('no', __('Disable'));
$form->addSelectList('receive', 'Receive SMS', $options, $setting['receive']);

$options = null;
$options[] = array('0', __('Disable'));
$options[] = array('1', __('1'));
$options[] = array('2', __('2'));
$options[] = array('3', __('3'));
$options[] = array('4', __('4'));
$form->addSelectList('debug', 'Debug Level', $options, $setting['debug']);

$form->addTextField('text', 'sendtimeout', 'Send TimeOut', $setting['sendtimeout'], 'style="width:10%;"');

$form->addTextField('text', 'commtimeout', 'Comm TimeOut', $setting['commtimeout'], 'style="width:10%;"');

// print out the object
echo $form->printOut();

/* main content end */
//print_r($setting);
