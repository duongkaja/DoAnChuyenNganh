<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucKhoaHoc.ascx.cs" Inherits="WebHocThem.UserControls.ucKhoaHoc" %>
<%@ Register assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.WebControls" tagprefix="asp" %>

<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID,MonHoc,Levels" DataSourceID="KhoaHoc">
    <AlternatingItemTemplate>
        <link href="../Content/d1.css" rel="stylesheet" />
        <li style="background-color: #FFF8DC;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenKhoaHoc:
            <asp:Label ID="TenKhoaHocLabel" runat="server" Text='<%# Eval("TenKhoaHoc") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            NgayKhaiGiang:
            <asp:Label ID="NgayKhaiGiangLabel" runat="server" Text='<%# Eval("NgayKhaiGiang") %>' />
            <br />
            NgayKetThuc:
            <asp:Label ID="NgayKetThucLabel" runat="server" Text='<%# Eval("NgayKetThuc") %>' />
            <br />
            SoBuoiHoc:
            <asp:Label ID="SoBuoiHocLabel" runat="server" Text='<%# Eval("SoBuoiHoc") %>' />
            <br />
            HocPhi:
            <asp:Label ID="HocPhiLabel" runat="server" Text='<%# Eval("HocPhi") %>' />
            <br />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/LopHocKH.aspx?kh="+Eval("ID")+"&mh="+Eval("MonHoc")+"&lv="+Eval("Levels") %>'>Chi tiết lớp của khóa học</asp:HyperLink>    
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            TenKhoaHoc:
            <asp:TextBox ID="TenKhoaHocTextBox" runat="server" Text='<%# Bind("TenKhoaHoc") %>' />
            <br />
            GiaoVien1:
            <asp:TextBox ID="GiaoVien1TextBox" runat="server" Text='<%# Bind("GiaoVien1") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel1" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel1" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            NgayKhaiGiang:
            <asp:TextBox ID="NgayKhaiGiangTextBox" runat="server" Text='<%# Bind("NgayKhaiGiang") %>' />
            <br />
            NgayKetThuc:
            <asp:TextBox ID="NgayKetThucTextBox" runat="server" Text='<%# Bind("NgayKetThuc") %>' />
            <br />
            SoBuoiHoc:
            <asp:TextBox ID="SoBuoiHocTextBox" runat="server" Text='<%# Bind("SoBuoiHoc") %>' />
            <br />
            HocPhi:
            <asp:TextBox ID="HocPhiTextBox" runat="server" Text='<%# Bind("HocPhi") %>' />
            <br />
            HinhAnh:
            <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
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
            <br />TenKhoaHoc:
            <asp:TextBox ID="TenKhoaHocTextBox" runat="server" Text='<%# Bind("TenKhoaHoc") %>' />
            <br />GiaoVien1:
            <asp:TextBox ID="GiaoVien1TextBox" runat="server" Text='<%# Bind("GiaoVien1") %>' />
            <br />MonHoc:
            <asp:TextBox ID="MonHocTextBox" runat="server" Text='<%# Bind("MonHoc") %>' />
            <br />Levels:
            <asp:TextBox ID="LevelsTextBox" runat="server" Text='<%# Bind("Levels") %>' />
            <br />NgayKhaiGiang:
            <asp:TextBox ID="NgayKhaiGiangTextBox" runat="server" Text='<%# Bind("NgayKhaiGiang") %>' />
            <br />NgayKetThuc:
            <asp:TextBox ID="NgayKetThucTextBox" runat="server" Text='<%# Bind("NgayKetThuc") %>' />
            <br />SoBuoiHoc:
            <asp:TextBox ID="SoBuoiHocTextBox" runat="server" Text='<%# Bind("SoBuoiHoc") %>' />
            <br />
            HocPhi:
            <asp:TextBox ID="HocPhiTextBox" runat="server" Text='<%# Bind("HocPhi") %>' />
            <br />
            HinhAnh:
            <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
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
            TenKhoaHoc:
            <asp:Label ID="TenKhoaHocLabel" runat="server" Text='<%# Eval("TenKhoaHoc") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            NgayKhaiGiang:
            <asp:Label ID="NgayKhaiGiangLabel" runat="server" Text='<%# Eval("NgayKhaiGiang") %>' />
            <br />
            NgayKetThuc:
            <asp:Label ID="NgayKetThucLabel" runat="server" Text='<%# Eval("NgayKetThuc") %>' />
            <br />
            
            SoBuoiHoc:
            <asp:Label ID="SoBuoiHocLabel" runat="server" Text='<%# Eval("SoBuoiHoc") %>' />
            <br />
            
            HocPhi:
            <asp:Label ID="HocPhiLabel" runat="server" Text='<%# Eval("HocPhi") %>' />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "/LopHocKH.aspx?kh="+Eval("ID")+"&mh="+Eval("MonHoc")+"&lv="+Eval("Levels") %>'>Chi tiết lớp của khóa học</asp:HyperLink>    
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
            TenKhoaHoc:
            <asp:Label ID="TenKhoaHocLabel" runat="server" Text='<%# Eval("TenKhoaHoc") %>' />
            <br />
            MonHoc:
            <asp:Label ID="MonHocLabel" runat="server" Text='<%# Eval("MonHoc") %>' />
            <br />
            Levels:
            <asp:Label ID="LevelsLabel" runat="server" Text='<%# Eval("Levels") %>' />
            <br />
            NgayKhaiGiang:
            <asp:Label ID="NgayKhaiGiangLabel" runat="server" Text='<%# Eval("NgayKhaiGiang") %>' />
            <br />
            NgayKetThuc:
            <asp:Label ID="NgayKetThucLabel" runat="server" Text='<%# Eval("NgayKetThuc") %>' />
            <br />
            SoBuoiHoc:
            <asp:Label ID="SoBuoiHocLabel" runat="server" Text='<%# Eval("SoBuoiHoc") %>' />
            <br />
            HocPhi:
            <asp:Label ID="HocPhiLabel" runat="server" Text='<%# Eval("HocPhi") %>' />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="KhoaHoc" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tKHOAHOC" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

