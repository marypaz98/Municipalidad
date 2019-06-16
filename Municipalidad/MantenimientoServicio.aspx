<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MantenimientoServicio.aspx.cs" Inherits="Municipalidad.MantenimientoServicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            color: #FFFFFF;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style3 {
            color: #000000;
            font-size: medium;
            text-align: left;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style6 {
            width: 791px;
        }
        .auto-style7 {
            width: 160px;
            color: #FFFFFF;
        }
    </style>
</head>
<body style="background-image:url(http://www.hdfondos.eu/pictures/2012/0802/1/abstract-minimalistic-trees-grey-1680x1050-wallpaper-569251.jpg)">
    <form id="form1" runat="server">
        <p class="auto-style2">
            Municipalidad</p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style3">
            Escriba el nombre del servicio a modificar y el nuevo valor:</p>
        <table class="auto-style4">
            <tr>
                <td class="auto-style7">Nombre:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextNombre" runat="server" Width="252px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Valor:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextDocId" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Aceptar" />
        </p>
        <p>
            <asp:Label ID="LabelError" runat="server" ForeColor="Red" Text="Error al modificar los datos" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
