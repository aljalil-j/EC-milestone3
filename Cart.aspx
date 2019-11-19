

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <br />
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:[ENTERPRICE_COMPUTING]ConnectionString %>" SelectCommand="SELECT * FROM [CartInfo]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="orderID" HeaderText="orderID" SortExpression="orderID"></asp:BoundField>
                <asp:BoundField DataField="PRODUCT_ID" HeaderText="PRODUCT_ID" SortExpression="PRODUCT_ID"></asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
