

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Shopping Cart</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 250px;
        }
        .style3
        {
            width: 20px;
        }
        .auto-style1 {
            width: 164px;
            height: 154px;
        }
        .auto-style2 {
            width: 274px;
            height: 184px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img alt="" class="auto-style1" src="IMG/e10.png" /><br /><br />
        <asp:Label ID="Label1" runat="server" 
            Text="Please select a product:"></asp:Label>&nbsp;
        <asp:DropDownList ID="ddlProducts" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="PRODUCT_ID" 
            DataValueField="PRODUCT_ID" Width="150px" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:[ENTERPRICE_COMPUTING]ConnectionString %>" DeleteCommand="DELETE FROM [PRODUCTS] WHERE [PRODUCT_ID] = @original_PRODUCT_ID AND [productName] = @original_productName AND [productDescription] = @original_productDescription AND [unitPrice] = @original_unitPrice AND (([imageURL] = @original_imageURL) OR ([imageURL] IS NULL AND @original_imageURL IS NULL))" InsertCommand="INSERT INTO [PRODUCTS] ([PRODUCT_ID], [productName], [productDescription], [unitPrice], [imageURL]) VALUES (@PRODUCT_ID, @productName, @productDescription, @unitPrice, @imageURL)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PRODUCTS]" UpdateCommand="UPDATE [PRODUCTS] SET [productName] = @productName, [productDescription] = @productDescription, [unitPrice] = @unitPrice, [imageURL] = @imageURL WHERE [PRODUCT_ID] = @original_PRODUCT_ID AND [productName] = @original_productName AND [productDescription] = @original_productDescription AND [unitPrice] = @original_unitPrice AND (([imageURL] = @original_imageURL) OR ([imageURL] IS NULL AND @original_imageURL IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_PRODUCT_ID" Type="Int32" />
                <asp:Parameter Name="original_productName" Type="String" />
                <asp:Parameter Name="original_productDescription" Type="String" />
                <asp:Parameter Name="original_unitPrice" Type="Double" />
                <asp:Parameter Name="original_imageURL" Type="Object" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PRODUCT_ID" Type="Int32" />
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="productDescription" Type="String" />
                <asp:Parameter Name="unitPrice" Type="Double" />
                <asp:Parameter Name="imageURL" Type="Object" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="productDescription" Type="String" />
                <asp:Parameter Name="unitPrice" Type="Double" />
                <asp:Parameter Name="imageURL" Type="Object" />
                <asp:Parameter Name="original_PRODUCT_ID" Type="Int32" />
                <asp:Parameter Name="original_productName" Type="String" />
                <asp:Parameter Name="original_productDescription" Type="String" />
                <asp:Parameter Name="original_unitPrice" Type="Double" />
                <asp:Parameter Name="original_imageURL" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/Halloween.mdb" 
            SelectCommand="SELECT [ProductID], [Name], [ShortDescription],
                                  [LongDescription], [ImageFile], [UnitPrice]
                           FROM [Products] ORDER BY [Name]">
        </asp:AccessDataSource>
        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="lblName" runat="server" 
                        Font-Bold="True" Font-Size="Larger">
                    </asp:Label>
                </td>
                <td class="style3" rowspan="4">
                </td>
                <td rowspan="4" valign="center">
                    <img alt="" class="auto-style2" src="IMG/clarks2.jpg" /></td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblShortDescription" runat="server">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblLongDescription" runat="server">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblUnitPrice" runat="server" 
                        Font-Bold="True" Font-Size="Larger">
                    </asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="each" 
                        Font-Bold="True" Font-Size="Larger">
                    </asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
&nbsp;</div>
        <asp:Button ID="Button2" runat="server" Text="ADD TO CART" Width="93px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a class="active" href="Cart.aspx">Go to Cart</a>
    </form>

 </body>
</html>
