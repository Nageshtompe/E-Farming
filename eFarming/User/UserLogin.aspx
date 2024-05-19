<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="User_UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../Boostrap/bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">               
        .colHeight {
            height: 25px;           
        }    
        .tableStyle{
            border-top: 1px solid #333333;
            margin: 180px 280px auto 500px; 
            background-color: #C8FFE3; 
            border-left-style: solid;
            border-left-width: 1px; 
            border-right-style: solid;
            border-right-width: 1px;            
            border-bottom-style: solid;
            border-bottom-width: 1px; width: 457px; 
            height: 288px;
        } 
        .tdStyle{
            vertical-align: middle;
            text-align: center;
            border-collapse: collapse;
        }  

    </style>    
</head>
<body style="background-color:lavender;">
    <form id="form1" runat="server">
    <div>
    <table class="tableStyle">
        <tr>
            <td colspan="2" style="font-size: 16pt; text-transform: uppercase; letter-spacing: 0.1em; background-color: #66CCFF; border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: #808080; color: #FFFFFF; height: 38px;" class="tdStyle">
                 Sign In<span class="glyphicon glyphicon-log-in" style="width: 40px; height: 30px"></span></td>
        </tr>
        <tr>
            <td class="colHeight">
                </td>
            <td class="colHeight">
               </td>
        </tr>
        <tr style="height:55px">
            <td style="text-align: right; border-collapse: collapse;">
                <asp:Label ID="lblUserName" runat="server" Text="UserName" Font-Size="12pt" Font-Bold="True"></asp:Label>
            &nbsp;&nbsp; </td>
            <td style="width: 311px">
                <asp:TextBox ID="txtuserName" runat="server" MaxLength="50" Width="250px" CssClass="form-control" placeholder="Enter UserName"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuserName" Display="Dynamic" ErrorMessage="Please Enter UserName...!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr style="height:55px">
            <td style="text-align: right; border-collapse: collapse; height: 63px; ">
                <asp:Label ID="lblPassword" runat="server" Text="Password" Font-Size="12pt" Font-Bold="True"></asp:Label>
          &nbsp;&nbsp; </td>
            <td style=" width: 311px; height: 63px">
                <asp:TextBox ID="txtPassword" runat="server" MaxLength="12" TextMode="Password" Width="250px" CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Please Enter Password...!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr style="vertical-align:middle"> 
            <td colspan="2"  class="tdStyle"> 
                 <br />                         
                <asp:Button ID="btnSignup" runat="server" Text="Sign In" Width="101px" CssClass="btn btn-primary" Font-Size="12pt" Height="34px" OnClick="btnSignup_Click" />                                          
            </td>
        </tr>
        <tr> 
            <td colspan="2" style="height: 20px" class="tdStyle"> 
                 <asp:LinkButton ID="lnkForgotPass" runat="server" Font-Size="11pt" ForeColor="#666666" PostBackUrl="~/User/ForgotPassword.aspx" CausesValidation="False">Forgot Password?</asp:LinkButton>
            </td>
        </tr>
        <tr> 
            <td colspan="2" style=" height: 42px"  class="tdStyle">                            
                <asp:HyperLink ID="lnlSignUp" runat="server" Font-Size="11pt" NavigateUrl="~/User/UserSignUp.aspx" ForeColor="#FF66FF">Sign Up Here...</asp:HyperLink> 
                </td>          
        </tr>
    </table>
    </div>
        <script src="../Boostrap/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
