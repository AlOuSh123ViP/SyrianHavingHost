<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterInOurInstitute_Page.aspx.cs" Inherits="AlaaWarrak_Pr2Final_Project.RegisterInOurInstitute_Page" %>

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
    <title>Register-page</title>
    <link rel="stylesheet" href="style-RegisterSection.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="divalldiv">
        <asp:Label ID="lblFname" runat="server" Text="First Name :"></asp:Label>
        <asp:TextBox ID="txtfName" runat="server" Height="18px" AutoCompleteType="FirstName" MaxLength="25"></asp:TextBox>
        <p>
            <asp:Label ID="lbllName" runat="server" Text="sur name :"></asp:Label>
            <asp:TextBox ID="txtlName" runat="server" AutoCompleteType="LastName" MaxLength="20"></asp:TextBox>
        </p>
        <asp:Label ID="lblTofC" runat="server" Text="Type of your Certificate :"></asp:Label>
        <asp:TextBox ID="txtTofC" runat="server" ></asp:TextBox>
        <p>
            <asp:Label ID="lblDofC" runat="server" Text="Degree of Certificate :"></asp:Label>
            <asp:TextBox ID="txtDofC"  runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="lblNN" runat="server" Text="National Number :"></asp:Label>
        <asp:TextBox ID="txtNN" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="lblPhn" runat="server" Text="Phone number"></asp:Label>
            <asp:TextBox ID="txtPhn" runat="server" AutoCompleteType="HomePhone"></asp:TextBox>
        </p>
            <asp:Button ID="bttSubmit" runat="server" Text="Submit" OnClick="bttSubmit_Click" /> 
            <asp:Button ID="bttShow" runat="server" Text="show Students" OnClick="bttShow_Click" />
                <br />
            <a id="a-reg" href="Home_Page.aspx" > already a Student?</a>
            </div>
    </form>
</body>
</html>
