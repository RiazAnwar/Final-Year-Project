<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Appointments.aspx.cs" Inherits="Design_project.Appointments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Table runat="server"  CssClass="appointmenttabledesign">
                 
                <asp:TableRow >
                        <asp:TableCell>
                            <asp:Label ID="Label1" runat="server" Text="Applicant Name"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="appointmenttabledesignrow"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Patient Name" ></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="appointmenttabledesignrow"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DropDownListgender" runat="server" CssClass="appointmenttabledesignrow">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="Label5" runat="server" Text="Appointment Type"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DropDownListappointmenttype" runat="server" CssClass="appointmenttabledesignrow">
                                <asp:ListItem>Outdoor</asp:ListItem>
                                <asp:ListItem>Indoor</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Age"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="appointmenttabledesignrow"></asp:TextBox>
                            <br /> 
                            <asp:Label ID="Label7" runat="server" Text="Select Speciality"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DropDownListSpeciality" runat="server" CssClass="appointmenttabledesignrow">
                                <asp:ListItem>Allergy & Immunology</asp:ListItem>
                                <asp:ListItem>Anesthesia</asp:ListItem>
                                <asp:ListItem>Cardiac Surgery</asp:ListItem>
                                <asp:ListItem>Cardiology</asp:ListItem>
                                <asp:ListItem>Dental Surgery</asp:ListItem>
                                <asp:ListItem>Dermatology</asp:ListItem>
                                <asp:ListItem>Emergency Medicine</asp:ListItem>
                                <asp:ListItem>Endocrinology</asp:ListItem>
                                <asp:ListItem>ENT Surgery</asp:ListItem>
                                <asp:ListItem>Executive Physical & Employee Health Clinic</asp:ListItem>
                                <asp:ListItem>blood pressure</asp:ListItem>
                                <asp:ListItem>Gastroenterology</asp:ListItem>
                                <asp:ListItem>General Surgery</asp:ListItem>
                                <asp:ListItem>Oral & Maxillofacial Surgery</asp:ListItem>
                                <asp:ListItem>Orthopedics</asp:ListItem>
                                <asp:ListItem> Palliative Medicine</asp:ListItem>
                                <asp:ListItem>Pathology</asp:ListItem>
                                <asp:ListItem>Pediatric Cardiology</asp:ListItem>
                                <asp:ListItem>Pediatric ICU</asp:ListItem>
                                <asp:ListItem>Pediatric Surgery</asp:ListItem>
                                <asp:ListItem>Pediatrics</asp:ListItem>
                                <asp:ListItem>Plastic Surgery</asp:ListItem>
                                <asp:ListItem> Psychiatry</asp:ListItem>
                                <asp:ListItem> Pulmonology & Critical Care</asp:ListItem>
                                <asp:ListItem>Radiation Oncology</asp:ListItem>
                                <asp:ListItem>Rehabilitation Center</asp:ListItem>
                                <asp:ListItem>Rheumatology</asp:ListItem>
                                <asp:ListItem>Urology</asp:ListItem>
                                <asp:ListItem> Vascular Surgery</asp:ListItem>
                                <asp:ListItem>Dengue Fever</asp:ListItem>
                                <asp:ListItem>Tuberculosis</asp:ListItem>
                                <asp:ListItem>Diabetes</asp:ListItem>
                                <asp:ListItem>Cancer</asp:ListItem>
                                <asp:ListItem>Hepatitis A and E</asp:ListItem>
                                <asp:ListItem>Ischemic Heart Disease</asp:ListItem>
                                <asp:ListItem>Intestinal Infections</asp:ListItem>
                                <asp:ListItem>Bacterial Diseases</asp:ListItem>
                                <asp:ListItem>Viral Diseases</asp:ListItem>
                                <asp:ListItem>Diabetes</asp:ListItem>
                                <asp:ListItem>Stroke</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="Label8" runat="server" Text="Appointment Date" ></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox8" runat="server" CssClass="appointmenttabledesignrow"></asp:TextBox>
                            </asp:TableCell>
                                
                        <asp:TableCell>
                            <br />
                        </asp:TableCell>
                    
                        <asp:TableCell>
                            <br />
                        </asp:TableCell>
                    
                        <asp:TableCell>
                            <br />
                        </asp:TableCell>
                    
                        <asp:TableCell>
                            <br />
                        </asp:TableCell>
                    <asp:TableCell>
                            <asp:Label ID="Label2" runat="server" Text="Applicant Contact Number"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="appointmenttabledesignrow"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label9" runat="server" Text="Patient Contact Number"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox9" runat="server" CssClass="appointmenttabledesignrow"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label10" runat="server" Text="Valid Email"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox10" runat="server" CssClass="appointmenttabledesignrow"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label11" runat="server" Text="Medical Record#"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox11" runat="server" CssClass="appointmenttabledesignrow"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label12" runat="server" Text="Reference"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox12" runat="server" CssClass="appointmenttabledesignrow"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label13" runat="server" Text="Select Doctor"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="appointmenttabledesignrow">
                                <asp:ListItem>Dr.Waqas</asp:ListItem>
                                <asp:ListItem>Dr.Riaz</asp:ListItem>
                                <asp:ListItem>Dr.Ambreen</asp:ListItem>
                                <asp:ListItem>Dr.Reema</asp:ListItem>
                                <asp:ListItem>Dr.Nouman</asp:ListItem>
                                <asp:ListItem>Dr.Sikandar</asp:ListItem>
                                <asp:ListItem>Dr.Uzma</asp:ListItem>
                                <asp:ListItem>Dr.Hafza</asp:ListItem>
                                <asp:ListItem>Dr.Hamza</asp:ListItem>
                                <asp:ListItem>Dr.Salman</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="Label14" runat="server" Text="Select Time"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="appointmenttabledesignrow">
                                <asp:ListItem>08:00</asp:ListItem>
                                <asp:ListItem>09:00</asp:ListItem>
                                <asp:ListItem>10:00</asp:ListItem>
                                <asp:ListItem>11:00</asp:ListItem>
                                <asp:ListItem>12:00</asp:ListItem>
                                <asp:ListItem>13:00</asp:ListItem>
                                <asp:ListItem>14:00</asp:ListItem>
                                <asp:ListItem>15:00</asp:ListItem>
                                <asp:ListItem>16:00</asp:ListItem>
                                <asp:ListItem>17:00</asp:ListItem>
                                <asp:ListItem>18:00</asp:ListItem>
                                <asp:ListItem>19:00</asp:ListItem>
                                <asp:ListItem>20:00</asp:ListItem>
                            </asp:DropDownList>
                            </asp:TableCell>
                    </asp:TableRow>
                  
                <asp:TableRow>
                    <asp:TableCell>
                                <asp:Label ID="Label15" runat="server" Text="Comments(if Any)"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="300px" Height="100px"></asp:TextBox>
                                <br />
                        <br />
                                <asp:Button ID="Button1" runat="server" Text="Make an Appointment" CssClass="btnappointment" />
                </asp:TableCell>
                    </asp:TableRow>
                
            </asp:Table>
    </div>
</asp:Content>
