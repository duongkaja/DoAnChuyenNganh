<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLopHoc.ascx.cs" Inherits="WebHocThem.UserControls.ucGiangVien" %>

<%@ Register assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.WebControls" tagprefix="asp" %>

<%--<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="GiangVien1" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
        <asp:BoundField DataField="TenUser" HeaderText="TenUser" SortExpression="TenUser" />
        <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
        <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" />        
        <asp:CheckBoxField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
        <asp:BoundField DataField="SL" HeaderText="SL" SortExpression="SL" />
    </Fields>
</asp:DetailsView>--%>

<asp:ListView ID="LvLopHoc" runat="server" DataKeyNames="ID" DataSourceID="LopHoc">
    <AlternatingItemTemplate>
        <link href="../Content/d1.css" rel="stylesheet" />
        <li style="background-color: #FFF8DC;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenLop:
            <asp:Label ID="TenLopLabel" runat="server" Text='<%# Eval("TenLop") %>' />
            <br />
            SoLuong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            KhoaHoc:
            <asp:Label ID="KhoaHocLabel" runat="server" Text='<%# Eval("KhoaHoc") %>' />
            <br />
            GiangVien:
            <asp:Label ID="GiaoVienLabel" runat="server" Text='<%# Eval("GiaoVien") %>' />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/PhieuDangKy.aspx?id="+Eval("ID")%>'>Đăng ký học</asp:HyperLink>   
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenLop:
            <asp:TextBox ID="TenLopTextBox" runat="server" Text='<%# Bind("TenLop") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            MonHoc:
            <asp:TextBox ID="MonHocTextBox" runat="server" Text='<%# Bind("MonHoc") %>' />
            <br />
            Levels:
            <asp:TextBox ID="LevelsTextBox" runat="server" Text='<%# Bind("Levels") %>' />
            <br />
            KhoaHoc:
            <asp:TextBox ID="KhoaHocTextBox" runat="server" Text='<%# Bind("KhoaHoc") %>' />
            <br />
            GiaoVien:
            <asp:TextBox ID="GiaoVienTextBox" runat="server" Text='<%# Bind("GiaoVien") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        No data was returned.
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            <br />
            TenLop:
            <asp:TextBox ID="TenLopTextBox" runat="server" Text='<%# Bind("TenLop") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            MonHoc:
            <asp:TextBox ID="MonHocTextBox" runat="server" Text='<%# Bind("MonHoc") %>' />
            <br />
            Levels:
            <asp:TextBox ID="LevelsTextBox" runat="server" Text='<%# Bind("Levels") %>' />
            <br />
            KhoaHoc:
            <asp:TextBox ID="KhoaHocTextBox" runat="server" Text='<%# Bind("KhoaHoc") %>' />
            <br />
            GiaoVien:
            <asp:TextBox ID="GiaoVienTextBox" runat="server" Text='<%# Bind("GiaoVien") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
        <br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenLop:
            <asp:Label ID="TenLopLabel" runat="server" Text='<%# Eval("TenLop") %>' />
            <br />
            SoLuong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            KhoaHoc:
            <asp:Label ID="KhoaHocLabel" runat="server" Text='<%# Eval("KhoaHoc") %>' />
            <br />
            GiangVien:
            <asp:Label ID="GiaoVienLabel" runat="server" Text='<%# Eval("GiaoVien") %>' />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/PhieuDangKy.aspx?id="+Eval("ID")%>'>Đăng ký học</asp:HyperLink>   
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;text-align:left">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField FirstPageText="Trang Đầu" PreviousPageText="Trang Trước" LastPageText="Trang Cuối" NextPageText="Trang triếp" ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenLop:
            <asp:Label ID="TenLopLabel" runat="server" Text='<%# Eval("TenLop") %>' />
            <br />
            SoLuong:
            <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            KhoaHoc:
            <asp:Label ID="KhoaHocLabel" runat="server" Text='<%# Eval("KhoaHoc") %>' />
            <br />
            GiaoVien:
            <asp:Label ID="GiaoVienLabel" runat="server" Text='<%# Eval("GiaoVien") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="LopHoc" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tLOPHOC" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


<%--<div class="tooltip" style="display: none">     <%# (string)Eval("gender") =="M" ? "Male" :"Female"%>                                                             
      <div style="text-align: center; font-weight: normal">
   Value =<%# ProcessMyDataItem(Eval("Percentage")) %> </div>
 </div>--%>


