using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Lab03_DBConnected
{
    public partial class ProductInquiry : System.Web.UI.Page
    {

        protected string conn_string = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected string query = "";
        protected SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void loadProduct(int id)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = conn_string;
                conn.Open();
                query = "SELECT * FROM tblProducts WHERE Id =" + id;
                cmd = new SqlCommand(query, conn);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    txtID.Text = id.ToString();
                    txtName.Text = reader["name"].ToString();
                    txtPrice.Text = reader["price"].ToString();
                    txtQuantity.Text = reader["quantity"].ToString();
                }
                if (!reader.HasRows)
                    lblMessage.Text = "No record found in the Database";
                else
                    lblMessage.Text = "1 record found successfully";
            }
        }

        protected void insertProduct(string name, double price, int quantity)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = conn_string;
                conn.Open();
                query = "INSERT INTO tblProducts VALUES('" + name + 
                    "', " + price + ", " + quantity + ")";
                cmd = new SqlCommand(query, conn);
                int rowsInserted = cmd.ExecuteNonQuery();
                lblMessage.Text = rowsInserted + " record inserted successfully";     
            }
        }

        protected void updateProduct(int id, string name, double price, int quantity)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = conn_string;
                conn.Open();
                query = "UPDATE tblProducts SET name='" + name
                    + "', price = " + price + ", quantity = " + quantity 
                    + " WHERE Id = " + id;
                cmd = new SqlCommand(query, conn);
                int rowsUpdated = cmd.ExecuteNonQuery();
                lblMessage.Text = rowsUpdated + " record updated successfully";
            }
        }

        protected void deleteProduct(int id)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = conn_string;
                conn.Open();
                query = "DELETE FROM tblProducts WHERE Id = " + id;
                cmd = new SqlCommand(query, conn);
                int rowsDel = cmd.ExecuteNonQuery();
                lblMessage.Text = rowsDel + " record deleted successfully";
            }
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "")
                lblErrorID.Text = "ID is required to Load";
            else
            {
                txtName.Text = String.Empty;
                txtPrice.Text = String.Empty;
                txtQuantity.Text = String.Empty;
                loadProduct(Convert.ToInt32(txtID.Text));
                lblErrorID.Text = "";
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "")
                lblMessage.Text = "Product name is required\n";
            else if (txtPrice.Text == "")
                lblMessage.Text = "Price is required\n";
            else if (txtQuantity.Text == "")
                lblMessage.Text = "Quantity is required\n";
            else
            {
                lblMessage.Text = String.Empty;
                insertProduct(txtName.Text.ToString(), Convert.ToDouble(txtPrice.Text), Convert.ToInt32(txtQuantity.Text));            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "")
                lblMessage.Text = "Product ID is required\n";
            else if (txtName.Text == "")
                lblMessage.Text = "Product name is required\n";
            else if (txtPrice.Text == "")
                lblMessage.Text = "Price is required\n";
            else if (txtQuantity.Text == "")
                lblMessage.Text = "Quantity is required\n";
            else
            {
                lblMessage.Text = String.Empty;
                updateProduct(Convert.ToInt32(txtID.Text), txtName.Text.ToString(), Convert.ToDouble(txtPrice.Text), Convert.ToInt32(txtQuantity.Text));
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtID.Text == "")
                lblMessage.Text = "Product ID is required\n";
            else
            {
                lblMessage.Text = String.Empty;
                deleteProduct(Convert.ToInt32(txtID.Text));
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtID.Text = String.Empty;
            txtName.Text = String.Empty;
            txtPrice.Text = String.Empty;
            txtQuantity.Text = String.Empty;
        }
    }
}