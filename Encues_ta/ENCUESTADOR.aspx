<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.Master" AutoEventWireup="true" CodeBehind="ENCUESTADOR.aspx.cs" Inherits="Encues_ta.ENCUESTADOR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link href="Css/clsparticipante.css" rel="stylesheet" />
    <link href="Css/CssBotones.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 
            <div>
                <label for="NumeroEncuesta">Numero de encuesta:</label>
                <asp:TextBox ID="tnumero" runat="server" requiered></asp:TextBox>
            </div>
            <div>
                <label for="NombreParticipante">Nombre Participante:</label>
                <asp:TextBox ID="tnombre" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="Genero">Genero:</label>
                <asp:TextBox ID="tgenero" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="Edad">Edad:</label>
                <asp:TextBox ID="tedad" runat="server"></asp:TextBox>
            </div>
             <div>
                <label for="CorreoElectronico">Correo Electronico:</label>
                <asp:TextBox ID="tcorreo" runat="server"></asp:TextBox>
            </div>
             <div>
                <label for="PartidoPolitico">Partido Politico:</label>
                <asp:TextBox ID="tpartido" runat="server"></asp:TextBox>
            </div>

            <div>
            <asp:Button ID="BAgregar" CssClass=" button button1" runat="server" Text="Agregar" OnClick="BAgregar_Click" />
            <asp:Button ID="BBorrar" CssClass=" button button2" runat="server" Text="Borrar" OnClick="BBorrar_Click" />
            <asp:Button ID="BModificar" CssClass=" button button3" runat="server" Text="Modificar" />
            <asp:Button ID="BConsultar" CssClass=" button button4" runat="server" Text="Consultar" />
            </div>
      
        
            
            <table id="clientListTable">
                <thead>
      
                    <tr>
                        <th>Numero Encuesta</th>
                        <th>Nombre Participante</th>
                        <th>Genero</th>
                        <th>Edad</th>
                         <th>Correo Electronico</th>
                         <th>Partido Politico</th>

                    </tr>
                    <asp:Repeater runat="server" ID="repeaterParticipantes" ViewStateMode="Disabled">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("Numero Encuesta") %></td>
                                <td><%# Eval("Nombre Participante") %></td>
                                <td><%# Eval("Genero") %></td>
                                <td><%# Eval("Edad") %></td>
                                  <td><%# Eval("Correo Electronico") %></td>
                                   <td><%# Eval("Partido Politico") %></td>


<%--                                 <td>
                                        
                                        <asp:Button ID="btnEditar" runat="server" Text="Editar" OnClick="btnEditar_Click" CommandArgument='<%# Eval("Codigo") %>' />
                                        <asp:Button ID="btnBorrar" runat="server" Text="Borrar" OnClick="btnBorrar_Click" CommandArgument='<%# Eval("Codigo") %>' />
                                        <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click" CommandArgument='<%# Eval("Codigo")%>' />
                                        <asp:Button ID="btnConsulta" runat="server" Text="Consultar" OnClick="btnConsultar_Click" CommandArgument='<%# Eval("Codigo")%>' />
                                    </td>--%>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </thead>
            </table>
       
        <div class="footer"> Derechos reservadoS 2023</div>
        <div class="right"></div>
</asp:Content>
