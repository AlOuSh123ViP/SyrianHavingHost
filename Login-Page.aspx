﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login-Page.aspx.cs" Inherits="AlaaWarrak_Pr2Final_Project.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="description" content="This is the Register page for Technical institute fo computer-InSyria "/>
    <link rel="stylesheet" href="style-RegisterSection.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"/>
    <link rel="jsdelivr" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"/>
   
    <link rel="stylesheet" href="bootstrap-grid.css"/>
    <link rel="stylesheet" href="bootstrap-grid.css.map"/>
    <link rel="stylesheet" href="bootstrap-grid.min.css.map"/>
    <link rel="stylesheet" href="bootstrap-reboot.css"/>
    <link rel="stylesheet" href="bootstrap.css"/>
    <link rel="stylesheet" href="_forms.scss"/>
    <link rel="stylesheet" href="_alert.scss"/>
    <link rel="stylesheet" href="_button-group.scss"/>
    <link rel="stylesheet" href="_buttons.scss"/>
    <link rel="stylesheet" href="_tables.scss"/>
    <link rel="stylesheet" href="forms/_floating-labels.scss"/>
    <link rel="stylesheet" href="forms/_form-check.scss"/>
    <link rel="stylesheet" href="forms/_form-control.scss"/>
    <link rel="stylesheet" href="forms/_form-range.scss"/>
    <link rel="stylesheet" href="forms/_form-select.scss"/>
    <link rel="stylesheet" href="forms/_form-text.scss"/>
    <link rel="stylesheet" href="forms/_input-group.scss"/>
    <link rel="stylesheet" href="_labels.scss"/>
    <link rel="stylesheet" href="_validation.scss"/>
    <link rel="stylesheet" href="_color-bg.scss"/>
    <link rel="stylesheet" href="_clearfix.scss"/>
    <link rel="stylesheet" href="_colored-links.scss"/>
    <link rel="stylesheet" href="_position.scss"/>
    <link rel="stylesheet" href="_ratio.scss"/>
    <link rel="stylesheet" href="_text-truncation.scss"/>
    <link rel="stylesheet" href="_stretched-link.scss"/>
   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous"/>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="jquery.min.js"></script>
<script src="bootstrap.bundle.min.js"></script>
<script src="site.js" asp-append-version="true"></script>

    <title>login-toView</title>
    <link rel="stylesheet" href="style-Login.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="divalldiv">
            <asp:Label ID="lblFname" runat="server" Text="First Name :"></asp:Label>
        <asp:TextBox ID="txtfName" runat="server" AutoCompleteType="FirstName" MaxLength="25"></asp:TextBox>
            <br />
            <asp:Label ID="lblNN" runat="server" Text="National Number :"></asp:Label>
        <asp:TextBox ID="txtNN" runat="server"></asp:TextBox>
            <br /> <br />
            <asp:Button ID="bttSubmit" runat="server" Text="login" OnClick="bttSubmit_Click" />
            <br /> <a class="notStudentLogin" runat="server" href="RegisterInOurInstitute_Page.aspx">not a student?</a>
            <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" >
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="fName" HeaderText="FirstName" ReadOnly="True" SortExpression="FirstName" />
                    <asp:BoundField DataField="lName" HeaderText="LastName" ReadOnly="True" SortExpression="LasName" />
                    <asp:BoundField DataField="TofC" HeaderText="Type of Certificate" ReadOnly="True" SortExpression="Type of Certificate" />
                    <asp:BoundField DataField="DofC" HeaderText="degree of Certificate" ReadOnly="True" SortExpression="degree of Certificate" />
                    <asp:BoundField DataField="NN" HeaderText="National Number" ReadOnly="True" SortExpression="National Number" />
                    <asp:BoundField DataField="Phn" HeaderText="Phone Number" ReadOnly="True" SortExpression="PhoneNumber" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=THECRIMINALPC;Initial Catalog=Student;Integrated Security=True" DataSourceMode="DataReader" SelectCommand="select * from stdInfo;"></asp:SqlDataSource>
           
        </div>
    </form>
</body>
</html>
