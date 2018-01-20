<%@ Page Title="" Language="C#" MasterPageFile="~/Common/UI/MasterPage/Admin.Master" AutoEventWireup="true" CodeBehind="ShowAllOrders.aspx.cs" Inherits="PizzaShopApp.Admin.UI.ShowAllOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table>
        <tr>
            <td>User Name </td>
            <td>Address </td>
            <td>Date</td>
            <td>Total Price</td>
        </tr>

        <asp:Repeater ID="RepeaterOrderRecourds" runat="server">


            <HeaderTemplate>
            </HeaderTemplate>


            <ItemTemplate>
                <tr>
                    <td><%#Eval("UserName")%></td>
                    <td><%#Eval("Address")%></td>
                    <td><%#Eval("DateTime")%></td>
                    <td><%#Eval("TotalPrice")%></td>
                    <td>

                        <a href="UserOrderInDetails.aspx?Id=<%#Eval("OrderId") %>">Details</a>
                    </td>
                    
                </tr>

            </ItemTemplate>


            <FooterTemplate>
            </FooterTemplate>

        </asp:Repeater>





    </table>

</asp:Content>
