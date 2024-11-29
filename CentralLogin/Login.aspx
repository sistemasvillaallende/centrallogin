<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CentralLogin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
    <link href="App_Themes/style/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <link href="App_Themes/FontAwesome/css/all.min.css" rel="stylesheet" />
    <link href="App_Themes/style/css/main.css" rel="stylesheet" />
    <style type="text/css">
        .sombra
        -webkit-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
        -moz-box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
        box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);
        border-radius: 10px 10px 10px 10px;
        -moz-border-radius: 10px 10px 10px 10px;
        -webkit-border-radius: 10px 10px 10px 10px;
        border: 0px solid #000000;
        }

        .btn-cidi {
            height: 65px;
            padding: 10px;
        }

        b {
            font-size: 24px;
            color: cadetblue;
        }

        .span-tit {
            color: lightslategray;
            font-weight: 400;
        }

        .log-cidi {
            height: 70px;
            width: 200px;
            display: inline-block;
            box-shadow: 1px 3px 2px 1px rgb(0 0 0 / 58%), 0 1px 1px 0 rgb(0 0 0 / 43%), 0 1px 3px 0 rgb(0 0 0 / 57%);
            border-radius: 15px;
            padding-top: 2px;
        }
    </style>

</head>
<body class="login-page" style="background-image: url('App_Themes/style/img/fondo.png'); background-size: cover;">
    <form id="form1" runat="server">
        <div id="layout" class="theme-cyan">
            <!-- WRAPPER -->
            <div id="wrapper">
                <div class="d-flex h100vh align-items-center auth-main w-100">
                    <div class="auth-box">
                        <div class="top mb-4">
                            <div class="logo">
                            </div>
                        </div>
                        <div class="card shadow" id="divLogIn" runat="server" style="padding-top: 0px; padding: 20px !important; border-radius: 15px !important;">
                            <div class="card-header" style="text-align: center; padding-top: 0;">
                                <img src="App_Themes/style/img/color.jpg" style="height: 80px; margin-bottom: 0px; width: auto" />
                                <hr style="border-width: 3px; margin-bottom: 20px;" />
                                <div>
                                    <h2 style="font-size: 24px; font-weight: 800;"><b>S</b><span class="span-tit">istema</span>
                                        <b>I</b><span class="span-tit">ntegral de </span>
                                        <b>I</b><span class="span-tit">nformacion</span></h2>
                                </div>
                                <div>
                                    <h2 style="font-size: 16px !important;"><b>M</b><span class="span-tit">unicipallidad de</span>
                                        <b>V</b><span class="span-tit">illa</span>
                                        <b>A</b><span class="span-tit">llende</span></h2>
                                </div>
                            </div>
                            <div class="card-body" style="text-align: center;">
                                <!--<a class="log-cidi" href="https://vecino.villaallende.gov.ar/LogInCidi.aspx?url=https%3A%2F%2Fvecino.villaallende.gov.ar%2Fbackend%2Fhome.aspx">
                                    <img src="../img/logocidi.png?v=1" class="btn-cidi" />
                                    http%3A%2F%2Flocalhost%3A63763%2FBackEnd%2FHome.aspx
                                    http%3A%2F%2F10.0.0.24%2Fbackend%2Fhome.aspx">
                                </a>-->
                                <a class="log-cidi" href="https://vecino.villaallende.gov.ar/LogInCidi.aspx?url=http%3A%2F%2Flocalhost%3A49682%2Fhome.aspx">

                                    <img src="App_Themes/style/img/logocidi.png" style="width: 80%;" class="btn-cidi" />
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END WRAPPER -->
        </div>

        <script type="text/javascript">

        </script>

        login-box -->

        <!-- jQuery 2.1.4 -->
        <script src="App_Themes/style/js/jQuery-2.1.4.min.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
            

        <!-- /.
        <!-- iCheck -->
    </form>
</body>
</html>
