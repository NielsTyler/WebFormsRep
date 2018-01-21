<%@ Page Language="C#" MasterPageFile="~/Site.Master" Trace="false" AutoEventWireup="true" CodeBehind="Experimentral.aspx.cs" Inherits="WebFormsExperimental.DenisMadExperiments.Experimentral" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:Button ID="Button1" runat="server" Text="Select another one" OnClick="Button1_Click"/>

    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="viewProductSearch" runat="server">
                Enter product name: 
                <asp:TextBox ID="textProductName" runat="server">
                </asp:TextBox>
         </asp:View>
         <asp:View ID="viewCategorySearch" runat="server">
                Enter category: 
                <asp:TextBox ID="textCategory" runat="server">
                </asp:TextBox>
         </asp:View>
    </asp:MultiView>
</asp:Content>
