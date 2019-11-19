

<!DOCTYPE html>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<html>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
<title>Jungle</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="shortcut icon" type="image/x-icon" href="https://scriptcase-suporte.kayakocdn.com/favicon.ico">
<meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
<meta name="author" content="ScriptCase - www.scriptcase.net" />
<meta name="copyright" content="ScriptCase Code Generator - www.scriptcase.net" />
<meta name="google-site-verification" content="xQeTQK_W6dxsQWGKuopTxHVIfAm_EJ6y2D8LoID0MWI" />
<meta http-equiv="content-language" content="en_us" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<style>
    * {
        box-sizing: border-box;
    }
    body {
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
    }
    .header {
        overflow: hidden;
        background-color: purple;
        padding: 20px 10px;
    }
        .header a {
            float: left;
            color: black;
            text-align: center;
            padding: 12px;
            text-decoration: none;
            font-size: 18px;
            line-height: 25px;
            border-radius: 4px;
            float: left;
            border: 5px solid purple;
        }
            .header a.logo {
                font-size: 25px;
                font-weight: bold;
            }
            .header a:hover {
                background-color: #ddd;
                color: black;
            }
            .header a.active {
                background-color: dodgerblue;
                color: white;
            }
    .header-right {
        float: right;
    }
    @media screen and (max-width: 500px) {
        .header a {
            float: none;
            display: block;
            text-align: left;
        }
        .header-right {
            float: none;
        }
    }
</style>
<style>
    div.gallery {
        margin: 5px;
        border: 1px solid yellow;
        float: left;
        width: 180px;
    }
        div.gallery:hover {
            border: 1px solid blue;
        }
        div.gallery img {
            width: 100%;
            height: auto;
        }
    div.desc {
        padding: 15px;
        text-align: center;
    }
</style>
<style>
    * {
        box-sizing: border-box;
    }
    body {
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
    }
    .header {
        overflow: hidden;
        background-color: black;
        padding: 20px 10px;
    }
        .header a {
            float: left;
            color: white;
            text-align: center;
            padding: 12px;
            text-decoration: none;
            font-size: 18px;
            line-height: 25px;
            border-radius: 4px;
            float: left;
            border: 3px solid purple;
        }
            .header a.logo {
                font-size: 25px;
                font-weight: bold;
            }
            .header a:hover {
                background-color: blue;
                color: black;
            }
            .header a.active {
                background-color: blue;
                color: white;
            }
    .header-right {
        float: right;
    }
    @media screen and (max-width: 600px) {
        .topnav a:not(:first-child), .dropdown .dropbtn {
            display: none;
        }
        .topnav a.icon {
            float: right;
            display: block;
        }
    }
    @media screen and (max-width: 600px) {
        .topnav.responsive {
            position: relative;
        }
            .topnav.responsive .icon {
                position: absolute;
                right: 0;
                top: 0;
            }
            .topnav.responsive a {
                float: none;
                display: block;
                text-align: left;
            }
            .topnav.responsive .dropdown {
                float: none;
            }
            .topnav.responsive .dropdown-content {
                position: relative;
            }
            .topnav.responsive .dropdown .dropbtn {
                display: block;
                width: 100%;
                text-align: left;
            }
    }
    .auto-style1 {
        height: 142px;
    }
    </style>

</head>
<body>
    <body class="w3-light-grey">

    <!-- w3-content defines a container for fixed size centered content,
    and is wrapped around the whole page content, except for the footer in this example -->
    <div class="w3-content" style="max-width:1400px">

        <!-- Header -->
        <div class="topnav" id="myTopnav">
            <div class="header">
                <a href="#default"><img src="IMG/e10.png" alt="" class="auto-style1" /><font color="yellow">  Jungle </font></a>
                <div class="header-right">
                    <a class="active" href="Default.aspx">LOGOUT</a>
               
                    <a href="javascript:void(0);" style="font-size:15px;" class="icon" onclick="myFunction()">&#9776;</a>
                </div>
            </div>
        </div>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:[ENTERPRICE_COMPUTING]ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PRODUCTS]"></asp:SqlDataSource>
            <br />
            PRODUCT TABLE<br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="PRODUCT_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" ReadOnly="True" SortExpression="PRODUCT_ID" />
                    <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
                    <asp:BoundField DataField="productDescription" HeaderText="productDescription" SortExpression="productDescription" />
                    <asp:BoundField DataField="unitPrice" HeaderText="unitPrice" SortExpression="unitPrice" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ENTERPRICE_COMPUTINGConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Orders]">
            </asp:SqlDataSource>
            ORDER TABLE<br />
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="orderID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="orderID" HeaderText="orderID" ReadOnly="True" SortExpression="orderID" />
                    <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" />
                    <asp:BoundField DataField="orderDate" HeaderText="orderDate" SortExpression="orderDate" />
                    <asp:BoundField DataField="totalCost" HeaderText="totalCost" SortExpression="totalCost" />
                    <asp:BoundField DataField="statusS" HeaderText="statusS" SortExpression="statusS" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <br />
            CART TABLE<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ENTERPRICE_COMPUTINGConnectionString %>" SelectCommand="SELECT * FROM [CartInfo]"></asp:SqlDataSource>
            <asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="None">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="orderID" HeaderText="orderID" SortExpression="orderID" />
                    <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" SortExpression="PRODUCT_ID" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <br />
            SHIPPING INFROMATION<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ENTERPRICE_COMPUTINGConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SHIIPINGINFORMATION]">
            </asp:SqlDataSource>
            <asp:GridView ID="GridView5" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TRN" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="TRN" HeaderText="TRN" ReadOnly="True" SortExpression="TRN" />
                    <asp:BoundField DataField="PHONE_NUMBERS" HeaderText="PHONE_NUMBERS" SortExpression="PHONE_NUMBERS" />
                    <asp:BoundField DataField="MAILINGADDRESS" HeaderText="MAILINGADDRESS" SortExpression="MAILINGADDRESS" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <br />
        </div>
    </div>
         <asp:Label ID="Label1" runat="server" Text="PRODUCT  ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ID" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="PRODUCT NAME"></asp:Label>
&nbsp;
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <br />
&nbsp;<br />
            <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="description" runat="server"></asp:TextBox>
            <br />
&nbsp;<br />
            <asp:Label ID="Label4" runat="server" Text="Unit Price"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="price" runat="server"></asp:TextBox>
            <br />
&nbsp;<br />
            <asp:Button ID="Button1" runat="server" OnClientClick="Productsinsert" Text="Submit" />
            <br />
&nbsp;<br />
    
        </form>
</body>
</html>
