<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Presentacion.Paginas.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/favicon.ico">
<link rel="icon" type="image/png" href="./assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>Login</title>
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport'/>
    
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,600,800" rel="stylesheet">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    
<!-- Main CSS -->
<link href="assets/css/main.css" rel="stylesheet"/>
    
<!-- Animation CSS -->
<link href="assets/css/vendor/aos.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <!--------------------------------------
NAVBAR
--------------------------------------->
<nav class="topnav navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
<div class="container-fluid">
	<a class="navbar-brand d-sm-block d-md-none" href="Login.aspx"><i class="fas fa-car mr-2"></i><strong>PRT CONCEPCION</strong></a>
	<button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
	</button>
	<div class="navbar-collapse collapse" id="navbarColor02" style="">
		<ul class="navbar-nav mr-auto d-flex align-items-center">
			<li class="nav-item">
				<a class="nav-link" href="Login.aspx">Inicio</a>
			</li>
			<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			Nosotros</a>
			<div class="dropdown-menu" aria-labelledby="navbarDropdown">
				<a class="dropdown-item" href="./landing.html">Historia</a>
				<a class="dropdown-item" href="./login.html">Contacto</a>
			</div>
			</li>
			<li class="nav-item">
			<a class="nav-link" href="./docs.html">Ayuda</a>
			</li>
		</ul>
	</div>
</div>
</nav>
<!-- End Navbar -->
    
<!-- Main -->
<div class="d-md-flex h-md-100 align-items-center">
	<div class="col-md-6 p-0 bg-indigo h-md-100">
		<div class="text-white d-md-flex align-items-center h-100 p-5 text-center justify-content-center">
			<div class="logoarea pt-5 pb-5">
				<p>
					<i class="fa fa-car fa-3x"></i>
				</p>
				<h4 class="mb-0 mt-3 display-4">PRT CONCEPCION</h4>
				<h5 class="mb-4 font-weight-light">Moody International Holdings </h5>
				
			</div>
		</div>
	</div>
	<div class="col-md-6 p-0 bg-white h-md-100 loginarea">
		<div class="d-md-flex align-items-center h-md-100 p-5 justify-content-center">
			<div class="border rounded p-5">
				<h3 class="mb-4 text-center">Bienvenido</h3>
				<div class="form-group">
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="E-mail" required="">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="">
				</div>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label small text-muted" for="exampleCheck1">Recordarme</label>
				</div>
                <asp:Button ID="btnEntrar" type="submit" class="btn btn-success btn-round btn-block shadow-sm" runat="server" Text="Entrar" OnClick="btnEntrar_Click" />
                
				<small class="d-block mt-4 text-center"><a class="text-gray" href="#">¿Olvido su contraseña?</a></small>
			</div>
		</div>
	</div>
</div>
<!-- End Main -->
    
    
    
   
<!--------------------------------------
JAVASCRIPTS
--------------------------------------->    
<script src="assets/js/vendor/jquery.min.js" type="text/javascript"></script>
<script src="assets/js/vendor/popper.min.js" type="text/javascript"></script>
<script src="assets/js/vendor/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/functions.js" type="text/javascript"></script>
    
<!-- Animation -->
<script src="assets/js/vendor/aos.js" type="text/javascript"></script>
<noscript>
    <style>
        *[data-aos] {
            display: block !important;
            opacity: 1 !important;
            visibility: visible !important;
        }
    </style>
</noscript>
<script>
    AOS.init({
        duration: 700
    });
</script>
 
<!-- Disable animation on less than 1200px, change value if you like -->
<script>
AOS.init({
  disable: function () {
    var maxWidth = 1200;
    return window.innerWidth < maxWidth;
  }
});
</script>
</asp:Content>
