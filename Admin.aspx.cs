using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace NEW
{
    public partial class Admin : System.Web.UI.Page
    {
        private object name;
        private object description;
        private object price;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Productsinsert(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-500A0A9\SERVER;initial Catalog=ENTERPRICE_COMPUTING;Integrated Security=True;"))
            {
                sqlCon.Open();
                string query = "insert into PRODUCTS(PRODUCT_ID,productName,productDescription,unitPrice) values (@id, @name,  @description, @price)";
                SqlCommand sqlCommand = new SqlCommand(query, sqlCon);
                SqlCommand sqlCmd = sqlCommand;
                sqlCmd.Parameters.AddWithValue("@id", ID.Text);
                sqlCmd.Parameters.AddWithValue("@name", name.Text);
                sqlCmd.Parameters.AddWithValue("@description", description.Text);
                sqlCmd.Parameters.AddWithValue("@price", price.Text);

                sqlCmd.ExecuteNonQuery();
                sqlCon.Close();
            }
        }
    }
}