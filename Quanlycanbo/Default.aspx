<%@ Page Title="" Language="C#" MasterPageFile="~/Magic.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Quanlycanbo.DanhsachPhongban" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h1 class="animate__animated animate__flip text-center text-danger">WELCOME TO TIENDATMAGIC</h1>
    <div class="container-fluid">
    <p> Bảng danh sách Cán bộ </p>
    <div class="table-responsive">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TIN_ID,TGIA_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CssClass="table table table-bordered text-black">
        <Columns>
            <asp:BoundField DataField="TIN_ID" HeaderText="TIN_ID" ReadOnly="True" SortExpression="TIN_ID" />
            <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
            <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
            <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" SortExpression="TGIA_ID" ReadOnly="True" />
        </Columns>
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString %>" SelectCommand="SELECT * FROM [TINTUC]">
    </asp:SqlDataSource>

        <p> Bảng danh sách Phòng ban </p>
        <div class="table-responsive">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="TGIA_ID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." CssClass="table table table-bordered text-black">
            <Columns>
                <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" ReadOnly="True" SortExpression="TGIA_ID" />
                <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            </Columns>
        </asp:GridView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString %>" SelectCommand="SELECT * FROM [TACGIA]">
        </asp:SqlDataSource>

    <p> Bảng danh sách Chủ đề</p>
    <div class="table-responsive">
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="TIN_ID,TGIA_ID" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." CssClass="table table table-bordered text-black">
            <Columns>
                <asp:BoundField DataField="TIN_ID" HeaderText="TIN_ID" ReadOnly="True" SortExpression="TIN_ID" />
                <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
                <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
                <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" ReadOnly="True" SortExpression="TGIA_ID" />
            </Columns>
        </asp:GridView>




        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString %>" SelectCommand="SELECT * FROM [TINTUC]"></asp:SqlDataSource>





    </div>
</asp:Content>
