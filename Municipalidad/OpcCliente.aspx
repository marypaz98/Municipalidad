<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpcCliente.aspx.cs" Inherits="Municipalidad.OpcCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style3 {
            width: 38%;
        }
        .auto-style4 {
            color: #FFFFFF;
            width: 123px;
        }
    </style>
</head>
<body style="background-image:url(http://www.hdfondos.eu/pictures/2012/0802/1/abstract-minimalistic-trees-grey-1680x1050-wallpaper-569251.jpg)">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <span class="auto-style2">Municipalidad</span><br />
        </div>
        <p>
            &nbsp;</p>
        <p>
            Ingrese el nombre de la municipalidad a la que pertenece:</p>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">Nombre:</td>
                <td>
                    <asp:TextBox ID="TextNombre" runat="server" OnTextChanged="TextNombre_TextChanged" Width="226px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Ha ocurrido un error intentelo nuevamente" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="ButtonAceptar" runat="server" OnClick="ButtonAceptar_Click" Text="Aceptar" Width="98px" />
    </form>
</body>
</html>
