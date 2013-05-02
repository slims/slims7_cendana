<?php
/*------------------------------------------------------------

Template    : Slims Cendana Template
Create Date : March 2, 2013
Author      : Eddy Subratha (eddy.subratha{at}gmail.com)


This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

-------------------------------------------------------------*/
// be sure that this file not accessed directly

if (!defined('INDEX_AUTH')) {
  die("can not access this file directly");
} elseif (INDEX_AUTH != 1) {
  die("can not access this file directly");
}
//set default index page
$p = 'home';

if (isset($_GET['p']))
{
 if ($_GET['p'] == 'libinfo') {
  $p = 'libinfo';
} elseif ($_GET['p'] == 'help') {
  $p = 'help';
} elseif ($_GET['p'] == 'member') {
  $p = 'member';
} elseif ($_GET['p'] == 'login') {
  $p = 'login';
}
}

/*----------------------------------------------------
  menu list
  you may modified as you need
  ----------------------------------------------------*/
  $menus = array (
    'home'   => array('url'  => 'index.php',
      'text' => __('Home')
      ),
    'libinfo'  => array('url'  => 'index.php?p=libinfo',
      'text' => __('Library Information')
      ),
    'help'   => array('url'  => 'index.php?p=help',
      'text' => __('Help on Search')
      ),
    'modul_tersedia'   => array('url'  => 'index.php?p=modul_tersedia',
      'text' => __('Modul Yang Tersedia')
      ),
    'member'   => array('url'  => 'index.php?p=member',
      'text' => __('Member Area')
      ),
    'login'   => array('url'  => 'index.php?p=login',
      'text' => __('Librarian LOGIN')
      )
    );

/*----------------------------------------------------
  social button
  you may modified as you need.
  ----------------------------------------------------*/
  $social = array (
    'facebook'  => array('url'  => 'http://www.facebook.com/groups/senayan.slims/',
      'text' => 'Facebook'
      ),
    'twitter'  => array('url'  => 'http://twitter.com/#!/slims_official',
      'text' => 'Twitter'
      ),
    'youtube'  => array('url'  => 'http://www.youtube.com/user/senayanslims',
      'text' => 'Youtube'
      ),
    'gihub'  => array('url'  => 'https://github.com/slims/',
      'text' => 'Github'
      ),
    'forum'  => array('url'  => 'http://slims.web.id/forum/',
      'text' => 'Forum'
      )
    );

    ?>
    <!DOCTYPE html>
    <html><head>
    <title><?php echo $page_title; ?></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="description" content="SLiMS (Senayan Library Management System) is an open source Library Management System. It is build on Open source technology like PHP and MySQL">
    <meta name="keywords" content="senayan,slims,library automation,free library application, library, perpustakaan, aplikasi perpustakaan">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="robots" content="index, nofollow">
    <!-- load style -->
    <link rel="shortcut icon" href="webicon.ico" type="image/x-icon" />
    <link href="template/core.style.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo $sysconf['template']['css']; ?>" rel="stylesheet" type="text/css" />
<!--[if IE]>
<link type="text/css" rel="stylesheet" media="all" href="<?php echo SWB; ?>template/default/ie.css"/>
<![endif]-->
<!--[if IE 6]>
<link type="text/css" rel="stylesheet" media="all" href="<?php echo SWB; ?>template/default/ie6.css"/>
<![endif]-->
<script type="text/javascript" src="<?php echo JWB; ?>jquery.js"></script>
<script type="text/javascript" src="<?php echo JWB; ?>form.js"></script>
<script type="text/javascript" src="<?php echo JWB; ?>gui.js"></script>

<script type="text/javascript" src="<?php echo $sysconf['template']['dir'].'/'.$sysconf['template']['theme']; ?>/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="<?php echo $sysconf['template']['dir'].'/'.$sysconf['template']['theme']; ?>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
</head>
<body>
  <div id="masking"></div>

  <!--// Social Button //-->
  <div class="navbar navbar-social navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container">
        <?php if(isset($social) && count($social) > 0) { ?>
        <ul class="nav">
          <?php foreach ($social as $path => $menu) { ?>
          <li><a href="<?php echo $menu['url']; ?>" title="<?php echo $menu['text']; ?>" <?php if ($p == $path) {echo ' class="active"';} ?>><?php echo $menu['text']; ?></a></li>
          <?php } ?>
        </ul>
        <?php } ?>
        <form class="navbar-form pull-right language" name="langSelect" action="index.php" method="get">
          <span class="language-info"><?php echo __('Select Language'); ?></span>
          <select name="select_lang" id="select_lang"  onchange="document.langSelect.submit();" class="input-medium">
            <?php echo $language_select; ?>
          </select>
        </form>
      </div>
    </div>
  </div>  <!--// End Social Button //-->

  <!--// Menu //-->
  <div class="navbar navbar-menu navbar-fixed-top">
    <div class="navbar-inner">
      <div class="container">
        <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="brand" href="index.php">
         <div class="sitename"><?php echo $sysconf['library_name']; ?></div>
         <div class="subname"><?php echo $sysconf['library_subname']; ?></div>
       </a>
       <div class="nav-collapse collapse">
        <ul class="nav nav-pills pull-right">
         <?php foreach ($menus as $path => $menu) { ?>
         <li <?php if ($p == $path) {echo ' class="active"';} ?>><a href="<?php echo $menu['url']; ?>" title="<?php echo $menu['text']; ?>"><?php echo ucwords($menu['text']); ?></a></li>
         <?php } ?>
       </ul>
     </div>
   </div>
 </div>
</div>  <!--// End Menu //-->

<!--// Content Ouput //-->
<div class="content">
  <div class="container">
    <div class="row-fluid">

      <!--// Check For Query //-->
      <?php if(isset($_GET['search']) || isset($_GET['title']) || isset($_GET['keywords']) || isset($_GET['p'])) { ?>                       

      <!--// Collection List //-->
      <div class="span8">
        <!--// Show only if variable is not set //-->
        <?php if(!isset($_GET['p'])) { ?>          
        <div class="tagline">
          <?php echo __('Collections'); ?>
          <a href="javascript: history.back();" class="btn btn-mini btn-danger pull-right"><i class="icon icon-white icon-circle-arrow-left"></i> <?php echo __('Back'); ?> </a>
        </div>
        <div class="info">
          <?php echo $search_result_info; ?>
        </div>
        <?php echo $main_content; ?>
        <?php } else { ?>
        <div class="tagline">
          <?php if ($_GET['p'] == 'show_detail') { ?>
          <?php echo __("Record Detail"); ?>
          <?php } else { ?>
          <?php echo $page_title; ?>
          <?php } ?>
          <a href="javascript: history.back();" class="btn btn-mini btn-danger pull-right"><i class="icon icon-white icon-circle-arrow-left"></i> <?php echo __('Back'); ?> </a>
        </div>
        <div class="page"><?php echo $main_content; ?></div>
        <?php } ?>
        <!--// End Show only if p variable is not set //-->

        <div class="clearfix"></div>
      </div><!--// End Collection List //-->

      <!--// Sidebar //-->
      <div class="span4">
        <div class="sidebar">
          <div class="tagline">
            <?php echo __('Information'); ?>    
          </div>
          <div class="info">
            <?php echo $info; ?>
          </div>
          <div class="search">
            <div id="simply-search">
              <div class="simply" >
                <form name="advSearchForm" id="advSearchForm" action="index.php" method="get" class="form-search">
                  <input type="hidden" name="search" value="Search" />
                  <input type="text" name="keywords" id="keyword" placeholder="<?php echo __('Keyword'); ?>" x-webkit-speech="x-webkit-speech" class="input-block-level search-query" />
                </form>
              </div>
            </div>
            <div id="advance-search" style="display:none;" >
              <form name="advSearchForm" id="advSearchForm" action="index.php" method="get" class="form-inline">
                <input type="hidden" name="search" value="Search" />
                <div class="advance simply">
                  <br/>
                  <div class="control-group">
                    <label class="control-label"><?php echo __('Title'); ?></label>
                    <div class="controls">
                      <input type="text" name="title" id="title" placeholder="" />
                    </div>
                  </div>                          

                  <div class="control-group">
                    <label class="control-label"><?php echo __('Author(s)'); ?></label>
                    <div class="controls">
                      <?php echo $advsearch_author; ?>
                    </div>
                  </div>                          

                  <div class="control-group">
                    <label class="control-label"><?php echo __('Subject(s)'); ?></label>
                    <div class="controls">
                      <?php echo $advsearch_topic; ?>
                    </div>
                  </div>                          

                  <div class="control-group">
                    <label class="control-label"><?php echo __('ISBN/ISSN'); ?></label>
                    <div class="controls">
                      <input type="text" name="isbn" />
                    </div>
                  </div>              

                  <div class="control-group">
                    <label class="control-label"><?php echo __('GMD'); ?></label>
                    <div class="controls">
                      <select name="gmd"><?php echo $gmd_list; ?></select>
                    </div>
                  </div>                          

                  <div class="control-group">
                    <label class="control-label"><?php echo __('Collection Type'); ?></label>
                    <div class="controls">
                      <select name="colltype"><?php echo $colltype_list; ?></select>
                    </div>
                  </div>                          

                  <div class="control-group">
                    <label class="control-label"><?php echo __('Location'); ?></label>
                    <div class="controls">
                      <select name="location"> <?php echo $location_list; ?></select>
                    </div>
                  </div>     

                  <div class="control-group">
                    <div class="controls">
                      <input type="submit" name="search" value="<?php echo __('Search'); ?>" class="btn btn-danger" />
                    </div>
                  </div>                          
                  <div class="clearfix"></div>
              </div>
            </div>
          </form>
        </div>
        <div id="show_advance">
          <a href="#"><?php echo __('Advanced Search'); ?></a>
        </div>
      </div>
    </div><!--// End Sidebar //-->          

    <!--// If Member Logged //-->
    <?php if (utility::isMemberLogin()) { ?>
    <div class="sidebar">
      <div class="info">
        <?php echo $header_info; ?>
      </div>
    </div>      
    <?php } ?>
    <!--// End Member Logged //-->

    <!--// Show only if variable p is not set //-->
    <?php if(!isset($_GET['p'])) { ?>          
    <!--// Show if clustering search is enabled //-->
    <?php if ($sysconf['enable_search_clustering']) { ?>
    <div class="sidebar">
      <div class="tagline">
        <?php echo __('Search Cluster'); ?>
      </div>
      <div class="info">
        <div id="search-cluster"><div class="cluster-loading"><?php echo __('Generating search cluster...');  ?></div></div>
        <script type="text/javascript">
        $('document').ready( function() {
          $.ajax({
            url: 'index.php?p=clustering&q=<?php echo urlencode($criteria); ?>',
            type: 'GET',
            success: function(data, status, jqXHR) {
              $('#search-cluster').html(data);
            }
          });
        });
        </script>
      </div>
    </div>
    <?php } ?>
    <!--// End Show if clustering search is enabled //-->
    <?php } ?>
    <!--// End Show only if p variable is not set //-->
  </div>

  <!--// No Query Set - Default Landing Page //-->
  <?php } else { ?>
  <div class="span8 offset2"> 
    <div class="search">
      <div class="tagline"><?php echo $info; ?></div>
      <div id="simply-search">
        <div class="simply" >
          <form name="advSearchForm" id="advSearchForm" action="index.php" method="get" class="form-search">
            <input type="hidden" name="search" value="Search" />
            <input type="text" name="keywords" id="keyword" placeholder="<?php echo __('Keyword'); ?>" x-webkit-speech class="input-block-level search-query" />
          </form>
        </div>
      </div>
      <div id="advance-search" style="display:none;" >
        <form name="advSearchForm" id="advSearchForm" action="index.php" method="get" class="form-horizontal">
          <input type="hidden" name="search" value="Search" />
          <div class="simply" >
            <input type="text" name="title" id="title" placeholder="<?php echo __('Title'); ?>" class="input-block-level search-query" />
          </div>
          <div class="advance">
            <div class="span5">
              <div class="control-group">
                <label class="control-label"><?php echo __('Author(s)'); ?></label>
                <div class="controls">
                  <?php echo $advsearch_author; ?>
                </div>
              </div>                          

              <div class="control-group">
                <label class="control-label"><?php echo __('Subject(s)'); ?></label>
                <div class="controls">
                  <?php echo $advsearch_topic; ?>
                </div>
              </div>                          

              <div class="control-group">
                <label class="control-label"><?php echo __('ISBN/ISSN'); ?></label>
                <div class="controls">
                  <input type="text" name="isbn" />
                </div>
              </div>                          
            </div>
            <div class="span6">
             <div class="control-group">
              <label class="control-label"><?php echo __('GMD'); ?></label>
              <div class="controls">
                <select name="gmd"><?php echo $gmd_list; ?></select>
              </div>
            </div>                          

            <div class="control-group">
              <label class="control-label"><?php echo __('Collection Type'); ?></label>
              <div class="controls">
                <select name="colltype"><?php echo $colltype_list; ?></select>
              </div>
            </div>                          

            <div class="control-group">
              <label class="control-label"><?php echo __('Location'); ?></label>
              <div class="controls">
                <select name="location"> <?php echo $location_list; ?></select>
              </div>
            </div>     

            <div class="control-group">
              <div class="controls">
                <input type="submit" name="search" value="<?php echo __('Search'); ?>" class="btn btn-danger" />
              </div>
            </div>                          
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </form>
  </div>
  <div id="show_advance">
    <a href="#"><?php echo __('Advanced Search'); ?></a>
  </div>
</div>
</div>
<?php } ?> <!--// End Check For Query //-->
</div>
</div>
</div>  <!--// End Content Ouput //-->

<div class="footer">
 <div class="container">
  <div class="row">
    <div class="span12 lisence">
     This software and this template are released Under GNU GPL License Version 3 - The Winner in the Category of OSS Indonesia ICT Award 2009
   </div>
 </div>
</div>
</div>

<script type="text/javascript" src="<?php echo $sysconf['template']['dir'].'/'.$sysconf['template']['theme']; ?>/js/supersized.3.1.3.min.js"></script>
<script type="text/javascript">
jQuery(function($){
  $.supersized(
  {
    transition  : 6,
    keyboard_nav  : 0,
    start_slide  : 0,
    vertical_center : 1,
    horizontal_center : 1,
    min_width : 1000,
    min_height : 700,
    fit_portrait  : 1,
    fit_landscape : 0,
    image_protect : 1,
    slides  : [
    {image : '<?php echo $sysconf['template']['dir'].'/'.$sysconf['template']['theme']; ?>/img/1.jpg'},
    {image : '<?php echo $sysconf['template']['dir'].'/'.$sysconf['template']['theme']; ?>/img/2.jpg'}     
    ]
  });
});

$(document).ready(function()
{
  $('#keyword').keyup(function(){
    $('#title').val();    
    $('#title').val($('#keyword').val());   
  });

  $('#title').keyup(function(){
    $('#keyword').val();    
    $('#keyword').val($('#title').val());   
  });

  $('#advSearchForm input').attr('autocomplete','off');
  $('#title').attr('style','');

  $('#show_advance').click(function(){
    if ($("#advance-search").is(":hidden"))
    {
      $("#advance-search").slideDown();
      $('#simply-search').hide();
    } else {
      $("#advance-search").slideUp('fast');
      $('#simply-search').show();
    }
  });

  $('#title').keypress(function(e){
    if ((e.which && e.which == 13) || (e.keyCode && e.keyCode == 13)) {
      this.form.submit();
    }
  });

  $(window).load(function () {
    $('#keyword').focus();
  });

});
</script>




</body>
</html>