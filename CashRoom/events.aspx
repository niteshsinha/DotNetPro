<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="events.aspx.cs" Inherits="events" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="event_placeholder" Runat="Server">
    <table>
            	<tr>
                	<td class="surround heading">
                    	heading space&nbsp;</td>
                </tr>
                <tr>
                	<td>
                	    <asp:Panel ID="spent" runat="server">
                	    spent
                        </asp:Panel>
                	</td>
                </tr>
                <tr>
                	<td>
                	<asp:Panel ID="settle" runat="server">
                	settle
                        </asp:Panel>
                	</td>
                </tr>
                <tr>
                	<td>
                	<asp:Panel ID="borrow" runat="server">
                	borrow
                        </asp:Panel>
                	</td>
                </tr>
                <tr>
                	<td>
                	<asp:Panel ID="lent" runat="server">
                	lent
                        </asp:Panel>
                	</td>
                </tr>
            </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="eventSub_placeholder" Runat="Server">
    <table>
            	<tr>
                	<td>
                	    Event
                    	&nbsp;</td>
                </tr>
                <tr>
                	<td>
                	1
                	    <asp:Button ID="Button1" runat="server" Text="Spent" />
                	</td>
                    
                </tr>
                <tr>
                	<td>
                	2
                	    <asp:Button ID="Button2" runat="server" Text="Settle" />
                	</td>
                    
                </tr>
                <tr>
                	<td>
                	3
                	    <asp:Button ID="Button3" runat="server" Text="Borrow" />
                	</td>
                    
                </tr>
                <tr>
                	<td>
                	4
                	    <asp:Button ID="Button4" runat="server" Text="Lent" />
                	</td>
                    
                </tr>
            </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="testplace" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="login" Runat="Server">
</asp:Content>

