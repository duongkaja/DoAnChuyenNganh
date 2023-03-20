<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="WebHocThem.Manage" %>

<%@ Register Src="~/UserControls/ucManage.ascx" TagPrefix="uc1" TagName="ucManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal" style="text-align: center;">
                <h4>Change account settings</h4>
                <hr />
                <uc1:ucManage runat="server" ID="ucManage" />
                <%--<dl class="dl-horizontal">

                    <dt>Information:</dt>
                    <dd>
                        <uc1:ucManage runat="server" ID="ucManage" />
                    </dd>
                    

                        <asp:Panel ID="Panel1" runat="server">
                    <dt>User Roles:</dt>
                    <dd>
                            <p class="fieldset">
                            <i class="fa fa-user"></i>
                            <input class="full-width has-padding has-border" id="input_email" name="email" type="text" placeholder="Email" runat="server">
                            </p>

                            <p class="fieldset">
                                <i class="fa fa-user"></i>
                                <input class="full-width has-padding has-border" id="input_role" name="role" type="text" placeholder="Role" runat="server">
                            </p>
                        
                            <p class="fieldset">
                                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Lưu" CssClass="btn-edit"/>
                            </p>
                    </dd>
                        </asp:Panel>
                </dl>--%>
            </div>
        </div>
    </div>
    
</asp:Content>
