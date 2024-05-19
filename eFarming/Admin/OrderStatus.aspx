<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.master" AutoEventWireup="true" CodeFile="OrderStatus.aspx.cs" Inherits="Admin_OrderStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
        .centerStyle{
            height: 40px;
             vertical-align: top;
              text-align: center;
              font-family: Arial, Helvetica, sans-serif;
              font-size: 12pt;
              color:black;
        }    
        .headerstyle{
            text-decoration: underline;
            font-size:12pt; 
            font-family:Bahnschrift;
           color:crimson;
        }           
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="alert alert-success" >
    <table style="border: 1px solid #000000; width:100%">
            <tr style="height:30px">
                <td colspan="3" style="text-align:center; font-size:12pt ">
                    <div class="alert alert-warning">
                        Cancelled/Delivered the Order</div>
                </td>
            </tr>
        <tr class="centerStyle">
            <td>
               </td>
            <td>    |Product Image|<br />
                <asp:Image ID="Image1" runat="server" Height="120px" Width="125px" />
            </td>
            <td>
                </td>
        </tr>
        <tr class="centerStyle">
            <td colspan="3">
              </td>
        </tr>
        <tr class="centerStyle">
            <td class="headerstyle">
                Product Details:
            </td>
            <td class="headerstyle">
                 Order Details:
            </td>
            <td class="headerstyle">
              User Details:
            </td>
        </tr>
        <tr class="centerStyle">
            <td>
                &nbsp;ID:&nbsp;<asp:Label ID="lblProdID" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
            </td>
            <td>
                Order ID:&nbsp;<asp:Label ID="lblOrderID" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
               </td>
            <td>
                Full Name:&nbsp;<asp:Label ID="lblFullName" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
               </td>
        </tr>
        <tr class="centerStyle">
            <td>
                &nbsp;Name:&nbsp;<asp:Label ID="lblProdName" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
                </td>
            <td>
                Order Date:&nbsp;<asp:Label ID="lblOrderdate" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
                </td>
            <td>
                UserName:&nbsp;<asp:Label ID="lblUserName" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
                </td>
        </tr>
        <tr class="centerStyle">
            <td>
                Entry Date: <asp:Label ID="lblProductEntry" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
                </td>
            <td>
                Price:&nbsp
                <asp:Label ID="lblPrice" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
            </td>
            <td>
                Gender:&nbsp;<asp:Label ID="lblGender" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
                </td>
        </tr>
        <tr class="centerStyle">
            <td>
                Description: <asp:Label ID="lblProdDes" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
                </td>
            <td>
                &nbsp;Quantity:&nbsp;<asp:Label ID="lblQty" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
               </td>
            <td>
                Address:&nbsp;<asp:Label ID="lblAddress" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
                </td>
        </tr>
        <tr class="centerStyle">
            <td>
                Unit:&nbsp;<asp:Label ID="lblProdUnit" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
                </td>
            <td>              
                Total Amount:&nbsp;<asp:Label ID="lblTotal" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
              
            </td>
            <td>              
                City:&nbsp;<asp:Label ID="lblCity" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>               
                </td>
        </tr>
        <tr class="centerStyle">
            <td>
                Available Quantity:&nbsp;<asp:Label ID="lblTotalQty" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>
               </td>
            <td>                
                Order Status:&nbsp;<asp:Label ID="lblOrderStatus" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>             
            </td>
            <td>
                Contact No:&nbsp;<asp:Label ID="lblContactNo" runat="server" Font-Size="12pt" ForeColor="Blue"></asp:Label>               
               </td>
        </tr>
        <tr style="height:50px;vertical-align:top;">
            <td> </td> 
               <td style="text-align:center"> 
            <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger" Font-Size="10pt" Text="Cancel Order" OnClick="btnCancel_Click" />&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnConfirm" runat="server" CssClass="btn btn-success" Font-Size="10pt" Text="Order Delivered" OnClick="btnConfirm_Click" />
            </td> 
                <td> 
                    </td>
        </tr>
        </table>
    </div>
</asp:Content>

