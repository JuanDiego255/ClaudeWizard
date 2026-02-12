using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Windows.Forms;
using Softland.Tools.Bridge;
using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml;
using Softland.GSharp.Types;
using System.Data;
using Softland.Tools.Reports;
using Softland.ERP.CG.BL;
using Softland.Tools.ConexionBD;
using Softland.ERP.AS.BL;
using Softland.ERP.CN.Reports;
using Softland.API;

namespace Softland.ERP.CG.Reports.v701
{
    /// <summary>
    /// Diálogo para la generación de Balances de Comprobación
    /// </summary>
    public class BalanceComprobacion : ReportBase
    {
        #region Variables
        //
        string dfCuentaInicial;
        string dfCuentaFinal;
        string dfDescCentroCosto;
        bool cbAsientosDiario;
        bool rbSinMovTodas;
        bool rbSinMovNo;
        bool rbSinMovSaldos;
        bool rbMonDolares;
        bool cbImpCambioNeto;
        bool cbIndentar;
        bool cbDetalleMov;
        bool rbContaFiscal;
        bool cbSaldosAlCierre;
        bool cbSoloCtaMayor;
        bool cbImpExcel;
        SalDecimal dfCantNiveles;
        //
        string dfCentroCosto;
        bool cbImpUnidades;
        SalDate dfFechaInicial;
        SalDate dfFechaFinal;
        bool rbMonLocal;
        bool rbMonAmbas;
        private SalDecimal nSaldoInicialLoc;						/* Separacion=ND */
        private SalDecimal nSaldoInicialDol;						/* Separacion=ND */
        private SalDecimal nSaldoInicialUnd;						/* Separacion=ND */
        private SalDecimal nSaldoFinalLoc;						/* Separacion=ND */
        private SalDecimal nSaldoFinalDol;						/* Separacion=ND */
        private SalDecimal nSaldoFinalUnd;						/* Separacion=ND */
        private SalDecimal nTotalDebitosLoc;						/* Separacion=ND */
        private SalDecimal nTotalDebitosDol;						/* Separacion=ND */
        private SalDecimal nTotalDebitosUnd;						/* Separacion=ND */
        private SalDecimal nTotalCreditosLoc;						/* Separacion=ND */
        private SalDecimal nTotalCreditosDol;						/* Separacion=ND */
        private SalDecimal nTotalCreditosUnd;						/* Separacion=ND */
        private SalDecimal nCambioNetoLoc;						/* Separacion=ND */
        private SalDecimal nCambioNetoDol;						/* Separacion=ND */
        private SalDecimal nCambioNetoUnd;						/* Separacion=ND */
        private string sCentroCosto;						/* Separacion=ND */
        private string sDescripcionCentro;						/* Separacion=ND */
        private string sAsiento;						/* Separacion=ND */
        private SalDate dtFecha;						/* Separacion=ND */
        private string sReferencia;						/* Separacion=ND */
        private string sFuente;						/* Separacion=ND */
        private string sTipoAsiento;						/* Separacion=ND */
        private string sOrigen;						/* Separacion=ND */
        private SalDecimal nDebitosLoc;						/* Separacion=ND */
        private SalDecimal nDebitosDol;						/* Separacion=ND */
        private SalDecimal nDebitosUnd;						/* Separacion=ND */
        private SalDecimal nCreditosLoc;						/* Separacion=ND */
        private SalDecimal nCreditosDol;						/* Separacion=ND */
        private SalDecimal nCreditosUnd;						/* Separacion=ND */
        private string sImprimirCuenta;						/* Separacion=ND */
        private string sImprimirDetalle;						/* Separacion=ND */
        private string vsNit;						/* Separacion=ND */
        private string sConta;						/* Separacion=ND */
        private string sMoneda;						/* Separacion=ND */
        private string sMontoMayor;						/* Separacion=ND */
        private string sCurCuenta;						/* Separacion=ND */
        private string sCurCuentaPadre;						/* Separacion=ND */
        private SalDecimal nRepTotalCreditosLoc;						/* Separacion=ND */
        private SalDecimal nRepTotalCreditosDol;						/* Separacion=ND */
        private SalDecimal nRepTotalDebitosLoc;						/* Separacion=ND */
        private SalDecimal nRepTotalDebitosDol;						/* Separacion=ND */
        private SalDecimal nRepTotalSaldoInicialLoc;						/* Separacion=ND */
        private SalDecimal nRepTotalSaldoInicialDol;						/* Separacion=ND */
        private SalDecimal nRepTotalSaldoFinalLoc;						/* Separacion=ND */
        private SalDecimal nRepTotalSaldoFinalDol;						/* Separacion=ND */
        private SalDecimal nRepTotalCreditosUnd;						/* Separacion=ND */
        private SalDecimal nRepTotalDebitosUnd;						/* Separacion=ND */
        private SalDecimal nRepTotalSaldoInicialUnd;						/* Separacion=ND */
        private SalDecimal nRepTotalSaldoFinalUnd;						/* Separacion=ND */
        private SalDecimal nErrorReport;
        private SalDecimal nFetch;
        private SalDecimal nLinkList;						/* Separacion=ND */
        private fclsTablaCuentaContable fciBalanceComp;
        private SalHandle hsqlCuenta;
        private SalHandle hsqlSaldo;						/* Separacion=ND */
        private string sSqlCmdReport;						/* Separacion=ND */
        private string sCuentaProcesando;						/* Separacion=ND */
        private bool bIndentarReporte;						/* Separacion=ND */
        private fclsBloqueoMayorizacion fciBalanceMayorizar;						/* Separacion=ND */
        private fclsCentroCosto fciCentroCosto;
        private string sUsaUnidades;						/* Separacion=ND */
        private string sCuenta;
        private string sDescripcion;
        private string sSaldoNormal;
        private string sTipoCta;						/* Separacion=ND */
        private string sTipoDetalladoCta;						/* Separacion=ND */
        private SalDecimal nTotalCuentas;
        private fclsGlobalesCG fciGlobalesCG;
        //private fclsGlobalesAS fclsGlobalesAS;
        private SalHandle hsqlDML;
        #region Impresion a excel

        bool cbExcel;
        oxlExcel excel = null;
        Conexion _cnx;
        CGSaldos isaldos;
        int lnTotalFilas = 1;

        #endregion Impresion a excel
        #endregion Variables
        private readonly Dictionary<SaldoKey, SaldoCacheItem> _cacheSaldos =
            new Dictionary<SaldoKey, SaldoCacheItem>();

        private readonly Dictionary<DiarioKey, DiarioCacheItem> _cacheDiario =
            new Dictionary<DiarioKey, DiarioCacheItem>();

        private struct SaldoCacheItem
        {
            public SalDecimal Ini;
            public SalDecimal Deb;
            public SalDecimal Cre;
            public SalDecimal Fin;
        }

        private struct DiarioCacheItem
        {
            public SalDecimal SalIniLoc, SalFinLoc, SalIniDol, SalFinDol, SalIniUnd, SalFinUnd;
            public SalDecimal DebLoc, CreLoc, DebDol, CreDol, DebUnd, CreUnd;
        }


        /// <summary>
        /// Constructor de la clase BalanceComprobacion
        /// </summary>
        public BalanceComprobacion(Conexion cnx)
            : base(cnx)
        {
            _cnx = cnx;
            hsqlDML = new SalHandle();
            hsqlCuenta = new SalHandle();
            hsqlSaldo = new SalHandle();
            fciBalanceComp = new fclsTablaCuentaContable();
            fciBalanceMayorizar = new fclsBloqueoMayorizacion();
            fciCentroCosto = new fclsCentroCosto();
            fciGlobalesCG = new fclsGlobalesCG();
            isaldos = new CGSaldos();
            isaldos.gsTipoBaseDatos = _cnx.TipoBaseDatos.ToString() == "SqlServer" ? "1" : "0";
            isaldos.gsServidor = _cnx.Servidor;
            isaldos.gsBaseDatos = _cnx.BaseDatos;
            isaldos.gsCompania = _cnx.CompaniaActual;
            isaldos.gsUsuario = _cnx.UsuarioActual;
            isaldos.gsPassword = _cnx.Clave;
            isaldos.SaldosConnect(_cnx.Servidor + "|" + _cnx.BaseDatos + "|" + _cnx.CompaniaActual + "|" + _cnx.UsuarioActual);
        }

        /// <summary>
        /// Constructor de la clase BalanceComprobacion
        /// </summary>
        /// <param name="tipoBD"></param>
        /// <param name="servidor"></param>
        /// <param name="baseDatos"></param>
        /// <param name="companiaActual"></param>
        /// <param name="usuario"></param>
        /// <param name="contrasena"></param>
        public BalanceComprobacion(
            int tipoBD,
            string servidor,
            string baseDatos,
            string companiaActual,
            string usuario,
            string contrasena
        )
            : this(new Conexion((TipoBDEnum)tipoBD, servidor, baseDatos, companiaActual, usuario, contrasena))
        {
            hsqlDML = new SalHandle();
            hsqlCuenta = new SalHandle();
            fciBalanceComp = new fclsTablaCuentaContable();
            fciBalanceMayorizar = new fclsBloqueoMayorizacion();
            hsqlSaldo = new SalHandle();
            fciCentroCosto = new fclsCentroCosto();
            fciGlobalesCG = new fclsGlobalesCG();
            isaldos.SaldosConnect(servidor + "|" + baseDatos + "|" + companiaActual + "|" + usuario);
            //fclsGlobalesAS = new fclsGlobalesAS();
        }

        /// <summary>
        /// Asigna los parametros del reporte
        /// </summary>
        public void SetParameters(
            string dfCentroCosto,
            bool cbImpUnidades,
            SalDate dfFechaInicial,
            SalDate dfFechaFinal,
            bool rbMonLocal,
            bool rbMonAmbas,
            string dfCuentaInicial,
            string dfCuentaFinal,
            bool cbImpCambioNeto,
            bool cbSaldosAlCierre,
            bool cbAsientosDiario,
            bool cbSoloCtaMayor,
            bool cbDetalleMov,
            bool cbIndentar,
            bool rbContaFiscal,
            SalDecimal dfCantNiveles,
            bool rbSinMovTodas,
            bool rbSinMovSaldos,
            bool rbSinMovNo,
            bool rbMonDolares
            //bool cbImpExcel
            )
        {
            this.dfCentroCosto = dfCentroCosto;
            this.cbImpUnidades = cbImpUnidades;
            this.dfFechaInicial = dfFechaInicial;
            this.dfFechaFinal = dfFechaFinal;
            this.rbMonLocal = rbMonLocal;
            this.rbMonAmbas = rbMonAmbas;
            this.dfCuentaInicial = dfCuentaInicial;
            this.dfCuentaFinal = dfCuentaFinal;
            this.cbImpCambioNeto = cbImpCambioNeto;
            this.cbExcel = cbImpExcel;
            this.cbSaldosAlCierre = cbSaldosAlCierre;
            this.cbAsientosDiario = cbAsientosDiario;
            this.cbSoloCtaMayor = cbSoloCtaMayor;
            this.cbDetalleMov = cbDetalleMov;
            this.cbIndentar = cbIndentar;
            this.rbContaFiscal = rbContaFiscal;
            this.dfCantNiveles = dfCantNiveles;
            this.rbSinMovTodas = rbSinMovTodas;
            this.rbSinMovSaldos = rbSinMovSaldos;
            this.rbSinMovNo = rbSinMovNo;
            this.rbMonDolares = rbMonDolares;
        }

        /// <summary>
        /// Asigna los parametros del reporte
        /// </summary>
        public override bool OnSetParameters(Dictionary<string, object> pars)
        {
            this.dfCentroCosto = (string)pars["dfCentroCosto"];
            this.cbImpUnidades = (bool)pars["cbImpUnidades"];
            this.dfFechaInicial = (SalDate)pars["dfFechaInicial"].ToString();
            this.dfFechaFinal = (SalDate)pars["dfFechaFinal"].ToString();
            this.rbMonLocal = (bool)pars["rbMonLocal"];
            this.rbMonAmbas = (bool)pars["rbMonAmbas"];
            this.dfCuentaInicial = (string)pars["dfCuentaInicial"];
            this.dfCuentaFinal = (string)pars["dfCuentaFinal"];
            this.cbImpCambioNeto = (bool)pars["cbImpCambioNeto"];
            this.cbSaldosAlCierre = (bool)pars["cbSaldosAlCierre"];
            this.cbAsientosDiario = (bool)pars["cbAsientosDiario"];
            this.cbSoloCtaMayor = (bool)pars["cbSoloCtaMayor"];
            this.cbDetalleMov = (bool)pars["cbDetalleMov"];
            this.cbImpUnidades = (bool)pars["cbImpUnidades"];
            this.cbIndentar = (bool)pars["cbIndentar"];
            this.rbContaFiscal = (bool)pars["rbContaFiscal"];
            this.dfCantNiveles = pars.ContainsKey("dfCantNiveles") && pars["dfCantNiveles"] != null
                ? Convert.ToDecimal(pars["dfCantNiveles"])
                : new SalDecimal(0);
            this.rbSinMovTodas = (bool)pars["rbSinMovTodas"];
            this.rbSinMovSaldos = (bool)pars["rbSinMovSaldos"];
            this.rbSinMovNo = (bool)pars["rbSinMovNo"];
            this.rbMonDolares = (bool)pars["rbMonDolares"];
            // Parámetro adicional para imprimir a Excel (misma lógica que Reporte Proyección)
            this.cbExcel = pars.ContainsKey("cbImpExcel") && (bool)pars["cbImpExcel"];
            return true;
        }

        #region Impresión a Excel

        private enum tipoRow { encabPagina = 0, encabezado = 1, grupo = 2, detalle = 3, tercero = 4 }

        private List<string> ObtenerNombreColumnas()
        {
            // Columnas pensadas para reflejar el RPT (BCLoc/BCDol/BCLocDol) según parámetros.
            // Siempre: Cuenta, Descripción, Saldo Normal.
            var ls = new List<string>
            {
                "Cuenta",
                "Descripción",
                "Saldo Normal"
            };

            // Monedas
            if (rbMonAmbas)
            {
                ls.AddRange(new[]
                {
                    "Saldo Inicial (Local)",
                    "Débitos (Local)",
                    "Créditos (Local)",
                    "Balance Final (Local)",
                    cbImpCambioNeto ? "Cambio Neto (Local)" : null,
                    "Saldo Inicial (Dólar)",
                    "Débitos (Dólar)",
                    "Créditos (Dólar)",
                    "Balance Final (Dólar)",
                    cbImpCambioNeto ? "Cambio Neto (Dólar)" : null
                }.Where(x => x != null));
            }
            else if (rbMonLocal)
            {
                ls.AddRange(new[]
                {
                    "Saldo Inicial",
                    "Débitos",
                    "Créditos",
                    "Balance Final",
                    cbImpCambioNeto ? "Cambio Neto" : null
                }.Where(x => x != null));
            }
            else
            {
                // Dólar
                ls.AddRange(new[]
                {
                    "Saldo Inicial",
                    "Débitos",
                    "Créditos",
                    "Balance Final",
                    cbImpCambioNeto ? "Cambio Neto" : null
                }.Where(x => x != null));
            }

            // Unidades (solo aplican si se pidió y la compañía las usa)
            if (fclsCompania.UsaUnidades && cbImpUnidades && !rbMonAmbas)
            {
                ls.AddRange(new[]
                {
                    "Saldo Inicial (Unidades)",
                    "Débitos (Unidades)",
                    "Créditos (Unidades)",
                    "Balance Final (Unidades)",
                    cbImpCambioNeto ? "Cambio Neto (Unidades)" : null
                }.Where(x => x != null));
            }

            return ls;
        }

        private bool CalculeSaldosCached(
            string centroCosto,
            string cuentaContable,
            string saldoNormal,
            string contabilidad,
            string moneda,
            SalDecimal linkList,
            ref SalDecimal saldoInicial,
            ref SalDecimal debitos,
            ref SalDecimal creditos,
            ref SalDecimal saldoFinal)
        {
            int linkKey = 0;
            try { linkKey = (int)linkList.Value; } catch { }

            var key = new SaldoKey(
                centroCosto,
                cuentaContable,
                contabilidad,
                moneda,
                linkKey
            );

            SaldoCacheItem cached;
            if (_cacheSaldos.TryGetValue(key, out cached))
            {
                saldoInicial = cached.Ini;
                debitos = cached.Deb;
                creditos = cached.Cre;
                saldoFinal = cached.Fin;

                if (saldoNormal == "A")
                {
                    saldoInicial = -saldoInicial;
                    saldoFinal = -saldoFinal;
                }
                return true;
            }

            var ini = SalDecimal.Null;
            var deb = SalDecimal.Null;
            var cre = SalDecimal.Null;
            var fin = SalDecimal.Null;

            if (!isaldos.CalculeSaldos(
                    centroCosto, cuentaContable, saldoNormal,
                    contabilidad, moneda, linkList,
                    ref ini, ref deb, ref cre, ref fin))
                return false;

            _cacheSaldos[key] = new SaldoCacheItem
            {
                Ini = ini,
                Deb = deb,
                Cre = cre,
                Fin = fin
            };

            saldoInicial = ini;
            debitos = deb;
            creditos = cre;
            saldoFinal = fin;
            return true;
        }

        private bool ObtenerSaldosDiarioCached(
            ref SalDecimal nPrmSaldoIniLoc, ref SalDecimal nPrmSaldoFinLoc,
            ref SalDecimal nPrmSaldoIniDol, ref SalDecimal nPrmSaldoFinDol,
            ref SalDecimal nPrmSaldoIniUnd, ref SalDecimal nPrmSaldoFinUnd,
            ref SalDecimal nPrmTotalDebitosLocal, ref SalDecimal nPrmTotalCreditosLocal,
            ref SalDecimal nPrmTotalDebitosDolar, ref SalDecimal nPrmTotalCreditosDolar,
            ref SalDecimal nPrmTotalDebitosUnd, ref SalDecimal nPrmTotalCreditosUnd)
        {
            var cuentaLike = fciBalanceComp.CodigoHastaNivelSignificativo();
            var centroLike = dfCentroCosto.HasValue()
                ? fciCentroCosto.ChildrenLIKE(dfCentroCosto)
                : "";

            var key = new DiarioKey(cuentaLike, centroLike);

            DiarioCacheItem cached;
            if (_cacheDiario.TryGetValue(key, out cached))
            {
                nPrmSaldoIniLoc += cached.SalIniLoc;
                nPrmSaldoFinLoc += cached.SalFinLoc;
                nPrmSaldoIniDol += cached.SalIniDol;
                nPrmSaldoFinDol += cached.SalFinDol;
                nPrmSaldoIniUnd += cached.SalIniUnd;
                nPrmSaldoFinUnd += cached.SalFinUnd;

                nPrmTotalDebitosLocal += cached.DebLoc;
                nPrmTotalCreditosLocal += cached.CreLoc;
                nPrmTotalDebitosDolar += cached.DebDol;
                nPrmTotalCreditosDolar += cached.CreDol;
                nPrmTotalDebitosUnd += cached.DebUnd;
                nPrmTotalCreditosUnd += cached.CreUnd;
                return true;
            }

            // Ejecuta método original y guarda delta
            var iniLoc0 = nPrmSaldoIniLoc;
            var finLoc0 = nPrmSaldoFinLoc;
            var iniDol0 = nPrmSaldoIniDol;
            var finDol0 = nPrmSaldoFinDol;
            var iniUnd0 = nPrmSaldoIniUnd;
            var finUnd0 = nPrmSaldoFinUnd;
            var debLoc0 = nPrmTotalDebitosLocal;
            var creLoc0 = nPrmTotalCreditosLocal;
            var debDol0 = nPrmTotalDebitosDolar;
            var creDol0 = nPrmTotalCreditosDolar;
            var debUnd0 = nPrmTotalDebitosUnd;
            var creUnd0 = nPrmTotalCreditosUnd;

            if (!ObtenerSaldosDiario(
                ref nPrmSaldoIniLoc, ref nPrmSaldoFinLoc,
                ref nPrmSaldoIniDol, ref nPrmSaldoFinDol,
                ref nPrmSaldoIniUnd, ref nPrmSaldoFinUnd,
                ref nPrmTotalDebitosLocal, ref nPrmTotalCreditosLocal,
                ref nPrmTotalDebitosDolar, ref nPrmTotalCreditosDolar,
                ref nPrmTotalDebitosUnd, ref nPrmTotalCreditosUnd))
                return false;

            _cacheDiario[key] = new DiarioCacheItem
            {
                SalIniLoc = nPrmSaldoIniLoc - iniLoc0,
                SalFinLoc = nPrmSaldoFinLoc - finLoc0,
                SalIniDol = nPrmSaldoIniDol - iniDol0,
                SalFinDol = nPrmSaldoFinDol - finDol0,
                SalIniUnd = nPrmSaldoIniUnd - iniUnd0,
                SalFinUnd = nPrmSaldoFinUnd - finUnd0,
                DebLoc = nPrmTotalDebitosLocal - debLoc0,
                CreLoc = nPrmTotalCreditosLocal - creLoc0,
                DebDol = nPrmTotalDebitosDolar - debDol0,
                CreDol = nPrmTotalCreditosDolar - creDol0,
                DebUnd = nPrmTotalDebitosUnd - debUnd0,
                CreUnd = nPrmTotalCreditosUnd - creUnd0
            };

            return true;
        }



        public bool ImprimirAExcel(string psNombreReporte, string psSql, string psTituloReporte, string psTitulo2, string psTitulo3, string psTitulo4, out string psError)
        {
            bool lbBien = true;
            string lsArchivo = string.Empty;
            psError = string.Empty;

            try
            {
                // Resolución de ruta (cloud vs local) replicando lógica del Reporte Proyección
                string prefijoCloud = string.Empty;
                string rutaClienteCloud = string.Empty;
                bool esClienteCloud = false;

                try
                {
                    prefijoCloud = ERPCloud.getPrefijoClienteCloud(_cnx);
                    if (!string.IsNullOrEmpty(prefijoCloud))
                    {
                        var baseDir = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments), "ArchivosSoftlandERP");
                        if (!Directory.Exists(baseDir))
                            Directory.CreateDirectory(baseDir);
                        rutaClienteCloud = baseDir;
                        esClienteCloud = true;
                    }
                }
                catch
                {
                    // Si falla cloud, continuar con ruta local.
                    esClienteCloud = false;
                }

                if (esClienteCloud)
                {
                    lsArchivo = Path.Combine(rutaClienteCloud, "rptBalanceComprobacion.xlsx");
                }
                else
                {
                    using (var dialogoGuardado = new SaveFileDialog())
                    {
                        dialogoGuardado.Filter = "Excel files (*.xlsx)|*.xlsx";
                        dialogoGuardado.FilterIndex = 2;
                        dialogoGuardado.RestoreDirectory = true;
                        dialogoGuardado.Title = "Guardado del Balance de Comprobación";
                        dialogoGuardado.DefaultExt = "xlsx";
                        dialogoGuardado.FileName = "rptBalanceComprobacion.xlsx";

                        if (dialogoGuardado.ShowDialog() == DialogResult.OK)
                            lsArchivo = dialogoGuardado.FileName;
                        else
                            return false;
                    }
                }

                excel = new oxlExcel(lsArchivo);
                string error = string.Empty;

                excel.createExcelDocument(out error);
                excel.addSheet(psNombreReporte);
                excel.abreDocumentoXmlWriter();

                lbBien = CrearEstilosReporte(out psError);
                if (!lbBien) return false;

                lbBien = CrearEncabezadoReporte(psTituloReporte, psTitulo2, psTitulo3, psTitulo4, out psError);
                if (!lbBien) return false;

                var columnas = ObtenerNombreColumnas();
                lbBien = CrearColumnasReporte(columnas, out psError);
                if (!lbBien) return false;

                lbBien = GenerarDetalleReporteExcel(psSql, out psError);
                excel.cierraDocumentoXmlWriter();

                if (lbBien)
                    Globales.SPSMessageBox("Reporte generado con éxito", "Balance de Comprobación", Globales.MBF_IconExclamation, Globales.CONTINUAR);
            }
            catch (Exception ex)
            {
                psError = ex.Message;
                lbBien = false;
            }

            return lbBien;
        }

        private bool CrearEstilosReporte(out string psError)
        {
            psError = string.Empty;
            try
            {
                CellFormat cellFormat = new CellFormat();
                Font font;
                Border border;
                Fill fill;
                Alignment align;

                // Estilo 0: encabezado columnas
                font = new Font(new Bold(), new FontSize() { Val = 11 });
                fill = new Fill(new PatternFill() { PatternType = PatternValues.Gray125 });
                align = new Alignment() { Horizontal = HorizontalAlignmentValues.Center, Vertical = VerticalAlignmentValues.Center, WrapText = true };
                border = new Border(
                    new LeftBorder() { Style = BorderStyleValues.Thin },
                    new RightBorder() { Style = BorderStyleValues.Thin },
                    new TopBorder() { Style = BorderStyleValues.Thin },
                    new BottomBorder() { Style = BorderStyleValues.Thin },
                    new DiagonalBorder());
                // Título
                excel.addCellFormat(2, 0, 0, 0, true, 0, out cellFormat);

                // Encabezados (con fill y borde)
                excel.addCellFormat(3, 2, 0, 1, true, 0, out cellFormat);

                // Texto detalle (solo borde)
                excel.addCellFormat(0, 0, 0, 1, true, 0, out cellFormat);

                // Numérico detalle (2 decimales, separador de miles)
                excel.addCellFormat(0, 0, 0, 1, true, 4, out cellFormat);
                cellFormat.NumberFormatId = 4; // #,##0.00
                cellFormat.ApplyNumberFormat = true;

                // Total etiqueta (más marcado)
                excel.addCellFormat(3, 3, 0, 2, true, 0, out cellFormat);

                // Total numérico (más marcado + numérico, separador de miles)
                excel.addCellFormat(3, 3, 0, 2, true, 4, out cellFormat);
                cellFormat.NumberFormatId = 4; // #,##0.00
                cellFormat.ApplyNumberFormat = true;


                return true;
            }
            catch (Exception ex)
            {
                psError = ex.Message;
                return false;
            }
        }

        private bool CrearEncabezadoReporte(string psTituloReporte, string psTitulo2, string psTitulo3, string psTitulo4, out string psError)
        {
            string lsNombreCia = string.Empty;
            string lsDireccion = string.Empty;
            string lsDireccion2 = string.Empty;
            string lsTelefono = string.Empty;
            string lsNit = string.Empty;
            psError = string.Empty;

            if (BuscarDatosCia(ref lsNombreCia, ref lsDireccion, ref lsDireccion2, ref lsTelefono, ref lsNit))
            {
                try
                {
                    excel.abreAtributoXmlWriter(lnTotalFilas);
                    excel.agregarCeldaXmlWriter("Compañía: " + lsNombreCia, 1, "str");
                    CellFormat cellFormat = null;
                    excel.addCellFormat(1, 1, 1, 1, true, 1, out cellFormat);
                    excel.cierraAtributoXmlWriter();

                    lnTotalFilas++;
                    excel.abreAtributoXmlWriter(lnTotalFilas);
                    excel.agregarCeldaXmlWriter("Dirección 1: " + lsDireccion, 1, "str");
                    excel.cierraAtributoXmlWriter();

                    lnTotalFilas++;
                    excel.abreAtributoXmlWriter(lnTotalFilas);
                    excel.agregarCeldaXmlWriter("Dirección 2: " + lsDireccion2, 1, "str");
                    excel.cierraAtributoXmlWriter();

                    lnTotalFilas++;
                    excel.abreAtributoXmlWriter(lnTotalFilas);
                    excel.agregarCeldaXmlWriter("Teléfono: " + lsTelefono, 1, "str");
                    excel.cierraAtributoXmlWriter();

                    lnTotalFilas++;
                    excel.abreAtributoXmlWriter(lnTotalFilas);
                    excel.agregarCeldaXmlWriter("Fecha: " + DateTime.Now.ToShortDateString(), 1, "str");
                    excel.cierraAtributoXmlWriter();

                    lnTotalFilas++;
                    excel.abreAtributoXmlWriter(lnTotalFilas);
                    excel.agregarCeldaXmlWriter("Hora: " + DateTime.Now.ToShortTimeString(), 1, "str");
                    excel.cierraAtributoXmlWriter();


                    lnTotalFilas++;
                    excel.abreAtributoXmlWriter(lnTotalFilas);
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter(psTituloReporte, 6, "str");
                    excel.cierraAtributoXmlWriter();

                    lnTotalFilas++;
                    excel.abreAtributoXmlWriter(lnTotalFilas);
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter(psTitulo2, 1, "str");
                    excel.cierraAtributoXmlWriter();

                    lnTotalFilas++;
                    excel.abreAtributoXmlWriter(lnTotalFilas);
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.agregarCeldaXmlWriter(psTitulo3, 1, "str");
                    excel.cierraAtributoXmlWriter();

                    lnTotalFilas++;
                    excel.abreAtributoXmlWriter(lnTotalFilas);
                    excel.agregarCeldaXmlWriter("", 0, "str");
                    excel.cierraAtributoXmlWriter();
                    lnTotalFilas++;
                }

                catch (Exception e)
                {
                    psError = "Error al crear el encabezado del reporte: " + e.Message;
                    return false;
                }

                return true;
            }

            return false;
        }
        public bool BuscarDatosCia(ref string psNombre, ref string psDirec1, ref string psDirec2, ref string psTelefono, ref string psnit)
        {
            string lsSetencia = string.Empty;
            try
            {
                //JAL Bug 97820 Se valida el servidor de BD, ya que la sentencia no funciona de la misma manera para Sql y Oracle
                if (_cnx.TipoBaseDatos.ToString().Trim().Equals("SqlServer"))
                {
                    lsSetencia = "SELECT Nombre, direc1, direc2, telefono, nit FROM " + Globales.ConcatAdministrator("Conjunto with(nolock)") + " Where Conjunto = '" + _cnx.CompaniaActual + "'";
                }
                else
                {
                    lsSetencia = "SELECT Nombre, direc1, direc2, telefono, nit FROM " + Globales.ConcatAdministrator("Conjunto ") + " Where Conjunto = '" + _cnx.CompaniaActual + "'FOR UPDATE";
                }
                //JAL Bug 97820
                IDataReader dataReader = SalHandle.cnx.ExecuteReader(lsSetencia);


                if (dataReader.Read())
                {
                    psNombre = dataReader.GetValue(0) != DBNull.Value ? dataReader.GetValue(0).ToString() : "";
                    psDirec1 = dataReader.GetValue(1) != DBNull.Value ? dataReader.GetValue(1).ToString() : "";
                    psDirec2 = dataReader.GetValue(2) != DBNull.Value ? dataReader.GetValue(2).ToString() : "";
                    psTelefono = dataReader.GetValue(3) != DBNull.Value ? dataReader.GetValue(3).ToString() : "";
                    psnit = dataReader.GetValue(4) != DBNull.Value ? dataReader.GetValue(4).ToString() : "";
                }

                dataReader.Close();
            }

            catch (Exception ex)
            {
                Globales.SPSDisplayErrorMsg("Error imprimiendo a excel. Detalle del error: " + Environment.NewLine + ex.Message, "Error");
                return false;
            }

            return true;
        }
        private bool CrearColumnasReporte(List<string> psColumnas, out string psError)
        {
            psError = string.Empty;
            try
            {
                lnTotalFilas++;
                excel.abreAtributoXmlWriter(lnTotalFilas);
                foreach (var col in psColumnas)
                    excel.agregarCeldaXmlWriter(col, 0, "str");
                excel.cierraAtributoXmlWriter();
                return true;
            }
            catch (Exception ex)
            {
                psError = ex.Message;
                return false;
            }
        }

        private bool GenerarDetalleReporteExcel(string psSql, out string psError)
        {
            psError = string.Empty;
            bool lbBien = true;
            string cuentaAnteriorExcel = "";
            bool detalleHeaderEscrito = false;

            try
            {
                if (!OnReportStart())
                    return false;
                if (!OnReportFetchInit())
                    return false;
                try
                {
                    hsqlReport.PrepareAndExecute(psSql, this);
                }

                catch (Exception ex)
                {
                    psError = ex.Message;
                    return false;
                }

                while (hsqlReport.FetchNext() && lbBien)
                {
                    if ((nFetch == SalHandle.FETCH_Ok))
                    {
                        lbBien = ConstruyeLineaReporte();
                    }
                    if (!lbBien)
                        continue;
                    var imprimir = sImprimirCuenta;
                    if (string.IsNullOrEmpty(imprimir))
                        continue;

                    var cuenta = sCuenta;
                    var desc = sDescripcion;
                    var saldoNormal = sSaldoNormal == "A" ? "Acreedor" : sSaldoNormal == "D" ? "Deudor" : sSaldoNormal;

                    // Cuando cbDetalleMov=true el SQL retorna múltiples filas por cuenta,
                    // solo escribir la línea resumen de cuenta una vez.
                    // Cuando cbDetalleMov=false el SQL usa DISTINCT (una fila por cuenta),
                    // se escribe siempre.
                    bool esNuevaCuenta = !cbDetalleMov || (cuenta != cuentaAnteriorExcel);
                    if (esNuevaCuenta)
                    {
                        var line = new List<object> { cuenta, desc, saldoNormal };

                        if (rbMonAmbas)
                        {
                            line.Add(nSaldoInicialLoc);
                            line.Add(nTotalDebitosLoc);
                            line.Add(nTotalCreditosLoc);
                            line.Add(nSaldoFinalLoc);
                            if (cbImpCambioNeto) line.Add(nCambioNetoLoc);
                            line.Add(nSaldoInicialDol);
                            line.Add(nTotalDebitosDol);
                            line.Add(nTotalCreditosDol);
                            line.Add(nSaldoFinalDol);
                            if (cbImpCambioNeto) line.Add(nCambioNetoDol);
                        }
                        else if (rbMonLocal)
                        {
                            line.Add(nSaldoInicialLoc);
                            line.Add(nTotalDebitosLoc);
                            line.Add(nTotalCreditosLoc);
                            line.Add(nSaldoFinalLoc);
                            if (cbImpCambioNeto) line.Add(nCambioNetoLoc);
                        }
                        else
                        {
                            line.Add(nSaldoInicialDol);
                            line.Add(nTotalDebitosDol);
                            line.Add(nTotalCreditosDol);
                            line.Add(nSaldoFinalDol);
                            if (cbImpCambioNeto) line.Add(nCambioNetoDol);
                        }

                        if (fclsCompania.UsaUnidades && cbImpUnidades && !rbMonAmbas)
                        {
                            line.Add(nSaldoInicialUnd);
                            line.Add(nTotalDebitosUnd);
                            line.Add(nTotalCreditosUnd);
                            line.Add(nSaldoFinalUnd);
                            if (cbImpCambioNeto) line.Add(nCambioNetoUnd);
                        }

                        lnTotalFilas++;
                        addLineaArchivoExcel(line.ToArray(), tipoRow.detalle);

                        cuentaAnteriorExcel = cuenta;
                        detalleHeaderEscrito = false;
                    }

                    // Escribir líneas de detalle de movimiento si aplica
                    if (cbDetalleMov && sImprimirDetalle == "SI")
                    {
                        // Encabezado del detalle (solo una vez por cuenta)
                        if (!detalleHeaderEscrito)
                        {
                            lnTotalFilas++;
                            excel.abreAtributoXmlWriter(lnTotalFilas);
                            excel.agregarCeldaXmlWriter("Fecha", 3, "str");
                            excel.agregarCeldaXmlWriter("Asiento", 3, "str");
                            excel.agregarCeldaXmlWriter("Centro Costo", 3, "str");
                            excel.agregarCeldaXmlWriter("Referencia", 3, "str");
                            excel.agregarCeldaXmlWriter("Fuente", 3, "str");
                            excel.agregarCeldaXmlWriter("Tipo Asiento", 3, "str");
                            excel.agregarCeldaXmlWriter("Origen", 3, "str");
                            // Montos según moneda
                            if (rbMonAmbas)
                            {
                                excel.agregarCeldaXmlWriter("Débitos (Local)", 3, "str");
                                excel.agregarCeldaXmlWriter("Créditos (Local)", 3, "str");
                                excel.agregarCeldaXmlWriter("Débitos (Dólar)", 3, "str");
                                excel.agregarCeldaXmlWriter("Créditos (Dólar)", 3, "str");
                            }
                            else
                            {
                                excel.agregarCeldaXmlWriter("Débitos", 3, "str");
                                excel.agregarCeldaXmlWriter("Créditos", 3, "str");
                            }
                            excel.cierraAtributoXmlWriter();
                            detalleHeaderEscrito = true;
                        }

                        // Fila de detalle del movimiento
                        lnTotalFilas++;
                        var detLine = new List<object>();
                        detLine.Add(dtFecha != SalDate.Null ? Sal.FmtFormatDateTime(dtFecha, "dd/MM/yyyy") : "");
                        detLine.Add(sAsiento ?? "");
                        detLine.Add(sCentroCosto ?? "");
                        detLine.Add(sReferencia ?? "");
                        detLine.Add(sFuente ?? "");
                        detLine.Add(sTipoAsiento ?? "");
                        detLine.Add(sOrigen ?? "");

                        if (rbMonAmbas)
                        {
                            detLine.Add(nDebitosLoc);
                            detLine.Add(nCreditosLoc);
                            detLine.Add(nDebitosDol);
                            detLine.Add(nCreditosDol);
                        }
                        else if (rbMonLocal)
                        {
                            detLine.Add(nDebitosLoc);
                            detLine.Add(nCreditosLoc);
                        }
                        else
                        {
                            detLine.Add(nDebitosDol);
                            detLine.Add(nCreditosDol);
                        }

                        if (fclsCompania.UsaUnidades && cbImpUnidades && !rbMonAmbas)
                        {
                            detLine.Add(nDebitosUnd);
                            detLine.Add(nCreditosUnd);
                        }

                        addLineaArchivoExcel(detLine.ToArray(), tipoRow.detalle);
                    }
                }
                // Totales (mismo cálculo que usa el footer del RPT)
                lnTotalFilas++;
                excel.abreAtributoXmlWriter(lnTotalFilas);
                excel.agregarCeldaXmlWriter("", 12, "str");
                excel.agregarCeldaXmlWriter("TOTALES:", 10, "str");
                excel.agregarCeldaXmlWriter("", 12, "str");

                var ic = System.Globalization.CultureInfo.InvariantCulture;

                var fmt = "#,##0.00";

                if (rbMonAmbas)
                {
                    excel.agregarCeldaXmlWriter(nRepTotalSaldoInicialLoc.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalDebitosLoc.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalCreditosLoc.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalSaldoFinalLoc.Value.ToString(fmt, ic), 12, "str");
                    if (cbImpCambioNeto) excel.agregarCeldaXmlWriter((nRepTotalSaldoFinalLoc - nRepTotalSaldoInicialLoc).Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalSaldoInicialDol.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalDebitosDol.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalCreditosDol.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalSaldoFinalDol.Value.ToString(fmt, ic), 12, "str");
                    if (cbImpCambioNeto) excel.agregarCeldaXmlWriter((nRepTotalSaldoFinalDol - nRepTotalSaldoInicialDol).Value.ToString(fmt, ic), 12, "str");
                }
                else if (rbMonLocal)
                {
                    excel.agregarCeldaXmlWriter(nRepTotalSaldoInicialLoc.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalDebitosLoc.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalCreditosLoc.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalSaldoFinalLoc.Value.ToString(fmt, ic), 12, "str");
                    if (cbImpCambioNeto) excel.agregarCeldaXmlWriter((nRepTotalSaldoFinalLoc - nRepTotalSaldoInicialLoc).Value.ToString(fmt, ic), 12, "str");

                    if (fclsCompania.UsaUnidades && cbImpUnidades)
                    {
                        excel.agregarCeldaXmlWriter(nRepTotalSaldoInicialUnd.Value.ToString(fmt, ic), 12, "str");
                        excel.agregarCeldaXmlWriter(nRepTotalDebitosUnd.Value.ToString(fmt, ic), 12, "str");
                        excel.agregarCeldaXmlWriter(nRepTotalCreditosUnd.Value.ToString(fmt, ic), 12, "str");
                        excel.agregarCeldaXmlWriter(nRepTotalSaldoFinalUnd.Value.ToString(fmt, ic), 12, "str");
                        if (cbImpCambioNeto) excel.agregarCeldaXmlWriter((nRepTotalSaldoFinalUnd - nRepTotalSaldoInicialUnd).Value.ToString(fmt, ic), 12, "str");
                    }
                }
                else
                {
                    excel.agregarCeldaXmlWriter(nRepTotalSaldoInicialDol.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalDebitosDol.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalCreditosDol.Value.ToString(fmt, ic), 12, "str");
                    excel.agregarCeldaXmlWriter(nRepTotalSaldoFinalDol.Value.ToString(fmt, ic), 12, "str");
                    if (cbImpCambioNeto) excel.agregarCeldaXmlWriter((nRepTotalSaldoFinalDol - nRepTotalSaldoInicialDol).Value.ToString(fmt, ic), 12, "str");

                    if (fclsCompania.UsaUnidades && cbImpUnidades)
                    {
                        excel.agregarCeldaXmlWriter(nRepTotalSaldoInicialUnd.Value.ToString(fmt, ic), 12, "str");
                        excel.agregarCeldaXmlWriter(nRepTotalDebitosUnd.Value.ToString(fmt, ic), 12, "str");
                        excel.agregarCeldaXmlWriter(nRepTotalCreditosUnd.Value.ToString(fmt, ic), 12, "str");
                        excel.agregarCeldaXmlWriter(nRepTotalSaldoFinalUnd.Value.ToString(fmt, ic), 12, "str");
                        if (cbImpCambioNeto) excel.agregarCeldaXmlWriter((nRepTotalSaldoFinalUnd - nRepTotalSaldoInicialUnd).Value.ToString(fmt, ic), 12, "str");
                    }
                }

                excel.cierraAtributoXmlWriter();

                return true;
            }
            catch (Exception ex)
            {
                psError = ex.Message;
                return false;
            }
        }

        private bool addLineaArchivoExcel(object[] text, tipoRow tipo, int size = 0)
        {
            string stipo = "str";

            try
            {
                excel.abreAtributoXmlWriter(lnTotalFilas);

                if (size == 0)
                    size = text.Length;

                for (int cont = 0; cont < size; cont++)
                {
                    if (text[cont] != null)
                    {
                        string valorStr;
                        if (text[cont] is SalDecimal)
                        {
                            stipo = "str";
                            var sd = (SalDecimal)text[cont];
                            valorStr = sd.HasValue ? sd.Value.ToString("#,##0.00", System.Globalization.CultureInfo.InvariantCulture) : "0.00";
                        }
                        else if (text[cont] is decimal)
                        {
                            stipo = "str";
                            valorStr = ((decimal)text[cont]).ToString("#,##0.00", System.Globalization.CultureInfo.InvariantCulture);
                        }
                        else if (text[cont] is DateTime)
                        {
                            stipo = "d";
                            valorStr = text[cont].ToString();
                        }
                        else
                        {
                            stipo = "str";
                            valorStr = text[cont].ToString();
                        }

                        switch (tipo)
                        {
                            case tipoRow.encabPagina:
                                switch (cont)
                                {
                                    case 0: excel.agregarCeldaXmlWriter(valorStr, 1, stipo); break;
                                    default: excel.agregarCeldaXmlWriter(valorStr, 3, stipo); break;
                                }
                                break;
                            case tipoRow.encabezado:
                                excel.agregarCeldaXmlWriter(valorStr, 0, stipo);
                                break;
                            case tipoRow.detalle:
                                // Primeras 3 columnas texto, el resto numérico (cuando aplique)
                                if (cont <= 2)
                                    excel.agregarCeldaXmlWriter(valorStr, 3, stipo);
                                else
                                    excel.agregarCeldaXmlWriter(valorStr, 12, stipo);
                                break;
                            default:
                                excel.agregarCeldaXmlWriter(valorStr, 3, stipo);
                                break;
                        }
                    }
                    else
                    {
                        excel.agregarCeldaXmlWriter("0.00", 12, "str");
                    }
                }

                excel.cierraAtributoXmlWriter();
                return true;
            }
            catch
            {
                return false;
            }
        }

        #endregion Impresión a Excel

        #region Funciones
        /// <summary>
        /// Inicializa variables del reporte
        /// </summary>
        public void InitVariables()
        {

            // Si no hay detalle, inicializar variables relacionadas con los items del detalle
            dtFecha = SalDate.Null;
            sReferencia = string.Empty;
            sFuente = string.Empty;
            sTipoAsiento = string.Empty;
            sOrigen = string.Empty;
            // Inicializar el total de cuentas
            nTotalCuentas = 0;
            // Inicializar totales
            nTotalCreditosUnd = 0;
            nTotalDebitosUnd = 0;
            nRepTotalCreditosLoc = 0;
            nRepTotalCreditosDol = 0;
            nRepTotalDebitosLoc = 0;
            nRepTotalDebitosDol = 0;
            nRepTotalSaldoInicialLoc = 0;
            nRepTotalSaldoInicialDol = 0;
            nRepTotalSaldoFinalLoc = 0;
            nRepTotalSaldoFinalDol = 0;
            nRepTotalCreditosUnd = 0;
            nRepTotalDebitosUnd = 0;
            nRepTotalSaldoInicialUnd = 0;
            nRepTotalSaldoFinalUnd = 0;
            sCurCuenta = " ";
            sCurCuentaPadre = string.Empty;
            // Inicializar totales relativos a unidades
            nSaldoInicialUnd = SalDecimal.Null;
            nTotalDebitosUnd = SalDecimal.Null;
            nTotalCreditosUnd = SalDecimal.Null;
            nSaldoFinalUnd = SalDecimal.Null;
        }

        /// <summary>
        /// Devuelve las cuentas inicial y final de acuerdo a lo digitado en en los data fields
        /// </summary>
        /* Separacion=ND*/
        public bool GetCuentasBalance(ref string sParCuentaIni, ref string sParCuentaFin)
        {
            string sCaracter;
            string sFmtIMask;
            SalDecimal nCuentaCodSize;
            string sCodigoConFormato;
            string sCuentaIni;
            string sCuentaFin;
            SalDecimal nIndice;
            SalDecimal nIniBloque;

            if (dfCuentaFinal.HasValue() && dfCuentaInicial.CompareTo(dfCuentaFinal) > 0)
            {
                Globales.SPSMessageBox("Error, el rango de cuentas debe ser ascendente", "Balance de Comprobación", Globales.MBF_IconHand, Globales.CONTINUAR);
                return false;
            }
            sFmtIMask = fciGlobalesCG.GetPatron();
            nCuentaCodSize = SalStr.Length(sFmtIMask);
            // Tomar las cuentas definidas en los data fields
            sParCuentaIni = dfCuentaInicial;
            sParCuentaFin = dfCuentaFinal;
            if (sParCuentaIni == "")
            {
                // Poner la cuenta inicial en cero y la final en el maximo
                sParCuentaIni = fclsCodigoConPatron.GetPatronRangoInicial(sFmtIMask);
                if (!(sParCuentaFin.HasValue()))
                {
                    // NO hay límite superior poner el máximo
                    sParCuentaFin = fclsCodigoConPatron.GetPatronRangoFinal(sFmtIMask);
                    return true;
                }
                nIndice = 0;
                for (; true;)
                {
                    sCaracter = SalStr.MidX(sParCuentaFin, nIndice, 1);
                    if (!(GlobalesCG.CaracterAlfanum(sCaracter)))
                    {
                        sCodigoConFormato = SalStr.LeftX(sParCuentaFin, (Convert.ToInt32(nIndice + 1)));
                        sParCuentaFin = sCodigoConFormato + SalStr.RightX(fclsCodigoConPatron.GetPatronRangoFinal(sFmtIMask), Convert.ToInt32((nCuentaCodSize - nIndice) - 1));
                        break;
                    }
                    nIndice = (nIndice + 1);
                    if ((nIndice >= nCuentaCodSize))
                    {
                        break;
                    }
                } // for
            }
            else
            {
                if (!(sParCuentaFin.HasValue()))
                {
                    // NO hay límite superior poner el máximo
                    sParCuentaFin = fclsCodigoConPatron.GetPatronRangoFinal(sFmtIMask);
                    return true;
                }
                nIndice = 0;
                nIniBloque = 0;
                for (; true;)
                {
                    sCaracter = SalStr.MidX(sParCuentaFin, nIndice, 1);
                    if (!(GlobalesCG.CaracterAlfanum(sCaracter)))
                    {
                        // Termino el bloque, comparar
                        sCuentaIni = SalStr.MidX(sParCuentaIni, nIniBloque, (nIndice - nIniBloque));
                        sCuentaFin = SalStr.MidX(sParCuentaFin, nIniBloque, (nIndice - nIniBloque));
                        if (sCuentaIni != sCuentaFin)
                        {
                            // Llenar de Zs a partir del mismo bloque
                            if (SalStr.RepeatX("0", SalStr.Length(sCuentaIni)) == sCuentaIni)
                            {
                                // Llenar de Zs a partir del siguiente bloque
                                sCodigoConFormato = SalStr.LeftX(sParCuentaFin, Convert.ToInt32(nIniBloque));
                                sParCuentaFin = sCodigoConFormato + SalStr.RightX(fclsCodigoConPatron.GetPatronRangoFinal(sFmtIMask), Convert.ToInt32(nCuentaCodSize - nIniBloque));
                            }
                            else
                            {
                                // Llenar de Zs a partir del siguiente bloque diferente
                                sCodigoConFormato = SalStr.LeftX(sParCuentaFin, Convert.ToInt32((nIndice + 1)));
                                sParCuentaFin = sCodigoConFormato + SalStr.RightX(fclsCodigoConPatron.GetPatronRangoFinal(sFmtIMask), Convert.ToInt32(nCuentaCodSize - (nIndice + 1)));
                            }
                            break;
                        }
                        else
                        {
                            if (SalStr.RepeatX("0", SalStr.Length(sCuentaIni)) == sCuentaIni)
                            {
                                // Llenar de Zs a partir del bloque analizado
                                sCodigoConFormato = SalStr.LeftX(sParCuentaFin, Convert.ToInt32(nIniBloque));
                                sParCuentaFin = sCodigoConFormato + SalStr.RightX(fclsCodigoConPatron.GetPatronRangoFinal(sFmtIMask), Convert.ToInt32(nCuentaCodSize - nIniBloque));
                                break;
                            }
                            else
                            {
                                // Guardar el inicio de bloque
                                nIniBloque = (nIndice + 1);
                            }
                        }
                    }
                    else
                    {
                        if (((nIndice == nCuentaCodSize - 1)))
                        {
                            // Termino el bloque (es el último), comparar
                            sCuentaIni = SalStr.MidX(sParCuentaIni, nIniBloque, ((nIndice - nIniBloque) + 1));
                            if (SalStr.RepeatX("0", SalStr.Length(sCuentaIni)) == sCuentaIni)
                            {
                                // Llenar a partir del bloque analizado de Zs ( bloques desiguales o en cero )
                                sCodigoConFormato = SalStr.LeftX(sParCuentaFin, Convert.ToInt32(nIniBloque));
                                sParCuentaFin = sCodigoConFormato + SalStr.RightX(fclsCodigoConPatron.GetPatronRangoFinal(sFmtIMask), Convert.ToInt32(nCuentaCodSize - nIniBloque));
                            }
                            break;
                        }
                    }
                    nIndice = (nIndice + 1);
                } // for
            }
            return true;
        }

        /// <summary>
        /// Construye la linea del reporte
        /// </summary>
        public bool ConstruyeLineaReporte()
        {

            string sSqlCmd;
            bool bExiste;
            SalDecimal nSaldoIniLoc = SalDecimal.Null;
            SalDecimal nSaldoIniDol = SalDecimal.Null;
            SalDecimal nSaldoFinLoc = SalDecimal.Null;
            SalDecimal nSaldoFinDol = SalDecimal.Null;
            SalDecimal nSaldoIniUnd = SalDecimal.Null;
            SalDecimal nSaldoFinUnd = SalDecimal.Null;
            bool bCambiaContadorCuenta;
            SalDecimal n;
            SalDecimal nNiveles;
            string lsCuenta;
            fciBalanceComp.sCuenta = sCuenta;
            fciBalanceComp.sDescripcion = sDescripcion;
            fciBalanceComp.sSaldoNormal = sSaldoNormal;
            lsCuenta = fciBalanceComp.sCuenta;
            sImprimirCuenta = "SI";
            sImprimirDetalle = "";
            bCambiaContadorCuenta = false;
            if (sMoneda == GlobalesCG.LOCAL)
            {
                if (!(CalculeSaldosCached(dfCentroCosto, fciBalanceComp.sCuenta, "X", sConta, sMoneda, nLinkList, ref nSaldoIniLoc, ref nTotalDebitosLoc, ref nTotalCreditosLoc, ref nSaldoFinLoc)))
                {
                    Globales.SPSMessageBox("Problemas calculando saldos", "Balance de Comprobación", Globales.MBF_IconHand, Globales.CONTINUAR);
                    return false;
                }
                nSaldoIniLoc = Globales.NumberRound(nSaldoIniLoc, fciGlobalesCG.nCantDecimales);
                nTotalDebitosLoc = Globales.NumberRound(nTotalDebitosLoc, fciGlobalesCG.nCantDecimales);
                nTotalCreditosLoc = Globales.NumberRound(nTotalCreditosLoc, fciGlobalesCG.nCantDecimales);
                nSaldoFinLoc = Globales.NumberRound(nSaldoFinLoc, fciGlobalesCG.nCantDecimales);
                // Poner el monto en débitos o créditos según corresponda
                if ((nCreditosLoc.HasValue || nDebitosLoc.HasValue))
                {
                    sImprimirDetalle = "SI";
                }
                if ((this.sAsiento != " " && (((nCreditosLoc == 0) || (nCreditosLoc == null)) && ((nDebitosLoc == 0) || (nDebitosLoc == null)))))
                {
                    sImprimirDetalle = "SI";
                }
            }
            else
            {
                if (sMoneda == GlobalesCG.DOLAR)
                {
                    if (!(CalculeSaldosCached(dfCentroCosto, fciBalanceComp.sCuenta, "X", sConta, sMoneda, nLinkList, ref nSaldoIniDol, ref nTotalDebitosDol, ref nTotalCreditosDol, ref nSaldoFinDol)))
                    {
                        Globales.SPSMessageBox("Problemas calculando saldos", "Balance de Comprobación", Globales.MBF_IconHand, Globales.CONTINUAR);
                        return false;
                    }
                    nSaldoIniDol = Globales.NumberRound(nSaldoIniDol, fciGlobalesCG.nCantDecimales);
                    nTotalDebitosDol = Globales.NumberRound(nTotalDebitosDol, fciGlobalesCG.nCantDecimales);
                    nTotalCreditosDol = Globales.NumberRound(nTotalCreditosDol, fciGlobalesCG.nCantDecimales);
                    nSaldoFinDol = Globales.NumberRound(nSaldoFinDol, fciGlobalesCG.nCantDecimales);
                    // Poner el monto en débitos o créditos según corresponda
                    if ((nCreditosDol.HasValue || nDebitosDol.HasValue))
                    {
                        sImprimirDetalle = "SI";
                    }
                    if ((this.sAsiento != " " && (((nCreditosDol == 0) || (nCreditosDol == null)) && ((nDebitosDol == 0) || (nDebitosDol == null)))))
                    {
                        sImprimirDetalle = "SI";
                    }
                }
                else
                {
                    sMoneda = GlobalesCG.LOCAL;
                    if (!(CalculeSaldosCached(dfCentroCosto, fciBalanceComp.sCuenta, "X", sConta, sMoneda, nLinkList, ref nSaldoIniLoc, ref nTotalDebitosLoc, ref nTotalCreditosLoc, ref nSaldoFinLoc)))
                    {
                        Globales.SPSMessageBox("Problemas calculando saldos", "Balance de Comprobación", Globales.MBF_IconHand, Globales.CONTINUAR);
                        return false;
                    }
                    nSaldoIniLoc = Globales.NumberRound(nSaldoIniLoc, fciGlobalesCG.nCantDecimales);
                    nTotalDebitosLoc = Globales.NumberRound(nTotalDebitosLoc, fciGlobalesCG.nCantDecimales);
                    nTotalCreditosLoc = Globales.NumberRound(nTotalCreditosLoc, fciGlobalesCG.nCantDecimales);
                    nSaldoFinLoc = Globales.NumberRound(nSaldoFinLoc, fciGlobalesCG.nCantDecimales);
                    sMoneda = GlobalesCG.DOLAR;
                    if (!(CalculeSaldosCached(dfCentroCosto, fciBalanceComp.sCuenta, "X", sConta, sMoneda, nLinkList, ref nSaldoIniDol, ref nTotalDebitosDol, ref nTotalCreditosDol, ref nSaldoFinDol)))
                    {
                        Globales.SPSMessageBox("Problemas calculando saldos", "Balance de Comprobación", Globales.MBF_IconHand, Globales.CONTINUAR);
                        return false;
                    }
                    nSaldoIniDol = Globales.NumberRound(nSaldoIniDol, fciGlobalesCG.nCantDecimales);
                    nTotalDebitosDol = Globales.NumberRound(nTotalDebitosDol, fciGlobalesCG.nCantDecimales);
                    nTotalCreditosDol = Globales.NumberRound(nTotalCreditosDol, fciGlobalesCG.nCantDecimales);
                    nSaldoFinDol = Globales.NumberRound(nSaldoFinDol, fciGlobalesCG.nCantDecimales);
                    // Poner el monto en débitos o créditos según corresponda
                    if ((nCreditosLoc.HasValue || (nDebitosLoc.HasValue || (nDebitosDol.HasValue || nCreditosDol.HasValue))))
                    {
                        sImprimirDetalle = "SI";
                    }
                    if ((this.sAsiento != " " && ((((nCreditosLoc == 0) || (nCreditosLoc == null)) && ((nDebitosLoc == 0) || (nDebitosLoc == null))) || (((nCreditosDol == 0) || (nCreditosDol == null)) && ((nDebitosDol == 0) || (nDebitosDol == null))))))
                    {
                        sImprimirDetalle = "SI";
                    }
                    sMoneda = GlobalesCG.AMBAS;
                }
            }
            if (fclsCompania.UsaUnidades && (cbImpUnidades && sUsaUnidades == "S"))
            {
                if (!(CalculeSaldosCached(dfCentroCosto, fciBalanceComp.sCuenta, "X", sConta, "U", nLinkList, ref nSaldoIniUnd, ref nTotalDebitosUnd, ref nTotalCreditosUnd, ref nSaldoFinUnd)))
                {
                    Globales.SPSMessageBox("Problemas calculando saldos", "Balance de Comprobación", Globales.MBF_IconHand, Globales.CONTINUAR);
                    return false;
                }
                nSaldoIniUnd = Globales.NumberRound(nSaldoIniUnd, fciGlobalesCG.nCantDecimales);
                nTotalDebitosUnd = Globales.NumberRound(nTotalDebitosUnd, fciGlobalesCG.nCantDecimales);
                nTotalCreditosUnd = Globales.NumberRound(nTotalCreditosUnd, fciGlobalesCG.nCantDecimales);
                nSaldoFinUnd = Globales.NumberRound(nSaldoFinUnd, fciGlobalesCG.nCantDecimales);
            }
            else
            {
                nSaldoIniUnd = SalDecimal.Null;
                nTotalDebitosUnd = SalDecimal.Null;
                nTotalCreditosUnd = SalDecimal.Null;
                nSaldoFinUnd = SalDecimal.Null;
            }
            if (cbAsientosDiario)
            {
                if (!(ObtenerSaldosDiarioCached(ref nSaldoIniLoc, ref nSaldoFinLoc, ref nSaldoIniDol, ref nSaldoFinDol, ref nSaldoIniUnd, ref nSaldoFinUnd, ref nTotalDebitosLoc, ref nTotalCreditosLoc, ref nTotalDebitosDol, ref nTotalCreditosDol, ref nTotalDebitosUnd, ref nTotalCreditosUnd)))
                {
                    return false;
                }
            }
            if (rbSinMovNo)
            {
                if (!((nTotalDebitosLoc.HasValue || (nTotalCreditosLoc.HasValue || (nTotalDebitosDol.HasValue || nTotalCreditosDol.HasValue)))))
                {
                    sImprimirCuenta = string.Empty;
                    sImprimirDetalle = string.Empty;
                }
            }
            else
            {
                if (rbSinMovSaldos)
                {
                    if ((rbMonLocal && !((nSaldoIniLoc.HasValue && !(nSaldoFinLoc.HasValue)))))
                    {
                        if (!((nTotalDebitosLoc.HasValue || nTotalCreditosLoc.HasValue)))
                        {
                            sImprimirCuenta = string.Empty;
                            sImprimirDetalle = string.Empty;
                        }
                    }
                    else
                    {
                        if ((rbMonDolares && !((nSaldoIniDol.HasValue && !(nSaldoFinDol.HasValue)))))
                        {
                            if (!((nTotalDebitosDol.HasValue || nTotalCreditosDol.HasValue)))
                            {
                                sImprimirCuenta = string.Empty;
                                sImprimirDetalle = string.Empty;
                            }
                        }
                        else
                        {
                            if ((rbMonAmbas && !((nSaldoIniLoc.HasValue && !((nSaldoFinLoc.HasValue && !((nSaldoIniDol.HasValue && !(nSaldoFinDol.HasValue)))))))))
                            {
                                if (!((nTotalDebitosLoc.HasValue || (nTotalCreditosLoc.HasValue || (nTotalDebitosDol.HasValue || nTotalCreditosDol.HasValue)))))
                                {
                                    sImprimirCuenta = string.Empty;
                                    sImprimirDetalle = string.Empty;
                                }
                            }
                        }
                    }
                }
            }
            if (sImprimirCuenta.HasValue())
            {
                // CASO S2C16282A
                /*
                    // Se pasa para abajo de la totalización el control de paréntesis
                    // CASO S2C15888 ----------->
                */
                if (sCurCuenta != fciBalanceComp.sCuenta)
                {
                    // Incrementar el total de ctas.
                    nTotalCuentas = (nTotalCuentas + 1);
                    bCambiaContadorCuenta = true;
                    if ((sCurCuenta == " " || !(fciBalanceComp.IsDescendantFunciones(fciBalanceComp.sCuenta, sCurCuentaPadre))))
                    {
                        // Actualizar variable que tendra la cuenta padre
                        sCurCuentaPadre = fciBalanceComp.sCuenta;
                        // Actualizar totales
                        nRepTotalDebitosLoc = (nRepTotalDebitosLoc + nTotalDebitosLoc);
                        nRepTotalCreditosLoc = (nRepTotalCreditosLoc + nTotalCreditosLoc);
                        nRepTotalSaldoInicialLoc = (nRepTotalSaldoInicialLoc + nSaldoIniLoc);
                        nRepTotalSaldoFinalLoc = (nRepTotalSaldoFinalLoc + nSaldoFinLoc);
                        nRepTotalDebitosDol = (nRepTotalDebitosDol + nTotalDebitosDol);
                        nRepTotalCreditosDol = (nRepTotalCreditosDol + nTotalCreditosDol);
                        nRepTotalSaldoInicialDol = (nRepTotalSaldoInicialDol + nSaldoIniDol);
                        nRepTotalSaldoFinalDol = (nRepTotalSaldoFinalDol + nSaldoFinDol);
                        // Verificar si la compañia y la cuenta en cuestion usan unidades para calcular el saldo y si el usuario lo desea
                        // GCE S2C13260B 24/07/2003
                        /*
                            // If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta) AND cbImpUnidades
                        */
                        if ((fclsCompania.UsaUnidades && (cbImpUnidades && sUsaUnidades == "S")))
                        {
                            // Actualizar totales de unidades
                            nRepTotalDebitosUnd = (nRepTotalDebitosUnd + nTotalDebitosUnd);
                            nRepTotalCreditosUnd = (nRepTotalCreditosUnd + nTotalCreditosUnd);
                            nRepTotalSaldoInicialUnd = (nRepTotalSaldoInicialUnd + nSaldoIniUnd);
                            nRepTotalSaldoFinalUnd = (nRepTotalSaldoFinalUnd + nSaldoFinUnd);
                        }
                        else
                        {
                            // Actualizar totales de unidades
                            nRepTotalDebitosUnd = SalDecimal.Null;
                            nRepTotalCreditosUnd = SalDecimal.Null;
                            nRepTotalSaldoInicialUnd = SalDecimal.Null;
                            nRepTotalSaldoFinalUnd = SalDecimal.Null;
                        }
                    }
                    sCurCuenta = fciBalanceComp.sCuenta;
                }
                if ((this.fciBalanceComp.sSaldoNormal == GlobalesCG.SALDON_ACREDOR))
                {
                    nSaldoIniLoc = -(nSaldoIniLoc);
                    nSaldoIniDol = -(nSaldoIniDol);
                    nSaldoFinLoc = -(nSaldoFinLoc);
                    nSaldoFinDol = -(nSaldoFinDol);
                    if ((fclsCompania.UsaUnidades && (cbImpUnidades && sUsaUnidades == "S")))
                    {
                        nSaldoIniUnd = -(nSaldoIniUnd);
                        nSaldoFinUnd = -(nSaldoFinUnd);
                    }
                    else
                    {
                        nSaldoIniUnd = SalDecimal.Null;
                        nSaldoFinUnd = SalDecimal.Null;
                    }
                }
                if (cbImpCambioNeto)
                {
                    // Agregar columna de cambio neto
                    nCambioNetoLoc = (nSaldoFinLoc - nSaldoIniLoc);
                    nCambioNetoDol = (nSaldoFinDol - nSaldoIniDol);
                    // GCE S2C13260B 24/07/2003
                    /*
                        // If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta) AND cbImpUnidades
                    */
                    if ((fclsCompania.UsaUnidades && (cbImpUnidades && sUsaUnidades == "S")))
                    {
                        nCambioNetoUnd = (nSaldoFinUnd - nSaldoIniUnd);
                    }
                    else
                    {
                        nCambioNetoUnd = 0;
                    }
                }
                else
                {
                    nCambioNetoLoc = 0;
                    nCambioNetoDol = 0;
                    nCambioNetoUnd = 0;
                }
                nSaldoInicialLoc = nSaldoIniLoc;
                nSaldoFinalLoc = nSaldoFinLoc;
                nSaldoInicialDol = nSaldoIniDol;
                nSaldoFinalDol = nSaldoFinDol;
                // GCE S2C13260B 24/07/2003
                /*
                    // If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta) AND cbImpUnidades
                */
                if ((fclsCompania.UsaUnidades && (cbImpUnidades && sUsaUnidades == "S")))
                {
                    nSaldoInicialUnd = nSaldoIniUnd;
                    nSaldoFinalUnd = nSaldoFinUnd;
                }
                else
                {
                    nSaldoInicialUnd = SalDecimal.Null;
                    nSaldoFinalUnd = SalDecimal.Null;
                }
            }
            fciBalanceComp.sCuenta = GlobalesCG.SetCuentaContable(lsCuenta);
            // Aqui se debe averiguar el nivel de la cuenta contable y concatenarle los espacios en blanco según sea
            if (this.cbIndentar)
            {
                nNiveles = fciBalanceComp.CantNivelesSignificativos(fciBalanceComp.sCuenta);
                n = 1;
                while ((n < nNiveles))
                {
                    fciBalanceComp.sCuenta = " " + fciBalanceComp.sCuenta;
                    n = (n + 1);
                } // while
            }
            if (!(cbDetalleMov))
            {
                sImprimirDetalle = string.Empty;
            }
            return true;
        }

        /// <summary>
        /// Muestra el reporte correspondiente de acuerdo a los par'ametros seleccionados en el diálogo
        /// </summary>
        public bool ShowReport(string sPrmREP_BalanceVar, string sPrmREP_BalanceInp, string sPrmTitulo1, string sPrmTitulo2, string sPrmTitulo3, string sPrmTitulo4, string sPmSentencia)
        {

            // Si se solicitó impresión a Excel, se genera el XLSX utilizando el mismo contenido del RPT.
            if (cbExcel)
            {
                // Asegurar que el SQL del reporte esté listo para el pipeline de ReportBase
                sSqlCmdReport = sPmSentencia;

                string err;
                var ok = ImprimirAExcel("BalanceComprobacion", sPmSentencia, sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, out err);
                if (!ok && err.HasValue())
                    Globales.SPSDisplayErrorMsg("Error imprimiendo a excel. Detalle del error: " + Environment.NewLine + err, "Error");
                return ok;
            }

            if (rbMonAmbas)
            {
                // Se imprime el reporte en dólares y local sin unidades
                return InitReport(sPmSentencia, "BCLocDol.QRP", true, sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4);
                // Return InitReport( sSqlCmdReport, 'BCLocDol.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE, sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm )
            }
            else
            {
                // Cuando el reporte es en solamente una moneda, se pueden imprimir las unidades
                if (rbMonLocal)
                {
                    // Reporte en Moneda Local con o sin unidades
                    if ((fclsCompania.UsaUnidades && cbImpUnidades))
                    {
                        return InitReport(sPmSentencia, "BCLocUnd.QRP", true, sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4);
                        // Return InitReport( sSqlCmdReport, 'BCLocUnd.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
                    }
                    else
                    {
                        return InitReport(sPmSentencia, "BCLoc.QRP", true, sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4);
                        // Return InitReport( sSqlCmdReport, 'BCLoc.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
                    }
                }
                else
                {
                    // Reprote en Dólares con o sin unidades
                    if ((fclsCompania.UsaUnidades && cbImpUnidades))
                    {
                        return InitReport(sPmSentencia, "BCDolUnd.QRP", true, sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4);
                        // Return InitReport( sSqlCmdReport, 'BCDolUnd.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
                    }
                    else
                    {
                        return InitReport(sPmSentencia, "BCDol.QRP", true, sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4);
                        // Return InitReport( sSqlCmdReport, 'BCDol.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
                    }
                }
            }
        }

        /// <summary>
        /// Se redefine en la instancia si el usuario desea hacer alguna operación más en el SAM_ReportStart. Esta función SOLO se ejecuta una sóla vez, antes de ejecutar el reporte. Además en este punto se tienen los datos del primer fetch del result set ejecutado, el cual se hizo para verificar si existen líneas en el reporte.
        /// </summary>
        public override bool OnReportStart()
        {
            this.AsignarParametro("nImprimirCambioNeto", cbImpCambioNeto ? 1 : 0);
            this.AsignarParametro("cbDetalleMov", cbDetalleMov ? 1 : 0);
            // ljm NITs - Reportes de Balance de Comprobación
            /*
                // Se agrega el indicador de si está activa la opción de NITs.
            */
            int nNit = 0;
            if (fciGlobalesCG.sUsarNits.Equals("S"))
                nNit = 1;
            this.AsignarParametro("gbUsarNITs", nNit);
            try
            {
                hsqlCuenta.Prepare(sSqlCmdReport, this);
            }
            catch (Exception)
            {
                Globales.SPSDisplayErrorMsg("Leyendo Cuentas", "Error: Función SqlPrepare");
                nErrorReport = 1;
                // Call SalPostMsg( hWndForm, SAM_ReportFinish, 0, 0 )
                if (!(Globales.bDebugging))
                {
                    return false;
                }
            }
            return true;
        }

        /// <summary>
        /// Se redefine en la instancia si el usuario desea hacer alguna operación más en el SAM_ReportInit. En esta función deben ser inicializadas las variables utilizadas en acumuladores y no en el SAM_ReportStart, ya que Report Windows ejecuta el SAM_ReportStart sólo una vez, si el reporte se hace a pantalla y después se trata de imprimir, no envia nuevamente ese mensaje. Además en este punto se tienen los datos del primer fetch del result set ejecutado, el cual se hizo para verificar si existen líneas en el reporte.
        /// </summary>
        public override bool OnReportFetchInit()
        {

            if ((nErrorReport == 1))
            {
                return true;
            }
            try
            {
                if (!(hsqlCuenta.Execute()))
                {
                    return false;
                }
                else
                {
                    InitVariables();
                    return true;
                }
            }
            catch (Exception)
            {
                Globales.SPSDisplayErrorMsg("Report Fetch Init", "Error: Función SqlExecute");
                nErrorReport = 1;
                // Call SalPostMsg( hWndForm, SAM_ReportFinish, 0, 0 )
                if (!(Globales.bDebugging))
                {
                    return false;
                }
            }
            return true;
        }

        /// <summary>
        /// Se redefine en la instancia si el usuario desea hacer alguna operacion mas en el SAM_ReportNext
        /// </summary>
        public override bool OnReportFetchNext(DataRowCollection rows)
        {
            bool result = false;

            try
            {
                if (hsqlCuenta.FetchNext())
                {
                    if ((nFetch == SalHandle.FETCH_Ok))
                    {
                        result = ConstruyeLineaReporte();
                    }
                }
                else
                {
                    bFinalizarReporte = true;
                    result = false;
                }
            }
            catch (Exception)
            {
                Globales.SPSDisplayErrorMsg("Leyendo Cuentas", "Error: Función SqlFetchNext");
                if (!(Globales.bDebugging))
                {
                    bFinalizarReporte = true;
                    result = false;
                }
            }

            if (result)
                rows.Add(new Object[] { sCentroCosto, sDescripcionCentro, sCuenta, sDescripcion, nSaldoInicialLoc, nSaldoInicialDol, nSaldoInicialUnd, nSaldoFinalLoc, nSaldoFinalDol, nSaldoFinalUnd, nTotalDebitosLoc, nTotalDebitosDol, nTotalDebitosUnd, nTotalCreditosLoc, nTotalCreditosDol, nTotalCreditosUnd, nCambioNetoLoc, nCambioNetoDol, nCambioNetoUnd, sAsiento, dtFecha, sReferencia, sFuente, sTipoAsiento, sOrigen, nDebitosLoc, nDebitosDol, nDebitosUnd, nCreditosLoc, nCreditosDol, nCreditosUnd, sImprimirCuenta, sImprimirDetalle, vsNit, sSaldoNormal });

            return result;
        }

        /// <summary>
        /// Se redefine en la instancia si el usuario desea hacer alguna operacion mas en el SAM_ReportNotify
        /// </summary>
        //public override bool OnReportNotify()
        //{
        //    fclsBaseCuentaContable fciBaseCuentaContable = new fclsBaseCuentaContable();
        //    // If lParam = RPT_BeforeReportHeader
        //    /*
        //        // Setear la variable que indica si seimprime columna de cambio neto
        //        // Call SalReportSetNumberVar( SalNumberToWindowHandle( wParam ), 'nImprimirCambioNeto', cbImpCambioNeto )
        //    */
        //    //if ((lParam == RPT_BeforeReportFooter))
        //    //{
        //        // Setear variable con el total de cuentas que se imprimen
        //        this.AsignarParametro("nTotalCuentas", nTotalCuentas);
        //        // Setear totales de debitos y creditos
        //        this.AsignarParametro("nRepTotalDebitosLoc", nRepTotalDebitosLoc);
        //        this.AsignarParametro("nRepTotalDebitosDol", nRepTotalDebitosDol);
        //        this.AsignarParametro("nRepTotalCreditosLoc", nRepTotalCreditosLoc);
        //        this.AsignarParametro("nRepTotalCreditosDol", nRepTotalCreditosDol);
        //        this.AsignarParametro("nRepTotalSaldoInicialLoc", nRepTotalSaldoInicialLoc);
        //        this.AsignarParametro("nRepTotalSaldoInicialDol", nRepTotalSaldoInicialDol);
        //        this.AsignarParametro("nRepTotalSaldoFinalLoc", nRepTotalSaldoFinalLoc);
        //        this.AsignarParametro("nRepTotalSaldoFinalDol", nRepTotalSaldoFinalDol);
        //        // Verificar si la compañia y la cuenta en cuestion usan unidades para calcular el saldo y si el usuario lo desea
        //        if ((fclsCompania.UsaUnidades && (fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta) && cbImpUnidades)))
        //        {
        //            this.AsignarParametro("nRepTotalDebitosUnd", nRepTotalDebitosUnd);
        //            this.AsignarParametro("nRepTotalCreditosUnd", nRepTotalCreditosUnd);
        //            this.AsignarParametro("nRepTotalSaldoInicialUnd", nRepTotalSaldoInicialUnd);
        //            this.AsignarParametro("nRepTotalSaldoFinalUnd", nRepTotalSaldoFinalUnd);
        //        }
        //        return true;
        //    //}
        //}
        public override bool OnReportFinish()
        {
            fclsBaseCuentaContable fciBaseCuentaContable = new fclsBaseCuentaContable();
            this.AsignarParametro("nTotalCuentas", nTotalCuentas);
            // Setear totales de debitos y creditos
            this.AsignarParametro("nRepTotalDebitosLoc", nRepTotalDebitosLoc);
            this.AsignarParametro("nRepTotalDebitosDol", nRepTotalDebitosDol);
            this.AsignarParametro("nRepTotalCreditosLoc", nRepTotalCreditosLoc);
            this.AsignarParametro("nRepTotalCreditosDol", nRepTotalCreditosDol);
            this.AsignarParametro("nRepTotalSaldoInicialLoc", nRepTotalSaldoInicialLoc);
            this.AsignarParametro("nRepTotalSaldoInicialDol", nRepTotalSaldoInicialDol);
            this.AsignarParametro("nRepTotalSaldoFinalLoc", nRepTotalSaldoFinalLoc);
            this.AsignarParametro("nRepTotalSaldoFinalDol", nRepTotalSaldoFinalDol);
            // Verificar si la compañia y la cuenta en cuestion usan unidades para calcular el saldo y si el usuario lo desea
            if ((fclsCompania.UsaUnidades && (fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta) && cbImpUnidades)))
            {
                this.AsignarParametro("nRepTotalDebitosUnd", nRepTotalDebitosUnd);
                this.AsignarParametro("nRepTotalCreditosUnd", nRepTotalCreditosUnd);
                this.AsignarParametro("nRepTotalSaldoInicialUnd", nRepTotalSaldoInicialUnd);
                this.AsignarParametro("nRepTotalSaldoFinalUnd", nRepTotalSaldoFinalUnd);
            }

            return base.OnReportFinish();
        }
        /// <summary>
        /// Estructura para alojar las variables que se usan en bind/into de la función localObtenerSaldosDiario
        /// </summary>
        internal class localObtenerSaldosDiario : ILocals
        {
            internal SalDecimal lnSaldoIniLoc;
            internal SalDecimal lnSaldoFinLoc;
            internal SalDecimal lnSaldoIniDol;
            internal SalDecimal lnSaldoFinDol;
            internal SalDecimal lnSaldoIniUnd;
            internal SalDecimal lnSaldoFinUnd;
            internal SalDecimal lnTotalDebitosLocal;
            internal SalDecimal lnTotalCreditosLocal;
            internal SalDecimal lnTotalDebitosDolar;
            internal SalDecimal lnTotalCreditosDolar;
            internal SalDecimal lnTotalDebitosUnd;
            internal SalDecimal lnTotalCreditosUnd;
        }

        /// <summary>
        /// select sum(isnull(debito_local, 0) - isnull(credito_local, 0)), sum(isnull(debito_dolar, 0) - isnull(credito_dolar, 0)), SUM(isnull(debito_unidades, 0) - isnull(credito_unidades,0)) from demo.DIARIO d, demo.ASIENTO_DE_DIARIO asd where asd.ASIENTO = d.ASIENTO and CUENTA_CONTABLE like 'fciBalanceComp.CodigoHastaNivelSignificativo( ) || %' and asd.FECHA < dfFechaInicial select sum(isnull(debito_local, 0) - isnull(credito_local, 0)), sum(isnull(debito_dolar, 0) - isnull(credito_dolar, 0)), SUM(isnull(debito_unidades, 0) - isnull(credito_unidades,0)) from demo.DIARIO d, demo.ASIENTO_DE_DIARIO asd where asd.ASIENTO = d.ASIENTO and CUENTA_CONTABLE like 'fciBalanceComp.CodigoHastaNivelSignificativo( ) || %' and asd.FECHA <= dfFechaFinal select sum(isnull(debito_local, 0)) , SUM(isnull(credito_local, 0)), sum(isnull(debito_dolar, 0) ) , SUM isnull(credito_dolar, 0)) from demo.DIARIO d, demo.ASIENTO_DE_DIARIO asd where asd.ASIENTO = d.ASIENTO and CUENTA_CONTABLE like 'fciBalanceComp.CodigoHastaNivelSignificativo( ) || %' and asd.FECHA >= dfFechaInicial and asd.FECHA <= dfFechaFinal
        /// </summary>
        public bool ObtenerSaldosDiario(ref SalDecimal nPrmSaldoIniLoc, ref SalDecimal nPrmSaldoFinLoc, ref SalDecimal nPrmSaldoIniDol, ref SalDecimal nPrmSaldoFinDol, ref SalDecimal nPrmSaldoIniUnd, ref SalDecimal nPrmSaldoFinUnd, ref SalDecimal nPrmTotalDebitosLocal, ref SalDecimal nPrmTotalCreditosLocal, ref SalDecimal nPrmTotalDebitosDolar, ref SalDecimal nPrmTotalCreditosDolar, ref SalDecimal nPrmTotalDebitosUnd, ref SalDecimal nPrmTotalCreditosUnd)
        {
            localObtenerSaldosDiario local = new localObtenerSaldosDiario();
            bool lbOk;
            string lsSqlCmd = string.Empty;
            string lsSqlCmdSelect = string.Empty;
            string lsSqlCmdFrom = string.Empty;
            string lsSqlCmdWhere = string.Empty;
            SalDecimal lnInd;
            string sCondicionDeCentros = string.Empty;

            lsSqlCmd = string.Empty;
            lbOk = true;
            // Se realiza la sentencia para obtener los saldos
            if (lbOk)
            {
                lsSqlCmdSelect = "SELECT sum( " + Sql.NullValue("debito_local", "0") + " - " + Sql.NullValue("credito_local", "0") + " ), sum( " +
                     Sql.NullValue("debito_dolar", "0") +
                     " - " +
                     Sql.NullValue("credito_dolar", "0") +
                     " ), sum( " +
                     Sql.NullValue("debito_unidades", "0") +
                     " - " +
                     Sql.NullValue("credito_unidades", "0") +
                     " ) ";
                lsSqlCmdFrom = "FROM " + Globales.ConcatCompany("diario d ") + Sql.NoLock() + " , " + Globales.ConcatCompany("asiento_de_diario asd") +
                     Sql.NoLock();
                lsSqlCmdWhere = "WHERE asd.asiento = d.asiento AND d.cuenta_contable like '" + fciBalanceComp.CodigoHastaNivelSignificativo() +
                     "%'";
                // Determinar la condición para los centros de costo
                // TAQ > CR1-05560-ZGPT
                sCondicionDeCentros = string.Empty;
                if (dfCentroCosto.HasValue())
                {
                    sCondicionDeCentros = "AND d.centro_costo LIKE '" + fciCentroCosto.ChildrenLIKE(dfCentroCosto) + "'";
                }
            }
            if (lbOk)
            {
                lsSqlCmd = lsSqlCmdSelect + " INTO @lnSaldoIniLoc, @lnSaldoIniDol, @lnSaldoIniUnd " + lsSqlCmdFrom + " " + lsSqlCmdWhere +
                     " and asd.fecha < " +
                     Sql.FormatDateTime(Globales.GetMinDate(dfFechaInicial), "dfFechaInicial", false);
                // TAQ > CR1-05560-ZGPT
                if (sCondicionDeCentros.HasValue())
                {
                    lsSqlCmd = lsSqlCmd + " " + sCondicionDeCentros;
                }
                try
                {
                    lbOk = hsqlDML.PrepareAndExecute(lsSqlCmd, this, local);
                }
                catch (Exception)
                {
                    lbOk = false;
                    Globales.SPSDisplayErrorMsg("Error consultando movimientos del diario", "Error: Función ObtenerSaldosDiario");
                    if (!(Globales.bDebugging))
                    {
                        return false;
                    }
                }
                if (lbOk)
                {
                    try
                    {
                        hsqlDML.FetchNext(out lnInd);
                    }
                    catch (Exception)
                    {
                        lbOk = false;
                        Globales.SPSDisplayErrorMsg("Error obteniendo el movimiento del diario", "Error: Función ObtenerSaldosDiario");
                        if (!(Globales.bDebugging))
                        {
                            return false;
                        }
                    }
                }
                if (lbOk)
                {
                    nPrmSaldoIniLoc = (nPrmSaldoIniLoc + local.lnSaldoIniLoc);
                    nPrmSaldoIniDol = (nPrmSaldoIniDol + local.lnSaldoIniDol);
                    nPrmSaldoIniUnd = (nPrmSaldoIniUnd + local.lnSaldoIniUnd);
                }
            }
            if (lbOk)
            {
                lnInd = 0;
                lsSqlCmd = lsSqlCmdSelect + " INTO @lnSaldoFinLoc, @lnSaldoFinDol, @lnSaldoFinUnd " + lsSqlCmdFrom + " " + lsSqlCmdWhere +
                     " and asd.fecha <= " +
                     Sql.FormatDateTime(Globales.GetMaxDate(dfFechaFinal), "dfFechaFinal", false);
                // TAQ > CR1-05560-ZGPT
                if (sCondicionDeCentros.HasValue())
                {
                    lsSqlCmd = lsSqlCmd + " " + sCondicionDeCentros;
                }
                try
                {
                    lbOk =
                        hsqlDML.PrepareAndExecute(lsSqlCmd, this, local);
                }
                catch (Exception)
                {
                    lbOk = false;
                    Globales.SPSDisplayErrorMsg("Error consultando movimientos del diario", "Error: Función ObtenerSaldosDiario");
                    if (!(Globales.bDebugging))
                    {
                        return false;
                    }
                }
                if (lbOk)
                {
                    try
                    {
                        hsqlDML.FetchNext(out lnInd);
                    }
                    catch (Exception)
                    {
                        lbOk = false;
                        Globales.SPSDisplayErrorMsg("Error obteniendo el movimiento del diario", "Error: Función ObtenerSaldosDiario");
                        if (!(Globales.bDebugging))
                        {
                            return false;
                        }
                    }
                }
                if (lbOk)
                {
                    nPrmSaldoFinLoc = (nPrmSaldoFinLoc + local.lnSaldoFinLoc);
                    // TAQ > CR1-05283-JVRZ
                    nPrmSaldoFinDol = (nPrmSaldoFinDol + local.lnSaldoFinDol);
                    // TAQ < CR1-05283-JVRZ
                    nPrmSaldoFinUnd = (nPrmSaldoFinUnd + local.lnSaldoFinUnd);
                }
            }
            if (lbOk)
            {
                lnInd = 0;
                lsSqlCmd = "SELECT sum( " + Sql.NullValue("debito_local", "0") + "), sum( " + Sql.NullValue("credito_local", "0") +
                     " ), sum( " +
                     Sql.NullValue("debito_dolar", "0") +
                     " ), sum( " +
                     Sql.NullValue("credito_dolar", "0") +
                     " ), sum( " +
                     Sql.NullValue("debito_unidades", "0") +
                     " ), sum( " +
                     Sql.NullValue("credito_unidades", "0") +
                     " ) INTO @lnTotalDebitosLocal, @lnTotalCreditosLocal, @lnTotalDebitosDolar, @lnTotalCreditosDolar, @lnTotalDebitosUnd, @lnTotalCreditosUnd " +
                     lsSqlCmdFrom +
                     " " +
                     lsSqlCmdWhere +
                     " and asd.fecha >= " +
                     Sql.FormatDateTime(Globales.GetMinDate(dfFechaInicial), "dfFechaInicial", false) +
                     " and asd.fecha <= " +
                     Sql.FormatDateTime(Globales.GetMaxDate(dfFechaFinal), "dfFechaFinal", false);
                // TAQ > CR1-05560-ZGPT
                if (sCondicionDeCentros.HasValue())
                {
                    lsSqlCmd = lsSqlCmd + " " + sCondicionDeCentros;
                }
                try
                {
                    lbOk = hsqlDML.PrepareAndExecute(lsSqlCmd, this, local);
                }
                catch (Exception)
                {
                    lbOk = false;
                    Globales.SPSDisplayErrorMsg("Error consultando movimientos del diario", "Error: Función ObtenerSaldosDiario");
                    if (!(Globales.bDebugging))
                    {
                        return false;
                    }
                }
                // Se cargan las variables
                if (lbOk)
                {
                    try
                    {
                        hsqlDML.FetchNext(out lnInd);
                    }
                    catch (Exception)
                    {
                        lbOk = false;
                        Globales.SPSDisplayErrorMsg("Error obteniendo el movimiento del diario", "Error: Función ObtenerSaldosDiario");
                        if (!(Globales.bDebugging))
                        {
                            return false;
                        }
                    }
                }
                if (lbOk)
                {
                    nPrmTotalDebitosLocal = (nPrmTotalDebitosLocal + local.lnTotalDebitosLocal);
                    nPrmTotalCreditosLocal = (nPrmTotalCreditosLocal + local.lnTotalCreditosLocal);
                    nPrmTotalDebitosDolar = (nPrmTotalDebitosDolar + local.lnTotalDebitosDolar);
                    nPrmTotalCreditosDolar = (nPrmTotalCreditosDolar + local.lnTotalCreditosDolar);
                    nPrmTotalDebitosUnd = (nPrmTotalDebitosUnd + local.lnTotalDebitosUnd);
                    nPrmTotalCreditosUnd = (nPrmTotalCreditosUnd + local.lnTotalCreditosUnd);
                }
            }
            return lbOk;
        }

        /// <summary>
        /// Configura las columnas y tipos del DataTable principal del reporte
        /// </summary>
        public override bool OnReportSetupDataTable(DataTable dt)
        {

            dt.Columns.AddRange(new DataColumn[]
            {
                new DataColumn("CentroCosto", typeof(string)),
                new DataColumn("DescripcionCentro", typeof(string)),
                new DataColumn("CuentaContable", typeof(string)),
                new DataColumn("DescripcionCuenta", typeof(string)),
                new DataColumn("SaldoInicialLoc", typeof(decimal)),
                new DataColumn("SaldoInicialDol", typeof(decimal)),
                new DataColumn("SaldoInicialUnd", typeof(decimal)),
                new DataColumn("SaldoFinalLoc", typeof(decimal)),
                new DataColumn("SaldoFinalDol", typeof(decimal)),
                new DataColumn("SaldoFinalUnd", typeof(decimal)),
                new DataColumn("TotalDebitosLoc", typeof(decimal)),
                new DataColumn("TotalDebitosDol", typeof(decimal)),
                new DataColumn("TotalDebitosUnd", typeof(decimal)),
                new DataColumn("TotalCreditosLoc", typeof(decimal)),
                new DataColumn("TotalCreditosDol", typeof(decimal)),
                new DataColumn("TotalCreditosUnd", typeof(decimal)),
                new DataColumn("CambioNetoLoc", typeof(decimal)),
                new DataColumn("CambioNetoDol", typeof(decimal)),
                new DataColumn("CambioNetoUnd", typeof(decimal)),
                new DataColumn("Asiento", typeof(string)),
                new DataColumn("Fecha", typeof(DateTime)),
                new DataColumn("Referencia", typeof(string)),
                new DataColumn("Fuente", typeof(string)),
                new DataColumn("TipoAsiento", typeof(string)),
                new DataColumn("Origen", typeof(string)),
                new DataColumn("DebitosLoc", typeof(decimal)),
                new DataColumn("DebitosDol", typeof(decimal)),
                new DataColumn("DebitosUnd", typeof(decimal)),
                new DataColumn("CreditosLoc", typeof(decimal)),
                new DataColumn("CreditosDol", typeof(decimal)),
                new DataColumn("CreditosUnd", typeof(decimal)),
                new DataColumn("ImprimirCuenta", typeof(string)),
                new DataColumn("ImprimirDetalle", typeof(string)),
                new DataColumn("Nit", typeof(string)),
                new DataColumn("SaldoNormal", typeof(string)),
            }
            );
            return true;
        }

        /// <summary>
        /// Ejecuta el reporte
        /// </summary>
        public override bool OnExecute(bool conFiltro)
        {
            return RepBalanceComprob();
        }

        /// <summary>
        /// Genera el Reporte de balance de comprobación
        /// </summary>
        /// <returns></returns>
        public bool RepBalanceComprob()
        {
            string sFecha = string.Empty;
            string sFechaInicial = string.Empty;
            string sFechaFinal = string.Empty;
            string sCuentaInicial = string.Empty;
            string sCuentaFinal = string.Empty;
            string sTitulo1 = string.Empty;
            string sTitulo2 = string.Empty;
            string sTitulo3 = string.Empty;
            string sTitulo4 = string.Empty;
            bool bOk;
            bool bCreacionAbortada = false;
            bool bListaOk;
            string sREP_BalanceVar = string.Empty;
            string sREP_BalanceInp = string.Empty;
            string sSqlCmd = string.Empty;
            SalDecimal nInd;
            string sCondicionDeCentros = string.Empty;
            string sCondicionCentrosLista = string.Empty;
            string sCentroCostoLIKE = string.Empty;
            string lsWhere = string.Empty;
            string lsWhereUnion = string.Empty;
            string lsSqlCmdDiario = string.Empty;
            string lsWhereDiario = string.Empty;
            Conexion cnx1 = null;
            Conexion cnx2 = null;

            if (fciBalanceMayorizar.IsRowLockedMsgLike(fciBalanceMayorizar.GetLlavePrimaria(), "Balance de Comprobación",
                "Desea continuar con el Balance de Comprobación?.", false))
                return false;

            sFechaInicial = Sal.FmtFormatDateTime(dfFechaInicial, "yyyy-MM-dd");
            sFechaFinal = Sal.FmtFormatDateTime(dfFechaFinal, "yyyy-MM-dd");

            if (GetCuentasBalance(ref sCuentaInicial, ref sCuentaFinal))
            {
                //Call VisWaitCursor( TRUE )

                if (!dfCentroCosto.HasValue())
                    sCondicionDeCentros = string.Empty;
                else
                {
                    fciCentroCosto.InitPatron(fclsGlobalesAS.PatronCentroCosto);
                    sCentroCostoLIKE = fciCentroCosto.ChildrenLIKE(dfCentroCosto);
                    if (sCentroCostoLIKE == dfCentroCosto)
                        sCondicionDeCentros = "centro_costo LIKE  '" + dfCentroCosto + "'";
                    else
                        sCondicionDeCentros = "centro_costo LIKE  '" + fciCentroCosto.ChildrenLIKE(dfCentroCosto) + "'";
                    sCentroCosto = dfCentroCosto;
                    sDescripcionCentro = dfDescCentroCosto;
                }
                if (rbContaFiscal)
                {
                    sTitulo4 = "Contabilidad " + fciGlobalesCG.NombreContabilidadFiscal() + ". ";
                    sConta = GlobalesCG.CONTA_FISCAL;
                }
                else
                {
                    sTitulo4 = "Contabilidad Corporativa. ";
                    sConta = GlobalesCG.CONTA_CORP;
                }

                if (rbMonLocal)
                {
                    sTitulo4 = sTitulo4 + "Moneda Local. ";
                    sMoneda = "L";
                }
                else
                {
                    if (rbMonDolares)
                    {
                        sTitulo4 = sTitulo4 + "Moneda Dólar. ";
                        sMoneda = "D";
                    }
                    else
                    {
                        sTitulo4 = sTitulo4 + "Moneda Dólar. ";
                        sMoneda = "A";
                    }
                }

                sMontoMayor = "SUM ( " + Sql.NullValue("debito_local", "0") + " ), SUM ( " + Sql.NullValue("credito_local", "0") + " ), SUM ( " + Sql.NullValue("debito_dolar", "0") + " ), SUM ( " + Sql.NullValue("credito_dolar", "0") + " )";

                if (fclsCompania.UsaUnidades && cbImpUnidades)
                    sMontoMayor = sMontoMayor + ", SUM ( " + Sql.NullValue("debito_unidades", "0") + " ), SUM ( " + Sql.NullValue("credito_unidades", "0") + " )";

                bOk = true;

                //Call SalCreateWindow( frmOdometroCG, hWndForm,"Balance de Comprobación" )
                //Call SalYieldStartMessages( frmOdometroCG.pbCancelar )

                //SalStrSetBufferLength( sCuentaProcesando, 50 )
                //sCondicionCentrosLista = sCondicionDeCentros

                nTotalCuentas = 0;

                bListaOk = isaldos.CreeListaSaldos(cnx1, cnx2, SalHandle.cnx.CompaniaActual, sCondicionCentrosLista, " cuenta_contable >= '" + sCuentaInicial + "' AND cuenta_contable <= '" +
                sCuentaFinal + "'", sFechaInicial, sFechaFinal, sConta, false, cbSaldosAlCierre, null, 0, null, 0, 0, false);

                GlobalesCG.CGSALNuevoNumeroLista();

                //Call SalDestroyWindow( frmOdometroCG )
                //Call SalYieldStopMessages(  )
                //Call VisWaitCursor( FALSE )

                if (!bListaOk)
                    bOk = false;

                if (!nTotalCuentas.HasValue)
                {
                    Globales.SPSMessageBox("No existen cuentas que cumplan con las restricciones establecidas.", "Balance de Comprobación", Globales.MBF_IconAsterisk, Globales.CONTINUAR);
                    //Call VisWaitCursor( FALSE )
                    return false;
                }
                if (!bListaOk && !bCreacionAbortada)
                    Globales.SPSMessageBox("Problemas creando la lista de saldos.", "Balance de Comprobación", Globales.MBF_IconHand, Globales.CONTINUAR);

                if (!bOk)
                    //Call VisWaitCursor( FALSE )
                    return false;

                sSqlCmdReport = "SELECT ";

                if (!cbDetalleMov)
                    sSqlCmdReport = sSqlCmdReport + " distinct";
                sSqlCmdReport = sSqlCmdReport + " A.cuenta_contable, A.descripcion, A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado";
                if (cbAsientosDiario)
                    lsSqlCmdDiario = sSqlCmdReport;
                if (cbDetalleMov)
                {
                    sSqlCmdReport = sSqlCmdReport + ",	C.centro_costo, C.descripcion,	D.asiento, D.fecha, D.referencia, D.fuente," +
                        "D.tipo_asiento, D.origen, D.nit, " + sMontoMayor;
                    if (cbAsientosDiario)
                        lsSqlCmdDiario = lsSqlCmdDiario + ",	C.centro_costo, C.descripcion,	D.asiento, asd.fecha, D.referencia, D.fuente," +
                        "asd.tipo_asiento, asd.origen, D.nit, " + sMontoMayor;
                }

                sSqlCmdReport = sSqlCmdReport + " FROM " + Globales.ConcatCompany("cuenta_contable A ");

                if (cbAsientosDiario)
                    lsSqlCmdDiario = lsSqlCmdDiario + " FROM " + Globales.ConcatCompany("cuenta_contable A ");

                if (cbDetalleMov || sCondicionDeCentros.HasValue())
                {
                    sSqlCmdReport = sSqlCmdReport + ", " + Globales.ConcatCompany("centro_cuenta B ");
                    if (cbAsientosDiario)
                        lsSqlCmdDiario = lsSqlCmdDiario + ", " + Globales.ConcatCompany("centro_cuenta B ");
                }

                if (cbDetalleMov)
                {
                    sSqlCmdReport = sSqlCmdReport + ", " + Globales.ConcatCompany("centro_costo C, ") + Globales.ConcatCompany("mayor D ");
                    if (cbAsientosDiario)
                        lsSqlCmdDiario = lsSqlCmdDiario + ", " + Globales.ConcatCompany("centro_costo C, ") +
                        Globales.ConcatCompany("diario D, ") + Globales.ConcatCompany("asiento_de_diario asd ");
                    lsWhereDiario = string.Empty;
                }
                lsWhere = string.Empty;

                if (cbDetalleMov || sCondicionDeCentros.HasValue())
                {
                    if (lsWhere.HasValue())
                        lsWhere = lsWhere + "	AND ";
                    lsWhere = lsWhere + " A.cuenta_contable = B.cuenta_contable ";
                }
                if (dfCuentaInicial.HasValue())
                {
                    if (lsWhere.HasValue())
                        lsWhere = lsWhere + "	AND ";
                    lsWhere = lsWhere + " A.cuenta_contable >= '" + dfCuentaInicial + "' ";
                }
                if (dfCuentaFinal.HasValue())
                {
                    if (lsWhere.HasValue())
                        lsWhere = lsWhere + "	AND ";
                    lsWhere = lsWhere + " A.cuenta_contable <= '" + dfCuentaFinal + "' ";

                }
                if (sCondicionDeCentros.HasValue())
                {
                    if (lsWhere.HasValue())
                        lsWhere = lsWhere + "	AND ";
                    lsWhere = lsWhere + " B." + sCondicionDeCentros;
                }
                if (cbSoloCtaMayor)
                {
                    sTitulo2 = "Incluye solo cuentas de mayor";
                    if (lsWhere.HasValue())
                        lsWhere = lsWhere + "	AND ";
                    lsWhere = lsWhere + " A.cuenta_contable LIKE '" + fciBalanceComp.SoloMayorLIKE() + "' ";
                }
                else
                {
                    if (dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta())
                    {
                        sTitulo2 = "Incluye solo cuentas hasta el nivel " + Sal.NumberToStrX(dfCantNiveles, 0);
                        if (lsWhere.HasValue())
                            lsWhere = lsWhere + "	AND ";
                        lsWhere = lsWhere + " A.cuenta_contable LIKE '" + fciBalanceComp.SoloHastaNivelLIKE(dfCantNiveles) + "' ";
                    }
                    else
                        sTitulo2 = "Incluye todas las cuentas del rango: " + dfCuentaInicial + " .. " + dfCuentaFinal;
                }

                if (cbSaldosAlCierre)
                    sTitulo2 = sTitulo2 + "con saldo antes de cierre";
                if (cbDetalleMov)
                {
                    if (cbAsientosDiario)
                        lsWhereDiario = lsWhere;
                    if (lsWhere.HasValue())
                        lsWhere = lsWhere + "	AND ";
                    lsWhere = lsWhere + " D.cuenta_contable = A.cuenta_contable	AND	D.cuenta_contable = B.cuenta_contable AND	D.centro_costo = B.centro_costo" +
                    " AND 	D.centro_costo = C.centro_costo	AND	D.fecha >= " + Sql.FormatDateTime(Globales.GetMinDate(dfFechaInicial), "dfFechaInicial", false) +
                    " AND 	D.fecha <= " + Sql.FormatDateTime(Globales.GetMaxDate(dfFechaFinal), "dfFechaFinal", false) +
                    " AND 	D.contabilidad IN ( '" + sConta + "', '" + GlobalesCG.CONTA_AMBAS + "' ) ";
                    if (cbAsientosDiario)
                    {
                        if (lsWhereDiario.HasValue())
                            lsWhereDiario = lsWhereDiario + "	AND ";
                        lsWhereDiario = lsWhereDiario + " D.cuenta_contable = A.cuenta_contable	AND	D.cuenta_contable = B.cuenta_contable AND	D.centro_costo" +
                        "= B.centro_costo AND 	D.centro_costo = C.centro_costo	AND	asd.fecha >= " +
                        Sql.FormatDateTime(Globales.GetMinDate(dfFechaInicial), "dfFechaInicial", false) + " AND 	asd.fecha <= " +
                        Sql.FormatDateTime(Globales.GetMaxDate(dfFechaFinal), "dfFechaFinal", false) + " AND 	asd.contabilidad IN ( '" +
                        sConta + "', '" + GlobalesCG.CONTA_AMBAS + "' ) AND	asd.asiento = d.asiento";
                    }
                }
                if (lsWhere.HasValue())
                    sSqlCmdReport = sSqlCmdReport + " WHERE " + lsWhere;

                if (cbAsientosDiario)
                    if (lsWhereDiario.HasValue())
                        lsSqlCmdDiario = lsSqlCmdDiario + " WHERE " + lsWhereDiario;

                if (cbDetalleMov)
                {
                    sSqlCmdReport = sSqlCmdReport + " GROUP BY d.consecutivo,	A.cuenta_contable, A.descripcion, A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado," +
                        "C.centro_costo, C.descripcion,	D.asiento, D.fecha, D.referencia, D.fuente, D.tipo_asiento, D.origen, D.nit ";
                    if (cbAsientosDiario)
                    {
                        sSqlCmdReport = sSqlCmdReport + " UNION ALL " + lsSqlCmdDiario;
                        sSqlCmdReport = sSqlCmdReport + " GROUP BY d.consecutivo,	A.cuenta_contable, A.descripcion, A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado," +
                            "C.centro_costo, C.descripcion, D.asiento, asd.fecha, D.referencia, D.fuente, asd.tipo_asiento, asd.origen, D.nit ";
                    }
                    sSqlCmdReport = sSqlCmdReport + " UNION ALL SELECT A.cuenta_contable, A.descripcion, A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado,";

                    sSqlCmdReport = sSqlCmdReport + " ' ', ' ', ' ', " + Globales.ConcatAdministrator("SF_GETDATE() ") + ", ' ', ' ', ' ', ' ', '" + GlobalesCG.NIT_NO_DEFINIDO + "', 0, 0, 0, 0";

                    if (fclsCompania.UsaUnidades && cbImpUnidades)
                        sSqlCmdReport = sSqlCmdReport + ", 0, 0";

                    sSqlCmdReport = sSqlCmdReport + " FROM " + Globales.ConcatCompany("cuenta_contable A");

                    if (sCondicionDeCentros.HasValue())
                        sSqlCmdReport = sSqlCmdReport + ", " + Globales.ConcatCompany("centro_cuenta B ");
                    lsWhereUnion = string.Empty;

                    if (sCondicionDeCentros.HasValue())
                    {
                        if (lsWhereUnion.HasValue())
                            lsWhereUnion = lsWhereUnion + "	AND ";
                        lsWhereUnion = lsWhereUnion + " A.cuenta_contable = B.cuenta_contable	AND B." + sCondicionDeCentros;
                    }
                    if (dfCuentaInicial.HasValue())
                    {
                        if (lsWhereUnion.HasValue())
                            lsWhereUnion = lsWhereUnion + "	AND ";
                        lsWhereUnion = lsWhereUnion + " A.cuenta_contable >= '" + dfCuentaInicial + "' ";
                    }
                    if (dfCuentaFinal.HasValue())
                    {
                        if (lsWhereUnion.HasValue())
                            lsWhereUnion = lsWhereUnion + "	AND ";
                        lsWhereUnion = lsWhereUnion + " A.cuenta_contable <= '" + dfCuentaFinal + "' ";
                    }
                    if (dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta())
                    {
                        if (lsWhereUnion.HasValue())
                            lsWhereUnion = lsWhereUnion + "	AND ";
                        lsWhereUnion = lsWhereUnion + " A.cuenta_contable LIKE '" + fciBalanceComp.SoloHastaNivelLIKE(dfCantNiveles) + "' ";
                    }
                    if (lsWhereUnion.HasValue())
                        lsWhereUnion = lsWhereUnion + "	AND ";
                    lsWhereUnion = lsWhereUnion + " 0 = (SELECT 	COUNT(0)	FROM 	" + Globales.ConcatCompany("mayor c");
                    lsWhereUnion = lsWhereUnion + " WHERE 	( A.cuenta_contable = C.cuenta_contable )";
                    lsWhereUnion = lsWhereUnion + "	AND	( c.fecha >= " + Sql.FormatDateTime(Globales.GetMinDate(dfFechaInicial), "dfFechaInicial", false) +
                        " AND 	c.fecha <= " + Sql.FormatDateTime(Globales.GetMaxDate(dfFechaFinal), "dfFechaFinal", false) +
                        " AND 	c.contabilidad IN ( '" + sConta + "', '" + GlobalesCG.CONTA_AMBAS + "' )  ";

                    if (sCondicionDeCentros.HasValue())
                        lsWhereUnion = lsWhereUnion + "	AND 	C." + sCondicionDeCentros + ")";
                    else
                        lsWhereUnion = lsWhereUnion + ")";

                    lsWhereUnion = lsWhereUnion + " ) ";

                    if (lsWhereUnion.HasValue())
                        sSqlCmdReport = sSqlCmdReport + " WHERE " + lsWhereUnion;

                    if (cbAsientosDiario)
                    {
                        sSqlCmdReport = sSqlCmdReport + " UNION 	ALL SELECT A.cuenta_contable, A.descripcion, A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado,";

                        sSqlCmdReport = sSqlCmdReport + " ' ', ' ', ' ', " + Sql.SystemDate() + ", ' ', ' ', ' ', ' ', '" + GlobalesCG.NIT_NO_DEFINIDO +
                            "', 0, 0, 0, 0";

                        if (fclsCompania.UsaUnidades && cbImpUnidades)
                            sSqlCmdReport = sSqlCmdReport + ", 0, 0";

                        sSqlCmdReport = sSqlCmdReport + " FROM " + Globales.ConcatCompany("cuenta_contable A");

                        if (sCondicionDeCentros.HasValue())
                            sSqlCmdReport = sSqlCmdReport + ", " + Globales.ConcatCompany("centro_cuenta B ");

                        lsWhereUnion = string.Empty;

                        if (sCondicionDeCentros.HasValue())
                        {
                            if (lsWhereUnion.HasValue())
                                lsWhereUnion = lsWhereUnion + "	AND ";
                            lsWhereUnion = lsWhereUnion + " A.cuenta_contable = B.cuenta_contable	AND B." + sCondicionDeCentros;
                        }

                        if (dfCuentaInicial.HasValue())
                        {
                            if (lsWhereUnion.HasValue())
                                lsWhereUnion = lsWhereUnion + "	AND ";
                            lsWhereUnion = lsWhereUnion + " A.cuenta_contable >= '" + dfCuentaInicial + "' ";
                        }

                        if (dfCuentaFinal.HasValue())
                        {
                            if (lsWhereUnion.HasValue())
                                lsWhereUnion = lsWhereUnion + "	AND ";
                            lsWhereUnion = lsWhereUnion + " A.cuenta_contable <= '" + dfCuentaFinal + "' ";
                        }

                        if (dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta())
                        {
                            if (lsWhereUnion.HasValue())
                                lsWhereUnion = lsWhereUnion + "	AND ";
                            lsWhereUnion = lsWhereUnion + " A.cuenta_contable LIKE '" + fciBalanceComp.SoloHastaNivelLIKE(dfCantNiveles) + "' ";
                        }

                        if (lsWhereUnion.HasValue())
                            lsWhereUnion = lsWhereUnion + "	AND ";

                        lsWhereUnion = lsWhereUnion + " 0 = (SELECT 	COUNT(0) FROM 	" + Globales.ConcatCompany("diario f, ") +
                            Globales.ConcatCompany("asiento_de_diario asd");

                        lsWhereUnion = lsWhereUnion + "	WHERE 	( A.cuenta_contable = f.cuenta_contable )";

                        lsWhereUnion = lsWhereUnion + "AND	( asd.fecha >= " + Sql.FormatDateTime(Globales.GetMinDate(dfFechaInicial), "dfFechaInicial", false) +
                            "	AND 	asd.fecha <= " + Sql.FormatDateTime(Globales.GetMaxDate(dfFechaFinal), "dfFechaFinal", false) +
                            "	AND 	asd.contabilidad IN ( '" + sConta + "', '" + GlobalesCG.CONTA_AMBAS + "' ) 	AND 	f.asiento = asd.asiento ";

                        if (sCondicionDeCentros.HasValue())
                            lsWhereUnion = lsWhereUnion + "		AND 	f." + sCondicionDeCentros + ")";
                        else
                            lsWhereUnion = lsWhereUnion + ")";

                        lsWhereUnion = lsWhereUnion + " ) ";

                        if (lsWhereUnion.HasValue())
                            sSqlCmdReport = sSqlCmdReport + " WHERE " + lsWhereUnion;


                    }

                }

                sSqlCmdReport = sSqlCmdReport + " INTO @sCuenta,@sDescripcion,@sSaldoNormal,@sUsaUnidades,@sTipoCta,@sTipoDetalladoCta";

                if (cbDetalleMov)
                {
                    if (fclsCompania.UsaUnidades && cbImpUnidades)
                        sSqlCmdReport = sSqlCmdReport + ",@sCentroCosto, @sDescripcionCentro,@sAsiento, @dtFecha,@sReferencia, @sFuente,@sTipoAsiento, @sOrigen, @vsNit,@nDebitosLoc, @nCreditosLoc,@nDebitosDol, @nCreditosDol,@nDebitosUnd, @nCreditosUnd";
                    else
                        sSqlCmdReport = sSqlCmdReport + ",@sCentroCosto, @sDescripcionCentro,@sAsiento, @dtFecha,@sReferencia, @sFuente,@sTipoAsiento, @sOrigen, @vsNit,@nDebitosLoc, @nCreditosLoc,@nDebitosDol, @nCreditosDol";
                }

                sSqlCmdReport = sSqlCmdReport + " ORDER BY 1";

                if (cbDetalleMov)
                    sSqlCmdReport = sSqlCmdReport + ", 10";

                if (!dfCentroCosto.HasValue())
                    sTitulo3 = dfDescCentroCosto + ". ";
                else
                    sTitulo3 = "Centro de Costo: " + dfDescCentroCosto + ". ";

                if (rbSinMovTodas)
                    sTitulo3 = sTitulo3 + "Cuentas con y sin movimientos.";
                else
                {
                    if (rbSinMovNo)
                        sTitulo3 = sTitulo3 + "Cuentas con movimientos. ";
                    else
                        if (rbSinMovSaldos)
                        sTitulo3 = sTitulo3 + "Cuentas con movimientos o saldo diferente de cero.";
                }

                sTitulo1 = "Balance de Comprobación del " + Sal.FmtFormatDateTime(dfFechaInicial, "dd/MM/yyyy") + " al " +
                Sal.FmtFormatDateTime(dfFechaFinal, "dd/MM/yyyy");

                sREP_BalanceVar = "@sCentroCosto,@sDescripcionCentro,@sCuenta,@sDescripcion,@nSaldoInicialLoc,@nSaldoInicialDol,@nSaldoInicialUnd,@nSaldoFinalLoc,@nSaldoFinalDol,@nSaldoFinalUnd,@nTotalDebitosLoc,@nTotalDebitosDol,@nTotalDebitosUnd,@nTotalCreditosLoc,@nTotalCreditosDol,@nTotalCreditosUnd,@nCambioNetoLoc,@nCambioNetoDol,@nCambioNetoUnd,@sAsiento,@dtFecha,@sReferencia,@sFuente,@sTipoAsiento,@sOrigen,@nDebitosLoc,@nDebitosDol,@nDebitosUnd,@nCreditosLoc,@nCreditosDol,@nCreditosUnd,@sImprimirCuenta,@sImprimirDetalle,@vsNit,@sSaldoNormal";

                sREP_BalanceInp = "sCentroCosto,sDescripcionCentro,sCuentaContable,sDescripcionCuenta,nSaldoInicialLoc,nSaldoInicialDol,nSaldoInicialUnd,nSaldoFinalLoc,nSaldoFinalDol,nSaldoFinalUnd,nTotalDebitosLoc,nTotalDebitosDol,nTotalDebitosUnd,nTotalCreditosLoc,nTotalCreditosDol,nTotalCreditosUnd,nCambioNetoLoc,nCambioNetoDol,nCambioNetoUnd,sAsiento,dtFecha,sReferencia,sFuente,sTipoAsiento,sOrigen,nDebitosLoc,nDebitosDol,nDebitosUnd,nCreditosLoc,nCreditosDol,nCreditosUnd,sImprimirCuenta,sImprimirDetalle,vsNit,sSaldoNormal";

                return ShowReport(sREP_BalanceVar, sREP_BalanceInp, sTitulo1, sTitulo2, sTitulo3, sTitulo4, sSqlCmdReport);
            }
            else
            {
                return false;
            }

        }

        #endregion Funciones

    } // BalanceComprobacion

    public sealed class SaldoKey
    {
        public readonly string Centro;
        public readonly string Cuenta;
        public readonly string Contabilidad;
        public readonly string Moneda;
        public readonly int Link;

        public SaldoKey(string centro, string cuenta, string contabilidad, string moneda, int link)
        {
            Centro = centro ?? "";
            Cuenta = cuenta ?? "";
            Contabilidad = contabilidad ?? "";
            Moneda = moneda ?? "";
            Link = link;
        }

        public override bool Equals(object obj)
        {
            var other = obj as SaldoKey;
            if (other == null) return false;

            return Centro == other.Centro
                && Cuenta == other.Cuenta
                && Contabilidad == other.Contabilidad
                && Moneda == other.Moneda
                && Link == other.Link;
        }

        public override int GetHashCode()
        {
            unchecked
            {
                int hash = 17;
                hash = hash * 23 + Centro.GetHashCode();
                hash = hash * 23 + Cuenta.GetHashCode();
                hash = hash * 23 + Contabilidad.GetHashCode();
                hash = hash * 23 + Moneda.GetHashCode();
                hash = hash * 23 + Link.GetHashCode();
                return hash;
            }
        }
    }

    public sealed class DiarioKey
    {
        public readonly string CuentaLike;
        public readonly string CentroLike;

        public DiarioKey(string cuentaLike, string centroLike)
        {
            CuentaLike = cuentaLike ?? "";
            CentroLike = centroLike ?? "";
        }

        public override bool Equals(object obj)
        {
            var other = obj as DiarioKey;
            if (other == null) return false;

            return CuentaLike == other.CuentaLike
                && CentroLike == other.CentroLike;
        }

        public override int GetHashCode()
        {
            unchecked
            {
                int hash = 17;
                hash = hash * 23 + CuentaLike.GetHashCode();
                hash = hash * 23 + CentroLike.GetHashCode();
                return hash;
            }
        }
    }


}
