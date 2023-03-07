﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection con = null;
                SqlConnection con2 = null;
                //try
                //{
                // Creating Connection  
                con = new SqlConnection("data source= DESKTOP-V50HPE1\\SQLEXPRESS; database=RoomToRead; integrated security=SSPI");
                con2 = new SqlConnection("data source= DESKTOP-V50HPE1\\SQLEXPRESS; database=RoomToRead; integrated security=SSPI");
                con2.Open();
                string userId = Session["userId"].ToString();
                SqlCommand userROle = new SqlCommand($"select roleid from AspNetUserRoles where userid='{userId}'", con2);
                int role = Convert.ToInt32(userROle.ExecuteScalar());
                SqlCommand city = new SqlCommand($"select city_id from AspNetUsers where id='{userId}'", con2);
                int cityid = Convert.ToInt32(city.ExecuteScalar());
                SqlCommand citycommand = new SqlCommand($"select city_name from city where city_id ={cityid}", con2);
                string cityname = citycommand.ExecuteScalar().ToString();
                cityName.Text = cityname;
                if (role == 2 )
                {
                    tag.Text = "Donor";
                    your.InnerText = "Your Donated books";

                }
                else
                {
                    tag.Text = "user";
                    books.Visible = false;
                    Button3.Visible = false;
                    // writing sql query  
                }
                con2.Close();
                SqlCommand cm = new SqlCommand($"Select * from AspNetUsers  where id = '{Session["userId"]}'", con);
                SqlCommand cm2 = new SqlCommand($"select * from Books where user_id = {Session["userId"]}", con2);

                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                SqlDataReader sdr = cm.ExecuteReader();
                // Iterating Data  
                while (sdr.Read())
                {
                    //product_id = Convert.ToInt32(sdr[0]);

                    //userContainer.InnerHtml = $"<div  > <span> email:{sdr[2]}</span> </div>";
                    //name1.InnerHtml = $"  {sdr[1]}";
                    Label6.Text = $"  {sdr[12]}" + $"  {sdr[13]}";
                    img.InnerHtml = $" <img class=\"rounded-circle img-fluid shadow p-2 mb-3 bg-#f6d365 rounded\"  style=\"width: 170px ; height:170px\"  ;   border: solid 8px #F24726!important\";  src='{sdr[14]}' /> ";
                    Label4.Text = $"{sdr[1]}";
                    Label5.Text = $"{sdr[15]}";
                    Label3.Text = $"{sdr[5]}";

                }
                con.Close();

                con2.Open();
                //SqlDataReader sd = cm2.ExecuteReader();


                //while (sd.Read())
                //{

                //    if (sd[1].ToString() == Session["userId"].ToString())
                //    {
                //        tag.Text = "Donor";
                //        your.InnerText = "Your Donated books";
                //    }
                //    else
                //    {
                //        tag.Text = "user";
                //        //     Label3.hide();
                //        //     Label3.Style.Add("display", "none");
                //        //     Label3.Visible = false;
                //        //la

                //    }

                //}

                //con2.Open();
                //SqlDataReader sdr2 = cm2.ExecuteReader();
                //// Iterating Data  
                //while (sdr2.Read())
                //{
                //    cartContainer.InnerHtml += $"<div class='cartBox' > <span class='details'>{sdr2[1]}</span><span><a class='details1' href='order.aspx?id={sdr2[0]}'>view</a></span> </div>\r\n";
                //}



                //}
                //catch (Exception S)
                //{
                //    Console.WriteLine("OOPs, something went wrong.\n" + S);
                //    //Label1.Text = "OOPs, something went wrong.\n" + S;
                //}
                ////Closing the connection
                //finally
                //{
                //    con.Close();
                //    con2.Close();
                //}

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            //SqlConnection con = null;
            //    try
            //    {
            //        // Creating Connection  
            //        con = new SqlConnection("data source=DESKTOP-V50HPE1\\SQLEXPRESS; database=goalProject; integrated security=SSPI");
            //        // writing sql query  
            //        string name = TextBox1.Text + " " + TextBox2.Text;
            //        SqlCommand cm = null;
            //        if (Path.GetFileName(FileUpload1.FileName) != null && Path.GetFileName(FileUpload1.FileName) != "")
            //        {
            //            cm = new SqlCommand($"update users set  name = '{name}' ,  password = '{TextBox3.Text}',phone={TextBox5.Text}, imgSrc = 'Images/{Path.GetFileName(FileUpload1.FileName)}' where id = {Session["userId"]}", con);

            //        }
            //        else
            //        {
            //            cm = new SqlCommand($"update users set  name = '{name}' ,  password = '{TextBox3.Text}',phone={TextBox5.Text} where id = {Session["userId"]}", con);

            //        }
            //        // Opening Connection  
            //        con.Open();
            //        // Executing the SQL query  
            //        cm.ExecuteNonQuery();
            //        // Displaying a message  
            //        Console.WriteLine("Record Inserted Successfully");


            //        //Label1.Text = "Record Inserted Successfully";
            //    }
            //    catch (Exception A)
            //    {
            //        Console.WriteLine("OOPs, something went wrong." + A);
            //        //Label1.Text = "OOPs, something went wrong." + A;
            //    }
            //    // Closing the connection  
            //    finally
            //    {
            //        con.Close();
            //    }
            //}
            //protected void Page_Load()
            //{
            //}
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("userEDIT");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("qq");
        }
    }
}