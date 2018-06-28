<%@ Page Title="" Language="C#" MasterPageFile="~/Learner/LearnerMasterPage.master" AutoEventWireup="true" CodeFile="ChnagePassword.aspx.cs" Inherits="Learner_ChnagePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 style="color:maroon;">&nbsp;Change Password </h1>
    <hr />
    <div>
        <fieldset style="clear:both;">
           <legend>Change</legend>
            <br />


            <table cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td>Old Password</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="215px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>New Password</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="215px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Re-Type new Password</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="215px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server"   ForeColor="Red"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="30px" Text="Submit" Width="109px" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>


        </fieldset>
    </div>
</asp:Content>

