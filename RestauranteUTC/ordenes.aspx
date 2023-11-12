<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="ordenes.aspx.cs" Inherits="RestauranteUTC.ordenes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="mb-3">
       <label for="exampleInputEmail1" class="form-label">Mesa</label>
       <asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
       <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
   </div>

   <div class="mb-3">
       <label for="exampleInputPassword1" class="form-label">Mesero</label>
       <asp:DropDownList ID="DropDownList1" class="form-control" runat="server"></asp:DropDownList>
   </div>

    <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Cliente</label>
        <asp:DropDownList ID="DropDownList2" class="form-control" runat="server"></asp:DropDownList>
    </div>

   <div class="mb-3">
        <label for="exampleFormControlTextarea1" class="form-label">Pedido</label>
    
         <asp:TextBox ID="TextBox2"  class="form-control" rows="3" data-dashlane-rid="21b220b6e7724440" data-form-type="other" runat="server" Height="75px" TextMode="MultiLine"></asp:TextBox>
   </div>

   <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Guardar" OnClick="Button1_Click" />
</asp:Content>
