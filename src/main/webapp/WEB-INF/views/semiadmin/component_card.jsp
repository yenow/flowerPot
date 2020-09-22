<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Card - Voler Admin Dashboard</title>
    
    <link rel="stylesheet" href="../resources/semiadmin_css/assets/css/bootstrap.css">
    
    <link rel="stylesheet" href="../resources/semiadmin_css/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="../resources/semiadmin_css/assets/css/app.css">
    <link rel="shortcut icon" href="../resources/semiadmin_css/assets/images/favicon.svg" type="image/x-icon">
</head>
<body>
    <div id="app">
        <div id="sidebar" class='active'>
            <div class="sidebar-wrapper active">
    <div class="sidebar-header">
        <img src="../resources/semiadmin_css/assets/images/logo.svg" alt="" srcset="">
    </div>
    <div class="sidebar-menu">
        <ul class="menu">
            
            
                <li class='sidebar-title'>Main Menu</li>
            
            
            
                <li class="sidebar-item  ">
                    <a href="index" class='sidebar-link'>
                        <i data-feather="home" width="20"></i> 
                        <span>Dashboard</span>
                    </a>
                    
                </li>

            
            
            
                <li class="sidebar-item active has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="triangle" width="20"></i> 
                        <span>Components</span>
                    </a>
                    
                    <ul class="submenu active">
                        
                        <li>
                            <a href="component_alert">Alert</a>
                        </li>
                        
                        <li>
                            <a href="component_badge">Badge</a>
                        </li>
                        
                        <li>
                            <a href="component_breadcrumb">Breadcrumb</a>
                        </li>
                        
                        <li>
                            <a href="component_buttons">Buttons</a>
                        </li>
                        
                        <li>
                            <a href="component_card">Card</a>
                        </li>
                        
                        <li>
                            <a href="component_carousel">Carousel</a>
                        </li>
                        
                        <li>
                            <a href="component_dropdowns">Dropdowns</a>
                        </li>
                        
                        <li>
                            <a href="component_list_group">List Group</a>
                        </li>
                        
                        <li>
                            <a href="component_modal">Modal</a>
                        </li>
                        
                        <li>
                            <a href="component_navs">Navs</a>
                        </li>
                        
                        <li>
                            <a href="component_pagination">Pagination</a>
                        </li>
                        
                        <li>
                            <a href="component_progress">Progress</a>
                        </li>
                        
                        <li>
                            <a href="component_spinners">Spinners</a>
                        </li>
                        
                        <li>
                            <a href="component_tooltips">Tooltips</a>
                        </li>
                        
                    </ul>
                    
                </li>

            
            
            
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="briefcase" width="20"></i> 
                        <span>Extra Components</span>
                    </a>
                    
                    <ul class="submenu ">
                        
                        <li>
                            <a href="component_extra_avatar">Avatar</a>
                        </li>
                        
                        <li>
                            <a href="component_extra_divider">Divider</a>
                        </li>
                        
                    </ul>
                    
                </li>

            
            
            
                <li class='sidebar-title'>Forms &amp; Tables</li>
            
            
            
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="file-text" width="20"></i> 
                        <span>Form Elements</span>
                    </a>
                    
                    <ul class="submenu ">
                        
                        <li>
                            <a href="form_element_input">Input</a>
                        </li>
                        
                        <li>
                            <a href="form_element_input_group">Input Group</a>
                        </li>
                        
                        <li>
                            <a href="form_element_select">Select</a>
                        </li>
                        
                        <li>
                            <a href="form_element_radio">Radio</a>
                        </li>
                        
                        <li>
                            <a href="form_element_checkbox">Checkbox</a>
                        </li>
                        
                        <li>
                            <a href="form_element_textarea">Textarea</a>
                        </li>
                        
                    </ul>
                    
                </li>

            
            
            
                <li class="sidebar-item  ">
                    <a href="form_layout" class='sidebar-link'>
                        <i data-feather="layout" width="20"></i> 
                        <span>Form Layout</span>
                    </a>
                    
                </li>

            
            
            
                <li class="sidebar-item  ">
                    <a href="form_editor" class='sidebar-link'>
                        <i data-feather="layers" width="20"></i> 
                        <span>Form Editor</span>
                    </a>
                    
                </li>

            
            
            
                <li class="sidebar-item  ">
                    <a href="table" class='sidebar-link'>
                        <i data-feather="grid" width="20"></i> 
                        <span>Table</span>
                    </a>
                    
                </li>

            
            
            
                <li class="sidebar-item  ">
                    <a href="table_datatable" class='sidebar-link'>
                        <i data-feather="file-plus" width="20"></i> 
                        <span>Datatable</span>
                    </a>
                    
                </li>

            
            
            
                <li class='sidebar-title'>Extra UI</li>
            
            
            
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="user" width="20"></i> 
                        <span>Widgets</span>
                    </a>
                    
                    <ul class="submenu ">
                        
                        <li>
                            <a href="ui_chatbox">Chatbox</a>
                        </li>
                        
                        <li>
                            <a href="ui-pricing">Pricing</a>
                        </li>
                        
                        <li>
                            <a href="ui_todolist">To-do List</a>
                        </li>
                        
                    </ul>
                    
                </li>

            
            
            
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="trending-up" width="20"></i> 
                        <span>Charts</span>
                    </a>
                    
                    <ul class="submenu ">
                        
                        <li>
                            <a href="ui_chart_chartjs">ChartJS</a>
                        </li>
                        
                        <li>
                            <a href="ui_chart_apexchart">Apexchart</a>
                        </li>
                        
                    </ul>
                    
                </li>

            
            
            
                <li class='sidebar-title'>Pages</li>
            
            
            
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="user" width="20"></i> 
                        <span>Authentication</span>
                    </a>
                    
                    <ul class="submenu ">
                        
                        <li>
                            <a href="auth_login">Login</a>
                        </li>
                        
                        <li>
                            <a href="auth_register">Register</a>
                        </li>
                        
                        <li>
                            <a href="auth_forgot_password">Forgot Password</a>
                        </li>
                        
                    </ul>
                    
                </li>

            
            
            
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="alert-circle" width="20"></i> 
                        <span>Errors</span>
                    </a>
                    
                    <ul class="submenu ">
                        
                        <li>
                            <a href="error_403">403</a>
                        </li>
                        
                        <li>
                            <a href="error_404">404</a>
                        </li>
                        
                        <li>
                            <a href="error_500">500</a>
                        </li>
                        
                    </ul>
                    
                </li>

            
            
         
        </ul>
    </div>
    <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
</div>
        </div>
        <div id="main">
            <nav class="navbar navbar-header navbar-expand navbar-light">
                <a class="sidebar-toggler" href="#"><span class="navbar-toggler-icon"></span></a>
                <button class="btn navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav d-flex align-items-center navbar-light ml-auto">
                        <li class="dropdown nav-icon">
                            <a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
                                <div class="d-lg-inline-block">
                                    <i data-feather="bell"></i>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-large">
                                <h6 class='py-2 px-4'>Notifications</h6>
                                <ul class="list-group rounded-none">
                                    <li class="list-group-item border-0 align-items-start">
                                        <div class="avatar bg-success mr-3">
                                            <span class="avatar-content"><i data-feather="shopping-cart"></i></span>
                                        </div>
                                        <div>
                                            <h6 class='text-bold'>New Order</h6>
                                            <p class='text-xs'>
                                                An order made by Ahmad Saugi for product Samsung Galaxy S69
                                            </p>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="dropdown nav-icon mr-2">
                            <a href="#" data-toggle="dropdown" class="nav-link  dropdown-toggle nav-link-lg nav-link-user">
                                <div class="d-lg-inline-block">
                                    <i data-feather="mail"></i>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a>
                                <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a>
                                <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="nav-link dropdown-toggle nav-link-lg nav-link-user">
                                <div class="avatar mr-1">
                                    <img src="../resources/semiadmin_css/assets/images/avatar/avatar-s-1.png" alt="" srcset="">
                                </div>
                                <div class="d-none d-md-block d-lg-inline-block">Hi, Saugi</div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right">
                                <a class="dropdown-item" href="#"><i data-feather="user"></i> Account</a>
                                <a class="dropdown-item active" href="#"><i data-feather="mail"></i> Messages</a>
                                <a class="dropdown-item" href="#"><i data-feather="settings"></i> Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i data-feather="log-out"></i> Logout</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
            
<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6">
                <h3>Card</h3>
                <p class="text-subtitle text-muted">Bootstrap’s cards provide a flexible and extensible content container with multiple variants and options.</p>
            </div>
            <div class="col-12 col-md-6">
                <nav aria-label="breadcrumb" class='breadcrumb-header text-right'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index">Dashboard</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Card</li>
                    </ol>
                </nav>
            </div>
        </div>

    </div>
    <!-- Basic card section start -->
    <section id="content-types">
        <div class="row">
            <div class="col-xl-4 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <h4 class="card-title">Card With Header And Footer</h4>
                            <p class="card-text">
                                Gummies bonbon apple pie fruitcake icing biscuit apple pie jelly-o sweet roll. Toffee
                                sugar plum sugar plum jelly-o jujubes bonbon dessert carrot cake.
                            </p>
                        </div>
                        <img class="img-fluid" src="../resources/semiadmin_css/assets/images/samples/road-over-dutch-dike-PLN5XJR.jpg" alt="Card image cap">
                    </div>
                    <div class="card-footer d-flex justify-content-between">
                        <span>Card Footer</span>
                        <button class="btn btn-light-primary">Read More</button>
                    </div>
                </div>
                <div class="card collapse-icon accordion-icon-rotate">
                    <div class="card-header">
                        <h1 class="card-title pl-1">Accordion</h1>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            <div class="accordion" id="cardAccordion">
                                <div class="card">
                                    <div class="card-header" id="headingOne" data-toggle="collapse" data-target="#collapseOne"
                                        aria-expanded="false" aria-controls="collapseOne" role="button">
                                        <span class="collapsed collapse-title">Accordion Item 1</span>
                                    </div>
                                    <div id="collapseOne" class="collapse pt-1" aria-labelledby="headingOne"
                                        data-parent="#cardAccordion">
                                        <div class="card-body">
                                            Cheesecake muffin cupcake dragée lemon drops tiramisu cake gummies chocolate
                                            cake. Marshmallow tart
                                            croissant. Tart dessert tiramisu marzipan lollipop lemon drops.
                                        </div>
                                    </div>
                                </div>
                                <div class="card collapse-header">
                                    <div class="card-header" id="headingTwo" data-toggle="collapse" data-target="#collapseTwo"
                                        aria-expanded="false" aria-controls="collapseTwo" role="button">
                                        <span class="collapsed collapse-title">Accordion Item 2</span>
                                    </div>
                                    <div id="collapseTwo" class="collapse pt-1" aria-labelledby="headingTwo"
                                        data-parent="#cardAccordion">
                                        <div class="card-body">
                                            Pastry pudding cookie toffee bonbon jujubes jujubes powder topping. Jelly beans
                                            gummi bears sweet
                                            roll bonbon muffin liquorice. Wafer lollipop sesame snaps.
                                        </div>
                                    </div>
                                </div>
                                <div class="card open">
                                    <div class="card-header" id="headingThree" data-toggle="collapse" data-target="#collapseThree"
                                        aria-expanded="true" aria-controls="collapseThree" role="button">
                                        <span class="collapsed collapse-title">Accordion Item 3</span>
                                    </div>
                                    <div id="collapseThree" class="collapse show pt-1" aria-labelledby="headingThree"
                                        data-parent="#cardAccordion">
                                        <div class="card-body">
                                            Sweet pie candy jelly. Sesame snaps biscuit sugar plum. Sweet roll topping
                                            fruitcake. Caramels
                                            liquorice biscuit ice cream fruitcake cotton candy tart.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header" id="headingFour" data-toggle="collapse" data-target="#collapseFour"
                                        aria-expanded="false" aria-controls="collapseFour" role="button">
                                        <span class="collapsed  collapse-title">Accordion Item 4</span>
                                    </div>
                                    <div id="collapseFour" class="collapse pt-1" aria-labelledby="headingFour"
                                        data-parent="#cardAccordion">
                                        <div class="card-body">
                                            Sweet pie candy jelly. Sesame snaps biscuit sugar plum. Sweet roll topping
                                            fruitcake. Caramels
                                            liquorice biscuit ice cream fruitcake cotton candy tart.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-content">
                        <img src="../resources/semiadmin_css/assets/images/samples/inspirational-aerial-landscape-autumn-forest-and-FU2LKHA.jpg" class="card-img-top img-fluid"
                            alt="singleminded">
                        <div class="card-body">
                            <h5 class="card-title">Be Single Minded</h5>
                            <p class="card-text">
                                Chocolate sesame snaps apple pie danish cupcake sweet roll jujubes tiramisu.Gummies
                                bonbon apple pie fruitcake icing biscuit apple pie jelly-o sweet roll.
                            </p>
                        </div>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Cras justo odio</li>
                        <li class="list-group-item">Dapibus ac facilisis in</li>
                        <li class="list-group-item">Vestibulum at eros</li>
                    </ul>
                </div>
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <h4 class="card-title mb-0">Video Card</h4>
                        </div>
                        <div class="embed-responsive embed-responsive-item embed-responsive-16by9">
                            <iframe src="https://www.youtube.com/embed/1La4QzGeaaQ" allowfullscreen></iframe>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                                Candy cupcake sugar plum oat cake wafer marzipan jujubes.
                                Jelly-o sesame snaps cheesecake topping. Cupcake fruitcake macaroon donut pastry gummies
                                tiramisu
                                chocolate bar muffin.
                            </p>
                            <a href="#" class="card-link">Card link</a>
                            <a href="#" class="card-link">Another link</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <h4 class="card-title">Carousel</h4>
                            <h6 class="card-subtitle">Support card subtitle</h6>
                        </div>
                        <div id="carousel-example-card" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-card" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-card" data-slide-to="1"></li>
                                <li data-target="#carousel-example-card" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner rounded-0" role="listbox">
                                <div class="carousel-item active">
                                    <img src="../resources/semiadmin_css/assets/images/samples/white-pelicans-pelecanus-onocrotalus-P4TFZ6E.jpg" class="d-block w-100"
                                        alt="First slide">
                                </div>
                                <div class="carousel-item">
                                    <img src="../resources/semiadmin_css/assets/images/samples/lovatnet-lake-beautiful-nature-norway-PUTLQJ4.jpg" class="d-block w-100"
                                        alt="Second slide">
                                </div>
                                <div class="carousel-item">
                                    <img src="../resources/semiadmin_css/assets/images/samples/moody-autumn-day-in-the-dolomites-forest-and-MBFNHV2.jpg" class="d-block w-100"
                                        alt="Third slide">
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carousel-example-card" role="button" data-slide="prev">
                                <span class="bx bx-chevron-left icon-prev" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carousel-example-card" role="button" data-slide="next">
                                <span class="bx bx-chevron-right icon-next" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Sunt assumenda mollitia
                                officia dolorum eius quasi.Chocolate sesame snaps apple pie danish cupcake sweet roll
                                jujubes tiramisu.
                            </p>
                            <p class="card-text">
                                Gummies bonbon apple pie fruitcake icing biscuit apple pie jelly-o sweet roll. Toffee sugar
                                plum sugar
                                plum jelly-o jujubes bonbon dessert carrot cake.
                                Sweet pie candy jelly. Sesame snaps biscuit sugar plum. Sweet roll topping fruitcake.
                                Caramels liquorice
                                biscuit ice cream fruitcake cotton candy tart.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <h4 class="card-title">Feedback Form</h4>
                            <p class="card-text">
                                Gummies bonbon apple pie fruitcake icing biscuit apple pie jelly-o sweet roll. Toffee sugar
                                plum sugar
                                plum jelly-o jujubes bonbon dessert carrot cake.
                            </p>
                            <form class="form" method="post">
                                <div class="form-body">
                                    <div class="form-group">
                                        <label for="feedback1" class="sr-only">Name</label>
                                        <input type="text" id="feedback1" class="form-control" placeholder="Name" name="name">
                                    </div>
                                    <div class="form-group">
                                        <label for="feedback4" class="sr-only">Last Game</label>
                                        <input type="text" id="feedback4" class="form-control" placeholder="Last Name" name="LastName">
                                    </div>
                                    <div class="form-group">
                                        <label for="feedback2" class="sr-only">Email</label>
                                        <input type="email" id="feedback2" class="form-control" placeholder="Email" name="email">
                                    </div>
                                    <div class="form-group">
                                        <select name="reason" class="form-control">
                                            <option value="Inquiry">Inquiry</option>
                                            <option value="Complain">complaints</option>
                                            <option value="Quotation">Quotation</option>
                                        </select>
                                    </div>
                                    <div class="form-group form-label-group">
                                        <textarea class="form-control" id="label-textarea" rows="3" placeholder="Suggestion"></textarea>
                                        <label for="label-textarea"></label>
                                    </div>
                                </div>
                                <div class="form-actions d-flex justify-content-end">
                                    <button type="submit" class="btn btn-primary mr-1">Submit</button>
                                    <button type="reset" class="btn btn-light-primary">Cancel</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-content">
                        <img class="card-img-top img-fluid" src="../resources/semiadmin_css/assets/images/samples/aerial-panoramic-image-of-sansonvale-lake-X6TCENW.jpg"
                            alt="Card image cap" />
                        <div class="card-body">
                            <h4 class="card-title">Top Image Cap</h4>
                            <p class="card-text">
                                Jelly-o sesame snaps cheesecake topping. Cupcake fruitcake macaroon donut
                                pastry gummies tiramisu chocolate bar muffin. Dessert bonbon caramels brownie chocolate bar
                                chocolate tart dragée.
                            </p>
                            <p class="card-text">
                                Cupcake fruitcake macaroon donut pastry gummies tiramisu chocolate bar muffin.
                            </p>
                            <button class="btn btn-primary block">Update now</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body">
                            <h4 class="card-title">Bottom Image Cap</h4>
                            <p class="card-text">
                                Jelly-o sesame snaps cheesecake topping. Cupcake fruitcake macaroon donut
                                pastry gummies tiramisu chocolate bar muffin. Dessert bonbon caramels brownie chocolate bar
                                chocolate tart dragée.
                            </p>
                            <p class="card-text">
                                Cupcake fruitcake macaroon donut pastry gummies tiramisu chocolate bar
                                muffin.
                            </p>
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                        <img class="card-img-bottom img-fluid" src="../resources/semiadmin_css/assets/images/samples/inspirational-aerial-landscape-autumn-forest-and-FU2LKHA.jpg"
                            alt="Card image cap">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Basic Card types section end -->
    
    <!-- Card Captions and Overlay section start -->
    <section id="card-caps">
        <div class="row">
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-content">
                        <img class="card-img img-fluid" src="../resources/semiadmin_css/assets/images/samples/programmers-coding-computer-app-7CFXNL5.jpg" alt="Card image">
                        <div class="card-img-overlay overlay-dark d-flex justify-content-between flex-column">
                            <div class="overlay-content">
                                <p class="card-text text-ellipsis">
                                    Sugar plum tiramisu sweet. Cake jelly marshmallow cotton candy chupa
                                    chups.
                                </p>
                            </div>
                            <div class="overlay-status">
                                <p class="mb-25"><small>Last updated 3 mins ago</small></p>
                                <a href="#" class="btn btn-outline-white btn-sm">Check More </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-content">
                        <img class="card-img img-fluid" src="../resources/semiadmin_css/assets/images/samples/modern-teaching-concept-P7BTJU7.jpg" alt="Card image">
                        <div class="card-img-overlay overlay-dark bg-overlay d-flex justify-content-between flex-column">
                            <div class="overlay-content">
                                <h4 class="card-title mb-50">Online Messages</h4>
                                <p class="card-text text-ellipsis">
                                    Sugar plum tiramisu sweet. Cake jelly marshmallow cotton candy chupa
                                    chups.
                                </p>
                            </div>
                            <div class="overlay-status">
                                <p class="mb-25"><small>Last updated 3 mins ago</small></p>
                                <a href="#" class="btn btn-primary btn-sm">Check More </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-content">
                        <img class="card-img img-fluid" src="../resources/semiadmin_css/assets/images/samples/happy-children-building-robots-at-robotics-school-PW3NYKH.jpg" alt="Card image">
                        <div class="card-img-overlay overlay-dark d-flex justify-content-between flex-column">
                            <div class="overlay-content">
                                <p class="card-text text-ellipsis">
                                    Sugar plum tiramisu sweet. Cake jelly marshmallow cotton candy chupa
                                    chups.
                                </p>
                            </div>
                            <div class="overlay-status text-right">
                                <p class="mb-25"><small>Last updated 3 mins ago</small></p>
                                <a href="#" class="btn btn-outline-white btn-sm">Check More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-content">
                        <img class="card-img img-fluid" src="../resources/semiadmin_css/assets/images/samples/learning-new-codes-8VKXG4E.jpg" alt="Card image">
                        <div class="card-img-overlay overlay-dark d-flex justify-content-between flex-column">
                            <div class="overlay-content">
                                <h4 class="card-title mb-50">Image Overlay</h4>
                                <p class="card-text text-ellipsis">
                                    Sugar plum tiramisu sweet. Cake jelly marshmallow cotton candy chupa
                                    chups.
                                </p>
                            </div>
                            <div class="overlay-status text-right">
                                <p class="mb-25"><small>Last updated 3 mins ago</small></p>
                                <a href="#" class="btn btn-outline-white btn-sm">Check More </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Card Captions and Overlay section end -->
    
    <!-- Background variants section start -->
    <section id="bg-variants">
        <div class="row">
            <div class="col-12 mt-3 mb-1">
                <h4 class="section-title text-uppercase">Background variants</h4>
            </div>
        </div>
        <div class="row">
            <div class="col-xl-4 col-sm-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="row no-gutters">
                            <div class="col-md-12 col-lg-4">
                                <img src="../resources/semiadmin_css/assets/images/samples/banner/banner-35.jpg" alt="element 01"
                                    class="h-100 w-100 rounded-left">
                            </div>
                            <div class="col-md-12 col-lg-8">
                                <div class="card-body">
                                    <p class="card-text text-ellipsis">
                                        Tiramisu dessert gingerbread topping tiramisu tart bonbon. Powder
                                        cotton candy sweet roll sugar plum donut jelly-o donut chocolate.
                                    </p>
                                    <span><i class="bx bx-heart font-size-large align-middle mr-50"></i> 1 ARTICLE</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-sm-6 col-12">
                <div class="card bg-primary bg-lighten-1">
                    <div class="card-content">
                        <div class="row no-gutters">
                            <div class="col-lg-4 col-md-12 d-flex align-items-center justify-content-center p-1">
                                <img src="../resources/semiadmin_css/assets/images/samples/elements/apple-lap.png" class="card-img img-fluid"
                                    alt="apple-lap.png">
                            </div>
                            <div class="col-lg-8 col-md-12">
                                <div class="card-body text-center">
                                    <h4 class="card-title white">New Arrival</h4>
                                    <p class="card-text white">Mac Book.</p>
                                    <button class="btn btn-secondary">Buy Now</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-sm-6 col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="row no-gutters">
                            <div class="col-lg-8 col-12">
                                <div class="card-body">
                                    <p class="card-text text-ellipsis">
                                        Tiramisu dessert gingerbread topping tiramisu tart bonbon. Powder
                                        cotton candy sweet roll sugar plum donut.
                                    </p>
                                    <button class="btn btn-info">View More</button>
                                </div>
                            </div>
                            <div class="col-lg-4 col-12">
                                <img src="../resources/semiadmin_css/assets/images/samples/banner/banner-30.jpg" alt="element 01"
                                    class="h-100 w-100 rounded-right">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-sm-6 col-12">
                <div class="card text-center bg-secondary bg-lighten-1">
                    <div class="card-content text-white">
                        <div class="card-body">
                            <img src="../resources/semiadmin_css/assets/images/samples/elements/amazon-speaker.png" alt="element 05"
                                class="mb-1 w-100" height="200">
                            <h4 class="card-title white">Storage Device</h4>
                            <p class="card-text">945 items</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-sm-6 col-12">
                <div class="card text-center">
                    <div class="card-content">
                        <div class="card-body">
                            <img src="../resources/semiadmin_css/assets/images/samples/elements/beats-headphones.png" alt="element 02"
                                class="mb-1">
                            <h3 class="card-title">Ceramic Bottle</h3>
                            <p class="card-text">456 items</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-sm-6 col-12">
                <div class="card text-center bg-danger bg-lighten-2">
                    <div class="card-content d-flex">
                        <div class="card-body">
                            <img src="../resources/semiadmin_css/assets/images/samples/elements/ipad-pro.png" alt="element 06" height="150"
                                class="mb-1">
                            <h4 class="card-title white">New Arrival</h4>
                            <p class="card-text white">Donut toffee candy brownie.</p>
                            <button class="btn btn-danger white">Buy Now</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Background variants section end -->
    
    <!-- Groups section start -->
    <section id="groups">
        <div class="row match-height">
            <div class="col-12 mt-3 mb-1">
                <h4 class="section-title text-uppercase">Groups</h4>
            </div>
        </div>
        <div class="row match-height">
            <div class="col-12">
                <div class="card-group">
                    <div class="card">
                        <div class="card-content">
                            <img class="card-img-top img-fluid" src="../resources/semiadmin_css/assets/images/samples/pages/content-img-3.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">
                                    This card has supporting text below as a natural lead-in to additional
                                    content.</p>
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-content">
                            <img class="card-img-top img-fluid" src="../resources/semiadmin_css/assets/images/samples/pages/content-img-2.jpg"
                                alt="Card image cap" />
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">
                                    This card has supporting text below as a natural lead-in to additional
                                    content.
                                </p>
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-content">
                            <img class="card-img-top img-fluid" src="../resources/semiadmin_css/assets/images/samples/pages/content-img-4.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">
                                    This card has supporting text below as a natural lead-in to additional
                                    content.
                                </p>
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-content">
                            <img class="card-img-top img-fluid" src="../resources/semiadmin_css/assets/images/samples/pages/content-img-1.jpg"
                                alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-title">Card title</h4>
                                <p class="card-text">
                                    This card has supporting text below as a natural lead-in to additional
                                    content.
                                </p>
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-left">
                        <p>2020 &copy; Voler</p>
                    </div>
                    <div class="float-right">
                        <p>Crafted with <span class='text-danger'><i data-feather="heart"></i></span> by <a href="http://ahmadsaugi.com">Ahmad Saugi</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="../resources/semiadmin_css/assets/js/feather-icons/feather.min.js"></script>
    <script src="../resources/semiadmin_css/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="../resources/semiadmin_css/assets/js/app.js"></script>
    
    <script src="../resources/semiadmin_css/assets/js/main.js"></script>
</body>
</html>
