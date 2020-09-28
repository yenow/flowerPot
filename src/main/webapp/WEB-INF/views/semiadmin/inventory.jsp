
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table - Voler Admin Dashboard</title>
    
    <link rel="stylesheet" href="../resources/semiadmin_css/assets/css/bootstrap.css">
    
    <link rel="stylesheet" href="../resources/semiadmin_css/assets/vendors/simple-datatables/style.css">

    <link rel="stylesheet" href="../resources/semiadmin_css/assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="../resources/semiadmin_css/assets/css/app.css">
    <link rel="shortcut icon" href="../resources/semiadmin_css/assets/images/favicon.svg" type="image/x-icon">
<style>
.submit{ display: inline-block; padding: 0.4rem 0.55rem; 
                          font-size: 0.75rem; font-weight: 500; line-height: 1; 
                          background-color:#5A8DEE; border-color: #5A8DEE;
                          color: #fff; text-align: center; white-space: nowrap; 
                          vertical-align: baseline; border-radius: 1rem;}
</style>
</head>
<body>

     <div id="app">
       <div id="sidebar" class='active'>
         <div class="sidebar-wrapper active">
          <div class="sidebar-header">
            <img src="../resources/semiadmin_css/assets/images/logo2.JPG" 
                  alt="" srcset=""  style="width:80%; height:80%">
    </div>
     <div class="sidebar-menu">
        <ul class="menu">
            
             <li class='sidebar-title'>Main Menu</li>
            
                <li class="sidebar-item">
                    <a href="dashboard" class='sidebar-link'>
                        <i data-feather="home" width="20"></i> 
                        <span>Dashboard</span>
                    </a>
                    
                </li>
            
                 <li class="sidebar-item">
                    <a href="semi_notice" class='sidebar-link'>
                         <i data-feather="layers" width="20"></i> 
                        <span>공지사항</span>
                    </a>
                </li>
                
                
             <li class='sidebar-title'>오늘의  &amp; 할 일 </li>
                        
                 <li class="sidebar-item">
                    <a href="form_editor" class='sidebar-link'>
                        <i data-feather="briefcase" width="20"></i> 
                        <span>배송관리</span>
                    </a>
                </li>
                
                 <li class="sidebar-item active">
                    <a href="inventory" class='sidebar-link'>
                         <i data-feather="layers" width="20"></i> 
                        <span>재고관리</span>
                    </a>
                </li>
                    
                <li class="sidebar-item ">
                    <a href="review" class='sidebar-link'>
                        <i data-feather="file-plus" width="20"></i> 
                        <span>Review후기</span>
                    </a>
                    
                            
                <li class="sidebar-item  has-sub">
                    <a href="#" class='sidebar-link'>
                        <i data-feather="trending-up" width="20"></i> 
                        <span>현황 Charts</span>
                    </a>
                    
                    <ul class="submenu ">
                        
                        <li>
                            <a href="ui_chart_chartjs">재고수량</a>
                        </li>
                        
                        <li>
                            <a href="ui_chart_apexchart">품목별 판매량</a>
                        </li>
                    </ul>
                </li>
                    
             <li class='sidebar-title'>개인 스케줄 </li>
 
                <li class="sidebar-item  ">
                    <a href="form_layout" class='sidebar-link'>
                        <i data-feather="layout" width="20"></i> 
                        <span>Calendar</span>
                    </a>
                </li>
            
                <li class="sidebar-item  ">
                    <a href="ui_todolist" class='sidebar-link'>
                        <i data-feather="layers" width="20"></i> 
                        <span>To-do List</</span>
                    </a>
           
        </ul>
    </div>
    <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
</div>
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
                                                 An order made by Light &emp; Salt for FlowerPot
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
            
<!-- check: Bordered table start -->
<div class="main-content container-fluid">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>재고관리</h3>
                <p class="text-subtitle text-muted">FlowerPot SemiAdmin Notice <a href="https://github.com/fiduswriter/Simple-DataTables/wiki">here</a>.</p>
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class='breadcrumb-header'>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index">Main</a></li>
                        <li class="breadcrumb-item active" aria-current="page">재고관리</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    
<div class="row" id="table-bordered">
  <div class="col-12">
    <div class="card">
      <div class="card-header">
        <h4 class="card-title">재고관리</h4>
      </div>
      <div class="card-content">
        <div class="card-body">
          <p class="card-text">
          <code>재고를 바로 확인 할 수 있고 필요하신 부분이 있으시면 신청해주시기 바랍니다. </code><br/>
                        그 외의 문의사항은 언제든지 FlowerPot 담당자에게 메일로 연락주시면 됩니다.</p>
        </div>
        
          <section class="section">
        <div class="card">
            <div class="card-header">전체공지사항  </div>   
            <div class="card-body">

        <!-- table bordered -->
        <div class="table-responsive">
          <table class="table table-bordered mb-0">
            <thead>
              <tr>
                <th>화장품 번호</th>
                <th>상품명</th>
                <th>상품색상 &amp; 사이즈</th>
                <th>기존 수량</th>
                <th>추가 요청 수량 </th>
                <th>확인 </th>
              </tr>
            </thead>
            <tbody>
            
            <c:forEach var="i" items="${ilist}">
              <tr>
               <form method="post" onsubmit="return hidden1();">
              
                <td class="text-bold-500">${i.cno}</td>
                <td>${i.name}</td>
                <td class="text-bold-500" >${i.proOption}</td>
                <td>${i.stockNumber}</td>
                <td >
                   <input id ="hidden_cno" type ="number" name="plusStock" 
                         style="border: 2px solid #0d6efd; width:50%;">
                   <input type="hidden" name="cno" value="${i.cno}">    
                </td>
               
                <td>
                  <input type="submit" value="확인" class="submit">
                </td>
                
             </form>
              </tr>
            </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    </section>
  </div>
</div>

<script>
console.log(document.getElementById("hidden_cno"));

function hidden1(){
	var result = document.getElementById("hidden_cno").value;
     console.log(result);
   	 	
     if(result == ''){
    		alert ("다시 입력해주세요");
    		return false;
    	}
    }    
    	
    </script>
<!-- Bordered table end -->

             <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-left">
                        <p>2020 &copy; FlowerPot </p>
                    </div>
                    <div class="float-right">
                        <p>Crafted with <span class='text-danger'>
                        <i data-feather="heart"></i></span> by 
                        <a href="http://ahmadsaugi.com">Light & Salt</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    
    <script src="../resources/semiadmin_css/assets/js/feather-icons/feather.min.js"></script>
    <script src="../resources/semiadmin_css/assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="../resources/semiadmin_css/assets/js/app.js"></script>
    
    <script src="../resources/semiadmin_css/assets/vendors/simple-datatables/simple-datatables.js"></script>
    <script src="../resources/semiadmin_css/assets/js/vendors.js"></script>

    <script src="../resources/semiadmin_css/assets/js/main.js"></script>
    
    
</body>
</html>
