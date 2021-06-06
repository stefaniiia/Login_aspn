﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_InfoToolsSv.aspx.cs" Inherits="Login_InfoToolsSv.Login_InfoToolsSv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" ></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="Recursos/CSS/Estilos.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body class ="bg-light">
    <div class="wrapper">
        <div class="formcontent">
             <form id="formulario_login" runat="server">
        <div class="form-control">
            <div class="col-md-6 text-center nb-5">
                <asp:Label class="h3" ID="lblBienvenida" runat="server" Text="Bienvenido/a al Sistema"></asp:Label>
            </div>
            <div>
                <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
                <asp:TextBox ID="tbUsuario" CssClass="form-control" runat="server" placeholder="Nombre de Usuario"></asp:TextBox>
            </div>
                 <div>
                     <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                     <asp:TextBox ID="tbPassword" CssClass="form-control" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                 </div>
                  <hr />
                 <div class="row">
                     <asp:Label runat="server" ID="lblError"></asp:Label>
                 </div>
                  <div class="row">
                      <asp:Button ID="btnIngresar" CssClass="btn btn-primary btn-dark" runat="server" Text="Ingresar" />
                  </div>
        </div>
    </form>
        </div>
    </div>
   
</body>
</html>
