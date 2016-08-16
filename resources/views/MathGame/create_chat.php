<!doctype html>
<html class="fixed">
<head>

    <!-- Basic -->
    <meta charset="UTF-8">

    <title>Editable Tables | Porto Admin - Responsive HTML5 Template 1.4.0</title>
    <meta name="keywords" content="HTML5 Admin Template"/>
    <meta name="description" content="Porto Admin - Responsive HTML5 Template">
    <meta name="author" content="okler.net">

    <!-- Mobile Metas -->


    <!--<script src="assets/ajax/sendGcm.js"></script>-->
</head>
<body>

<section class="body">

    <!-- start: header -->
    <header class="header">
        <div class="logo-container">
            <a href="../" class="logo">
                <img src="assets/images/logo.png" height="35" alt="Porto Admin"/>
            </a>
            <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html"
                 data-fire-event="sidebar-left-opened">
                <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
            </div>
        </div>

        <!-- start: search & user box -->
        <?php
        include_once "top.php";
        ?>
        <!-- end: search & user box -->
    </header>
    <!-- end: header -->

    <div class="inner-wrapper">
        <!-- start: sidebar -->
        <?php include_once "sidebar.php" ?>


        <!-- end: sidebar -->

        <section role="main" class="content-body">
            <header class="page-header">
                <h2>Editable Tables</h2>

                <div class="right-wrapper pull-right">
                    <ol class="breadcrumbs">
                        <li>
                            <a href="index.html">
                                <i class="fa fa-home"></i>
                            </a>
                        </li>
                        <li><span>Tables</span></li>
                        <li><span>Editable</span></li>
                    </ol>

                    <a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
                </div>
            </header>

            <!-- start: page -->
            <section class="panel">

                <div class="panel-body">

                    <form id="fromid" name="formid" action="add_chat" class="form-horizontal form-bordered"
                          method="post">
                        <div class="form-group">
                            <label class="col-md-3 control-label" for="textareaAutosize">like</label>
                            <div class="col-md-6">
                                <textarea class="form-control" rows="1" id="Autosize" name="email"
                                          data-plugin-textarea-autosize></textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label" for="textareaAutosize">Passive</label>
                            <div class="col-md-6">
                                <textarea class="form-control" rows="1" id="Autosize" name="name"
                                          data-plugin-textarea-autosize></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-9 col-sm-offset-3">
                                <button name="save" class="btn btn-primary">Create like</button>
                                <button type="reset" class="btn btn-default">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
            <!-- end: page -->
        </section>

    </div>


</section>



</body>
</html>