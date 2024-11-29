<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CentralLogin.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <link href="App_Themes/style/css/bootstrap.min.css" rel="stylesheet" />
    <link href="App_Themes/style/css/colores.css" rel="stylesheet" />
    <link href="App_Themes/style/css/style.css" rel="stylesheet" />
    <script src="App_Themes/style/js/bootstrap.bundle.min.js"></script>
    <link href="../App_Themes/Definitivo/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style>
        /* Estilo base para el div */
        .cardp {
            width: 13%; /* Ancho para pantallas mayores a 1400px */
            margin-bottom: 20px;
        }

        /* Para pantallas entre 1200px y 1400px */
        @media (max-width: 1400px) {
            .cardp {
                width: 15%;
            }
        }

        /* Para pantallas entre 992px y 1200px */
        @media (max-width: 1200px) {
            .cardp {
                width: 25%;
            }
        }

        /* Para pantallas entre 576px y 992px */
        @media (max-width: 992px) {
            .cardp {
                width: 50%;
            }
        }

        /* Para pantallas menores a 576px */
        @media (max-width: 576px) {
            .cardp {
                width: 100%;
            }
        }

        .btn-card2 {
            font-weight: 600;
            color: #ffffff !important;
            text-decoration: none !important;
            background: transparent !important;
            border: none !important;
            width: 100% !important;
        }
        
        .box {
            --bs-bg-opacity: 1;
            --bs-border-opacity: 1;
            background-color: rgba(var(--bs-white-rgb), var(--bs-bg-opacity));
            border-color: transparent;
            border-top: 1px solid #d3d3d3;
            border-radius: 15px;
            box-shadow: 0 3px 20px #0000000b;
            position: relative;
            padding: 15px;
            margin-bottom: 0 !important;
            max-height: 135px;
            box-shadow: 1px 3px 2px 1px rgb(0 0 0 / 58%), 0 1px 1px 0 rgb(0 0 0 / 43%), 0 1px 3px 0 rgb(0 0 0 / 57%);
            text-align: left;
            border-radius: 15px;
        }

        .div-ext-card {
            padding: 5px !important;
            text-align: center;
            min-height: 125px;
            max-height: 165px;
        }

        .img-card {
            height: 50px;
            width: auto;
            margin-bottom: 0px
        }

        .img-card-config {
            height: 50px;
            position: absolute;
            right: 8px;
            top: 8px;
        }

        .div-int-card {
            text-align: center;
            margin-top: 5px !important;
            margin-bottom: 10px;
        }

        .h3-card {
            text-align: center;
            font-weight: 600 !important;
        }

        .btnAtencion {
            height: 50px;
            align-items: center;
            display: flex;
            font-weight: 500;
            font-size: 18px;
            margin-right: 10px;
            padding-top: 12px;
            background-color: transparent;
            border:none;
        }

        .btnAtencion-active {
            height: 50px;
            margin-right: 0;
            border: none;
            border-radius: 0;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            padding-top: 12px;
            background-color:darkslategrey !important;
            color:white
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="clearfix no-mobile print" 
            style="text-align: left; position: fixed; width: 100%; z-index: 1000; 
                background-color: white; margin-top: -5px; height: 90px;">
            <div class="row" style="padding-top: 20px; padding-bottom: 0px;">
                <div class="col-md-4" style="padding-left: 5%; height: 60px;">
                    <a href="/BackEnd/Home.aspx">
                        <img src="App_Themes/style/img/LogoPablo.png" style="height: 50px;" />
                    </a>
                </div>
                <div class="col-md-4" style="align-items: center; display: flex; text-align: center; height: 60px;">
                    <a href="#" style="width: 100%;">
                        <h2 class="section-title__title"
                            style="color: #6f6f6e; font-size: 24px; line-height: 10px; text-decoration-line: overline;">
                            <img src="App_Themes/style/img/pagoonline.png" style="height: 50px;" />
                            SIIMVA WEB
                            <img src="App_Themes/style/img/condor.png" style="height: 70px; margin-top: -10px;" />
                        </h2>
                    </a>
                </div>
                <div class="col-md-4" style="padding-right: 5%; align-items: center; display: inline-grid; text-align: right; height: 60px;">
                    <div class="dropdown">
                        <button class="btn-usuario" type="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            <img id="imgUsuario" runat="server" src="../img/usuario.png" class="img-thumbnail" alt="..." style="height: 55px; border: none;" />
                            <ul style="color: gray; list-style: none; text-align: left; padding-left: 0; margin-bottom: 0px;">
                                <li id="liNombre" runat="server">Ignacio Martin</li>
                                <li id="liApellido" runat="server">Velez Spitale</li>
                            </ul>
                        </button>
                        <ul class="dropdown-menu">
                            <li style="display: grid; padding: 15px 25px 0px 25px" class="li-usuario">
                                <strong id="mnuPcApellido" runat="server">Velez Spitale</strong>
                                <span id="mnuPcNombre" runat="server">Ignacio Martin</span></li>
                            <li style="display: flex; padding: 15px 25px 0px 25px" class="li-usuario">
                                <span style="display: ruby;">Oficina: </span>
                                <span style="display: block; margin-left: 10px;" id="SpanOficina" runat="server"></span></li>
                            <li style="display: flex; padding: 15px 25px 0px 25px" class="li-usuario">
                                <span style="display: ruby;">CUIT: </span>
                                <span style="display: block; margin-left: 10px;" id="mnuPcCuit" runat="server">23-27.173.499-9</span></li>
                            <li style="display: flex; padding: 15px 25px 0px 25px" class="li-usuario">
                                <span style="display: block;">CIDI: </span>
                                <span style="display: block; margin-left: 10px;" id="mnuPcNivelCidi" runat="server">Nivel 2</span></li>
                            <li style="padding: 15px; border-top: solid 1px lightgray; margin-top: 15px;">
                                <a class="dropdown-item" href="#" runat="server"
                                    id="btnCerraSession" onserverclick="btnCerraSession_ServerClick" style="text-align: center; border: solid 3px lightgray; border-radius: 10px; padding: 8px;">Cerrar Sesion</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="container-fluid"
                style="background: linear-gradient(87deg, rgb(148 23 23) 0%, rgba(255,35,0,1) 41%, rgb(255 233 0) 79%);">
                <div class="row" style="height: 10px;">
                    <div class="col-md-12" style="padding-top: 0px;">
                    </div>
                </div>
            </div>
        </header>
        <div style="margin-top:     0px;">
            <asp:HiddenField ID="hHash" runat="server" />
            <div class="container-fluid" style="margin-left: 4%; margin-right: 4%;" id="dashboard">
                <div class="row" style="padding-top: 35px;">
                    <div class="col-12" style="display: flex; padding: 0;">
                        <button type="button" class="btnAtencion-active" id="btnAtencion"
                            onclick="btnAtencion_click()">
                            <span class="fa fa-user-circle" style="margin-right: 10px; font-size: 24px"></span>Atencion al Ciudadano</button>
                        <button style="border: none;" type="button" 
                            class="btnAtencion" id="btnConfiguracion"
                            runat="server"
                            onclick="btnConfiguracion_click()">
                            <span class="fa fa-cogs" style="margin-right: 10px; font-size: 24px"></span>Coinfiguración del Sistema</button>
                    </div>
                </div>

                <div class="row" style="padding-top: 25px;" id="divAtencion">
                    <div class="cardp" runat="server" id="AUTOMOTORES">
                        <button class="btn-card2 btnSrc2"
                            data-titulo="Automotores"
                            data-url="http://10.0.0.24/autos/#/" type="button">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/automotor2.png" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Automotores</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                    <div class="cardp" runat="server" id="TASA">
                        <button class="btn-card2 btnSrc" data-titulo="Tasa al la Propiedad"
                            data-url="http://10.0.0.24/tasa/#/CIDI/" type="button">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/inmuebleconfig.png" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Tasa</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                    <div class="cardp" runat="server" id="INDYCOM">
                        <button class="btn-card2 btnSrc" data-titulo="Industria y comercio" type="button"
                            data-url="http://10.0.0.24/indycom/#/CIDI/">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/indycomconfig.png?v=1" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Industria y Comercio</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                    <div class="cardp" runat="server" id="MESA_ENTRADA">
                        <button class="btn-card2 btnSrc2"
                            data-titulo="Mesa de Entradas"
                            data-url="http://10.0.0.24/MesaWeb/secure/home.aspx?cidi=" type="button">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/mesaentradas.png?v=1" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Mesa de Entradas</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                    <div class="cardp" runat="server" id="TOTEM">
                        <button class="btn-card2 btnSrc2"
                            data-titulo="Totem Atención" type="button"
                            data-url="http://10.0.0.24/totem/secure/login.aspx?cidi=">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/totemAtencion.png?v=2S" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Totem</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                    <div class="cardp" runat="server" id="NOTIFICACION_DIGITAL">
                        <a class="btn-card2 btnSrc2" data-titulo="Notificador CIDI"
                            href="http://10.0.0.24/backend/secure/login.aspx?cidi=" type="button">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/notificador.png" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Notificador CiDi</h3>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="cardp" runat="server" id="VECINO_VISTA">
                        <button class="btn-card2 btnSrc2" data-titulo="Vista Vecino Doigital" type="button">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/vecinocuit.png?v=1" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Vecino solo Cuit</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                    <div class="cardp" runat="server" id="VECINO_BACK">
                        <button class="btn-card2 btnSrc2" data-titulo="Administración Vecino Digital"
                            type="button">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/backvecino.png?v=1" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Back Vecino</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                    <div class="cardp" runat="server" id="LICENCIA_CONDUCIR">
                        <button class="btn-card2 btnSrc2" data-titulo="Licenca de Conducir"
                            data-url="./BackCarnets.aspx">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/carnet.png" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Lic.Conducir</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                    <div class="cardp" runat="server" id="REGISTRO_CIVIL">
                        <button class="btn-card2 btnSrc2" data-titulo="Registro Civil"
                            data-url="./BackRegistro.aspx"
                            type="button">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/registrocivil.png?v=1" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Registro Civil</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                    <div class="cardp" runat="server" id="MOTOR_WORKFLOW_ATENCION">
                        <a class="btn-card2 btnSrc2" data-titulo="Motor WorkFlow"
                            href="../TramitesBack/ListaTramites.aspx" target="_blank">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/workflow.png?v=1" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Tramites OnLine</h3>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="cardp" runat="server" id="HELP_DESK_RECLAMO">
                        <button class="btn-card2 btnSrc2" data-titulo="Help Desk intrerno" type="button">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/helpdesk.png?v=2" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Help Desk</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                </div>
                <div class="row" style="padding-top: 25px; display: none;" id="divConfiguracion">
                    <!--<div class="cardp">
                <button class="btn-card2" type="button">
                    <div class="box">
                        <div class="div-ext-card">
                            <img src="/img/sistemas/cogs.png" class="img-card-config" />
                            <img src="/img/sistemas/automotorconfig.jpg" class="img-card" />
                            <div class="div-int-card">
                                <h3 class="h3-card">Automotores</h3>
                            </div>
                        </div>
                    </div>
                </button>
            </div>
            <div class="cardp">
                <button class="btn-card2" type="button">
                    <div class="box">
                        <div class="div-ext-card">
                            <img src="/img/sistemas/cogs.png" class="img-card-config" />
                            <img src="  /img/sistemas/inmueble.jpg" class="img-card" />
                            <div class="div-int-card">
                                <h3 class="h3-card">Tasa</h3>
                            </div>
                        </div>
                    </div>
                </button>
            </div>
            <div class="cardp">
                <button class="btn-card2" type="button">
                    <div class="box">
                        <div class="div-ext-card">
                            <img src="../img/sistemas/cogs.png" class="img-card-config" />
                            <img src="../img/sistemas/indycom.png?v=1" class="img-card" />
                            <div class="div-int-card">
                                <h3 class="h3-card">Industria y Comercio</h3>
                            </div>
                        </div>
                    </div>
                </button>
            </div>
            <div class="cardp">
                <button class="btn-card2" type="button">
                    <div class="box">
                        <div class="div-ext-card">
                            <img src="../img/sistemas/cogs.png" class="img-card-config" />
                            <img src="../img/sistemas/mesaentradasconfig.png?v=1" class="img-card" />
                            <div class="div-int-card">
                                <h3 class="h3-card">Mesa de Entradas</h3>
                            </div>
                        </div>
                    </div>
                </button>
            </div>-->
                    <div class="cardp" runat="server" id="TOTEM_CONFIGURACION">
                        <button class="btn-card2 btnSrc2" type="button">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/cogs.png" class="img-card-config" />
                                    <img src="App_Themes/style/img/sistemas/totemAtencionconfig.png" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Totem</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>

                    <div class="cardp" runat="server" id="LICENCIA_CONDUCIR_CONFIGURACION">
                        <button class="btn-card2 btnSrc2" data-titulo="Motor WorkFlow" data-url="/CarnetConfig.aspx">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/cogs.png" class="img-card-config" />
                                    <img src="App_Themes/style/img/sistemas/carnet.jpg" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Lic.Conducir</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                    <div class="cardp" runat="server" id="REGISTRO_CIVIL_CONFIGURACION">
                        <button class="btn-card2 btnSrc2" data-titulo="Registro Civil"
                            data-url="./CarnetConfig.aspx?v=1">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/cogs.png" class="img-card-config" />
                                    <img src="App_Themes/style/img/sistemas/registrocivil.jpg?v=1" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Registro Civil</h3>
                                    </div>
                                </div>
                            </div>
                        </button>
                    </div>
                    <div class="cardp" runat="server" id="BACKEND_TRAMITES_ADM">
                        <a class="btn-card2 btnSrc2" href="button">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/cogs.png" class="img-card-config" />
                                    <img src="App_Themes/style/img/sistemas/guiatramites.jpg" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Guia Tramites</h3>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="cardp" runat="server" id="MOTOR_WORKFLOW_CONFIGURACION">
                        <a class="btn-card2" data-titulo="Motor Workflow" target="_blank"
                            href="http://10.0.0.24/MWFConfig/Secure/ListaTramites.aspx">
                            <div class="box">
                                <div class="div-ext-card">
                                    <img src="App_Themes/style/img/sistemas/cogs.png" class="img-card-config" />
                                    <img src="App_Themes/style/img/sistemas/workflow.png" class="img-card" />
                                    <div class="div-int-card">
                                        <h3 class="h3-card">Motor Workflow</h3>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <div class="container-fluid" id="embebed" style="max-width: 100%; display: none;">
                <div class="row" style="margin-top: 5px;">
                    <%--            <div class="col-4">
            </div>
            <div class="col-4" style="text-align: center;">
                <h3 style="font-size: 24px !important; font-weight: 600 600" id="tituloseccion">Tasa Automotor</h3>
            </div>--%>
                    <div class="col-12" style="text-align: right;">
                        <button type="button" class="btn btn-link btnSalir" style="text-decoration: none !important;">
                            <span class="fa fa-sign-out-alt" style="margin-left: 10px; font-size: 28px; color: darkcyan;"></span>
                        </button>
                    </div>
                </div>
                <%--        <div class="row" style="margin-top: 0px;">
            <div class="col-12">
                <hr style="margin-top: 0" />
            </div>
        </div>--%>
                <div class="row" style="margin-top: -35px;">
                    <div class="col-12">
                        <iframe runat="server" style="min-height: 150vh; width: 100%; padding-right: 15px; overflow-y: scroll"
                            id="contenido"
                            src=""></iframe>
                    </div>
                </div>
            </div>
            <script src="App_Themes/style/js/jquery-3.6.0.min.js"></script>
            <script>
                $(document).ready(function () {

                    function cambiarIframeSrc(urlBase) {
                        var valor = $("#hHash").val();
                        var nuevaUrl = urlBase + "" + valor;
                        $("#contenido").attr("src", nuevaUrl);
                        $("#embebed").show();
                        $("#dashboard").hide();
                    }

                    function cambiarIframeSrc2(urlBase) {
                        var valor = $("#hHash").val();
                        $("#contenido").attr("src", urlBase);
                        $("#embebed").show();
                        $("#dashboard").hide();
                    }
                    // Asignar el evento click a todos los botones con la clase .btnSrc
                    $(".btnSrc").on("click", function () {
                        var urlBase = $(this).data("url");
                        cambiarIframeSrc(urlBase);
                    });
                    $(".btnSrc2").on("click", function () {
                        var urlBase = $(this).data("url");
                        cambiarIframeSrc2(urlBase);
                    });
                    $(".btnSalir").on("click", function () {
                        $("#contenido").attr("src", "");
                        $("#embebed").hide();
                        $("#dashboard").show();
                    });
                });
            </script>
            <script>
                function btnAtencion_click() {
                    $('#divConfiguracion').hide();
                    $('#divAtencion').show();

                    $('#btnAtencion').removeClass('btnAtencion');
                    $('#btnAtencion').addClass('btnAtencion-active');

                    $('#btnConfiguracion').removeClass(
                        'btnAtencion-active');
                    $('#btnConfiguracion').addClass(
                        'btnAtencion');

                }
                function btnConfiguracion_click() {
                    $('#divConfiguracion').show();
                    $('#divAtencion').hide();

                    $('#btnConfiguracion').removeClass(
                        'btnAtencion');
                    $('#btnConfiguracion').addClass(
                        'btnAtencion-active');


                    $('#btnAtencion').removeClass('btnAtencion-active');
                    $('#btnAtencion').addClass('btnAtencion');
                }
            </script>
        </div>

    </form>
</body>
</html>
