<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../Boostrap/bootstrap-3.4.1-dist/css/bootstrap.min.css" rel="stylesheet" /> 
    <title></title>
    <style type="text/css">
        .tablestyle {
            width: 430px;
            border:1px solid black;
            height: 273px;
            margin: 180px 350px auto 350px;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body  style="background-image: url('../images/SignUpBackimg1.jpeg');">
    <form id="form1" runat="server">
    <div>
    <center>
 <table class="tablestyle" >
            <tr>
                <td colspan="2" style="font-family: verdana, Geneva, Tahoma, sans-serif; font-size: 18px; font-weight: normal; font-style: normal; color: #FFFFFF; line-height: normal; vertical-align: middle; text-align: center; letter-spacing: 0.1em; background-color: #6699FF; border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #000000;height: 47px;">
                    <asp:Label ID="lblLogin" runat="server" Text="Admin Login" Font-Size="16pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 21px;"></td>
            </tr>
            <tr>
                <td style="font-family: verdana, Geneva, Tahoma, sans-serif; font-size: 10px; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; line-height: normal; border-collapse: collapse;height: 48px; width: 149px;" >
                    <asp:Label ID="lblUserName" runat="server" Text="UserName" CssClass="label label-info" Font-Size="12pt"></asp:Label>
                </td>
                <td style="height: 48px; width: 291px;" >                    
                    <asp:TextBox ID="txtUserName" runat="server" MaxLength="50" Width="265px" CssClass="form-control" placeholder="Enter UserName"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Please Enter UserName..!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Please Enter Valid UserName..!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="font-family: verdana, Geneva, Tahoma, sans-serif; font-size: 10px; font-weight: normal; line-height: normal; vertical-align: middle; text-align: center; border-collapse: collapse;height: 50px; width: 149px;">
                    <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="label label-info" Font-Size="12pt"></asp:Label>
                </td>
                <td style="height: 50px; width: 291px;">
                   <asp:TextBox ID="txtPassword" runat="server" MaxLength="12" TextMode="Password" Width="265px" CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Please Enter Password..!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="font-family: verdana, Geneva, Tahoma, sans-serif; font-size: 12px; font-weight: lighter; font-style: normal; color: #333333; line-height: normal; vertical-align: middle; text-align: center; letter-spacing: 0.1em; border-collapse: collapse; height: 23px;">
                    &nbsp;
                    <asp:CheckBox ID="chkRemember" runat="server" Text="Remember Me" />
                    <br />
                    <asp:Label ID="lblShow" runat="server" Font-Size="14px" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  colspan="2" style="font-family: verdana, Geneva, Tahoma, sans-serif; font-size: 14px; font-weight: normal; font-style: normal; line-height: normal; vertical-align: middle; text-align: center; border-collapse: collapse; height: 50px;">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" Width="100px" OnClick="btnLogin_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="font-family: verdana, Geneva, Tahoma, sans-serif; font-size: 16px; font-weight: normal; font-style: normal; line-height: normal; vertical-align: middle; text-align: center; letter-spacing: 0.1em; border-collapse: collapse;height: 32px;">
                    &nbsp;</td>
            </tr>
        </table>
    </center>   
    </div>
        <script src="../Boostrap/bootstrap-3.4.1-dist/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
