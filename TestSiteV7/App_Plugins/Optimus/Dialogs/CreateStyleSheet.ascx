﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CreateStyleSheet.ascx.cs" Inherits="Optimus.Umbraco.Dialogs.CreateStyleSheet" %>
<input type="hidden" name="nodeType" value="-1"/>

<%=umbraco.ui.Text("name")%>: <asp:RequiredFieldValidator id="RequiredFieldValidator1" ErrorMessage="*" ControlToValidate="rename" runat="server">*</asp:RequiredFieldValidator><br />
<asp:TextBox id="rename" Runat="server" Width="350" CssClass="bigInput"></asp:TextBox>

<div style="MARGIN-TOP: 10px">
    <%=umbraco.ui.Text("type")%>:<br />
    <asp:ListBox id="styleSheetType" Runat="server" Width="350" CssClass="bigInput" Rows="1" SelectionMode="Single"></asp:ListBox>
</div>

<!-- added to support missing postback on enter in IE -->
<asp:TextBox runat="server" style="visibility:hidden; display:none;" ID="Textbox1"/>

<div style="margin-top: 15px;">
    <asp:Button id="sbmt" Runat="server" style="margin-top: 14px" Width="90" OnClick="sbmt_Click"></asp:Button>
    <em> <%=umbraco.ui.Text("or")%> </em>  
    <a href="#" style="color: Blue; margin-left: 6px;" onclick="UmbClientMgr.closeModalWindow()"><%=umbraco.ui.Text("cancel")%></a>
</div>