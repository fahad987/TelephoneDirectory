<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="add_Contact.aspx.cs" Inherits="add_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

    <div class="row small-spacing">
            <div class="col-lg-12 col-xs-12">
                <div class="box-content card white">
                    <h4 class="box-title">Create New Contact</h4>

                    <div class="card-content">
                        
                            <div class="form-group">
                                <label for="firstname">FirstName</label>
                                <asp:TextBox ID="firstname" runat="server" placeholder="Enter First Name" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="lastname">LastName</label>
                               <asp:TextBox ID="lastname" runat="server" placeholder="Enter Last Name" class="form-control"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label for="firstname">Contact No</label>
                                
                        <asp:TextBox ID="contactno" runat="server" placeholder="Enter Contact Number" class="form-control"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label for="firstname">Email</label>
                             <asp:TextBox ID="email" runat="server" placeholder="Email" class="form-control"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label for="firstname">Resident_Address</label>
                            <asp:TextBox ID="address" runat="server" placeholder="Enter Resident Address" class="form-control"></asp:TextBox>

                            </div>
                             <div class="form-group">
                                <label for="firstname">City</label>
                                 <asp:TextBox ID="city" runat="server" placeholder="City" class="form-control"></asp:TextBox>

                            </div>

                            
                            <asp:Button ID="submit" Text="Submit" runat="server" class="btn btn-success btn-sm waves-effect waves-light" OnClick="submit_Click" />
                 
                    </div>

                </div>

            </div>
        </div>

</asp:Content>

