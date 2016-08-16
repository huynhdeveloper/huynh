<!DOCTYPE html>
<!-- Template Name: Packet - Responsive Admin Template build with Twitter Bootstrap 3.x | Author: ClipTheme -->
<!--[if IE 8]>
<html class="ie8" lang="en"><![endif]-->
<!--[if IE 9]>
<html class="ie9" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- start: HEAD -->
<head>
    <title>Packet - Responsive Admin Template</title>
    <!-- start: META -->
    <!--[if IE]>
    <meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1"/><![endif]-->
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- end: META -->
    <!-- start: GOOGLE FONTS -->
    <link
        href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic"
        rel="stylesheet" type="text/css"/>
    <!-- end: GOOGLE FONTS -->
    <!-- start: MAIN CSS -->
    <?php
    include_once "frontend_top.html";
    include_once "like_function.html";

    ?>

</head>
<!-- end: HEAD -->
<body>
<div id="app" class="lyt-2">
    <!-- sidebar -->
    <div class="sidebar app-aside" id="sidebar">
        <div class="sidebar-container perfect-scrollbar">
            <div>
                <!-- start: SEARCH FORM -->
                <div class="search-form hidden-md hidden-lg">
                    <a class="s-open" href="#"> <i class="ti-search"></i> </a>
                    <form class="navbar-form" role="search">
                        <a class="s-remove" href="#" target=".navbar-form"> <i class="ti-close"></i> </a>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Enter search text here...">
                            <button class="btn search-button" type="submit">
                                <i class="ti-search"></i>
                            </button>
                        </div>
                    </form>
                </div>
                <!-- end: SEARCH FORM -->
                <!-- start: USER OPTIONS -->
                <div class="nav-user-wrapper">
                    <div class="media">
                        <div class="media-left">
                            <a class="profile-card-photo" href="#"><img alt="" src="assets/images/avatar-1.jpg"></a>
                        </div>
                        <div class="media-body">
                            <span class="media-heading text-white">Peter Clark</span>
                            <div class="text-small text-white-transparent">
                                UI Designer
                            </div>
                        </div>
                        <div class="media-right media-middle">
                            <div class="dropdown">
                                <button href class="btn btn-transparent text-white dropdown-toggle"
                                        data-toggle="dropdown">
                                    <i class="fa fa-caret-down"></i>
                                </button>
                                <ul class="dropdown-menu animated fadeInRight pull-right">
                                    <li>
                                        <a href="#"> My Profile </a>
                                    </li>
                                    <li>
                                        <a href="#"> My Calendar </a>
                                    </li>
                                    <li>
                                        <a href="#"> My Messages (3) </a>
                                    </li>
                                    <li>
                                        <a href="#"> Lock Screen </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#"> Log Out </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end: USER OPTIONS -->
                <nav>
                    <!-- start: MAIN NAVIGATION MENU -->
                    <div class="navbar-title">
                        <span>Main Navigation</span>
                    </div>
                    <ul class="main-navigation-menu">
                        <li class="active open">
                            <a href="index.html">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-home"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> Dashboard </span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-clone"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> Page Layouts </span><i class="icon-arrow"></i>
                                    </div>
                                </div>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="page_layouts_fixed_header.html"> <span class="title"> Fixed Header </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="page_layouts_fixed_sidebar.html"> <span
                                            class="title"> Fixed Sidebar </span> </a>
                                </li>
                                <li>
                                    <a href="page_layouts_fixed_header_sidebar.html"> <span class="title"> Fixed Header &amp; Sidebar </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="page_layouts_fixed_footer.html"> <span class="title"> Fixed Footer </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="page_layouts_boxed_page.html"> <span class="title"> Boxed Page </span> </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="layouts.html">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-diamond"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> Layouts </span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-flask"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> UI Elements </span><i class="icon-arrow"></i>
                                    </div>
                                </div>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="ui_elements.html"> <span class="title"> Elements </span> </a>
                                </li>
                                <li>
                                    <a href="ui_buttons.html"> <span class="title"> Buttons </span> </a>
                                </li>
                                <li>
                                    <a href="ui_links.html"> <span class="title"> Link Effects </span> </a>
                                </li>
                                <li>
                                    <a href="ui_icons.html"> <span class="title"> Font Awesome Icons </span> </a>
                                </li>
                                <li>
                                    <a href="ui_line_icons.html"> <span class="title"> Linear Icons </span> </a>
                                </li>
                                <li>
                                    <a href="ui_letter_icons.html"> <span class="title"> Letter Icons </span> </a>
                                </li>
                                <li>
                                    <a href="ui_modals.html"> <span class="title"> Modals </span> </a>
                                </li>
                                <li>
                                    <a href="ui_toggle.html"> <span class="title"> Toggle </span> </a>
                                </li>
                                <li>
                                    <a href="ui_tabs_accordions.html"> <span
                                            class="title"> Tabs &amp; Accordions </span> </a>
                                </li>
                                <li>
                                    <a href="ui_panels.html"> <span class="title"> Panels </span> </a>
                                </li>
                                <li>
                                    <a href="ui_notifications.html"> <span class="title"> Notifications </span> </a>
                                </li>
                                <li>
                                    <a href="ui_sliders.html"> <span class="title"> Sliders </span> </a>
                                </li>
                                <li>
                                    <a href="ui_knob.html"> <span class="title"> Knob component </span> </a>
                                </li>
                                <li>
                                    <a href="ui_treeview.html"> <span class="title"> TreeView </span> </a>
                                </li>
                                <li>
                                    <a href="ui_media.html"> <span class="title"> Media </span> </a>
                                </li>
                                <li>
                                    <a href="ui_nestable.html"> <span class="title"> Nestable List </span> </a>
                                </li>
                                <li>
                                    <a href="ui_typography.html"> <span class="title"> Typography </span> </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-table"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> Tables </span><i class="icon-arrow"></i>
                                    </div>
                                </div>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="table_basic.html"> <span class="title">Basic Tables</span> </a>
                                </li>
                                <li>
                                    <a href="table_responsive.html"> <span class="title">Responsive Tables</span> </a>
                                </li>
                                <li>
                                    <a href="table_data.html"> <span class="title">Advanced Data Tables</span> </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-pencil"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> Forms </span><i class="icon-arrow"></i>
                                    </div>
                                </div>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="form_elements.html"> <span class="title">Form Elements</span> </a>
                                </li>
                                <li>
                                    <a href="form_pickers.html"> <span class="title">Pickers</span> </a>
                                </li>
                                <li>
                                    <a href="form_text_editor.html"> <span class="title">Text Editor</span> </a>
                                </li>
                                <li>
                                    <a href="form_wizard.html"> <span class="title">Form Wizard</span> </a>
                                </li>
                                <li>
                                    <a href="form_validation.html"> <span class="title">Form Validation</span> </a>
                                </li>
                                <li>
                                    <a href="form_image_cropping.html"> <span class="title">Image Cropping</span> </a>
                                </li>
                                <li>
                                    <a href="form_multiple_upload.html"> <span class="title">Multiple File Upload</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-user"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> Login </span><i class="icon-arrow"></i>
                                    </div>
                                </div>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="login_signin.html"> <span class="title"> Login Form </span> </a>
                                </li>
                                <li>
                                    <a href="login_registration.html"> <span class="title"> Registration Form </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="login_forgot.html"> <span class="title"> Forgot Password Form </span> </a>
                                </li>
                                <li>
                                    <a href="login_lockscreen.html"> <span class="title">Lock Screen</span> </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-laptop"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> Pages </span><i class="icon-arrow"></i>
                                    </div>
                                </div>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="pages_user_profile.html"> <span class="title">User Profile</span> </a>
                                </li>
                                <li>
                                    <a href="pages_invoice.html"> <span class="title">Invoice</span> </a>
                                </li>
                                <li>
                                    <a href="pages_timeline.html"> <span class="title">Timeline</span> </a>
                                </li>
                                <li>
                                    <a href="pages_calendar.html"> <span class="title">Calendar</span> </a>
                                </li>
                                <li>
                                    <a href="pages_messages.html"> <span class="title">Messages</span> </a>
                                </li>
                                <li>
                                    <a href="pages_blank_page.html"> <span class="title">Blank Page</span> </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-umbrella"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> Utilities </span><i class="icon-arrow"></i>
                                    </div>
                                </div>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="utilities_search_result.html"> <span class="title">Search Results</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="utilities_error_404.html"> <span class="title">Error 404</span> </a>
                                </li>
                                <li>
                                    <a href="utilities_error_500.html"> <span class="title">Error 500</span> </a>
                                </li>
                                <li>
                                    <a href="utilities_pricing_table.html"> <span class="title">Pricing Table</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:void(0)">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-folder-open"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> 4 Level Menu </span><i class="icon-arrow"></i>
                                    </div>
                                </div>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="javascript:;"> <span>Item 1</span> <i class="icon-arrow"></i> </a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="javascript:;"> <span>Sample Link 1</span> <i
                                                    class="icon-arrow"></i> </a>
                                            <ul class="sub-menu">
                                                <li>
                                                    <a href="#"> Sample Link 1 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 2 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 3 </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="javascript:;"> <span>Sample Link 2</span> <i
                                                    class="icon-arrow"></i> </a>
                                            <ul class="sub-menu">
                                                <li>
                                                    <a href="#"> Sample Link 1 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 2 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 3 </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="javascript:;"> <span>Sample Link 3</span> <i
                                                    class="icon-arrow"></i> </a>
                                            <ul class="sub-menu">
                                                <li>
                                                    <a href="#"> Sample Link 1 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 2 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 3 </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="javascript:;"> <span>Item 2</span> <i class="icon-arrow"></i> </a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="javascript:;"> <span>Sample Link 1</span> <i
                                                    class="icon-arrow"></i> </a>
                                            <ul class="sub-menu">
                                                <li>
                                                    <a href="#"> Sample Link 1 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 2 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 3 </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="javascript:;"> <span>Sample Link 2</span> <i
                                                    class="icon-arrow"></i> </a>
                                            <ul class="sub-menu">
                                                <li>
                                                    <a href="#"> Sample Link 1 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 2 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 3 </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="javascript:;"> <span>Sample Link 3</span> <i
                                                    class="icon-arrow"></i> </a>
                                            <ul class="sub-menu">
                                                <li>
                                                    <a href="#"> Sample Link 1 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 2 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 3 </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="javascript:;"> <span>Item 3</span> <i class="icon-arrow"></i> </a>
                                    <ul class="sub-menu">
                                        <li>
                                            <a href="javascript:;"> <span>Sample Link 1</span> <i
                                                    class="icon-arrow"></i> </a>
                                            <ul class="sub-menu">
                                                <li>
                                                    <a href="#"> Sample Link 1 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 2 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 3 </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="javascript:;"> <span>Sample Link 2</span> <i
                                                    class="icon-arrow"></i> </a>
                                            <ul class="sub-menu">
                                                <li>
                                                    <a href="#"> Sample Link 1 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 2 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 3 </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="javascript:;"> <span>Sample Link 3</span> <i
                                                    class="icon-arrow"></i> </a>
                                            <ul class="sub-menu">
                                                <li>
                                                    <a href="#"> Sample Link 1 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 2 </a>
                                                </li>
                                                <li>
                                                    <a href="#"> Sample Link 3 </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="maps.html">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-map-marker"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> Maps </span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="charts.html">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-pie-chart"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> Charts </span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- end: MAIN NAVIGATION MENU -->
                    <!-- start: CORE FEATURES -->
                    <div class="navbar-title">
                        <span>Core Features</span>
                    </div>
                    <ul class="folders">
                        <li>
                            <a href="landing_page.html">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-gift"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> Landing Page </span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="http://www.cliptheme.com/demo/packet/Html-Admin/LAYOUT-2/RTL/">
                                <div class="item-content">
                                    <div class="item-media">
                                        <i class="fa fa-exchange"></i>
                                    </div>
                                    <div class="item-inner">
                                        <span class="title"> RTL Version </span>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                    <!-- end: CORE FEATURES -->
                </nav>
            </div>
        </div>
    </div>
    <!-- / sidebar -->
    <div class="app-content">
        <!-- start: TOP NAVBAR -->
        <header class="navbar navbar-default navbar-static-top">
            <!-- start: NAVBAR HEADER -->
            <div class="navbar-header">
                <button href="#" class="sidebar-mobile-toggler pull-left btn no-radius hidden-md hidden-lg"
                        class="btn btn-navbar sidebar-toggle" data-toggle-class="app-slide-off"
                        data-toggle-target="#app" data-toggle-click-outside="#sidebar">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html"> <img src="assets/images/logo.png" alt="Packet"/> </a>
                <a class="navbar-brand navbar-brand-collapsed" href="index.html"> <img
                        src="assets/images/logo-collapsed.png" alt=""/> </a>

                <button class="btn pull-right menu-toggler visible-xs-block" id="menu-toggler" data-toggle="collapse"
                        href=".navbar-collapse" data-toggle-class="menu-open">
                    <i class="fa fa-folder closed-icon"></i><i class="fa fa-folder-open open-icon"></i>
                    <small><i class="fa fa-caret-down margin-left-5"></i></small>
                </button>
            </div>
            <!-- end: NAVBAR HEADER -->
            <!-- start: NAVBAR COLLAPSE -->
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-left hidden-sm hidden-xs">
                    <li class="sidebar-toggler-wrapper">
                        <div>
                            <button href="javascript:void(0)" class="btn sidebar-toggler visible-md visible-lg">
                                <i class="fa fa-bars"></i>
                            </button>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="toggle-fullscreen"> <i class="fa fa-expand expand-off"></i><i
                                class="fa fa-compress expand-on"></i></a>
                    </li>
                    <li>
                        <form role="search" class="navbar-form main-search">
                            <div class="form-group">
                                <input type="text" placeholder="Enter search text here..." class="form-control">
                                <button class="btn search-button" type="submit">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </form>
                    </li>
                </ul>
                <ul class="nav navbar-right">
                    <!-- start: MESSAGES DROPDOWN -->
                    <li class="dropdown">
                        <a href class="dropdown-toggle" data-toggle="dropdown"> <span class="badge"> 3 </span> <i
                                class="fa fa-envelope"></i> </a>
                        <ul class="dropdown-menu dropdown-light dropdown-messages dropdown-large animated fadeInUpShort">
                            <li>
                                <span class="dropdown-header"> Unread messages</span>
                            </li>
                            <li>
                                <div class="drop-down-wrapper ps-container">
                                    <ul>
                                        <li class="unread">
                                            <a href="javascript:;" class="unread">
                                                <div class="clearfix">
                                                    <div class="thread-image">
                                                        <img src="./assets/images/avatar-2.jpg" alt="">
                                                    </div>
                                                    <div class="thread-content">
                                                        <span class="author">Nicole Bell</span>
                                                        <span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula...</span>
                                                        <span class="time"> Just Now</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" class="unread">
                                                <div class="clearfix">
                                                    <div class="thread-image">
                                                        <img src="./assets/images/avatar-3.jpg" alt="">
                                                    </div>
                                                    <div class="thread-content">
                                                        <span class="author">Steven Thompson</span>
                                                        <span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula...</span>
                                                        <span class="time">8 hrs</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <div class="clearfix">
                                                    <div class="thread-image">
                                                        <img src="./assets/images/avatar-5.jpg" alt="">
                                                    </div>
                                                    <div class="thread-content">
                                                        <span class="author">Kenneth Ross</span>
                                                        <span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula...</span>
                                                        <span class="time">14 hrs</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="view-all">
                                <a href="#"> See All </a>
                            </li>
                        </ul>
                    </li>
                    <!-- end: MESSAGES DROPDOWN -->
                    <!-- start: ACTIVITIES DROPDOWN -->
                    <li class="dropdown">
                        <a href class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-bell"></i> </a>
                        <ul class="dropdown-menu dropdown-light dropdown-messages dropdown-large animated fadeInUpShort">
                            <li>
                                <span class="dropdown-header"> You have new notifications</span>
                            </li>
                            <li>
                                <div class="drop-down-wrapper ps-container">
                                    <div class="list-group no-margin">
                                        <a class="media list-group-item" href=""> <img class="img-circle" alt="..."
                                                                                       src="assets/images/avatar-1.jpg">
                                            <span class="media-body block no-margin"> Use awesome animate.css <small
                                                    class="block text-grey">10 minutes ago
                                                </small> </span> </a>
                                        <a class="media list-group-item" href=""> <span
                                                class="media-body block no-margin"> 1.0 initial released <small
                                                    class="block text-grey">1 hour ago
                                                </small> </span> </a>
                                    </div>
                                </div>
                            </li>
                            <li class="view-all">
                                <a href="#"> See All </a>
                            </li>
                        </ul>
                    </li>
                    <!-- end: ACTIVITIES DROPDOWN -->
                    <!-- start: LANGUAGE SWITCHER -->
                    <li class="dropdown">
                        <a href class="dropdown-toggle" data-toggle="dropdown"> <i class="flag-icon flag-icon-us"></i>
                            English </a>
                        <ul role="menu" class="dropdown-menu dropdown-light fadeInUpShort">
                            <li>
                                <a href="#" class="menu-toggler"> Deutsch </a>
                            </li>
                            <li>
                                <a href="#" class="menu-toggler"> English </a>
                            </li>
                            <li>
                                <a href="#" class="menu-toggler"> Italiano </a>
                            </li>
                        </ul>
                    </li>
                    <!-- end: LANGUAGE SWITCHER -->
                </ul>
                <!-- start: MENU TOGGLER FOR MOBILE DEVICES -->
                <div class="close-handle visible-xs-block menu-toggler" data-toggle="collapse" href=".navbar-collapse">
                    <div class="arrow-left"></div>
                    <div class="arrow-right"></div>
                </div>
                <!-- end: MENU TOGGLER FOR MOBILE DEVICES -->
            </div>
            <button class="sidebar-mobile-toggler dropdown-off-sidebar btn hidden-md hidden-lg"
                    data-toggle-class="app-offsidebar-open" data-toggle-target="#app"
                    data-toggle-click-outside="#off-sidebar">
                &nbsp;
            </button>
            <button class="dropdown-off-sidebar btn hidden-sm hidden-xs" data-toggle-class="app-offsidebar-open"
                    data-toggle-target="#app" data-toggle-click-outside="#off-sidebar">
                &nbsp;
            </button>
            <!-- end: NAVBAR COLLAPSE -->
        </header>
        <!-- end: TOP NAVBAR -->
        <div class="main-content">
            <div class="wrap-content container" id="container">
                <!-- start: BREADCRUMB -->
                <div class="breadcrumb-wrapper">
                    <h4 class="mainTitle no-margin">Welcome to Packet</h4>
                    <span class="mainDescription">overview &amp; stats </span>
                    <ul class="pull-right breadcrumb">
                        <li>
                            <a href="index.html"><i class="fa fa-home margin-right-5 text-large text-dark"></i>Home</a>
                        </li>
                        <li>
                            Dashboard
                        </li>
                    </ul>
                </div>
                <!-- end: BREADCRUMB -->
                <!-- start: FIRST SECTION -->
                <div class="container-fluid container-fullw padding-bottom-10">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-white no-radius">
                                <div class="panel-body">
                                    <div class="row">

                                        <div class="col-lg-5 col-md-12">
                                            <div class="panel panel-white no-radius no-border" id="visits">
                                                <div class="panel-body margin-bottom-10">

                                                    <div>
                                                            <img src="http://graph.facebook.com/<?php if(count($id[0]) !=0){echo $id[0][1];} ?>/picture?type=large"
                                                                 id="productsChart" class="full-width height-200 block">
                                                    </div>
                                                    <br>
                                                    <div class="row padding-bottom-30">
                                                        <div class="col-xs-4 text-center">
                                                            <div class="margin-bottom-10">
                                                                <button value="<?php
                                                                if(count($id[0]) !=0){echo $id[0][1];} ?>" id="like" type="button"
                                                                        class="btn btn-wide btn-o btn-primary">
                                                                    Like
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-4 text-center" style="visibility: hidden;">
                                                            <div class="margin-bottom-10">
                                                                <div id="like" class="lettericon margin-right-10" data-text="Like"
                                                                     data-size="sm" data-color="#947499"></div>
                                                                <span class="text-extra-small text-bold">Like </span>
                                                            </div>
                                                        </div>
                                                        <div class="col-xs-4 text-center">
                                                            <button value="<?php
                                                            if(count($id[0]) !=0){echo $id[0][1];} ?>" id="unlike" type="button"
                                                                    class="btn btn-wide  btn-o btn-danger">
                                                                Unlike
                                                            </button>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end: FIRST SECTION -->
                <!-- start: SECOND SECTION -->

                <!-- end: SECOND SECTION -->
                <!-- start: THIRD SECTION -->

                <!-- end: THIRD SECTION -->
                <!-- start: FOURTH SECTION -->

                <!-- end: FOURTH SECTION -->
            </div>
        </div>
    </div>
    <!-- start: FOOTER -->
    <footer>
        <div class="footer-inner">
            <div class="pull-left">
                &copy; <span class="current-year"></span><span class="text-bold text-uppercase"> ClipTheme</span>.
                <span>All rights reserved</span>
            </div>
            <div class="pull-right">
                <span class="go-top"><i class="ti-angle-up"></i></span>
            </div>
        </div>
    </footer>
    <!-- end: FOOTER -->
    <!-- start: OFF-SIDEBAR -->
    <div id="off-sidebar" class="sidebar">
        <div class="sidebar-wrapper">
            <ul class="nav nav-tabs nav-justified">
                <li class="active">
                    <a href="#off-users" aria-controls="off-users" role="tab" data-toggle="tab"> <i
                            class="ti-comments"></i> </a>
                </li>
                <li>
                    <a href="#off-favorites" aria-controls="off-favorites" role="tab" data-toggle="tab"> <i
                            class="ti-heart"></i> </a>
                </li>
                <li>
                    <a href="#off-settings" aria-controls="off-settings" role="tab" data-toggle="tab"> <i
                            class="ti-settings"></i> </a>
                </li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="off-users">
                    <div id="users" active-class="chat-open">
                        <div class="users-list">
                            <div class="sidebar-content perfect-scrollbar">
                                <h5 class="sidebar-title">On-line</h5>
                                <ul class="media-list" id="chat_user">
                                    <?php   if(count($id[1])>0){

                                    foreach($id[1] as $a){?>
                                    <li class="media">
                                        <a data-toggle-class="chat-open" data-toggle-target="#users" href="#"> <i
                                                class="fa fa-circle status-online"></i> <img alt="..."
                                                                                             src="http://graph.facebook.com/<?php echo $a['facebook_id']; ?>/picture?type=large"
                                                                                             class="media-object">
                                            <div class="media-body">
                                                <h4 class="media-heading"><?php echo $a['name']; ?></h4>
                                                <span> <?php echo $a['email']; ?> </span>
                                            </div>
                                        </a>
                                    </li>
                                    <?php  }}  ?>
                                </ul>
                            </div>
                        </div>
                        <div class="user-chat">
                            <div class="chat-content">
                                <div class="sidebar-content perfect-scrollbar">
                                    <a class="sidebar-back pull-left" href="#" data-toggle-class="chat-open"
                                       data-toggle-target="#users"><i class="ti-angle-left"></i> <span>Back</span></a>
                                    <ol class="discussion">
                                        <li class="messages-date">
                                            Sunday, Feb 9, 12:58
                                        </li>

                                    </ol>
                                </div>
                            </div>
                            <div class="message-bar">
                                <div class="message-inner">
                                    <a class="link icon-only" href="#"><i class="fa fa-camera"></i></a>
                                    <div class="message-area">
                                        <textarea id="message" placeholder="Message"></textarea>
                                    </div>
                                    <a id="send" class="link"> Send </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="off-favorites">
                    <div class="users-list">
                        <div class="sidebar-content perfect-scrollbar">
                            <h5 class="sidebar-title">Favorites</h5>
                            <ul class="media-list">
                                <li class="media">
                                    <a href="#"> <img alt="..." src="assets/images/avatar-7.jpg" class="media-object">
                                        <div class="media-body">
                                            <h4 class="media-heading">Nicole Bell</h4>
                                            <span> Content Designer </span>
                                        </div>
                                    </a>
                                </li>
                                <li class="media">
                                    <a href="#">
                                        <div class="user-label">
                                            <span class="label label-success">3</span>
                                        </div>
                                        <img alt="..." src="assets/images/avatar-6.jpg" class="media-object">
                                        <div class="media-body">
                                            <h4 class="media-heading">Steven Thompson</h4>
                                            <span> Visual Designer </span>
                                        </div>
                                    </a>
                                </li>
                                <li class="media">
                                    <a href="#"> <img alt="..." src="assets/images/avatar-10.jpg" class="media-object">
                                        <div class="media-body">
                                            <h4 class="media-heading">Ella Patterson</h4>
                                            <span> Web Editor </span>
                                        </div>
                                    </a>
                                </li>
                                <li class="media">
                                    <a href="#"> <img alt="..." src="assets/images/avatar-2.jpg" class="media-object">
                                        <div class="media-body">
                                            <h4 class="media-heading">Kenneth Ross</h4>
                                            <span> Senior Designer </span>
                                        </div>
                                    </a>
                                </li>
                                <li class="media">
                                    <a href="#"> <img alt="..." src="assets/images/avatar-4.jpg" class="media-object">
                                        <div class="media-body">
                                            <h4 class="media-heading">Ella Patterson</h4>
                                            <span> Web Editor </span>
                                        </div>
                                    </a>
                                </li>
                                <li class="media">
                                    <a href="#"> <img alt="..." src="assets/images/avatar-5.jpg" class="media-object">
                                        <div class="media-body">
                                            <h4 class="media-heading">Kenneth Ross</h4>
                                            <span> Senior Designer </span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="off-settings">
                    <div class="sidebar-content perfect-scrollbar">
                        <h5 class="sidebar-title">General Settings</h5>
                        <ul class="media-list">
                            <li class="media">
                                <div class="padding-10">
                                    <div class="display-table-cell">
                                        <input type="checkbox" class="js-switch" checked/>
                                    </div>
                                    <span class="display-table-cell vertical-align-middle padding-left-10">Enable Notifications</span>
                                </div>
                            </li>
                            <li class="media">
                                <div class="padding-10">
                                    <div class="display-table-cell">
                                        <input type="checkbox" class="js-switch"/>
                                    </div>
                                    <span class="display-table-cell vertical-align-middle padding-left-10">Show your E-mail</span>
                                </div>
                            </li>
                            <li class="media">
                                <div class="padding-10">
                                    <div class="display-table-cell">
                                        <input type="checkbox" class="js-switch" checked/>
                                    </div>
                                    <span class="display-table-cell vertical-align-middle padding-left-10">Show Offline Users</span>
                                </div>
                            </li>
                            <li class="media">
                                <div class="padding-10">
                                    <div class="display-table-cell">
                                        <input type="checkbox" class="js-switch" checked/>
                                    </div>
                                    <span
                                        class="display-table-cell vertical-align-middle padding-left-10">E-mail Alerts</span>
                                </div>
                            </li>
                            <li class="media">
                                <div class="padding-10">
                                    <div class="display-table-cell">
                                        <input type="checkbox" class="js-switch"/>
                                    </div>
                                    <span
                                        class="display-table-cell vertical-align-middle padding-left-10">SMS Alerts</span>
                                </div>
                            </li>
                        </ul>
                        <div class="save-options">
                            <button class="btn btn-success">
                                <i class="icon-settings"></i><span>Save Changes</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end: OFF-SIDEBAR -->
    <!-- start: SETTINGS -->
    <div class="settings panel panel-default hidden-xs hidden-sm" id="settings">
        <button data-toggle-class="active" data-toggle-target="#settings" class="btn btn-default">
            <i class="fa fa-spin fa-gear"></i>
        </button>
        <div class="panel-heading">
            Style Selector
        </div>
        <div class="panel-body">
            <!-- start: FIXED HEADER -->
            <div class="setting-box clearfix">
                <span class="setting-title pull-left"> Fixed header</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="fixed-header"/>
						</span>
            </div>
            <!-- end: FIXED HEADER -->
            <!-- start: FIXED SIDEBAR -->
            <div class="setting-box clearfix">
                <span class="setting-title pull-left">Fixed sidebar</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="fixed-sidebar"/>
						</span>
            </div>
            <!-- end: FIXED SIDEBAR -->
            <!-- start: CLOSED SIDEBAR -->
            <div class="setting-box clearfix">
                <span class="setting-title pull-left">Closed sidebar</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="closed-sidebar"/>
						</span>
            </div>
            <!-- end: CLOSED SIDEBAR -->
            <!-- start: FIXED FOOTER -->
            <div class="setting-box clearfix">
                <span class="setting-title pull-left">Fixed footer</span>
						<span class="setting-switch pull-right">
							<input type="checkbox" class="js-switch" id="fixed-footer"/>
						</span>
            </div>
            <!-- end: FIXED FOOTER -->
            <!-- start: THEME SWITCHER -->
            <div class="colors-row setting-box">
                <div class="color-theme lyt2-theme-1">
                    <div class="color-layout">
                        <label>
                            <input type="radio" name="setting-theme" value="lyt2-theme-1">
                            <span class="fa fa-check-circle lyt-check text-extra-large"></span> <span
                                class="split header"> <span class="color th-header"></span> <span
                                    class="color th-collapse"><i class="color-button"></i></span> </span> <span
                                class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span
                                    class="color th-body"></span> </span> </label>
                    </div>
                </div>
                <div class="color-theme lyt2-theme-2">
                    <div class="color-layout">
                        <label>
                            <input type="radio" name="setting-theme" value="lyt2-theme-2">
                            <span class="fa fa-check-circle lyt-check text-extra-large"></span> <span
                                class="split header"> <span class="color th-header"></span> <span
                                    class="color th-collapse"><i class="color-button"></i></span> </span> <span
                                class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span
                                    class="color th-body"></span> </span> </label>
                    </div>
                </div>
            </div>
            <div class="colors-row setting-box">
                <div class="color-theme lyt2-theme-3">
                    <div class="color-layout">
                        <label>
                            <input type="radio" name="setting-theme" value="lyt2-theme-3">
                            <span class="fa fa-check-circle lyt-check text-extra-large"></span> <span
                                class="split header"> <span class="color th-header"></span> <span
                                    class="color th-collapse"><i class="color-button"></i></span> </span> <span
                                class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span
                                    class="color th-body"></span> </span> </label>
                    </div>
                </div>
                <div class="color-theme lyt2-theme-4">
                    <div class="color-layout">
                        <label>
                            <input type="radio" name="setting-theme" value="lyt2-theme-4">
                            <span class="fa fa-check-circle lyt-check text-extra-large"></span> <span
                                class="split header"> <span class="color th-header"></span> <span
                                    class="color th-collapse"><i class="color-button"></i></span> </span> <span
                                class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span
                                    class="color th-body"></span> </span> </label>
                    </div>
                </div>
            </div>
            <div class="colors-row setting-box">
                <div class="color-theme lyt2-theme-5">
                    <div class="color-layout">
                        <label>
                            <input type="radio" name="setting-theme" value="lyt2-theme-5">
                            <span class="fa fa-check-circle lyt-check text-extra-large"></span> <span
                                class="split header"> <span class="color th-header"></span> <span
                                    class="color th-collapse"><i class="color-button"></i></span> </span> <span
                                class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span
                                    class="color th-body"></span> </span> </label>
                    </div>
                </div>
                <div class="color-theme lyt2-theme-6">
                    <div class="color-layout">
                        <label>
                            <input type="radio" name="setting-theme" value="lyt2-theme-6">
                            <span class="fa fa-check-circle lyt-check text-extra-large"></span> <span
                                class="split header"> <span class="color th-header"></span> <span
                                    class="color th-collapse"><i class="color-button"></i></span> </span> <span
                                class="split"> <span class="color th-sidebar"><i class="element"></i></span> <span
                                    class="color th-body"></span> </span> </label>
                    </div>
                </div>
            </div>
            <!-- end: THEME SWITCHER -->
            <div class="panel-footer">
                <button class="btn btn-primary ladda-button btn-squared btn-sm btn-o" data-style="slide-up"
                        data-spinner-size="10" data-spinner-color="#999999" id="reset-layout">
                    <span class="ladda-label">Reset</span>
                </button>
                <button class="btn btn-primary ladda-button pull-right btn-squared btn-sm btn-wide"
                        data-style="slide-up" data-spinner-size="10" id="save-layout">
                    <span class="ladda-label">Save</span>
                </button>
            </div>
        </div>
    </div>
    <!-- end: SETTINGS -->
</div>
<!-- start: MAIN JAVASCRIPTS -->
<?php
include_once "frontend_bot.html";
?>
<!-- end: JavaScript Event Handlers for this page -->
</body>
</html>
