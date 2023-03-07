﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            TableCell cell = GridView1.Rows[e.RowIndex].Cells[4];
          
            TableCell cell1 = GridView1.Rows[e.RowIndex].Cells[0];
            //TableCell cell2 = GridView1.Rows[e.RowIndex].Cells[5];
            //cell2.Text = "Update";
            Session["name"] = cell.Text;
            string path = Server.MapPath($"img/{cell.Text}");
            FileUpload fileUpload = GridView1.Rows[e.RowIndex].FindControl("FileUpload4") as FileUpload;

            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ///
          
            SqlDataSource1.Update();
            if (fileUpload.HasFile)
            {
                fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("img"), fileUpload.FileName));
                SqlDataSource1.UpdateParameters["catergoy_image"].DefaultValue = "img\\" + fileUpload.FileName;

                SqlDataSource1.Update();

            }
            else
            {
                Label filename = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;

                SqlDataSource1.UpdateParameters["catergoy_image"].DefaultValue = filename.Text ;

                SqlDataSource1.Update();
            }

            cell.BackColor = System.Drawing.Color.Pink;

        }
        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successale();", true);
            System.Drawing.Color cell = GridView1.BackColor = System.Drawing.Color.Red;
            //GridView1.SelectedRow.BackColor = System.Drawing.Color.White;
            


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            // SqlConnection Con = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=project6; integrated security=SSPI");

            Con.Open();

            string query = $"select count(category_id) from  category";
            SqlCommand rolecommand = new SqlCommand(query, Con);
            int id = Convert.ToInt32(rolecommand.ExecuteScalar()) + 2;
            Con.Close();

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);


            SqlDataSource1.InsertParameters["category_name"].DefaultValue = TextBox4.Text;
            SqlDataSource1.InsertParameters["category_description"].DefaultValue = TextBox2.Text;
            //SqlDataSource1.InsertParameters["category_id"].DefaultValue = Convert.ToString(id);

            //////////////////////////////////////////////////////////////////////////////////////////////



            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(System.IO.Path.Combine(Server.MapPath("img"), FileUpload2.FileName));
                SqlDataSource1.InsertParameters["catergoy_image"].DefaultValue = "img\\" + FileUpload2.FileName;
            }
            else
            {
            }
            //SqlDataSource1.InsertParameters["catergoy_image"].DefaultValue = TextBox2.Text;
            SqlDataSource1.Insert();

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            try
            {
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[3];
                TableCell cell1 = GridView1.Rows[e.RowIndex].Cells[0];
                Session["name"] = cell1.Text;
                string path = Server.MapPath($"img/{cell.Text}");

            }
            catch(SqlException ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successaler();", true);
            }
            //TableCell cell = GridView1.Rows[e.RowIndex].Cells[2];
            //TableCell cell1 = GridView1.Rows[e.RowIndex].Cells[0];
            //Session["name"] = cell1.Text;
            //string path = Server.MapPath($"img/{cell.Text}");
            //File.Delete(path);

            //DialogResult result = MessageBox.Show("Are you sure you want to delete ?", "Message", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            //if (result == DialogResult.Yes)
            //{
                // write the code to delete here
               
            //File.Delete(path);

            //}
            //int cell2 =Convert.ToInt32( GridView1.Rows[e.RowIndex].Cells[0]);
            //int x = Convert.ToInt32(cell2);



            //string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            //SqlConnection Con = new SqlConnection(connectionString);
            //// SqlConnection Con = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=project6; integrated security=SSPI");

            //Con.Open();

            //string query = $"select count(*) from books where category_id={x}";
            //SqlCommand rolecommand = new SqlCommand(query, Con);
            //int id = Convert.ToInt32(rolecommand.ExecuteScalar());
            //if (id > 0)
            //{
            //    string name1 = Session["name"].ToString();
            //    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successaler();", true);
            //}
            //else
            //{
            //    return;
            //}





        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            string name1 = Session["name"].ToString();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successaler();", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            add.Visible = true;
            editAnddelete.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            editAnddelete.Visible = true;
            add.Visible = false;
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            GridView1.Visible=false;
            GridView2.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LoginPage.aspx");

        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
          
            TableCell cell1 = GridView1.Rows[e.RowIndex].Cells[0];
            int x = Convert.ToInt32(cell1);
           


            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            // SqlConnection Con = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=project6; integrated security=SSPI");

            Con.Open();

            string query = $"select count(*) from books where category_id={x}";
            SqlCommand rolecommand = new SqlCommand(query, Con);
            int id = Convert.ToInt32(rolecommand.ExecuteScalar());
            if(id>0)
            {
                string name1 = Session["name"].ToString();
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successaler();", true);
            }
            else
            {
                return;
            }




        }
    }
}