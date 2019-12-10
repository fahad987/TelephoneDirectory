<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="myContact.aspx.cs" Inherits="myContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
   <div class="row small-spacing">
            <div class="col-lg-12 col-xs-12">
                <div class="box-content card white">
                    <h4 class="box-title">My Contact</h4>

                    <br />

                    <table class="table">
                        <tr>
                            <td> <label for="firstname" style="margin-top:10px">FirstName</label></td><td><asp:TextBox ID="firstname" runat="server" placeholder="Enter First Name" class="form-control"></asp:TextBox></td>
                            <td> <asp:Button ID="search" Text="Search" runat="server" class="btn btn-success btn-sm waves-effect waves-light" OnClick="search_Click"/></td>
                        </tr>
                    </table>
                    <asp:Repeater ID="r1" runat="server">
                        <HeaderTemplate>
                            <table class="table table-bordered">
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Contact NO</th>
                                    <th>Email</th>
                                    <th>Address</th>
                                    <th>City</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("firstname") %></td>
                                <td><%#Eval("lastname") %></td>
                                <td><%#Eval("contactno") %></td>
                                <td><%#Eval("email") %></td>
                                <td><%#Eval("address") %></td>
                                <td><%#Eval("city") %></td>
                                <td>
                                    <a href="edit.aspx?id=<%#Eval("id") %>"><img src="assets/images/icons8-edit-64.png" height="50" width="50" /></a>
                                    <a href="delete.aspx?id=<%#Eval("id") %>"><img src="assets/images/icons8-delete-bin-100.png" height="50" width="50" /></a>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>

                        </FooterTemplate>
                    </asp:Repeater>

</div>
                </div>

   </div>
</asp:Content>

