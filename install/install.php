<?php
/**
 * Slims Installer files
 *
 * Copyright © 2006 - 2012 Advanced Power of PHP
 * Some modifications & patches by Eddy Subratha (eddy.subratha@gmail.com)
 * modified    : kouider bounama kouiderbounama{at}gmail.com
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
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
require 'settings.php';
?>
<!DOCTYPE HTML>
<html>
<head>
    <title>الخطوة 1 | تثبيت سينيان</title>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="wrapper">
	<div class="title">
	    <h2>الخطوة 1 - إنشاء قاعدة بيانات </h2>
	</div>
	<p class="message">يرجى ملء الاستمارة التالية مع معلومات اتصال قاعدة البيانات الخاصة بك</p>
	<div class="content hastable">
    <form method="post" action="install2.php">
        <input type="hidden" name="submit" value="step2" />
        <table class=text width="100%" border="0" cellspacing="0" cellpadding="2" class="main_text">
            <tr>
                <td>&nbsp;مضيف قاعدة البيانات</td>
                <td>
                    <input type="text" class="form_text" name="database_host" value='localhost' size="30">&nbsp; <em>الافتراضي : localhost</em>
                </td>
            </tr>
            <tr>
                <td>&nbsp;إسم قاعدة البيانات</td>
                <td>
                    <input type="text" class="form_text" name="database_name" size="30" value="">
                </td>
            </tr>
            <tr>
                <td>&nbsp;مستخدم قاعدة البيانات</td>
                <td>
                    <input type="text" class="form_text" name="database_username" size="30" value="">
                </td>
            </tr>
            <tr>
                <td>&nbsp;كلمة سر قاعدة البيانات</td>
                <td>
                    <input type="password" class="form_text" name="database_password" size="30" value="">
                </td>
            </tr>
            <tr>
				<td>توليد البيانات النموذجية</td>
                                <td>
				    <input type="radio" name="install_sample" value="yes" /> نعم
				    <input type="radio" name="install_sample" value="no" checked="checked" /> لا
				</td>
            </tr>
        </table>
    </div>
    <p class="message">أكمل معلومات الدخول:إختياري</p>
    <div class="content hastable">
        <table class=text width="100%" border="0" cellspacing="0" cellpadding="2" class="main_text">
            <tr>
                <td>&nbsp;إسم المستخدم</td>
                <td>
                    <input type="text" class="form_text" name="username" size="30" value="admin">&nbsp; <em>الافتراضي : admin</em>
                </td>
            </tr>
            <tr>
                <td>كلمة المرور</td>
                <td>
                    <input type="password" class="form_text" name="password" size="30" value="">&nbsp; <em>الافتراضي : admin</em>
                </td>
            </tr>
            <tr>
                <td>إعادة كلمة المرور</td>
                <td>
                    <input type="password" class="form_text" name="retype_password" size="30" value="">
                </td>
            </tr>
        </table>
		<br/>
		<div class="toright">
			<input type="button" class="button" name="btn_cancel" value="إلغاء" onclick="document.location.href='index.php'">
            <input type="submit" class="button" name="btn_submit" value="المتابعة">
		</div>
    </form>
	</div>
	<?php include_once("footer.php"); ?>
</div>
</body>
</html>
