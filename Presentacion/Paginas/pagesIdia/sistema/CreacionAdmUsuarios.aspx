<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="CreacionAdmUsuarios.aspx.cs" Inherits="Presentacion.Paginas.pagesIdia.sistema.CreacionAdmUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>PRT | Sistema</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="../inicio/Dashboard.aspx" class="nav-link">Inicio</a>
                </li>
                <li class="nav-item d-none d-sm-inline-block">
                    <a href="#" class="nav-link">Contacto</a>
                </li>
            </ul>
        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="index3.html" class="brand-link">
                <img src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                    style="opacity: .8">
                <span class="brand-text font-weight-light">PRT Concepcion</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user panel (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block">Alexander Pierce</a>
                    </div>
                </div>

                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->



                        <li class="nav-item ">
                            <a href="#" class="nav-link ">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Comercial
                <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview" style="display: none;">
                                <li class="nav-item ">
                                    <a href="../comercial/AtenderCliente.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Atender cliente</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../comercial/AnulacionCliente.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Anulacion de atencion</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../comercial/EnviarLinea.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Enviar a linea</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../comercial/ReimpresionCertificado.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Reimpresion certificado</p>
                                    </a>
                                </li>
                            </ul>
                        </li>




                        <li class="nav-item">
                            <a href="#" class="nav-link ">
                                <i class="nav-icon fas fa-copy"></i>
                                <p>
                                    Operacion
                <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview" style="display: none;">
                                <li class="nav-item">
                                    <a href="../operacion/EvaluarRevisiones.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Evaluar revisiones</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../operacion/ImpresionCerificados.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Impresion de cerificados</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../operacion/EnvioXMLS.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Envio XMLS</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../operacion/EnviarResumenAtencion.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Enviar res de atencion</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-copy"></i>
                                <p>
                                    Informe
                <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview ">
                                <li class="nav-item ">
                                    <a href="../informes/EstadisticaAtenciones.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Estadistica de atenciones</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link ">
                                <i class="nav-icon fas fa-tree"></i>
                                <p>
                                    Pruebas y normas
                <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../pruebas_normas/NormaASM.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Norma ASM</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../pruebas_normas/NormaASmNox.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Norma ASM NOx</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../pruebas_normas/Normas.aspx" class="nav-link ">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Normas</p>
                                    </a>
                                </li>
                            </ul>
                        </li>


                        <li class="nav-item ">
                            <a href="#" class="nav-link ">
                                <i class="nav-icon fas fa-edit"></i>
                                <p>
                                    Configuracion
                <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../configuracion/TipoVehiculo.aspx" class="nav-link ">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Tipo de vehiculo</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../configuracion/Marca.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Marca</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../configuracion/Modelo.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Modelo</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item menu-open">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    Sistema
                <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="CreacionAdmUsuarios.aspx" class="nav-link active">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Creacion admin</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="Cargo.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Cargo</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="Departamento.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Departamento</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="Sucursal.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Sucursal</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="Comunas.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Comunas</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="Regiones.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Regiones</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    Sistema
                <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">Creacion y administracion de usuarios</h1>
                        </div>
                        <!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item ">Inicio</li>
                                <li class="breadcrumb-item ">Sistema</li>
                                <li class="breadcrumb-item active"><a href="CreacionAdminUsuarios.aspx">Creacion y administracion de usuarios</a></li>
                            </ol>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                </div>
                <!--/. container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark">
            <!-- Control sidebar content goes here -->
        </aside>
        <!-- /.control-sidebar -->

        <!-- Main Footer -->
        <footer class="main-footer">
            <strong>Copyright &copy; 2020 <a href="#">IDIA</a>.</strong>
            All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
        <b>Version</b> 3.0.4
    </div>
        </footer>
    </div>

    <!-- ./wrapper -->
</asp:Content>
