<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina.aspx.cs" Inherits="Cliente.Pagina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Caso de Uso - Registro de Usuarios</title>
    <style>
        body{
            display: flex;
            justify-content: center;
            background-image: url("https://www.softzone.es/app/uploads-softzone.es/2021/05/Programar-en-IDE.jpg");
            background-size: cover;
            align-items: center;
        }

        img{
            width:150px;
            heigth:150px;
        }

       #form1{
           flex-direction: column;
           height: 100vh;
           text-align:center;
           padding: 30px
       }

       #div1{
           position: absolute;
           top: 50%;
           left: 50%;
           transform: translate(-50%, -50%);
           text-align: center;
           align-items: center;
           background-color: whitesmoke;
           width: 800px;
           height: 400px;
           opacity: 0.8;
           border-radius: 20px;
           overflow: auto;
       }

       #Grilla{
           color: black;
           font-family: Arial;

       }

       #div1 p{
           color: red;
           font-family: Arial;
           font-size: 24px;
           margin-top: 30px;
       }

       #BtnConsultar{
           margin-top: 35px;
           background-color: darkblue;
           color: whitesmoke;
           border-radius: 20px;
           font-family:Arial;
           cursor: pointer;
       }

    </style>
</head>
<body>
    <div id="div1">
        <p>
            <b>Bienvenido al Registro de Usuarios</b>
        </p>

        <img src="https://store.intcomex.com/Content/Images/Layout/Logo.png"/>
        <form id="form1" runat="server">
            <asp:GridView ID="Grilla" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="353px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:Button ID="BtnConsultar" runat="server" Text="Consultar" OnClick="BtnConsultar_Click" Height="39px" Width="104px" />
        </form>
    </div>

</body>
</html>
