<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="pedido.aspx.cs" Inherits="RestauranteUTC.pedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <asp:ImageButton ID="imgBtnDesactivada" runat="server" ImageUrl="~/img/MesaDesactivada.png" OnClick="imgBtnDesactivada_Click" />
        <asp:ImageButton ID="imgBtnDesactivada2" runat="server" ImageUrl="~/img/MesaDesactivada.png" OnClick="imgBtnDesactivada2_Click" />
    </div>
</asp:Content>
