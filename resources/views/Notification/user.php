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
<?php
if (isset($result)) {
    echo '<script type="text/javascript">alert("' . $result . '")</script>';
}
?>
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
        include_once "topAm&Li.php";
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
                <h2>User</h2>

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
            <form method="get" action="create">
                <button name="save" class="btn btn-primary">Create User</button>
            </form>
            <br>
            <br>

            <section class="panel">

                <div class="panel-body">
                    <table class="table table-bordered table-striped mb-none" id="datatable-editable">
                        <thead>
                        <tr>
                            <th>Id</th>
                            <th>Email</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="gradeX">
                            <?php

                            foreach ($user['user'] as $item){

                            if($item['deleted'] == 0){

                            ?>
                            <td style="width: 50px!important;">
                                <?php
                                echo $item['id'];
                                //var_dump($user);
                                ?>
                            </td>

                            <td>
                                <?php
                                echo $item['email'];
                                ?>
                            </td>
                            <td>
                                <?php
                                echo $item['name'];

                                ?>
                            </td>
                            <td>
                                <?php
                                echo $item['gender'];

                                ?>
                            </td>

                            <td class="actions">
                                <form method="get" action="get">
                                    <button name="edit" value="<?php
                                    echo $item['id'];
                                    ?>"><i class="fa fa-pencil"></i></button>
                                    <button name="delete" value="<?php
                                    echo $item['id'];
                                    ?>"><i class="fa fa-trash-o"></i></button>
                                </form>

                            </td>
                        </tr>
                        <?php } }
                        ?>
                        </tbody>
                    </table>
                </div>
            </section>
            <!-- end: page -->
        </section>

    </div>


</section>



</body>
</html>