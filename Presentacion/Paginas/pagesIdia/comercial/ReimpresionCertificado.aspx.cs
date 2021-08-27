using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text.pdf;
using iTextSharp.text;
using System.IO;

namespace Presentacion.Paginas.pagesIdia.comercial
{
    public partial class ReimpresionCertificado : System.Web.UI.Page
    {
        PdfWriter pw;
        
          
        
        public void tablaPdf()
        {
            Document document = new Document(iTextSharp.text.PageSize.A4, 15.0F, 15.0F, 30.0F, 30.0F);
            FileStream fs = new FileStream("c://pdf/reporte.pdf", FileMode.CreateNew);
            pw = PdfWriter.GetInstance(document, fs);

            Font font8 = new Font(FontFactory.GetFont(FontFactory.HELVETICA, 8, iTextSharp.text.Font.NORMAL));
            Font font88 = new Font(FontFactory.GetFont(FontFactory.HELVETICA, 8, iTextSharp.text.Font.BOLD));
            Font font812 = new Font(FontFactory.GetFont(FontFactory.HELVETICA, 12, iTextSharp.text.Font.BOLD));
        
            
            string nombre, 
                   aPaterno, 
                   aMaterno, 
                   marca, 
                   patenteVehiculo, 
                   modelo, 
                   nroChasis, 
                   nroMotor,
                   nroAtencion,
                   rut,
                   direccion;

            nroAtencion = this.GridView1.Rows[0].Cells[0].Text.ToString();
            nombre = this.GridView1.Rows[0].Cells[1].Text.ToString(); 
            aPaterno = this.GridView1.Rows[0].Cells[2].Text.ToString(); 
            aMaterno = this.GridView1.Rows[0].Cells[3].Text.ToString();
            rut = this.GridView1.Rows[0].Cells[4].Text.ToString();
            direccion = this.GridView1.Rows[0].Cells[5].Text.ToString();
            marca = this.GridView1.Rows[0].Cells[6].Text.ToString();
            patenteVehiculo = this.GridView1.Rows[0].Cells[7].Text.ToString();
            modelo = this.GridView1.Rows[0].Cells[8].Text.ToString();
            nroChasis = this.GridView1.Rows[0].Cells[9].Text.ToString();
            nroMotor = this.GridView1.Rows[0].Cells[10].Text.ToString();

            PdfPCell CVacio = new PdfPCell(new Phrase(""));
            CVacio.Border = 0;
            document.Open();
            PdfPTable table = new PdfPTable(4);
            // Esta es la primera fila
            PdfPCell Col1;
            PdfPCell Col2;
            PdfPCell Col3;
            PdfPCell Col4;


            float Iline;
            int ifila;
            float[] widths = new float[] { 4.0F, 7.0F, 1.0F, 4.0F };
            table.WidthPercentage = 95;
            table.SetWidths(widths);



            #region Tabla1-encabezado

            string imagenUrl = "c://prt.png";
            iTextSharp.text.Image imagenBMP;
            imagenBMP = iTextSharp.text.Image.GetInstance(imagenUrl);
            imagenBMP.ScaleToFit(110.0F, 140.0F);
            imagenBMP.SpacingBefore = 20.0F;
            imagenBMP.SpacingAfter = 10.0F;
            imagenBMP.SetAbsolutePosition(40, 735);
            document.Add(imagenBMP);

            table.AddCell(CVacio);
            Col2 = new PdfPCell(new Phrase("PRT Planta Revisión Técnica Concepción - Moody International Holdings", font88));
            Col2.Border = 0;
            table.AddCell(Col2);
            table.AddCell(CVacio);
            Col3 = new PdfPCell(new Phrase("Impresion de certificado vehicular", font88));
            Col3.Border = 0;
            table.AddCell(Col3);


            table.AddCell(CVacio);
            Col2 = new PdfPCell(new Phrase("AV. Paicaví 3380", font8));
            Col2.Border = 0;
            table.AddCell(Col2);
            table.AddCell(CVacio);
            Col3 = new PdfPCell(new Phrase("Control automotriz", font88));
            Col3.Border = 0;
            table.AddCell(Col3);

            table.AddCell(CVacio);
            Col2 = new PdfPCell(new Phrase("Concepción, Bío Bío, Chile", font8));
            Col2.Border = 0;
            table.AddCell(Col2);
            table.AddCell(CVacio);
            Col3 = new PdfPCell(new Phrase("RUT:76.376.950-K", font88));
            Col3.Border = 0;
            table.AddCell(Col3);

            table.AddCell(CVacio);
            Col2 = new PdfPCell(new Phrase("(2) 2263 2141 - 937205707", font8));
            Col2.Border = 0;
            table.AddCell(Col2);
            table.AddCell(CVacio);
            Col3 = new PdfPCell(new Phrase("", font88));
            Col3.Border = 0;
            table.AddCell(Col3);

            table.AddCell(CVacio);
            Col2 = new PdfPCell(new Phrase("www.moddyinternationalholding.cl", font8));
            Col2.Border = 0;
            table.AddCell(Col2);
            table.AddCell(CVacio);
            Col3 = new PdfPCell(new Phrase("", font88));
            Col3.Border = 0;
            table.AddCell(Col3);
            document.Add(table);
            #endregion

            PintaLinea(0.5, 30, 733, 565, 733);
            document.Add(new Paragraph("."));


            #region Tabla-cliente
            PdfPTable table2 = new PdfPTable(4);
            float[] widths2 = new float[] { 2.0F, 8.0F, 3.0F, 2.0F };
            table2.WidthPercentage = 95;
            table2.SetWidths(widths2);

            table2.AddCell(CVacio);
            table2.AddCell(CVacio);
            table2.AddCell(CVacio);
            table2.AddCell(CVacio);
            Col1 = new PdfPCell(new Phrase("CLIENTE", font88));
            Col1.Border = 0;
            table2.AddCell(Col1);
            Col2 = new PdfPCell(new Phrase(nombre + " "+ aPaterno + " " + aMaterno, font8));
            Col2.Border = 0;
            table2.AddCell(Col2);
            Col3 = new PdfPCell(new Phrase("Fecha emision", font88));
            Col3.Border = 0;
            table2.AddCell(Col3);
            Col4 = new PdfPCell(new Phrase("28/09/2020", font8));
            Col4.Border = 0;
            table2.AddCell(Col4);

            table2.AddCell(CVacio);
            table2.AddCell(CVacio);

            Col3 = new PdfPCell(new Phrase("Nro. Orden", font88));
            Col3.Border = 0;
            table2.AddCell(Col3);
            Col4 = new PdfPCell(new Phrase(nroAtencion, font8));
            Col4.Border = 0;
            table2.AddCell(Col4);

            Col1 = new PdfPCell(new Phrase("RUT", font88));
            Col1.Border = 0;
            table2.AddCell(Col1);
            Col2 = new PdfPCell(new Phrase(rut, font8));
            Col2.Border = 0;
            table2.AddCell(Col2);
            Col3 = new PdfPCell(new Phrase("", font88));
            Col3.Border = 0;
            table2.AddCell(Col3);
            Col4 = new PdfPCell(new Phrase("", font8));
            Col4.Border = 0;
            table2.AddCell(Col4);

            Col1 = new PdfPCell(new Phrase("Direccion", font88));
            Col1.Border = 0;
            table2.AddCell(Col1);
            Col2 = new PdfPCell(new Phrase(direccion, font8));
            Col2.Border = 0;
            table2.AddCell(Col2);

            table2.AddCell(CVacio);
            table2.AddCell(CVacio);
            document.Add(table2);
            #endregion

            PintaLinea(0.5, 30, 677, 565, 677);

            #region Tabla-Cabecera
            PdfPTable table3 = new PdfPTable(3);
            float[] widths3 = new float[] { 8.0F, 8.0F, 1.0F };
            table3.WidthPercentage = 95;
            table3.SetWidths(widths3);


            Col1 = new PdfPCell(new Phrase("DIV", font88));
            Col1.Border = 0;
            table3.AddCell(Col1);
            Col2 = new PdfPCell(new Phrase("DESCRIPCION", font88));
            Col2.Border = 0;
            table3.AddCell(Col2);
            Col2.HorizontalAlignment = 2;
            table3.AddCell(CVacio);
            document.Add(table3);
            #endregion

            PintaLinea(0.5, 30, 665, 565, 665);

            #region Tabla-Informacion
            PdfPTable table4 = new PdfPTable(3);
            float[] widths4 = new float[] { 8.0F, 8.0F, 1.0F };
            table4.WidthPercentage = 95;
            table4.SetWidths(widths4);


            Col1 = new PdfPCell(new Phrase("Patente", font8));
            Col1.Border = 0;
            table4.AddCell(Col1);
            Col2 = new PdfPCell(new Phrase(patenteVehiculo, font8));
            Col2.Border = 0;
            table4.AddCell(Col2);
            Col1.HorizontalAlignment = 2;
            table4.AddCell(CVacio);

            Col1 = new PdfPCell(new Phrase("Marca", font8));
            Col1.Border = 0;
            table4.AddCell(Col1);
            Col2 = new PdfPCell(new Phrase(marca, font8));
            Col2.Border = 0;
            table4.AddCell(Col2);
            Col1.HorizontalAlignment = 2;
            table4.AddCell(CVacio);

            Col1 = new PdfPCell(new Phrase("Modelo", font8));
            Col1.Border = 0;
            table4.AddCell(Col1);
            Col2 = new PdfPCell(new Phrase(modelo, font8));
            Col2.Border = 0;
            table4.AddCell(Col2);
            table4.AddCell(CVacio);

            Col1 = new PdfPCell(new Phrase("Nro Chasis", font8));
            Col1.Border = 0;
            table4.AddCell(Col1);
            Col2 = new PdfPCell(new Phrase(nroChasis, font8));
            Col2.Border = 0;
            table4.AddCell(Col2);
            table4.AddCell(CVacio);

            Col1 = new PdfPCell(new Phrase("Nro Motor", font8));
            Col1.Border = 0;
            table4.AddCell(Col1);
            Col2 = new PdfPCell(new Phrase(nroMotor, font8));
            Col2.Border = 0;
            table4.AddCell(Col2);
            table4.AddCell(CVacio);

            Col1.HorizontalAlignment = 2;
            table4.AddCell(CVacio);


            document.Add(table4);
            #endregion

            PintaLinea(0.5, 30, 200, 565, 200);
            for (ifila = 1; ifila >= 40; ifila++)
            {
                document.Add(new Paragraph("."));
                Iline = pw.GetVerticalPosition(true);
                if (Iline < 200)
                {
                    break;
                }
            }


            document.Close();
        
    }
        private void PintaLinea(double numGrosor,
                              int X1, int Y1,
                              int X2, int Y2)
        {
          
            PdfContentByte linea;
            linea = pw.DirectContent;
            linea.SetLineWidth(numGrosor);
            linea.MoveTo(X1, Y1);
            linea.LineTo(X2, Y2);
            linea.Stroke();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void btnImprimir_Click(object sender, EventArgs e)
        {

            tablaPdf();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
        }
    }
}