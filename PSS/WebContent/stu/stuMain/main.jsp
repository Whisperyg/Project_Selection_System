<%@ page language="java" import="java.util.*,com.pss.user.Student" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>学生选题信息管理系统——学生界面</title>
    <!-- Bootstrap Styles-->
    <link href="<%=basePath %>assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="<%=basePath %>assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="<%=basePath %>assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="<%=basePath %>assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    
    <link href="style_1.css" type="text/css" rel="stylesheet"/>
</head>

<body>
<% 	Student stu = null;
  		if(session.getAttribute("student")==null){
  			stu=new Student("U1", "学生1号", "0","男", "CS1705", "组1","组长",0);
  		}else{
  			stu = (Student)session.getAttribute("student");}
  %>
   <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="<%=basePath %>assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="<%=request.getContextPath() %>/assets/js/jquery.metisMenu.js"></script>
    <!-- Morris Chart Js -->
    <script src="<%=request.getContextPath() %>/assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/morris/morris.js"></script>
    <!-- Custom Js -->
    <script src="<%=request.getContextPath() %>/assets/js/custom-scripts.js"></script>
    <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">学生选题信息管理系统</a>
            </div>

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Doe</strong>
                                    <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem Ipsum has been the industry's standard dummy text ever since the...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <!-- /.dropdown -->
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
        </nav>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

<!-- tab-panel.html 选择课题
ui-elements.html 个人信息
table.html 查看可选队伍
form.html 创建队伍
index.html 查看已选课题
 -->
                    <li>
                        <a class="active-menu" href="index.html"><i class="fa fa-bell"></i> 选题通知</a>
                    </li>
                    <li>
                        <a href="tab-panel.html"><i class="fa fa-desktop"></i> 课题信息</a>
                    </li>
					<li>
                        <a href="table.html"><i class="fa fa-users"></i> 队伍信息</a>
                    </li>
                    <li>
                        <a href="tab-panel.html"><i class="fa fa-edit"></i> 我的课题</a>
                    </li>
                    
                    <li>
                        <a href="table.html"><i class="fa fa-user"></i> 我的信息</a>
                    </li>
                   <!--  <li>
                        <a href="#"><i class="fa fa-sitemap"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>

                                </ul>

                            </li>
                        </ul>
                    </li> -->
                    <li>
                        <a href="empty.html"><i class="fa fa-fw fa-file"></i> Empty Page</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">


                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Dashboard <small>Summary of your App</small>
                        </h1>
                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">


                    <div class="col-md-9 col-sm-12 col-xs-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Bar Chart Example
                            </div>
                            <!-- <div class="panel-body">
                                <div id="morris-bar-chart"></div>
                            </div> -->
                            <div class="info">
								<p>亲爱的<%= stu.getSname() %>同学，下午好</p>
							</div>
                            <div class="box">
								<div class="function"><p>[通知]选题系统已开放</p></div>
								<div class="form">
								<table class="news">
								<tr><td><h2>关于本学期校级任选课相关事宜安排的通知</h2></td></tr>
								<tr><td>各学院及相关单位:</td></tr>
								<tr><td>根据学校教学安排，本学期全校任选课定于6月20日（星期五） 正式开课，选课工作将从6月16日开始。现将有关事项通知如下：</td></tr>
								<tr><td>一、选课时间：6月16日----6月20日</td></tr>
								<tr><td>二、学生登录选课信息管理系统后进入学生选课进行选课。学生选课前请认真阅读选课公告，再进行“网上选课”。</td></tr>
								<tr><td>三、教师可登陆选课信息管理系统后进入选课管理增删课程， 6月15日14:00之后各位教师及学生登录教务处网站查询自己申报的课程是否停开。</td> </tr>
								<tr><td>四、选课退课均须在选课时间内完成，选课结束后不再进行补退选，请学生注意选课时间。</td></tr>
								<tr><td>五、请各学院通知并组织学生进行选课，同时请各学院及相关单位通知任课教师按时上课。教务处将组织相关人员对上课情况进行不定期的检查。</td></tr>
								<tr><td align="right">2017-06-10</td></tr>
								</table>
								</div>
							</div>
                        </div>
                    </div>
                </div>
                <!-- /. ROW  -->

 
                <!-- /. ROW  -->
				<footer><p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://www.freemoban.com/">www.freemoban.com</a></p></footer>
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
   


</body>

</html>