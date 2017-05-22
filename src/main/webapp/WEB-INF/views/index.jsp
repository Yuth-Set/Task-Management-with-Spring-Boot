<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="static/img/taskmng.ico">

    <title>Task MNG</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="http://getbootstrap.com/dist/css/bootstrap.min.css">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="http://getbootstrap.com/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="http://getbootstrap.com/examples/offcanvas/offcanvas.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
   <script src="http://getbootstrap.com/assets/js/ie-emulation-modes-warning.js"></script>
    
    <!-- Data Tables -->
    <link href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <nav class="navbar navbar-fixed-top navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="active navbar-brand" href="/">Task Management</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="/">Home</a></li>
            <li><a href="new-task">Create Task</a></li>
            <li><a href="all-tasks">All Tasks</a></li>
          </ul>
        </div><!-- /.nav-collapse -->
      </div><!-- /.container -->
    </nav><!-- /.navbar -->

    <div class="container">
		<c:choose>
			<c:when test="${mode == 'MODE_HOME'}">
		      <div class="row row-offcanvas">
		
		        <div class="col-xs-12">
		          <div class="jumbotron">
		            <h1>Welcome to Task Management!</h1>
		            <p>Take it easy...</p>
		            <p class="lead">
		              <a href="new-task" class="btn btn-lg btn-primary">Create new task</a>
		              <a href="all-tasks" class="btn btn-lg btn-info">All The Tasks Listed</a>
		            </p>
		          </div>
		        </div><!--/.col-xs-12.col-sm-9-->
		      </div><!--/row-->
			</c:when>
		   	<c:when test="${mode == 'MODE_TASKS'}">
		   		<div class="col-xs-12" id="taskDiv">
		   			<h2 class="text-center">My Tasks</h2>
		      		<hr>
		      		<div class="table-responsive">
		          		<table id="task_pagin" class="table table-bordered table-responsive" cellspacing="0" width="100%">
		          			<thead>
		          				<tr class="bg-head">
		          					<th>ID</th>
		          					<th>NAME</th>
		          					<th>DESCRIPTION</th>
		          					<th>CREATED</th>
		          					<th>FINISHED</th>
		          					<th></th>
		          				</tr>
		          			</thead>
		          			<tfoot>
					            <tr>
					                <th>ID</th>
		          					<th>NAME</th>
		          					<th>DESCRIPTION</th>
		          					<th>CREATED</th>
		          					<th>FINISHED</th>
		          					<th></th>
					            </tr>
					        </tfoot>
		          			<tbody>
		          				<c:forEach var="task" items="${tasks}">
		          					<tr>
		          						<td>${task.id}</td>
		          						<td>${task.name}</td>
		          						<td>${task.description}</td>
		          						<td><fmt:formatDate pattern="dd-MM-yyyy HH:mm:ss" value="${task.dateCreated}" /></td>
		          						<td>${task.finished}</td>
		          						<td class="text-center">
		          							<a href="delete-task?id=${task.id}"><span class="glyphicon glyphicon-remove-circle"></span></a>
		          							<a href="update-task?id=${task.id}"><span class="glyphicon glyphicon-edit"></span></a>
		          						</td>
		          					</tr>
		          				</c:forEach>
		          			</tbody>
		          		</table>
		          		<br><br>
			       </div>
		         </div>
          	</c:when>
          	<c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
          		<div class="col-xs-12">
		          	<h2 class="cover-heading">Manage Tasks</h2>
		          	<hr>
		          	<form class="form-horizontal" method="post" action="save-task">
		          		<input type="hidden" name="id" value="${task.id}" />
		          		<div class="form-group">
		          			<label class="control-label col-md-3">Name</label>
		          			<div class="col-md-9">
		          				<input type="text" class="form-control" name="name" value="${task.name}" required/>
		          			</div>
		          		</div>
		          		<div class="form-group">
		          			<label class="control-label col-md-3">Description</label>
		          			<div class="col-md-9">
		          				<input type="text" class="form-control" name="description" value="${task.description}" required />
		          			</div>
		          		</div>
		          		<div class="form-group">
		          			<label class="control-label col-md-3">Finished</label>
		          			<input type="radio" class="col-sm-1" name="finished" value="true" />
		          			<div class="col-sm-1">Yes</div>
		          			<input type="radio" class="col-sm-1" name="finished" value="false" checked/>
		          			<div class="col-sm-1">No</div>
		          		</div>
		          		<div class="form-group">		      
		          			<div class="col-md-3"></div>
		          			 <input type="submit" class="btn btn-primary" value="Save" />	 
		          		</div>       
		          	</form>
		         </div>
          	</c:when>
          </c:choose>
		
	      <footer>
	        <p>&copy; 2017 Task MNGM, Private.</p>
	      </footer>

    </div><!--/.container-->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="http://getbootstrap.com/assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script>
    <script src="http://getbootstrap.com/examples/offcanvas/offcanvas.js"></script>
    
    <!-- Data Tables -->
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    
    <script src="static/js/paginate.js"></script>
  </body>
</html>
