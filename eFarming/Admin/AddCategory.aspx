<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="Admin_AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .rigthSide{
            height: 54px;
             vertical-align: middle;
              text-align: left;
        }      
       .leftSide {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12pt;
            color: #000000;
            height: 54px;
            vertical-align: middle;
            text-align: right;
            width: 553px;
        } 
       .hedaerstyle
     {
         font-family:Bahnschrift; 
         font-size: 20pt; 
         color: #FFFF00; 
         background-color: #33CC33; 
         vertical-align: middle; 
         text-align: center; 
         height:56px;
     }      
        .auto-style3 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12pt;
            color: #000000;
            height: 52px;
            vertical-align: middle;
            text-align: right;
            width: 553px;
        }
        .auto-style4 {
            height: 52px;
            vertical-align: middle;
            text-align: left;
        }
        .CenterHeaderText th
        {
         vertical-align: middle; 
         text-align: center; 
         font-size:12pt;
         color:white;
         background-color:#5D7B9D;
         height:38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">               
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <table style="width:100%;height:372px">
       <tr>
           <td  colspan="2" class="hedaerstyle"> Add Category</td>       
       </tr>
        <tr>
            <td style="height: 40px;" colspan="2"> 
                <asp:HiddenField ID="hdfCID" runat="server" />
            </td>
        </tr>   
        <tr>
            <td class="auto-style3">
               Category<span style="color:red">* </span>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCategory" runat="server" CssClass="form-control" MaxLength="50" Width="210px"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="txtCategory_TextBoxWatermarkExtender" runat="server" BehaviorID="txtCategory_TextBoxWatermarkExtender" TargetControlID="txtCategory" WatermarkText="Enter Category" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategory" Display="Dynamic" ErrorMessage="Please Enter Category Name..!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>  
        <tr>
            <td class="leftSide">

            </td>
            <td class="rigthSide">
                <asp:Button ID="btnAddCategory" runat="server" CssClass="btn btn-primary" Font-Size="11pt" Height="32px" Text="ADD" Width="81px" OnClick="btnAddCategory_Click1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdateCategory" runat="server" CssClass="btn btn-primary" Font-Size="11pt" Height="33px" Text="Update" Width="84px" OnClick="btnUpdateCategory_Click1" Enabled="False" />
            </td>
        </tr>  
         <tr>
            <td colspan="2" style="height:62px;"> </td>
        </tr>   
        <tr>
            <td  colspan="2" style="border-collapse:collapse;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Caption="List Of Categories" CaptionAlign="Top" CellPadding="4" DataKeyNames="CID" DataSourceID="SqlDataSource1" Font-Size="11pt" ForeColor="#333333" OnRowCommand="GridView1_RowCommand1" PageSize="5" Width="384px" HorizontalAlign="Center" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="CID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="CID" >
                        <ControlStyle Width="40px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CName" HeaderText="Category Name" SortExpression="CName" >
                        </asp:BoundField>
                        <asp:ButtonField CommandName="Ed" Text="Edit" ButtonType="Image" HeaderText="Edit" ImageUrl="~/images/Edit2.png" >
                        <ControlStyle Height="40px" Width="60px" />
                        </asp:ButtonField>
                        <asp:ButtonField CommandName="Del" Text="Delete" ButtonType="Image" HeaderText="Delete" ImageUrl="~/images/delete.jpg" >
                        <ControlStyle Height="40px" Width="60px" />
                        </asp:ButtonField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle Font-Bold="True" CssClass="CenterHeaderText" />
                    <PagerStyle BackColor="White" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Mycon %>" SelectCommand="SELECT [CID], [CName] FROM [CategoryMst]"></asp:SqlDataSource>
    
            </td>
        </tr>
    </table>
</asp:Content>

