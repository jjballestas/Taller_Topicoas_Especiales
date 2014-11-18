<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Turistic_View.aspx.cs" Inherits="Turistic_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 221px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table>
            <tr >
                <td>
                     <asp:Label ID="Label1" runat="server" Text="latitud"></asp:Label>
                 </td>
                <td class="auto-style1">
                   <asp:Label ID="Label2" runat="server" Text="longitud"></asp:Label>
                 </td>
                 
            </tr>
            <tr >
                 <td>
                    <asp:TextBox ID="txtlatitud" runat="server"></asp:TextBox>
                 </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtlongitud" runat="server"></asp:TextBox>
                 </td>
                
            </tr>
             

            <tr >
                <td   class="auto-style1" >
                     <asp:Button ID="cmdconsultar" runat="server" Text="Consultar" OnClick="cmdconsultar_Click" />
                   
                </td>

            </tr>

            </table>
       
     <br />
        <table>
            <tr>
                             &nbsp;
                             <asp:Label ID="lblsitios" runat="server" Text="sitios turistico cercanos" Visible="false"></asp:Label>

             </tr>
            <tr>
                <td colspan ="2">
                    
                    <asp:GridView ID="GridSitios" runat="server"></asp:GridView>
                </td>
            </tr>

        </table>
    </div>
        <br />
        <div>
            <table>
                <tr>
                    <td>
                          <asp:Label ID="Label3" runat="server" Text="Digite lugar"></asp:Label>
                    </td>
                    
                    <tr>
                    <td>
                        <asp:TextBox ID="txtsitio" runat="server" Width="285px"></asp:TextBox>
                    </td>
                     
                    </tr>
                </tr>
                <tr >
                <td   class="auto-style1" >
                     <asp:Button ID="cmdsitios" runat="server" Text="Consultar" OnClick="cmdsitios_Click" />
                   
                </td>

            </tr>

            </table>

              <table>
            <tr>
                 <tr>
                             &nbsp;
                             <asp:Label ID="lblSitioCercano" runat="server" Text="sitios turistico cercanos" Visible="false"></asp:Label>

                    </tr>
                <td colspan ="2">
                     
                    <asp:GridView ID="GridSitioCercano" runat="server"></asp:GridView>
                </td>
            </tr>

        </table>
        </div>
    </form>
</body>
</html>
