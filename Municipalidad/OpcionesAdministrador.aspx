<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpcionesAdministrador.aspx.cs" Inherits="Municipalidad.OpcionesAdministrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style3 {
            font-size: medium;
            color: #000000;
            text-align: left;
        }
    </style>
</head>
<body style="background-image:url(http://www.hdfondos.eu/pictures/2012/0802/1/abstract-minimalistic-trees-grey-1680x1050-wallpaper-569251.jpg)">
    <form id="form1" runat="server">
        <p class="auto-style1">
            Municipalidad</p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style3">
            Click en la opción que desea realizar:</p>
        <p class="auto-style3">
            &nbsp;</p>
        <p class="auto-style3">
            <asp:Button ID="ButtonAgua" runat="server" Height="38px" OnClick="ButtonAgua_Click" Text="Cortes de agua" />
        </p>
        <p class="auto-style3">
            &nbsp;</p>
        <p class="auto-style3">
            <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" Text="Abonados morosos" />
        </p>
        <p class="auto-style3">
            &nbsp;</p>
        <p class="auto-style3">
            <asp:Button ID="ButtonDistrito" runat="server" Height="40px" OnClick="ButtonDistrito_Click" Text="Distrito más moroso" Width="188px" />
        </p>
        <p class="auto-style3">
            &nbsp;</p>
        <p class="auto-style3">
            <asp:Button ID="Button2" runat="server" Height="37px" OnClick="Button2_Click" Text="Mantemiento" Width="166px" />
        </p>
        <p class="auto-style3">
            &nbsp;</p>
        <p class="auto-style3">
            &nbsp;</p>
    </form>
</body>
</html>
