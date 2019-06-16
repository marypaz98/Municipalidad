<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpcionesMantenimiento.aspx.cs" Inherits="Municipalidad.OpcionesMantenimiento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style2 {
            text-align: left;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            text-align: left;
            font-size: medium;
            color: #FFFFFF;
        }
    </style>
</head>
<body style="background-image:url(http://www.hdfondos.eu/pictures/2012/0802/1/abstract-minimalistic-trees-grey-1680x1050-wallpaper-569251.jpg)">
    <form id="form1" runat="server">
        <p class="auto-style1">
            Municipalidad</p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style4">
            Escoja la opción al que desea darle mantenimiento:</p>
        <p class="auto-style4">
            &nbsp;</p>
        <p class="auto-style4">
            &nbsp;</p>
        <p class="auto-style2">
            <asp:Button ID="Button1" runat="server" Height="44px" OnClick="Button1_Click" Text="Abonado" Width="133px" />
        </p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            <asp:Button ID="Button2" runat="server" Height="44px" OnClick="Button2_Click" Text="Servicios" Width="128px" />
        </p>
    </form>
</body>
</html>
