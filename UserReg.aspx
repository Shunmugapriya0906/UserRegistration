<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserReg.aspx.cs" Inherits="UserRegApp.UserReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
     <div class="container">
    
   
        <form class="row g-3 bg-light" runat="server" method="post">
            <div class="bg-primary p-6 rounded mb-3 mt-3">
    <h1 class="text-center text-light"> User Registration</h1>
</div>
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
      <asp:TextBox ID="textEmail" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
      <asp:TextBox ID="textpass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
  </div>
            <div class="col-6">
  <label for="inputFirstName" class="form-label">First Name</label>
    <asp:TextBox ID="textfname" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
</div>
            <div class="col-6">
  <label for="inpuLastName" class="form-label">Last Name</label>
    <asp:TextBox ID="textlname" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
</div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
      <asp:TextBox ID="txtAdd" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
  </div>
             <div class="col-md-6">
   <label for="inputphno" class="form-label">Phone Number</label>
     <asp:TextBox ID="textphno" CssClass="form-control" runat="server" TextMode="Phone" MaxLength="10" CausesValidation="True"></asp:TextBox>
 </div>
             <div class="col-md-6">
   <label for="inputgender" class="form-label">Gender</label>
     <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
          <asp:ListItem></asp:ListItem>
         <asp:ListItem>Male</asp:ListItem>
         <asp:ListItem>Female</asp:ListItem>
         <asp:ListItem>Not Prefer To say</asp:ListItem>
     </asp:DropDownList>
 </div>
   <div class="col-md-6">
    <label for="inputDob" class="form-label">DOB</label>
       <asp:TextBox ID="textdob" CssClass="form-control" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
  <div class="col-md-6">
    <label for="inputCity" class="form-label">City</label>
      <asp:TextBox ID="textcity" CssClass="form-control" runat="server"></asp:TextBox>
  </div>
  <div class="col-md-6">
    <label for="inputState" class="form-label">State</label>
      <asp:DropDownList ID="DropDownstate" CssClass="form-control" runat="server"></asp:DropDownList>
  </div>
  <div class="col-md-6">
    <label for="inputZip" class="form-label">Zip</label>
    <input type="text" class="form-control" id="inputZip">
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <div class="col-12 mb-3">
    <button type="submit" class="btn btn-primary">Sign in</button>
  </div>
</form>
    </div>
</body>
</html>
