<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="AtenderCliente.aspx.cs" Inherits="Presentacion.Paginas.pagesIdia.comercial.AtenderCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>PRT | Comercial</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 
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
                        <a href="#" class="d-block">Leonardo Molinas</a>
                    </div>
                </div>

                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->



                        <li class="nav-item menu-open">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Comercial
                <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview" style="display: none;">
                                <li class="nav-item ">
                                    <a href="AtenderCliente.aspx" class="nav-link active">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Atender cliente</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="ReimpresionCertificado.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Reimpresion certificado</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="AnulacionCliente.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Anulacion de atencion</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="EnviarLinea.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Enviar a linea</p>
                                    </a>
                                </li>
                            </ul>
                        </li>




                        <li class="nav-item">
                            <a href="#" class="nav-link">
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
                                    <a href="../operacion/ImpresionCertificados.aspx" class="nav-link">
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
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../informes/EstadisticaAtenciones.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Estadistica de atenciones</p>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-tree"></i>
                                <p>
                                    Pruebas y normas
                <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../puerbas_normas/NormaASM.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Norma ASM</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../puerbas_normas/NormaASmNox.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Norma ASM NOx</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../puerbas_normas/Normas.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Normas</p>
                                    </a>
                                </li>
                            </ul>
                        </li>


                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-edit"></i>
                                <p>
                                    Configuracion
                <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../configuracion/TipoVehiculo.aspx" class="nav-link">
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
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-table"></i>
                                <p>
                                    Sistema
                <i class="fas fa-angle-left right"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="../sistema/CreacionAdmUsuarios.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Creacion admin</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../sistema/Cargo.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Cargo</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../sistema/Departamento.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Departamento</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../sistema/Sucursal.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Sucursal</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../sistema/Comunas.aspx" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Comunas</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="../sistema/Regiones.aspx" class="nav-link">
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
                                    Seguridad
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
                    <div class="row">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">Atencion de cliente</h1>
                        </div>
                        <!-- /.col -->

                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item ">Inicio</li>
                                <li class="breadcrumb-item ">Comercial</li>
                                <li class="breadcrumb-item active"><a href="AtenderCliente.aspx">Atencion de cliente</a></li>
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

                    <div class="row">
                        <div class="col-4">



                            <div class="card card-info">
                                <div class="card-header">
                                    <h3 class="card-title">Datos del vehiculo</h3>
                                </div>
                                <div class="card-body" style="height: 1250px;">

                                    <label>Tipo de vehiculo</label>
                                    <div class="form-group" data-select2-id="29">
                                        <asp:DropDownList ID="ddlIdTipoVehiculo" runat="server" class="form-control select2 select2-hidden-accessible" Style="width: 100%;" data-select2-id="1" TabIndex="-1" aria-hidden="true" DataSourceID="OdsTiposVehiculos" DataTextField="tipoVehiculo1" DataValueField="id"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="OdsTiposVehiculos" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetTipoVehiculo" TypeName="LogicaNegocios.Paginas.AtencionClienteBL"></asp:ObjectDataSource>
                                    </div>

                                    <label>Patente</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-car"></i></span>
                                        </div>
                                        <asp:TextBox ID="txtPatente" class="form-control" runat="server" placeholder="Patente"></asp:TextBox>
                                    </div>

                                    <label>Sello de gas</label>
                                    <div class="form-group" data-select2-id="29">
                                        <asp:DropDownList ID="ddlSelloGas" runat="server" class="form-control select2 select2-hidden-accessible" Style="width: 100%;" data-select2-id="1" TabIndex="-1" aria-hidden="true" DataSourceID="ObsSelloGas" DataTextField="sello" DataValueField="id"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="ObsSelloGas" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetSelloVehiculos" TypeName="LogicaNegocios.Paginas.AtencionClienteBL"></asp:ObjectDataSource>
                                    </div>

                                    <label>Marca</label>
                                    <div class="form-group" data-select2-id="29">
                                        <asp:DropDownList ID="ddlMarca" runat="server" class="form-control select2 select2-hidden-accessible" Style="width: 100%;" data-select2-id="1" TabIndex="-1" aria-hidden="true" DataSourceID="ObsMarca" DataTextField="nombreMarca" DataValueField="id"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="ObsMarca" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetMarcaVehiculos" TypeName="LogicaNegocios.Paginas.AtencionClienteBL"></asp:ObjectDataSource>
                                    </div>

                                    <label>Modelo</label>
                                    <div class="form-group" data-select2-id="29">
                                        <asp:DropDownList ID="ddlModelo" runat="server" class="form-control select2 select2-hidden-accessible" Style="width: 100%;" data-select2-id="1" TabIndex="-1" aria-hidden="true" DataSourceID="ObsModelo" DataTextField="nombreModelo" DataValueField="id"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="ObsModelo" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetModeloVehiculos" TypeName="LogicaNegocios.Paginas.AtencionClienteBL"></asp:ObjectDataSource>
                                    </div>


                                    <label>Ano</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-calendar"></i></span>
                                        </div>
                                        <asp:TextBox ID="txtAno" class="form-control" runat="server" placeholder="Ano"></asp:TextBox>
                                    </div>

                                    <label>Cilindrada</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-car"></i></span>
                                        </div>
                                        <asp:TextBox ID="txtCilindrada" class="form-control" runat="server" placeholder="Cilindrada"></asp:TextBox>
                                    </div>

                                    <label>Nro Motor</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-car"></i></span>
                                        </div>
                                        <asp:TextBox ID="txtNroMotor" class="form-control" runat="server" placeholder="Nro Motor"></asp:TextBox>
                                    </div>

                                    <label>Nro Chasis</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-car"></i></span>
                                        </div>
                                        <asp:TextBox ID="txtNroChasis" class="form-control" runat="server" placeholder="Nro chasis"></asp:TextBox>
                                    </div>
                                    <label>Numero de puertas</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-car"></i></span>
                                        </div>
                                        <asp:TextBox ID="txtNroPuertas" class="form-control" runat="server" placeholder="Patente"></asp:TextBox>
                                    </div>
                                    <label>Transmision</label>
                                    <div class="form-group" data-select2-id="29">
                                        <asp:DropDownList ID="ddlTransmision" runat="server" class="form-control select2 select2-hidden-accessible" Style="width: 100%;" data-select2-id="1" TabIndex="-1" aria-hidden="true" DataSourceID="OdsTransmision" DataTextField="tipoTransmision" DataValueField="id"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="OdsTransmision" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetTransmisions" TypeName="LogicaNegocios.Paginas.AtencionClienteBL"></asp:ObjectDataSource>
                                    </div>

                                    <label>Combustible</label>
                                    <div class="form-group" data-select2-id="29">
                                        <asp:DropDownList ID="ddlCombustible" runat="server" class="form-control select2 select2-hidden-accessible" Style="width: 100%;" data-select2-id="1" TabIndex="-1" aria-hidden="true" DataSourceID="OdsCombustibles" DataTextField="tipoCombustible1" DataValueField="id"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="OdsCombustibles" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetTipoCombustibles" TypeName="LogicaNegocios.Paginas.AtencionClienteBL"></asp:ObjectDataSource>
                                    </div>

                                    <label>Traccion</label>
                                    <div class="form-group" data-select2-id="29">
                                        <asp:DropDownList ID="ddlTraccion" runat="server" class="form-control select2 select2-hidden-accessible" Style="width: 100%;" data-select2-id="1" TabIndex="-1" aria-hidden="true" DataSourceID="OdsTraccion" DataTextField="tipoTraccion" DataValueField="id"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="OdsTraccion" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetTraccions" TypeName="LogicaNegocios.Paginas.AtencionClienteBL"></asp:ObjectDataSource>
                                    </div>

                                    <label>Servicio</label>
                                    <div class="form-group" data-select2-id="29">
                                        <asp:DropDownList ID="ddlServicio" runat="server" class="form-control select2 select2-hidden-accessible" Style="width: 100%;" data-select2-id="1" TabIndex="-1" aria-hidden="true" DataSourceID="OdsServicio" DataTextField="DescripciónServicio" DataValueField="id"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="OdsServicio" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetServicios" TypeName="LogicaNegocios.Paginas.AtencionClienteBL"></asp:ObjectDataSource>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row mb-3">
                                        <div class="col">
                                        </div>
                                        <div class="col">
                                            <asp:Button ID="btnLimpiar" class="btn btn-block btn-secondary" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>




                        <div class="col-4">
                            <div class="card card-info">
                                <div class="card-header">
                                  
                                    <h3 class="card-title">Datos del Propietario</h3>
                                </div>
                                <div class="card-body" style="height: 1250px;">
                                    <label>Rut</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-id-card"></i></span>
                                        </div>
                                        <asp:TextBox ID="txtRut" class="form-control" runat="server" placeholder="Rut"></asp:TextBox>
                                    </div>

                                    <label>Nombre</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-user"></i></span>
                                        </div>
                                        <asp:TextBox ID="txtNombre" class="form-control" runat="server" placeholder="Nombre"></asp:TextBox>
                                    </div>

                                    <label>A. Paterno</label>
                                    <div class="input-group mb-3">
                                        <asp:TextBox ID="txtPterno" class="form-control" runat="server" placeholder="A. Paterno"></asp:TextBox>
                                    </div>

                                    <label>A. Materno</label>
                                    <div class="input-group mb-3">
                                        <asp:TextBox ID="txtMaterno" class="form-control" runat="server" placeholder="A. Materno"></asp:TextBox>
                                    </div>

                                    <label>Ciudad</label>
                                    <div class="form-group" data-select2-id="29">
                                        <asp:DropDownList ID="ddlciudad" runat="server" class="form-control select2 select2-hidden-accessible" Style="width: 100%;" data-select2-id="1" TabIndex="-1" aria-hidden="true" DataSourceID="OdsCiudad" DataTextField="nombreCiudad" DataValueField="id"></asp:DropDownList>
                                        <asp:ObjectDataSource ID="OdsCiudad" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetCiudads" TypeName="LogicaNegocios.Paginas.AtencionClienteBL"></asp:ObjectDataSource>
                                    </div>
                                    <label>Direccion</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-house-user"></i>
                                            </span>
                                        </div>
                                        <asp:TextBox ID="txtDireccion" class="form-control" runat="server" placeholder="Direccion"></asp:TextBox>
                                    </div>

                                    <label>Telefono</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-phone"></i>
                                            </span>
                                        </div>
                                        <asp:TextBox ID="txtTelefono" class="form-control" runat="server" placeholder="Telefono"></asp:TextBox>
                                    </div>

                                    <label>Correo</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-envelope"></i>
                                            </span>
                                        </div>
                                        <asp:TextBox ID="txtCorreo" class="form-control" runat="server" placeholder="Correo"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row mb-3">
                                        <div class="col">
                                        </div>
                                        <div class="col">
                                            <asp:Button ID="btmLimpiar2" class="btn btn-block btn-secondary" runat="server" Text="Limpiar" OnClick="btmLimpiar2_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>




                        <div class="col-4">
                            <div class="card card-info">
                                <div class="card-header">
                                    <h3 class="card-title">Datos responsable de pago</h3>
                                </div>
                                <div class="card-body" style="height: 1250px;">
                                    <label>Rut</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-id-card"></i></span>
                                        </div>
                                        <asp:TextBox ID="txtRutResponsable" class="form-control" runat="server" placeholder="Rut"></asp:TextBox>
                                    </div>

                                    <label>Nombre</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-user"></i></span>
                                        </div>
                                        <asp:TextBox ID="txtNombreResponsable" class="form-control" runat="server" placeholder="Nombre"></asp:TextBox>
                                    </div>

                                    <label>A. Paterno</label>
                                    <div class="input-group mb-3">
                                        <asp:TextBox ID="txtPaternoResponsable" class="form-control" runat="server" placeholder="A. Paterno"></asp:TextBox>
                                    </div>

                                    <label>A. Materno</label>
                                    <div class="input-group mb-3">
                                        <asp:TextBox ID="txtMaternoResponsable" class="form-control" runat="server" placeholder="A. Materno"></asp:TextBox>
                                    </div>

                                    <label>Direccion</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-house-user"></i>

                                            </span>
                                        </div>
                                        <asp:TextBox ID="txtDireccionResponsable" class="form-control" runat="server" placeholder="Direccion"></asp:TextBox>
                                    </div>

                                    <label>Telefono</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-phone"></i>

                                            </span>
                                        </div>
                                        <asp:TextBox ID="txtTelefonoResponsable" class="form-control" runat="server" placeholder="Telefono"></asp:TextBox>
                                    </div>

                                    <label>Correo</label>
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="fas fa-envelope"></i>

                                            </span>
                                        </div>
                                        <asp:TextBox ID="txtCorreoResponsable" class="form-control" runat="server" placeholder="Correo"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row mb-3">
                                        <div class="col">
                                            <asp:Button ID="btnLimpiar3" class="btn btn-block btn-secondary" runat="server" Text="Limpiar" OnClick="btnLimpiar3_Click" />
                                        </div>
                                        <div class="col">
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <ContentTemplate>
                                       
                                            <asp:Button ID="btnGuardar" class="btn btn-block btn-info" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
                                             </ContentTemplate>
                                    </asp:UpdatePanel>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>




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
