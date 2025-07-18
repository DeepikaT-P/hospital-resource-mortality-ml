using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace medicalProject.Admin
{
    public partial class _Dataset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminId"] == null)
            {
                Session.Abandon();
                Response.Redirect("~/Visitor/Login.aspx");
            }
            else
            {
                loadDataset();
            }
        }

        private void loadDataset()
        {
            try
            {
                DataTable tab = new DataTable();
                BLL obj = new BLL();

                int serialNo = 1;

                tab = obj.GetAllDataset();

                if (tab.Rows.Count > 0)
                {
                    tableDataset.Rows.Clear();

                    tableDataset.BorderStyle = BorderStyle.Double;
                    tableDataset.GridLines = GridLines.Both;
                    tableDataset.BorderColor = System.Drawing.Color.DarkGray;

                    TableRow mainrow = new TableRow();
                    mainrow.Height = 30;
                    mainrow.ForeColor = System.Drawing.Color.WhiteSmoke;

                    mainrow.BackColor = System.Drawing.Color.ForestGreen;

                    TableCell cell1 = new TableCell();
                    cell1.Text = "<b>SerialNo</b>";
                    mainrow.Controls.Add(cell1);

                    TableCell cell3 = new TableCell();
                    cell3.Text = "<b>Date</b>";
                    mainrow.Controls.Add(cell3);

                    TableCell cell41 = new TableCell();
                    cell41.Text = "<b>Neurologist</b>";
                    mainrow.Controls.Add(cell41);

                    TableCell cell5 = new TableCell();
                    cell5.Text = "<b>Cardiologist</b>";
                    mainrow.Controls.Add(cell5);

                    TableCell cell6 = new TableCell();
                    cell6.Text = "<b>Gynecologist</b>";
                    mainrow.Controls.Add(cell6);

                    TableCell cell61 = new TableCell();
                    cell61.Text = "<b>Orthopedics</b>";
                    mainrow.Controls.Add(cell61);

                    TableCell cell62 = new TableCell();
                    cell62.Text = "<b>Surgeon</b>";
                    mainrow.Controls.Add(cell62);

                    TableCell cell63 = new TableCell();
                    cell63.Text = "<b>Physician</b>";
                    mainrow.Controls.Add(cell63);

                    TableCell cell7 = new TableCell();
                    cell7.Text = "<b>Beds</b>";
                    mainrow.Controls.Add(cell7);

                    TableCell cell8 = new TableCell();
                    cell8.Text = "<b>ICU</b>";
                    mainrow.Controls.Add(cell8);

                    TableCell cell9 = new TableCell();
                    cell9.Text = "<b>Nurses</b>";
                    mainrow.Controls.Add(cell9);

                    TableCell cell10 = new TableCell();
                    cell10.Text = "<b>MortalityRate</b>";
                    mainrow.Controls.Add(cell10);

                    tableDataset.Controls.Add(mainrow);

                    for (int i = 0; i < tab.Rows.Count; i++)
                    {
                        TableRow row = new TableRow();

                        TableCell cellSerialNo = new TableCell();
                        cellSerialNo.Width = 50;
                        cellSerialNo.Text = serialNo + i + ".";
                        row.Controls.Add(cellSerialNo);

                        TableCell cellDate = new TableCell();                       
                        string[] s = tab.Rows[i]["Date"].ToString().Split(' ');
                        cellDate.Text = s[0];
                        row.Controls.Add(cellDate);

                        TableCell cellNeurologist = new TableCell();                       
                        cellNeurologist.Text = tab.Rows[i]["Neurologist"].ToString();
                        row.Controls.Add(cellNeurologist);

                        TableCell cellCardiologist = new TableCell();
                        cellCardiologist.Text = tab.Rows[i]["Cardiologist"].ToString();
                        row.Controls.Add(cellCardiologist);

                        TableCell cellGynecologist = new TableCell();
                        cellGynecologist.Text = tab.Rows[i]["Gynecologist"].ToString();
                        row.Controls.Add(cellGynecologist);

                        TableCell cellOrthopedics = new TableCell();
                        cellOrthopedics.Text = tab.Rows[i]["Orthopedics"].ToString();
                        row.Controls.Add(cellOrthopedics);

                        TableCell cellSurgeon = new TableCell();
                        cellSurgeon.Text = tab.Rows[i]["Surgeon"].ToString();
                        row.Controls.Add(cellSurgeon);

                        TableCell cellPhysician = new TableCell();
                        cellPhysician.Text = tab.Rows[i]["Physician"].ToString();
                        row.Controls.Add(cellPhysician);

                        TableCell cellBeds = new TableCell();
                        cellBeds.Text = tab.Rows[i]["Beds"].ToString();
                        row.Controls.Add(cellBeds);

                        TableCell cellICU = new TableCell();
                        cellICU.Text = tab.Rows[i]["ICU"].ToString();
                        row.Controls.Add(cellICU);

                        TableCell cellNurses = new TableCell();
                        cellNurses.Text = tab.Rows[i]["Nurses"].ToString();
                        row.Controls.Add(cellNurses);

                        TableCell cellMortalityRate = new TableCell();
                        cellMortalityRate.Text = tab.Rows[i]["MortalityRate"].ToString();
                        row.Controls.Add(cellMortalityRate);


                        tableDataset.Controls.Add(row);
                    }
                }
                else
                {
                    tableDataset.Rows.Clear();

                    TableHeaderRow rno = new TableHeaderRow();
                    TableHeaderCell cellno = new TableHeaderCell();
                    cellno.ForeColor = System.Drawing.Color.Red;
                    cellno.Text = "No Dataset Found";

                    rno.Controls.Add(cellno);
                    tableDataset.Controls.Add(rno);
                }
            }
            catch
            {

            }
        }
    }
}