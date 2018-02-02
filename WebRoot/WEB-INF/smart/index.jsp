<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <base href="<%=basePath%>">
<link href=<%=application.getContextPath()+"/css/bootstrap.css"%> rel="stylesheet" />
<link href=<%=application.getContextPath()+"/css/sb-admin.css"%> rel="stylesheet" />
<link rel="stylesheet"
	href=<%=application.getContextPath()+"/font-awesome/css/font-awesome.min.css"%>>
<link rel="stylesheet"
	href=<%=application.getContextPath()+"/css/morris-0.4.3.min.css"%>>

<script src=<%=application.getContextPath()+"/js/jquery-1.10.2.js"%>></script>
<script src=<%=application.getContextPath()+"/js/bootstrap.js"%>></script>

<script src=<%=application.getContextPath()+"/js/morris-0.4.3.min.js"%>></script>
<script src=<%=application.getContextPath()+"/js/morris/chart-data-morris.js"%>></script>

<script
	src=<%=application.getContextPath()+"/js/tablesorter/jquery.tablesorter.js"%>></script>
<script src=<%=application.getContextPath()+"/js/tablesorter/tables.js"%>></script>
</head>
<body>

	<div id="wrapper">

		<!-- Sidebar -->
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"> <!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
				<span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<!-- <a class="navbar-brand" href="index.html">黎明小区</a> -->
			 <button type="button" class="btn btn-primary btn-lg">黎明小区</button>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> 客户管理 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#"><i class="fa fa-wrench"></i> 服务派工</a></li>
                <li><a href="#"><i class="fa fa-wrench"></i> 投诉管理</a></li>
                <li><a href="#"><i class="fa fa-wrench"></i> 装修管理</a></li>
                <li><a href="#"><i class="fa fa-wrench"></i> 客户管理</a></li>
                <li><a href="#"><i class="fa fa-wrench"></i> 访客管理</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> 品质管理 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#"><i class="fa fa-desktop"></i> 环境管理</a></li>
                <li><a href="#"><i class="fa fa-desktop"></i> 保安管理</a></li>
                <li><a href="#"><i class="fa fa-desktop"></i> 车辆管理</a></li>
                <li><a href="#"><i class="fa fa-desktop"></i> 治安事件管理</a></li>
                <li><a href="#"><i class="fa fa-desktop"></i> 消防管理</a></li>
                <li><a href="#"><i class="fa fa-desktop"></i> 设备管理</a></li>
                <li><a href="#"><i class="fa fa-desktop"></i> 区域巡检</a></li>
              </ul>
            </li>
              <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> 会所管理 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#"><i class="fa fa-table"></i> 会员管理</a></li>
                <li><a href="#"><i class="fa fa-table"></i> 前台管理</a></li>

              </ul>
            </li>
              <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> 租赁管理 <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#"><i class="fa fa-bar-chart-o"></i> 物料管理</a></li>
                <li><a href="#"><i class="fa fa-bar-chart-o"></i> 采购管理</a></li>
                <li><a href="#"><i class="fa fa-bar-chart-o"></i> 仓库管理</a></li>
                
              </ul>
            </li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> 财务管理 <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="fa fa-font"></i> 固定字长管理</a></li>
						<li><a href="#"><i class="fa fa-font"></i> 应收应付管理</a></li>
						<li><a href="#"><i class="fa fa-font"></i> 票据管理</a></li>
						<li><a href="#"><i class="fa fa-font"></i> 出纳管理</a></li>

					</ul>
			</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> 人资管理 <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="fa fa-file"></i> 人事管理</a></li>
						<li><a href="#"><i class="fa fa-file"></i> 招聘管理</a></li>
						<li><a href="#"><i class="fa fa-file"></i> 考勤和绩效管理</a></li>
					</ul></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> 工程管理 <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="fa fa-dashboard"></i> 设备管理</a></li>
						<li><a href="#"><i class="fa fa-dashboard"></i> 合同管理</a></li>
						<li><a href="#"><i class="fa fa-dashboard"></i> 签报管理</a></li>
					</ul></li>
			</ul>

			<ul class="nav navbar-nav navbar-right navbar-user">
				<li class="dropdown messages-dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i>
						Messages <span class="badge">7</span> <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li class="dropdown-header">7 New Messages</li>
						<li class="message-preview"><a href="#"> <span class="avatar"><img
									src="http://placehold.it/50x50"></span> <span class="name">John
									Smith:</span> <span class="message">Hey there, I wanted to ask you
									something...</span> <span class="time"><i class="fa fa-clock-o"></i> 4:34
									PM</span>
						</a></li>
						<li class="divider"></li>
						<li class="message-preview"><a href="#"> <span class="avatar"><img
									src="http://placehold.it/50x50"></span> <span class="name">John
									Smith:</span> <span class="message">Hey there, I wanted to ask you
									something...</span> <span class="time"><i class="fa fa-clock-o"></i> 4:34
									PM</span>
						</a></li>
						<li class="divider"></li>
						<li class="message-preview"><a href="#"> <span class="avatar"><img
									src="http://placehold.it/50x50"></span> <span class="name">John
									Smith:</span> <span class="message">Hey there, I wanted to ask you
									something...</span> <span class="time"><i class="fa fa-clock-o"></i> 4:34
									PM</span>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">View Inbox <span class="badge">7</span></a></li>
					</ul></li>
				<li class="dropdown alerts-dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-bell"></i> Alerts <span
						class="badge">3</span> <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#">Default <span class="label label-default">Default</span></a></li>
						<li><a href="#">Primary <span class="label label-primary">Primary</span></a></li>
						<li><a href="#">Success <span class="label label-success">Success</span></a></li>
						<li><a href="#">Info <span class="label label-info">Info</span></a></li>
						<li><a href="#">Warning <span class="label label-warning">Warning</span></a></li>
						<li><a href="#">Danger <span class="label label-danger">Danger</span></a></li>
						<li class="divider"></li>
						<li><a href="#">View All</a></li>
					</ul></li>
				<li class="dropdown user-dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
						<li><a href="#"><i class="fa fa-envelope"></i> Inbox <span
								class="badge">7</span></a></li>
						<li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
						<li class="divider"></li>
						<li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
					</ul></li>
			</ul>
		</div>
		
		
		
		<!-- /.navbar-collapse --> </nav>
		<div class="copyrights">
			Collect from <a href="http://www.cssmoban.com/" title="网站模板">网站模板</a>
		</div>
		<div id="page-wrapper">

<!-- 			<div class="row">
				<div class="col-lg-12">
					<h1>
						Dashboard <small>Statistics Overview</small>
					</h1>
					<ol class="breadcrumb">
						<li class="active"><i class="fa fa-dashboard"></i> Dashboard</li>
					</ol>
					<div class="alert alert-success alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						Welcome to SB Admin by <a class="alert-link"
							href="http://startbootstrap.com">Start Bootstrap</a>! Feel free to use this
						template for your admin needs! We are using a few different plugins to
						handle the dynamic tables and charts, so make sure you check out the
						necessary documentation links provided.
					</div>
				</div>
			</div>
			/.row -->
		<div class="row">

          <div class="col-lg-20" >
           <div class="well well-lg" >
 				<div class="form-group">
         		<label>  业主:</label>
             	<input type="text" name="username" id="username" style="width:150px" /> 
<!--                 <p class="help-block">Example block-level help text here.</p> -->
      <!--         </div>

           
            
             <div class="form-group"> -->
             &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
             <a &nb sp &nb sp></a>
                <label> 报修状态:</label>
                <select style="width:150px">
                  <option>待处理</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
              </div>

 <button type="button" class="btn btn-success">查询</button>
                <button type="button" class="btn btn-info">重置</button>



          </div>  
          </div>
        </div><!-- /.row -->






				<div class="col-lg-20">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-money"></i> 报修管理
							</h3>
							<br>
				<label> 每页显示</label>
                <select style="width:150px">
                  <option>10</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>
						</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-bordered table-hover table-striped tablesorter">
									<thead>
										<tr>
											<th>序号 <i class="fa fa-sort"></i></th>
											<th>业主<i class="fa fa-sort"></i></th>
											<th>报修时间 <i class="fa fa-sort"></i></th>
											<th>报修事项 <i class="fa fa-sort"></i></th>
											<th>报修状态 <i class="fa fa-sort"></i></th>
											<th>工作人员<i class="fa fa-sort"></i></th>
											<th>操作 <i class="fa fa-sort"></i></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>3326</td>
											<td>10/21/2013</td>
											<td>3:29 PM</td>
											<td>$321.33</td>
										</tr>
										<tr>
											<td>3325</td>
											<td>10/21/2013</td>
											<td>3:20 PM</td>
											<td>$234.34</td>
										</tr>
										<tr>
											<td>3324</td>
											<td>10/21/2013</td>
											<td>3:03 PM</td>
											<td>$724.17</td>
										</tr>
										<tr>
											<td>3323</td>
											<td>10/21/2013</td>
											<td>3:00 PM</td>
											<td>$23.71</td>
										</tr>
										<tr>
											<td>3322</td>
											<td>10/21/2013</td>
											<td>2:49 PM</td>
											<td>$8345.23</td>
										</tr>
										<tr>
											<td>3321</td>
											<td>10/21/2013</td>
											<td>2:23 PM</td>
											<td>$245.12</td>
										</tr>
										<tr>
											<td>3320</td>
											<td>10/21/2013</td>
											<td>2:15 PM</td>
											<td>$5663.54</td>
										</tr>
										<tr>
											<td>3319</td>
											<td>10/21/2013</td>
											<td>2:13 PM</td>
											<td>$943.45</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="text-right">
								<a href="#">View All Transactions <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.row -->

		</div>
		<!-- /#page-wrapper -->

	
	<!-- /#wrapper -->
</body>
</html>