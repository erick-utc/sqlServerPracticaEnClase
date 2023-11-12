<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="mesa.aspx.cs" Inherits="RestauranteUTC.mesa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div class="container text-center">
         <h2>CATALOGO DE MESEROS</h2>
     </div>

     <div class="p-4">
         <asp:GridView runat="server" ID="datagridMesa" PageSize="10" HorizontalAlign="Center"
             CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
             RowStyle-CssClass="rows" AllowPaging="True"    />
    </div>

    <div class="container text-center m-4">
       
        <asp:Button ID="btnAgregar" runat="server" class="btn btn-outline-primary" Text="Agregar" />
        <asp:Button ID="btnBorrar" runat="server" class="btn btn-outline-secondary" Text="Borrar" />
        <asp:Button ID="btnModificar" runat="server" class="btn btn-outline-success" Text="Modificar" />
        <asp:Button ID="btnConsultar" runat="server" class="btn btn-outline-danger" Text="Consultar" />

    </div>
</asp:Content>
