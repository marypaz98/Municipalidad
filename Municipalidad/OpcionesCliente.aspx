<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OpcionesCliente.aspx.cs" Inherits="Municipalidad.OpcionesCliente" %>

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
            height: 38px;
        }
        .auto-style2 {
            color: #FFFFFF;
        }
        .auto-style3 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style5 {
            color: #000000;
            font-size: large;
        }
        .auto-style6 {
            font-size: medium;
        }
        </style>
</head>
<body style="background-image:url(http://www.hdfondos.eu/pictures/2012/0802/1/abstract-minimalistic-trees-grey-1680x1050-wallpaper-569251.jpg)">
    &nbsp;<div class="auto-style1">
            Munucipalidad</div>
        <p class="auto-style2">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <p>
        &nbsp;</p>
    <form id="form1" runat="server">
        <p class="auto-style5">
            Click en la opción que desea realizar:</p>
        <p class="auto-style3">
            <asp:Button ID="ButtonRecibosPendientes" runat="server" Height="36px" Text="Recibos pendientes" Width="131px" OnClick="ButtonRecibosPendientes_Click"  />
        </p>
        <p class="auto-style3">
            <asp:Button ID="ButtonRecibosPagados" runat="server" Height="36px" Text="Recibos pagados" Width="128px" OnClick="ButtonRecibosPagados_Click"  />
        </p>
        <p class="auto-style3">
            <asp:Button ID="ButtonPagarRecibos" runat="server" Height="32px" Text="Pagar" Width="125px" OnClick="ButtonPagarRecibos_Click" />
        </p>
        <p class="auto-style3">
            <asp:Label ID="LabelExito" runat="server" CssClass="auto-style6" ForeColor="White" Text="Recibo pagado con éxito" Visible="False"></asp:Label>
        </p>
        <p class="auto-style3">
            <asp:Label ID="LabelError" runat="server" CssClass="auto-style6" ForeColor="Red" Text="Error al pagar el recibo, intentelo nuevamente" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
