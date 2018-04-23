<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v10.2, Version=10.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxMenu" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title> How to implement a menu with round item corners</title>
</head>

<body>
    <form id="form1" runat="server">
    <div>
		<dx:ASPxMenu ID="menu" runat="server" BorderBetweenItemAndSubMenu="HideRootOnly"
            AllowSelectItem="True" ApplyItemStyleToTemplates="True" SelectParentItem="True"
            Width="800px" CssFilePath="~/Menu.css" CssPostfix="custom">
			 <RootItemTextTemplate>
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr align="center">
                        <td class="itemLeft" />
                        <td class="itemMiddle">
                            <dx:ASPxHyperLink runat="server" ID="link" EnableTheming="false" EnableDefaultAppearance="false"
                                Text='<%# Eval("Text") %>' >
                            </dx:ASPxHyperLink>                            
                        </td>
                        <td class="itemRight" />
                    </tr>
                </table>
            </RootItemTextTemplate>	
			<Items>
				<dx:MenuItem Text="Item 1">					
				</dx:MenuItem>
				<dx:MenuItem Text="Item 2">
				</dx:MenuItem>
				<dx:MenuItem Text="Item 3">
				</dx:MenuItem>
				<dx:MenuItem Text="Item 4">
				</dx:MenuItem>
			</Items>			
		</dx:ASPxMenu>		
	</div>
    </form>
</body>
</html>
