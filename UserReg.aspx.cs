using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace UserRegApp
{
    public partial class UserReg : System.Web.UI.Page
    { 

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=KNILA13\\SQLEXPRESS;Initial Catalog=usereg;Integrated Security=True");
            conn.Open();
            string insertQuery= "INSERT INTO userreg VALUES(@email,@pass,@fname,@lname,@code,@phno,@gender,@state,@address,@city,@zip,@dob)";
            SqlCommand cmd=new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@email",textEmail.Text);
            cmd.Parameters.AddWithValue("@pass", textpass.Text);
            cmd.Parameters.AddWithValue("@fname", textfname.Text);
            cmd.Parameters.AddWithValue("@lname", textlname.Text);
            cmd.Parameters.AddWithValue("@code", DropDownList2.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@phno", textphno.Text);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@state", textstate.Text);
            cmd.Parameters.AddWithValue("@address", textadd.Text);
            cmd.Parameters.AddWithValue("@city", textcity.Text);
            cmd.Parameters.AddWithValue("@zip", textZip.Text);
            cmd.Parameters.AddWithValue("@dob", textdob.Text);
            int count = cmd.ExecuteNonQuery();
            if (count > 0)
            {
                Response.Write("<script type='text/javascript'>alert('Registered Successfully !!')</script>");
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('Error In Registration !!')</script>");
            }

        }
    }
}