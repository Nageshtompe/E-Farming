<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Home.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Admin_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
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
            .rowstyle{
                height:55px; 
                text-align:center; 
                vertical-align:middle; 
                font-family:Arial;
                font-size:12pt;
                border-collapse:collapse;
            }
             .CenterHeaderText th {
         text-align:center;
         vertical-align:middle;
     }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <center>
            <table style="width:100%">
                <tr>
                     <td class="hedaerstyle">
                         <span class="glyphicon glyphicon-comment"></span>
               View Feedbacks
                     </td> 
                </tr>
                <tr>
                    <td  class="rowstyle">
                        <asp:LinkButton ID="lnkViewAll" runat="server" Font-Size="12pt" PostBackUrl="~/Admin/ViewAllFeedback.aspx">View All Feedbacks</asp:LinkButton>
                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="rowstyle">
                        <asp:Label ID="Label1" runat="server" Font-Size="14pt"></asp:Label>
                    </td>
                </tr>                
                 <tr>
                    <td  class="rowstyle">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="FID" DataSourceID="SqlDataSource1" Font-Size="12pt" HorizontalAlign="Center" Width="1037px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="FID" HeaderText="Feedback ID" InsertVisible="False" SortExpression="FID" ReadOnly="True">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FType" HeaderText="Feedback Type" SortExpression="FType">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="MailID" HeaderText="Mail ID" SortExpression="MailID">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="Reply Option">
                                    <ItemTemplate>
                                        <asp:Button ID="btnReply" runat="server" CommandArgument='<%# Eval("FID") %>' CssClass="btn btn-primary" Font-Size="10pt" OnClick="btnReply_Click1" Text="Reply Now" Width="97px" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Height="37px" CssClass="CenterHeaderText" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="45px" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>                           
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Mycon %>" SelectCommand="SELECT [FID], [UID], [FType], [Msg], [FirstName], [LastName], [MailID], [Status], [EntryDate] FROM [Feedback] WHERE ([Status] = @Status) ORDER BY [FID] DESC">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="Under Processing" Name="Status" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </td>
                </tr>                                
            </table>

        </center>
    </div>
</asp:Content>

