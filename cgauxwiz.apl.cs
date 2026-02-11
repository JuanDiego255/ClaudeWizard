using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using Softland.TD2Net.v2;

namespace Softland.API
{
    public partial class APP
    {
        #region Variables
        public SalBoolean bMostrarDetalleCuentas { get { if (g().g_bMostrarDetalleCuentas is null) { g().g_bMostrarDetalleCuentas = new SalBoolean(); } return g().g_bMostrarDetalleCuentas; } set { g().g_bMostrarDetalleCuentas = value; } }
        public SalBoolean g_bMostrarDetalleCuentas = null;
        #endregion
    }

    /// <summary>  
    /// Clase que representa un asistente (wizard) para la gestión de cuadre auxiliar en el sistema.  
    /// Hereda de la clase base `clsdlgWizard` y contiene métodos, propiedades y eventos relacionados con la configuración, validación y manejo de datos  
    /// en el proceso de cuadre auxiliar.  
    /// </summary>  
    internal class dlgCGAuxWiz : clsdlgWizard
    {
        #region Variables
        [Control("tblCuadresCG", "", TipoControl.Tabla, TipoValor.Ninguno, 4, true, "", "", "nTABPaso0")]
        public tblCuadresCG tblCuadresCG = new tblCuadresCG();
        [Control("tblSelCuentas", "tabla sel cuentas ", TipoControl.Tabla, TipoValor.Ninguno, 4, true, "", "", "nTABPaso2", "      ")]
        public tblSelCuentas tblSelCuentas = new tblSelCuentas();
        [Control("tblEntesAuxiliar", "", TipoControl.Tabla, TipoValor.Ninguno, 4, true, "", "", "nTABPaso2", "       ")]
        public tblEntesAuxiliar tblEntesAuxiliar = new tblEntesAuxiliar();
        [Control("tblCuadreConta", "", TipoControl.Tabla, TipoValor.Ninguno, 4, true, "", "_pbFiltroCuadreConta", "nTABPaso4", "Detalles de Movimientos de la contabilidad")]
        public tblCuadreConta tblCuadreConta = new tblCuadreConta();
        [Control("tblCuadreAux", "", TipoControl.Tabla, TipoValor.Ninguno, 4, true, "", "_pbFiltroCuadreAux", "nTABPaso4", "Detalles de Movimientos del Auxiliar")]
        public tblCuadreAux tblCuadreAux = new tblCuadreAux();

        [Control("tblBalanceCtas", "", TipoControl.Tabla, TipoValor.Ninguno, 4, true, "", "", "nTABPaso5")]
        public tblBalanceCtas tblBalanceCtas = new tblBalanceCtas();
        [Control("Tabla Resumen", "Tabla Resumen", TipoControl.Tabla, TipoValor.Ninguno, 4, true, "", "", "nTABPaso3", "tblResumen", visible: false)]
        public tblResumenCuadre tblResumenCuadre = new tblResumenCuadre();

        const string gsOrigen = "Seleccione el módulo a cuadrar:";

        public SalDecimal nTABPaso0 = new SalDecimal();
        public SalDecimal nTABPaso1 = new SalDecimal();
        public SalDecimal nTABPaso2 = new SalDecimal();
        public SalDecimal nTABPaso3 = new SalDecimal();
        public SalDecimal nTABPaso4 = new SalDecimal();
        public SalDecimal nTABPaso5 = new SalDecimal();
        public SalDecimal nTABPaso6 = new SalDecimal();
        public SalDecimal nTABPaso7 = new SalDecimal();
        public SalDecimal nTABPaso8 = new SalDecimal();
        public SalDecimal nTABPaso9 = new SalDecimal();
        public fclsUtilCGAuxWiz vfciCGAuxWiz = new fclsUtilCGAuxWiz();
        public SalString isModuloCuadre = new SalString();
        public SalString isNombreModulo = new SalString();
        public SalString isListaCuentasCuadre = new SalString();
        public SalString isEnteAuxNombre = new SalString();
        public SalString isEnteAuxTabla = new SalString();
        public SalString isEnteAuxColumnas = new SalString();
        public SalString isEnteAuxNombreCol = new SalString();
        public SalString isFiltroCuentas = new SalString();
        public SalString isFiltroAuxiliar = new SalString();
        public SalBoolean vbCuadreNuevo = new SalBoolean();
        public SalDecimal vnCodigoCuadre = new SalDecimal();
        public SalDecimal vnContaDebitoLoc = new SalDecimal();
        public SalDecimal vnContaDebitoDol = new SalDecimal();
        public SalDecimal vnContaCreditoLoc = new SalDecimal();
        public SalDecimal vnContaCreditoDol = new SalDecimal();
        public SalDecimal vnAuxDebitoLoc = new SalDecimal();
        public SalDecimal vnAuxDebitoDol = new SalDecimal();
        public SalDecimal vnAuxCreditoLoc = new SalDecimal();
        public SalDecimal vnAuxCreditoDol = new SalDecimal();
        public SalDecimal vnCGDebitoLoc = new SalDecimal();
        public SalDecimal vnCGDebitoDol = new SalDecimal();
        public SalDecimal vnCGCreditoLoc = new SalDecimal();
        public SalDecimal vnCGCreditoDol = new SalDecimal();
        public SalDecimal vnOtrosDebitoLoc = new SalDecimal();
        public SalDecimal vnOtrosDebitoDol = new SalDecimal();
        public SalDecimal vnOtrosCreditoLoc = new SalDecimal();
        public SalDecimal vnOtrosCreditoDol = new SalDecimal();
        public SalDecimal vnAuxNCDebitoLoc = new SalDecimal();
        public SalDecimal vnAuxNCDebitoDol = new SalDecimal();
        public SalDecimal vnAuxNCCreditoLoc = new SalDecimal();
        public SalDecimal vnAuxNCCreditoDol = new SalDecimal();
        public SalDecimal vnAuxFPDebitoLoc = new SalDecimal();
        public SalDecimal vnAuxFPDebitoDol = new SalDecimal();
        public SalDecimal vnAuxFPCreditoLoc = new SalDecimal();
        public SalDecimal vnAuxFPCreditoDol = new SalDecimal();
        public SalString vsItemResumen = new SalString();
        public SalBoolean vbRefrescarDatos = new SalBoolean();
        public SalBoolean vbVertical = new SalBoolean();
        public SalDecimal vnPrevTab = new SalDecimal();

        //    public SalDecimal nTabsCount = new SalDecimal();
        //public SalDecimal nCurrentTab = new SalDecimal();
        //public SalDecimal nLastTab = new SalDecimal();
        #endregion
        #region Controles Visuales

        [Control("_mlDescripProceso", "", TipoControl.AreaTexto, TipoValor.Texto, 1, false, "", "", "", "")]
        public clsStdDF _mlDescripProceso { get { return mlDescripProceso; } set { if (mlDescripProceso.AM_Validate(value, this)) mlDescripProceso = value; } }
        public clsStdDF mlDescripProceso = new clsStdDF();


        //[Control("_pbAyuda", "pbAyuda: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        public PushButton _pbAyuda { get { return pbAyuda; } set { if (pbAyuda.AM_Validate(value, this)) pbAyuda = value; } }
        public PushButton pbAyuda = new PushButton();
        // [Control("_pbCargar", "pbCargar: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        public PushButton _pbCargar { get { return pbCargar; } set { if (pbCargar.AM_Validate(value, this)) pbCargar = value; } }
        public PushButton pbCargar = new PushButton();
        //[Control("_pbAnterior", "pbAnterior: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        //public PushButton _pbAnterior { get { return pbAnterior; } set { if (pbAnterior.AM_Validate(value, this)) pbAnterior = value; } }
        //public PushButton pbAnterior = new PushButton();
        //[Control("_pbSiguiente", "pbSiguiente: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        //public PushButton _pbSiguiente { get { return pbSiguiente; } set { if (pbSiguiente.AM_Validate(value, this)) pbSiguiente = value; } }
        //public PushButton pbSiguiente = new PushButton();
        //[Control("_pbCancelar", "pbCancelar: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        //public PushButton _pbCancelar { get { return pbCancelar; } set { if (pbCancelar.AM_Validate(value, this)) pbCancelar = value; } }
        //public PushButton pbCancelar = new PushButton();
        [Control("_pbNewCuadres", "Nuevo: ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Nuevo.png", "", "nTABPaso0", "")]
        public PushButton _pbNewCuadres { get { return pbNewCuadres; } set { if (pbNewCuadres.AM_Validate(value, this)) pbNewCuadres = value; } }
        public PushButton pbNewCuadres = new PushButton();
        [Control("_pbOpenCuadres", "Abrir ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "candado abierto.png", "", "nTABPaso0", "")]
        public PushButton _pbOpenCuadres { get { return pbOpenCuadres; } set { if (pbOpenCuadres.AM_Validate(value, this)) pbOpenCuadres = value; } }
        public PushButton pbOpenCuadres = new PushButton();
        [Control("_pbDelCuadres", "Eliminar ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Elimina.png", "", "nTABPaso0", "")]
        public PushButton _pbDelCuadres { get { return pbDelCuadres; } set { if (pbDelCuadres.AM_Validate(value, this)) pbDelCuadres = value; } }
        public PushButton pbDelCuadres = new PushButton();
        [Control("_dfDescripcion", "Descripción", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "nTABPaso1", " ", tamanio: 12)]
        public clsStdDF _dfDescripcion { get { return dfDescripcion; } set { if (dfDescripcion.AM_Validate(value, this)) dfDescripcion = value; } }
        public clsStdDF dfDescripcion = new clsStdDF();
        [Control("_dfPeriodoCuadre", "Período: ", TipoControl.DialogoSeleccion, TipoValor.Fecha, 1, true, "", "", "nTABPaso1", "", tamanio: 12)]
        public clsdfPeriodoContableF1 _dfPeriodoCuadre { get { return dfPeriodoCuadre; } set { if (dfPeriodoCuadre.AM_Validate(value, this)) dfPeriodoCuadre = value; } }
        public clsdfPeriodoContableF1 dfPeriodoCuadre = new clsdfPeriodoContableF1();
        [Control("_dfFechaIni", "Desde: ", TipoControl.CampoTexto, TipoValor.Fecha, 1, true, "", "", "nTABPaso1", "Rangos de fechas", tamanio: 6)]
        public clsdfFechaF1 _dfFechaIni { get { return dfFechaIni; } set { if (dfFechaIni.AM_Validate(value, this)) dfFechaIni = value; } }
        public clsdfFechaF1 dfFechaIni = new clsdfFechaF1();
        [Control("_dfFechaFin", "Hasta: ", TipoControl.CampoTexto, TipoValor.Fecha, 1, true, "", "", "nTABPaso1", "Rangos de fechas", tamanio: 6)]
        public clsdfFechaF1 _dfFechaFin { get { return dfFechaFin; } set { if (dfFechaFin.AM_Validate(value, this)) dfFechaFin = value; } }
        public clsdfFechaF1 dfFechaFin = new clsdfFechaF1();

        [Control("_pbNewCtas", "Nuevo", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Nuevo.png", "", "nTABPaso2", "      ")]
        public PushButton _pbNewCtas { get { return pbNewCtas; } set { if (pbNewCtas.AM_Validate(value, this)) pbNewCtas = value; } }
        public PushButton pbNewCtas = new PushButton();
        [Control("_pbEliminarCtas", "Eliminar", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Elimina.png", "", "nTABPaso2", "      ")]
        public PushButton _pbEliminarCtas { get { return pbEliminarCtas; } set { if (pbEliminarCtas.AM_Validate(value, this)) pbEliminarCtas = value; } }
        public PushButton pbEliminarCtas = new PushButton();
        [Control("_pbSelecAllCtas", "Marca/Desmarca Todas", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Desmarca.png", "", "nTABPaso2", "      ")]
        public PushButton _pbSelecAllCtas { get { return pbSelecAllCtas; } set { if (pbSelecAllCtas.AM_Validate(value, this)) pbSelecAllCtas = value; } }
        public PushButton pbSelecAllCtas = new PushButton();
        [Control("_pbCargaCtas", "Cargar", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Carga2.png", "", "nTABPaso2", "      ")]
        public PushButton _pbCargaCtas { get { return pbCargaCtas; } set { if (pbCargaCtas.AM_Validate(value, this)) pbCargaCtas = value; } }
        public PushButton pbCargaCtas = new PushButton();
        [Control("_pbExcelCtas", "Excel", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Excel.png", "", "nTABPaso2", "      ")]
        public PushButton _pbExcelCtas { get { return pbExcelCtas; } set { if (pbExcelCtas.AM_Validate(value, this)) pbExcelCtas = value; } }
        public PushButton pbExcelCtas = new PushButton();
        [Control("_pbExcelCtasTodo", "Excel Todo", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Envexcel.png", "", "nTABPaso2", "      ", visible: false)]
        public PushButton _pbExcelCtasTodo { get { return pbExcelCtasTodo; } set { if (pbExcelCtasTodo.AM_Validate(value, this)) pbExcelCtasTodo = value; } }
        public PushButton pbExcelCtasTodo = new PushButton();

        [Control("_pbExcelBalCtas", "Excel ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Excel.png", "", "nTABPaso3", "Movimientos asociados")]
        public PushButton _pbExcelBalCtas { get { return pbExcelBalCtas; } set { if (pbExcelBalCtas.AM_Validate(value, this)) pbExcelBalCtas = value; } }
        public PushButton pbExcelBalCtas = new PushButton();
        [Control("_pbExcelBalCtasTodo", "Excel Todo", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Envexcel.png", "", "nTABPaso3", "Movimientos asociados", visible: false)]
        public PushButton _pbExcelBalCtasTodo { get { return pbExcelBalCtasTodo; } set { if (pbExcelBalCtasTodo.AM_Validate(value, this)) pbExcelBalCtasTodo = value; } }
        public PushButton pbExcelBalCtasTodo = new PushButton();
        [Control("_obMonedaLoc", "Moneda Colón ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Moneda.png", "", "nTABPaso3", "Movimientos asociados", "Monedas")]
        public OptionButton _obMonedaLoc { get { return obMonedaLoc; } set { if (obMonedaLoc.AM_Validate(value, this)) obMonedaLoc = value; } }
        public OptionButton obMonedaLoc = new OptionButton();
        [Control("_obMonedaDol", "Moneda Dólar ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Montodol.png", "", "nTABPaso3", "Movimientos asociados", "Monedas")]
        public OptionButton _obMonedaDol { get { return obMonedaDol; } set { if (obMonedaDol.AM_Validate(value, this)) obMonedaDol = value; } }
        public OptionButton obMonedaDol = new OptionButton();


        [Control("_pbExcelBalCtas2", "Excel ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Excel.png", "", "nTABPaso5", "")]
        public PushButton _pbExcelBalCtas2 { get { return pbExcelBalCtas2; } set { if (pbExcelBalCtas2.AM_Validate(value, this)) pbExcelBalCtas2 = value; } }
        public PushButton pbExcelBalCtas2 = new PushButton();
        [Control("_pbExcelBalCtas2Todo", "Excel Todo", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Envexcel.png", "", "nTABPaso5", "", visible: false)]
        public PushButton _pbExcelBalCtas2Todo { get { return pbExcelBalCtas2Todo; } set { if (pbExcelBalCtas2Todo.AM_Validate(value, this)) pbExcelBalCtas2Todo = value; } }
        public PushButton pbExcelBalCtas2Todo = new PushButton();
        [Control("_obMonedaLoc2", "Moneda Colón ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Moneda.png", "", "nTABPaso5", "", "Monedas")]
        public OptionButton _obMonedaLoc2 { get { return obMonedaLoc2; } set { if (obMonedaLoc2.AM_Validate(value, this)) obMonedaLoc2 = value; } }
        public OptionButton obMonedaLoc2 = new OptionButton();
        [Control("_obMonedaDol2", "Moneda Dólar ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Montodol.png", "", "nTABPaso5", "", "Monedas")]
        public OptionButton _obMonedaDol2 { get { return obMonedaDol2; } set { if (obMonedaDol2.AM_Validate(value, this)) obMonedaDol2 = value; } }
        public OptionButton obMonedaDol2 = new OptionButton();

        [Control("_label1", "", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _label1 { get { return label1; } set { if (label1.AM_Validate(value, this)) label1 = value; } }
        public clsdfDescripcion label1 = new clsdfDescripcion();
        [Control("_label2", "Débitos", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _label2 { get { return label2; } set { if (label2.AM_Validate(value, this)) label2 = value; } }
        public clsdfDescripcion label2 = new clsdfDescripcion();
        [Control("_label3", "Créditos", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _label3 { get { return label3; } set { if (label3.AM_Validate(value, this)) label3 = value; } }
        public clsdfDescripcion label3 = new clsdfDescripcion();
        [Control("_label4", "Neto", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _label4 { get { return label4; } set { if (label4.AM_Validate(value, this)) label4 = value; } }
        public clsdfDescripcion label4 = new clsdfDescripcion();

        [Control("_label5", "Registrado en CG producto del auxiliar:", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _label5 { get { return label5; } set { if (label5.AM_Validate(value, this)) label5 = value; } }
        public clsdfDescripcion label5 = new clsdfDescripcion();
        [Control("_dfResContaDebLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _dfResContaDebLoc { get { return dfResContaDebLoc; } set { if (dfResContaDebLoc.AM_Validate(value, this)) dfResContaDebLoc = value; } }
        public clsdfDescripcion dfResContaDebLoc = new clsdfDescripcion();
        [Control("_dfResContaCredLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _dfResContaCredLoc { get { return dfResContaCredLoc; } set { if (dfResContaCredLoc.AM_Validate(value, this)) dfResContaCredLoc = value; } }
        public clsdfDescripcion dfResContaCredLoc = new clsdfDescripcion();
        [Control("_dfResContaNeto", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _dfResContaNeto { get { return dfResContaNeto; } set { if (dfResContaNeto.AM_Validate(value, this)) dfResContaNeto = value; } }
        public clsdfDescripcion dfResContaNeto = new clsdfDescripcion();

        [Control("_label6", "Registrados en el auxiliar y contabilizados:", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _label6 { get { return label6; } set { if (label6.AM_Validate(value, this)) label6 = value; } }
        public clsdfDescripcion label6 = new clsdfDescripcion();
        [Control("_dfResAuxDebLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _dfResAuxDebLoc { get { return dfResAuxDebLoc; } set { if (dfResAuxDebLoc.AM_Validate(value, this)) dfResAuxDebLoc = value; } }
        public clsdfDescripcion dfResAuxDebLoc = new clsdfDescripcion();
        [Control("_dfResAuxCredLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _dfResAuxCredLoc { get { return dfResAuxCredLoc; } set { if (dfResAuxCredLoc.AM_Validate(value, this)) dfResAuxCredLoc = value; } }
        public clsdfDescripcion dfResAuxCredLoc = new clsdfDescripcion();
        [Control("_dfResAuxNeto", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _dfResAuxNeto { get { return dfResAuxNeto; } set { if (dfResAuxNeto.AM_Validate(value, this)) dfResAuxNeto = value; } }
        public clsdfDescripcion dfResAuxNeto = new clsdfDescripcion();

        [Control("_label7", "Diferencia:", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _label7 { get { return label7; } set { if (label7.AM_Validate(value, this)) label7 = value; } }
        public clsdfDescripcion label7 = new clsdfDescripcion();
        [Control("_dfResDifDebLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _dfResDifDebLoc { get { return dfResDifDebLoc; } set { if (dfResDifDebLoc.AM_Validate(value, this)) dfResDifDebLoc = value; } }
        public clsdfDescripcion dfResDifDebLoc = new clsdfDescripcion();
        [Control("_dfResDifCredLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _dfResDifCredLoc { get { return dfResDifCredLoc; } set { if (dfResDifCredLoc.AM_Validate(value, this)) dfResDifCredLoc = value; } }
        public clsdfDescripcion dfResDifCredLoc = new clsdfDescripcion();
        [Control("_dfResDifNeto", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos asociados", tamanio: 3)]
        public clsdfDescripcion _dfResDifNeto { get { return dfResDifNeto; } set { if (dfResDifNeto.AM_Validate(value, this)) dfResDifNeto = value; } }
        public clsdfDescripcion dfResDifNeto = new clsdfDescripcion();

        [Control("_label8", "Directamente en CG:", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _label8 { get { return label8; } set { if (label8.AM_Validate(value, this)) label8 = value; } }
        public clsdfDescripcion label8 = new clsdfDescripcion();
        [Control("_dfResCGDebLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _dfResCGDebLoc { get { return dfResCGDebLoc; } set { if (dfResCGDebLoc.AM_Validate(value, this)) dfResCGDebLoc = value; } }
        public clsdfDescripcion dfResCGDebLoc = new clsdfDescripcion();
        [Control("_dfResCGCredLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _dfResCGCredLoc { get { return dfResCGCredLoc; } set { if (dfResCGCredLoc.AM_Validate(value, this)) dfResCGCredLoc = value; } }
        public clsdfDescripcion dfResCGCredLoc = new clsdfDescripcion();
        [Control("_dfResCGNetoLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _dfResCGNetoLoc { get { return dfResCGNetoLoc; } set { if (dfResCGNetoLoc.AM_Validate(value, this)) dfResCGNetoLoc = value; } }
        public clsdfDescripcion dfResCGNetoLoc = new clsdfDescripcion();

        [Control("_label9", "Producto de otro Auxiliar:", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _label9 { get { return label9; } set { if (label9.AM_Validate(value, this)) label9 = value; } }
        public clsdfDescripcion label9 = new clsdfDescripcion();
        [Control("_dfResOtrosDebLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _dfResOtrosDebLoc { get { return dfResOtrosDebLoc; } set { if (dfResOtrosDebLoc.AM_Validate(value, this)) dfResOtrosDebLoc = value; } }
        public clsdfDescripcion dfResOtrosDebLoc = new clsdfDescripcion();
        [Control("_dfResOtrosCredLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _dfResOtrosCredLoc { get { return dfResOtrosCredLoc; } set { if (dfResOtrosCredLoc.AM_Validate(value, this)) dfResOtrosCredLoc = value; } }
        public clsdfDescripcion dfResOtrosCredLoc = new clsdfDescripcion();
        [Control("_dfResOtrosNetoLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _dfResOtrosNetoLoc { get { return dfResOtrosNetoLoc; } set { if (dfResOtrosNetoLoc.AM_Validate(value, this)) dfResOtrosNetoLoc = value; } }
        public clsdfDescripcion dfResOtrosNetoLoc = new clsdfDescripcion();

        [Control("_label10", "Total: ", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _label10 { get { return label10; } set { if (label10.AM_Validate(value, this)) label10 = value; } }
        public clsdfDescripcion label10 = new clsdfDescripcion();
        [Control("_dfResTotCGDebLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _dfResTotCGDebLoc { get { return dfResTotCGDebLoc; } set { if (dfResTotCGDebLoc.AM_Validate(value, this)) dfResTotCGDebLoc = value; } }
        public clsdfDescripcion dfResTotCGDebLoc = new clsdfDescripcion();
        [Control("_dfResTotCGCredLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _dfResTotCGCredLoc { get { return dfResTotCGCredLoc; } set { if (dfResTotCGCredLoc.AM_Validate(value, this)) dfResTotCGCredLoc = value; } }
        public clsdfDescripcion dfResTotCGCredLoc = new clsdfDescripcion();
        [Control("_dfResTotCGNetoLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos registrados en CG", tamanio: 3)]
        public clsdfDescripcion _dfResTotCGNetoLoc { get { return dfResTotCGNetoLoc; } set { if (dfResTotCGNetoLoc.AM_Validate(value, this)) dfResTotCGNetoLoc = value; } }
        public clsdfDescripcion dfResTotCGNetoLoc = new clsdfDescripcion();

        [Control("_label11", "No contabilizados: ", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _label11 { get { return label11; } set { if (label11.AM_Validate(value, this)) label11 = value; } }
        public clsdfDescripcion label11 = new clsdfDescripcion();
        [Control("_dfResAuxNCDebLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _dfResAuxNCDebLoc { get { return dfResAuxNCDebLoc; } set { if (dfResAuxNCDebLoc.AM_Validate(value, this)) dfResAuxNCDebLoc = value; } }
        public clsdfDescripcion dfResAuxNCDebLoc = new clsdfDescripcion();
        [Control("_dfResAuxNCCredLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _dfResAuxNCCredLoc { get { return dfResAuxNCCredLoc; } set { if (dfResAuxNCCredLoc.AM_Validate(value, this)) dfResAuxNCCredLoc = value; } }
        public clsdfDescripcion dfResAuxNCCredLoc = new clsdfDescripcion();
        [Control("_dfResAuxNCNetoLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _dfResAuxNCNetoLoc { get { return dfResAuxNCNetoLoc; } set { if (dfResAuxNCNetoLoc.AM_Validate(value, this)) dfResAuxNCNetoLoc = value; } }
        public clsdfDescripcion dfResAuxNCNetoLoc = new clsdfDescripcion();

        [Control("_label12", "Contabilizados fuera del periodo: ", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _label12 { get { return label12; } set { if (label12.AM_Validate(value, this)) label12 = value; } }
        public clsdfDescripcion label12 = new clsdfDescripcion();
        [Control("_dfResAuxFPDebLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _dfResAuxFPDebLoc { get { return dfResAuxFPDebLoc; } set { if (dfResAuxFPDebLoc.AM_Validate(value, this)) dfResAuxFPDebLoc = value; } }
        public clsdfDescripcion dfResAuxFPDebLoc = new clsdfDescripcion();
        [Control("_dfResAuxFPCredLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _dfResAuxFPCredLoc { get { return dfResAuxFPCredLoc; } set { if (dfResAuxFPCredLoc.AM_Validate(value, this)) dfResAuxFPCredLoc = value; } }
        public clsdfDescripcion dfResAuxFPCredLoc = new clsdfDescripcion();
        [Control("_dfResAuxFPNetoLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _dfResAuxFPNetoLoc { get { return dfResAuxFPNetoLoc; } set { if (dfResAuxFPNetoLoc.AM_Validate(value, this)) dfResAuxFPNetoLoc = value; } }
        public clsdfDescripcion dfResAuxFPNetoLoc = new clsdfDescripcion();

        [Control("_label13", "Total: ", TipoControl.Label, TipoValor.Texto, 1, true, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _label13 { get { return label13; } set { if (label13.AM_Validate(value, this)) label13 = value; } }
        public clsdfDescripcion label13 = new clsdfDescripcion();
        [Control("_dfResAuxTotalDebLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _dfResAuxTotalDebLoc { get { return dfResAuxTotalDebLoc; } set { if (dfResAuxTotalDebLoc.AM_Validate(value, this)) dfResAuxTotalDebLoc = value; } }
        public clsdfDescripcion dfResAuxTotalDebLoc = new clsdfDescripcion();
        [Control("_dfResAuxTotalCredLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _dfResAuxTotalCredLoc { get { return dfResAuxTotalCredLoc; } set { if (dfResAuxTotalCredLoc.AM_Validate(value, this)) dfResAuxTotalCredLoc = value; } }
        public clsdfDescripcion dfResAuxTotalCredLoc = new clsdfDescripcion();
        [Control("_dfResAuxTotalNetoLoc", "", TipoControl.CampoTexto, TipoValor.NumeroMascara, 1, false, "", "", "nTABPaso3", "Movimientos Registrados en el Auxiliar", tamanio: 3)]
        public clsdfDescripcion _dfResAuxTotalNetoLoc { get { return dfResAuxTotalNetoLoc; } set { if (dfResAuxTotalNetoLoc.AM_Validate(value, this)) dfResAuxTotalNetoLoc = value; } }
        public clsdfDescripcion dfResAuxTotalNetoLoc = new clsdfDescripcion();


        //[Control("_pbColumnsCuadreConta", "pbColumnsCuadreConta: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "nTABPaso4", "Detalles de Movimientos de la contabilidad")]
        public PushButton _pbColumnsCuadreConta { get { return pbColumnsCuadreConta; } set { if (pbColumnsCuadreConta.AM_Validate(value, this)) pbColumnsCuadreConta = value; } }
        public PushButton pbColumnsCuadreConta = new PushButton();
        [Control("_pbFiltroCuadreConta", "Filtro ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Buscar.png", "", "nTABPaso4", "Detalles de Movimientos de la contabilidad")]
        public PushButton _pbFiltroCuadreConta { get { return pbFiltroCuadreConta; } set { if (pbFiltroCuadreConta.AM_Validate(value, this)) pbFiltroCuadreConta = value; } }
        public PushButton pbFiltroCuadreConta = new PushButton();
        [Control("_pbExcelCuadreConta", "Excel ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Excel.png", "", "nTABPaso4", "Detalles de Movimientos de la contabilidad")]
        public PushButton _pbExcelCuadreConta { get { return pbExcelCuadreConta; } set { if (pbExcelCuadreConta.AM_Validate(value, this)) pbExcelCuadreConta = value; } }
        public PushButton pbExcelCuadreConta = new PushButton();


        [Control("_pbExcelCuadreContaTodo", "Excel Todo ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Envexcel.png", "", "nTABPaso4", "Detalles de Movimientos de la contabilidad", visible: false)]
        public PushButton _pbExcelCuadreContaTodo { get { return pbExcelCuadreContaTodo; } set { if (pbExcelCuadreContaTodo.AM_Validate(value, this)) pbExcelCuadreContaTodo = value; } }
        public PushButton pbExcelCuadreContaTodo = new PushButton();


        [Control("_pbVerAsientoCuadreConta", "Ver Asiento", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "SELECT.png", "", "nTABPaso4", "Detalles de Movimientos de la contabilidad")]
        public PushButton _pbVerAsientoCuadreConta { get { return pbVerAsientoCuadreConta; } set { if (pbVerAsientoCuadreConta.AM_Validate(value, this)) pbVerAsientoCuadreConta = value; } }
        public PushButton pbVerAsientoCuadreConta = new PushButton();

        [Control("_pbRefrescarCuadres", "Refrescar ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "Refresh.png", "", "nTABPaso4", " ")]
        public PushButton _pbRefrescarCuadres { get { return pbRefrescarCuadres; } set { if (pbRefrescarCuadres.AM_Validate(value, this)) pbRefrescarCuadres = value; } }
        public PushButton pbRefrescarCuadres = new PushButton();

        // [Control("_pbCambiarVista", "Cambiar la Vista", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "", "", "nTABPaso4", "")]
        public PushButton _pbCambiarVista { get { return pbCambiarVista; } set { if (pbCambiarVista.AM_Validate(value, this)) pbCambiarVista = value; } }
        public PushButton pbCambiarVista = new PushButton();
        //  [Control("_pbColumnsCuadreAux", "pbColumnsCuadreAux: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "nTABPaso4", "Detalles de Movimientos del Auxiliar")]
        public PushButton _pbColumnsCuadreAux { get { return pbColumnsCuadreAux; } set { if (pbColumnsCuadreAux.AM_Validate(value, this)) pbColumnsCuadreAux = value; } }
        public PushButton pbColumnsCuadreAux = new PushButton();
        [Control("_pbFiltroCuadreAux", "Filtro ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Buscar.png", "", "nTABPaso4", "Detalles de Movimientos del Auxiliar")]
        public PushButton _pbFiltroCuadreAux { get { return pbFiltroCuadreAux; } set { if (pbFiltroCuadreAux.AM_Validate(value, this)) pbFiltroCuadreAux = value; } }
        public PushButton pbFiltroCuadreAux = new PushButton();

        [Control("_pbExcelCuadreAux", "Excel", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Excel.png", "", "nTABPaso4", "Detalles de Movimientos del Auxiliar")]
        public PushButton _pbExcelCuadreAux { get { return pbExcelCuadreAux; } set { if (pbExcelCuadreAux.AM_Validate(value, this)) pbExcelCuadreAux = value; } }
        public PushButton pbExcelCuadreAux = new PushButton();

        [Control("_pbExcelCuadreAuxTodo", "Excel Todo", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "Envexcel.png", "", "nTABPaso4", "Detalles de Movimientos del Auxiliar", visible: false)]
        public PushButton _pbExcelCuadreAuxTodo { get { return pbExcelCuadreAuxTodo; } set { if (pbExcelCuadreAuxTodo.AM_Validate(value, this)) pbExcelCuadreAuxTodo = value; } }
        public PushButton pbExcelCuadreAuxTodo = new PushButton();

        [Control("_pbVerAsientoCuadreAux", "Ver Asiento contable ", TipoControl.BarraHerramientas, TipoValor.Ninguno, 1, true, "SELECT.png", "", "nTABPaso4", "Detalles de Movimientos del Auxiliar")]
        public PushButton _pbVerAsientoCuadreAux { get { return pbVerAsientoCuadreAux; } set { if (pbVerAsientoCuadreAux.AM_Validate(value, this)) pbVerAsientoCuadreAux = value; } }
        public PushButton pbVerAsientoCuadreAux = new PushButton();



        [Control("_lbModOrigen", "", TipoControl.ListBox, TipoValor.Ninguno, 1, true, "", "", "nTABPaso1", gsOrigen, seleccionmultiple: false, tamanio: 12)]
        public clsLstModSelecUnica _lbModOrigen { get { return lbModOrigen; } set { if (lbModOrigen.AM_Validate(value, this)) lbModOrigen = value; } }
        public clsLstModSelecUnica lbModOrigen = new clsLstModSelecUnica();
        #endregion
        #region Constructor
        /// <summary>  
        /// Constructor de la clase dlgCGAuxWiz.  
        /// Inicializa la interfaz del cuadro de auxiliares y configura las propiedades de las tablas y botones asociados.  
        /// - Define el orden de los tabs y oculta el encabezado de los mismos.  
        /// - Asocia las tablas y botones con la instancia actual de la clase.  
        /// - Configura etiquetas y propiedades de visibilidad para las tablas.  
        /// - Establece el texto de la ventana y la descripción del proceso.  
        /// - Realiza configuraciones específicas de tamaño y visibilidad de grupos en los tabs.  
        /// </summary>  
        public dlgCGAuxWiz()
        {
            InicializarInterfaz();
            OrdenTabs = new List<string>() { "nTABPaso0", "nTABPaso1", "nTABPaso2", "nTABPaso3", "nTABPaso4", "nTABPaso5" };
            //OrdenGroups = new List<string>() { "" +SeparadorGrupoTab+ "", "" + SeparadorGrupoTab + "nTABPaso0",  };

            this.esconderTabHeader = true;
            tblCuadresCG.dlgCGAuxWiz = this;
            tblSelCuentas.dlgCGAuxWiz = this;
            tblEntesAuxiliar.dlgCGAuxWiz = this;
            tblCuadreConta.dlgCGAuxWiz = this;
            tblCuadreAux.dlgCGAuxWiz = this;
            tblBalanceCtas.dlgCGAuxWiz = this;
            tblResumenCuadre.dlgCGAuxWiz = this;
            tblResumenCuadre.Visible = false;
            tblBalanceCtas.Etiqueta = "Tabla Balance Cuentas";
            tblSelCuentas.Etiqueta = "Cuentas Contables Objeto del Cuadre";
            tblResumenCuadre.Etiqueta = "Tabla Resumen";
            tblCuadreConta.Etiqueta = "Tabla Movimientos Contabilidad";
            tblCuadreAux.Etiqueta = "Tabla Movimientos Auxiliar";
            ObtenerPantalla();
            tblResumenCuadre.ObtenerPantalla();

            tblCuadresCG.SAM_Create();
            tblCuadresCG.SAM_CreateComplete();
            tblSelCuentas.SAM_Create();
            tblSelCuentas.SAM_CreateComplete();
            tblCuadreConta.SAM_Create();
            tblCuadreConta.SAM_CreateComplete();
            tblCuadreAux.SAM_Create();
            tblCuadreAux.SAM_CreateComplete();
            tblEntesAuxiliar.SAM_Create();
            tblEntesAuxiliar.SAM_CreateComplete();
            SalSetWindowText(this, sSPSCompania + "- Cuadre de Auxiliares");
            mlDescripProceso.ValorTexto = "Cuadre de Auxiliares con la Contabilidad " + Environment.NewLine +
                "A continuación se presenta una lista de cuadres que se encuentran en proceso. Usted puede seleccionar un cuadre para continuarlo, o bien realizar uno nuevo.";

            OcultarGrupo("tblResumen", "nTABPaso3");
            TamanioGrupo(" ", 4, "nTABPaso1");
            TamanioGrupo("", 4, "nTABPaso1");
            TamanioGrupo("Rangos de fechas", 4, "nTABPaso1");
            TamanioGrupo(gsOrigen, 12, "nTABPaso1");
            TamanioGrupo("      ", 6, "nTABPaso2");
            TamanioGrupo("       ", 6, "nTABPaso2");
        }
        #endregion
        #region Funciones
        /// <summary>  
        /// Inicializa la interfaz del asistente, configurando eventos y limpiando estados previos.  
        /// </summary>  
        public void InicializarInterfaz()
        {
            this.clear_SAM_CreateComplete();
            this.SAM_CreateComplete_Event += dlgCGAuxWiz_SAM_CreateComplete;
            this.clear_AM_VerDetalleResumen();
            this.AM_VerDetalleResumen_Event += dlgCGAuxWiz_AM_VerDetalleResumen;
            this.clear_AM_VerDetalleCuentas();
            this.AM_VerDetalleCuentas_Event += dlgCGAuxWiz_AM_VerDetalleCuentas;
            this.clear_SAM_Help();
            this.SAM_Help_Event += dlgCGAuxWiz_SAM_Help;
            this.clear_SAM_Close();
            this.SAM_Close_Event += dlgCGAuxWiz_SAM_Close;
            pbAnterior.clear_AM_Click();
            pbAnterior.AM_Click_Event += pbAnterior_AM_Click;
            pbOpenCuadres.clear_AM_Click();
            pbOpenCuadres.AM_Click_Event += pbOpenCuadres_AM_Click;
            pbOpenCuadres.clear_AM_Create();
            pbOpenCuadres.AM_Create_Event += pbOpenCuadres_AM_Create;
            pbNewCuadres.clear_AM_Click();
            pbNewCuadres.AM_Click_Event += pbNewCuadres_AM_Click;
            pbDelCuadres.clear_AM_Click();
            pbDelCuadres.AM_Click_Event += pbDelCuadres_AM_Click;
            dfDescripcion.clear_AM_ClearField();
            dfDescripcion.AM_ClearField_Event += dfDescripcion_AM_ClearField;
            dfDescripcion.clear_AM_Create();
            dfDescripcion.AM_Create_Event += dfDescripcion_AM_Create;
            dfPeriodoCuadre.clear_AM_InitDFHelp();
            dfPeriodoCuadre.AM_InitDFHelp_Event += dfPeriodoCuadre_AM_InitDFHelp;
            dfPeriodoCuadre.clear_AM_ExtraValidate();
            dfPeriodoCuadre.AM_ExtraValidate_Event += dfPeriodoCuadre_AM_ExtraValidate;
            dfFechaIni.clear_AM_Create();
            dfFechaIni.AM_Create_Event += dfFechaIni_AM_Create;
            dfFechaIni.clear_AM_ExtraValidate();
            dfFechaIni.AM_ExtraValidate_Event += dfFechaIni_AM_ExtraValidate;
            dfFechaFin.clear_AM_Create();
            dfFechaFin.AM_Create_Event += dfFechaFin_AM_Create;
            dfFechaFin.clear_AM_ExtraValidate();
            dfFechaFin.AM_ExtraValidate_Event += dfFechaFin_AM_ExtraValidate;
            pbCargaCtas.clear_AM_Create();
            pbCargaCtas.AM_Create_Event += pbCargaCtas_AM_Create;
            pbCargaCtas.clear_AM_Click();
            pbCargaCtas.AM_Click_Event += pbCargaCtas_AM_Click;
            //pbCargaCtas.clear_AM_IsBackground();
            //pbCargaCtas.AM_IsBackground_Event += pbCargaCtas_AM_IsBackground;
            pbExcelCtas.clear_SAM_Click();
            pbExcelCtas.SAM_Click_Event += pbExcelCtas_SAM_Click;

            pbExcelCtasTodo.clear_SAM_Click();
            pbExcelCtasTodo.SAM_Click_Event += pbExcelCtasTodo_SAM_Click;


            pbNewCtas.clear_AM_Click();
            pbNewCtas.AM_Click_Event += pbNewCtas_AM_Click;
            pbEliminarCtas.clear_AM_Click();
            pbEliminarCtas.AM_Click_Event += pbEliminarCtas_AM_Click;
            pbSelecAllCtas.clear_AM_Create();
            pbSelecAllCtas.AM_Create_Event += pbSelecAllCtas_AM_Create;
            pbSelecAllCtas.clear_AM_Click();
            pbSelecAllCtas.AM_Click_Event += pbSelecAllCtas_AM_Click;
            obMonedaLoc.clear_SAM_Click();
            obMonedaLoc.SAM_Click_Event += obMonedaLoc_SAM_Click;
            obMonedaDol.clear_SAM_Click();
            obMonedaDol.SAM_Click_Event += obMonedaDol_SAM_Click;
            obMonedaDol.clear_AM_CreateComplete();
            obMonedaDol.AM_CreateComplete_Event += obMonedaDol_AM_CreateComplete;
            dfResContaDebLoc.clear_WM_RBUTTONDOWN();
            dfResContaDebLoc.WM_RBUTTONDOWN_Event += dfResContaDebLoc_WM_RBUTTONDOWN;

            obMonedaLoc2.clear_SAM_Click();
            obMonedaLoc2.SAM_Click_Event += obMonedaLoc_SAM_Click;
            obMonedaDol2.clear_SAM_Click();
            obMonedaDol2.SAM_Click_Event += obMonedaDol_SAM_Click;
            obMonedaDol2.clear_AM_CreateComplete();
            obMonedaDol2.AM_CreateComplete_Event += obMonedaDol_AM_CreateComplete;
            //dfResContaDebLoc.clear_WM_RBUTTONUP();
            //dfResContaDebLoc.WM_RBUTTONUP_Event += dfResContaDebLoc_WM_RBUTTONUP;
            dfResContaCredLoc.clear_WM_RBUTTONDOWN();
            dfResContaCredLoc.WM_RBUTTONDOWN_Event += dfResContaCredLoc_WM_RBUTTONDOWN;
            //dfResContaCredLoc.clear_WM_RBUTTONUP();
            //dfResContaCredLoc.WM_RBUTTONUP_Event += dfResContaCredLoc_WM_RBUTTONUP;
            dfResContaNeto.clear_WM_RBUTTONDOWN();
            dfResContaNeto.WM_RBUTTONDOWN_Event += dfResContaNeto_WM_RBUTTONDOWN;
            //dfResContaNeto.clear_WM_RBUTTONUP();
            //dfResContaNeto.WM_RBUTTONUP_Event += dfResContaNeto_WM_RBUTTONUP;
            dfResAuxDebLoc.clear_WM_RBUTTONDOWN();
            dfResAuxDebLoc.WM_RBUTTONDOWN_Event += dfResAuxDebLoc_WM_RBUTTONDOWN;
            //dfResAuxDebLoc.clear_WM_RBUTTONUP();
            //dfResAuxDebLoc.WM_RBUTTONUP_Event += dfResAuxDebLoc_WM_RBUTTONUP;
            dfResAuxCredLoc.clear_WM_RBUTTONDOWN();
            dfResAuxCredLoc.WM_RBUTTONDOWN_Event += dfResAuxCredLoc_WM_RBUTTONDOWN;
            //dfResAuxCredLoc.clear_WM_RBUTTONUP();
            //dfResAuxCredLoc.WM_RBUTTONUP_Event += dfResAuxCredLoc_WM_RBUTTONUP;
            dfResAuxNeto.clear_WM_RBUTTONDOWN();
            dfResAuxNeto.WM_RBUTTONDOWN_Event += dfResAuxNeto_WM_RBUTTONDOWN;
            //dfResAuxNeto.clear_WM_RBUTTONUP();
            //dfResAuxNeto.WM_RBUTTONUP_Event += dfResAuxNeto_WM_RBUTTONUP;
            dfResDifDebLoc.clear_WM_RBUTTONDOWN();
            dfResDifDebLoc.WM_RBUTTONDOWN_Event += dfResDifDebLoc_WM_RBUTTONDOWN;
            //dfResDifDebLoc.clear_WM_RBUTTONUP();
            //dfResDifDebLoc.WM_RBUTTONUP_Event += dfResDifDebLoc_WM_RBUTTONUP;
            dfResDifCredLoc.clear_WM_RBUTTONDOWN();
            dfResDifCredLoc.WM_RBUTTONDOWN_Event += dfResDifCredLoc_WM_RBUTTONDOWN;
            //dfResDifCredLoc.clear_WM_RBUTTONUP();
            //dfResDifCredLoc.WM_RBUTTONUP_Event += dfResDifCredLoc_WM_RBUTTONUP;
            dfResDifNeto.clear_WM_RBUTTONDOWN();
            dfResDifNeto.WM_RBUTTONDOWN_Event += dfResDifNeto_WM_RBUTTONDOWN;
            //dfResDifNeto.clear_WM_RBUTTONUP();
            //dfResDifNeto.WM_RBUTTONUP_Event += dfResDifNeto_WM_RBUTTONUP;
            dfResCGDebLoc.clear_WM_RBUTTONDOWN();
            dfResCGDebLoc.WM_RBUTTONDOWN_Event += dfResCGDebLoc_WM_RBUTTONDOWN;
            //dfResCGDebLoc.clear_WM_RBUTTONUP();
            //dfResCGDebLoc.WM_RBUTTONUP_Event += dfResCGDebLoc_WM_RBUTTONUP;
            dfResCGCredLoc.clear_WM_RBUTTONDOWN();
            dfResCGCredLoc.WM_RBUTTONDOWN_Event += dfResCGCredLoc_WM_RBUTTONDOWN;
            //dfResCGCredLoc.clear_WM_RBUTTONUP();
            //dfResCGCredLoc.WM_RBUTTONUP_Event += dfResCGCredLoc_WM_RBUTTONUP;
            dfResCGNetoLoc.clear_WM_RBUTTONDOWN();
            dfResCGNetoLoc.WM_RBUTTONDOWN_Event += dfResCGNetoLoc_WM_RBUTTONDOWN;
            //dfResCGNetoLoc.clear_WM_RBUTTONUP();
            //dfResCGNetoLoc.WM_RBUTTONUP_Event += dfResCGNetoLoc_WM_RBUTTONUP;
            dfResOtrosDebLoc.clear_WM_RBUTTONDOWN();
            dfResOtrosDebLoc.WM_RBUTTONDOWN_Event += dfResOtrosDebLoc_WM_RBUTTONDOWN;
            //dfResOtrosDebLoc.clear_WM_RBUTTONUP();
            //dfResOtrosDebLoc.WM_RBUTTONUP_Event += dfResOtrosDebLoc_WM_RBUTTONUP;
            dfResOtrosCredLoc.clear_WM_RBUTTONDOWN();
            dfResOtrosCredLoc.WM_RBUTTONDOWN_Event += dfResOtrosCredLoc_WM_RBUTTONDOWN;
            //dfResOtrosCredLoc.clear_WM_RBUTTONUP();
            //dfResOtrosCredLoc.WM_RBUTTONUP_Event += dfResOtrosCredLoc_WM_RBUTTONUP;
            dfResOtrosNetoLoc.clear_WM_RBUTTONDOWN();
            dfResOtrosNetoLoc.WM_RBUTTONDOWN_Event += dfResOtrosNetoLoc_WM_RBUTTONDOWN;
            //dfResOtrosNetoLoc.clear_WM_RBUTTONUP();
            //dfResOtrosNetoLoc.WM_RBUTTONUP_Event += dfResOtrosNetoLoc_WM_RBUTTONUP;
            dfResTotCGDebLoc.clear_WM_RBUTTONDOWN();
            dfResTotCGDebLoc.WM_RBUTTONDOWN_Event += dfResTotCGDebLoc_WM_RBUTTONDOWN;
            //dfResTotCGDebLoc.clear_WM_RBUTTONUP();
            //dfResTotCGDebLoc.WM_RBUTTONUP_Event += dfResTotCGDebLoc_WM_RBUTTONUP;
            dfResTotCGCredLoc.clear_WM_RBUTTONDOWN();
            dfResTotCGCredLoc.WM_RBUTTONDOWN_Event += dfResTotCGCredLoc_WM_RBUTTONDOWN;
            //dfResTotCGCredLoc.clear_WM_RBUTTONUP();
            //dfResTotCGCredLoc.WM_RBUTTONUP_Event += dfResTotCGCredLoc_WM_RBUTTONUP;
            dfResTotCGNetoLoc.clear_WM_RBUTTONDOWN();
            dfResTotCGNetoLoc.WM_RBUTTONDOWN_Event += dfResTotCGNetoLoc_WM_RBUTTONDOWN;
            //dfResTotCGNetoLoc.clear_WM_RBUTTONUP();
            //dfResTotCGNetoLoc.WM_RBUTTONUP_Event += dfResTotCGNetoLoc_WM_RBUTTONUP;
            dfResAuxNCDebLoc.clear_WM_RBUTTONDOWN();
            dfResAuxNCDebLoc.WM_RBUTTONDOWN_Event += dfResAuxNCDebLoc_WM_RBUTTONDOWN;
            //dfResAuxNCDebLoc.clear_WM_RBUTTONUP();
            //dfResAuxNCDebLoc.WM_RBUTTONUP_Event += dfResAuxNCDebLoc_WM_RBUTTONUP;
            dfResAuxNCCredLoc.clear_WM_RBUTTONDOWN();
            dfResAuxNCCredLoc.WM_RBUTTONDOWN_Event += dfResAuxNCCredLoc_WM_RBUTTONDOWN;
            //dfResAuxNCCredLoc.clear_WM_RBUTTONUP();
            //dfResAuxNCCredLoc.WM_RBUTTONUP_Event += dfResAuxNCCredLoc_WM_RBUTTONUP;
            dfResAuxNCNetoLoc.clear_WM_RBUTTONDOWN();
            dfResAuxNCNetoLoc.WM_RBUTTONDOWN_Event += dfResAuxNCNetoLoc_WM_RBUTTONDOWN;
            //dfResAuxNCNetoLoc.clear_WM_RBUTTONUP();
            //dfResAuxNCNetoLoc.WM_RBUTTONUP_Event += dfResAuxNCNetoLoc_WM_RBUTTONUP;
            dfResAuxFPDebLoc.clear_WM_RBUTTONDOWN();
            dfResAuxFPDebLoc.WM_RBUTTONDOWN_Event += dfResAuxFPDebLoc_WM_RBUTTONDOWN;
            //dfResAuxFPDebLoc.clear_WM_RBUTTONUP();
            //dfResAuxFPDebLoc.WM_RBUTTONUP_Event += dfResAuxFPDebLoc_WM_RBUTTONUP;
            dfResAuxFPCredLoc.clear_WM_RBUTTONDOWN();
            dfResAuxFPCredLoc.WM_RBUTTONDOWN_Event += dfResAuxFPCredLoc_WM_RBUTTONDOWN;
            //dfResAuxFPCredLoc.clear_WM_RBUTTONUP();
            //dfResAuxFPCredLoc.WM_RBUTTONUP_Event += dfResAuxFPCredLoc_WM_RBUTTONUP;
            dfResAuxFPNetoLoc.clear_WM_RBUTTONDOWN();
            dfResAuxFPNetoLoc.WM_RBUTTONDOWN_Event += dfResAuxFPNetoLoc_WM_RBUTTONDOWN;
            //dfResAuxFPNetoLoc.clear_WM_RBUTTONUP();
            //dfResAuxFPNetoLoc.WM_RBUTTONUP_Event += dfResAuxFPNetoLoc_WM_RBUTTONUP;
            dfResAuxTotalDebLoc.clear_WM_RBUTTONDOWN();
            dfResAuxTotalDebLoc.WM_RBUTTONDOWN_Event += dfResAuxTotalDebLoc_WM_RBUTTONDOWN;
            //dfResAuxTotalDebLoc.clear_WM_RBUTTONUP();
            //dfResAuxTotalDebLoc.WM_RBUTTONUP_Event += dfResAuxTotalDebLoc_WM_RBUTTONUP;
            dfResAuxTotalCredLoc.clear_WM_RBUTTONDOWN();
            dfResAuxTotalCredLoc.WM_RBUTTONDOWN_Event += dfResAuxTotalCredLoc_WM_RBUTTONDOWN;
            //dfResAuxTotalCredLoc.clear_WM_RBUTTONUP();
            //dfResAuxTotalCredLoc.WM_RBUTTONUP_Event += dfResAuxTotalCredLoc_WM_RBUTTONUP;
            dfResAuxTotalNetoLoc.clear_WM_RBUTTONDOWN();
            dfResAuxTotalNetoLoc.WM_RBUTTONDOWN_Event += dfResAuxTotalNetoLoc_WM_RBUTTONDOWN;
            //dfResAuxTotalNetoLoc.clear_WM_RBUTTONUP();
            //dfResAuxTotalNetoLoc.WM_RBUTTONUP_Event += dfResAuxTotalNetoLoc_WM_RBUTTONUP;
            pbExcelCuadreConta.clear_SAM_Click();
            pbExcelCuadreConta.SAM_Click_Event += pbExcelCuadreConta_SAM_Click;
            pbExcelBalCtas.clear_AM_Create();
            pbExcelBalCtas.AM_Create_Event += pbExcelBalCtas_AM_Create;
            pbExcelBalCtas.clear_SAM_Click();
            pbExcelBalCtas.SAM_Click_Event += pbExcelBalCtas_SAM_Click;
            pbExcelBalCtasTodo.clear_SAM_Click();
            pbExcelBalCtasTodo.SAM_Click_Event += pbExcelBalCtasTodo_SAM_Click;
            pbExcelBalCtas2.clear_AM_Create();
            pbExcelBalCtas2.AM_Create_Event += pbExcelBalCtas_AM_Create;
            pbExcelBalCtas2.clear_SAM_Click();
            pbExcelBalCtas2.SAM_Click_Event += pbExcelBalCtas_SAM_Click;
            pbExcelBalCtas2Todo.clear_SAM_Click();
            pbExcelBalCtas2Todo.SAM_Click_Event += pbExcelBalCtas2Todo_SAM_Click;


            pbExcelCuadreContaTodo.clear_SAM_Click();
            pbExcelCuadreContaTodo.SAM_Click_Event += pbExcelCuadreContaTodo_SAM_Click;



            //pbExcelBalCtas2Todo.clear_SAM_Click();
            //pbExcelBalCtas2Todo.SAM_Click_Event += pbExcelBalCtasTodo_SAM_Click;


            pbColumnsCuadreConta.clear_AM_Click();
            pbColumnsCuadreConta.AM_Click_Event += pbColumnsCuadreConta_AM_Click;
            pbVerAsientoCuadreConta.clear_AM_Create();
            pbVerAsientoCuadreConta.AM_Create_Event += pbVerAsientoCuadreConta_AM_Create;
            pbVerAsientoCuadreConta.clear_AM_Click();
            pbVerAsientoCuadreConta.AM_Click_Event += pbVerAsientoCuadreConta_AM_Click;
            pbFiltroCuadreConta.clear_AM_Click();
            pbFiltroCuadreConta.AM_Click_Event += pbFiltroCuadreConta_AM_Click;
            pbCambiarVista.clear_AM_Create();
            pbCambiarVista.AM_Create_Event += pbCambiarVista_AM_Create;
            pbCambiarVista.clear_AM_Click();
            pbCambiarVista.AM_Click_Event += pbCambiarVista_AM_Click;
            pbColumnsCuadreAux.clear_AM_Click();
            pbColumnsCuadreAux.AM_Click_Event += pbColumnsCuadreAux_AM_Click;
            pbExcelCuadreAux.clear_SAM_Click();
            pbExcelCuadreAux.SAM_Click_Event += pbExcelCuadreAux_SAM_Click;

            pbExcelCuadreAuxTodo.clear_SAM_Click();
            pbExcelCuadreAuxTodo.SAM_Click_Event += pbExcelCuadreAuxTodo_SAM_Click;
            pbVerAsientoCuadreAux.clear_AM_Create();
            pbVerAsientoCuadreAux.AM_Create_Event += pbVerAsientoCuadreAux_AM_Create;
            pbVerAsientoCuadreAux.clear_AM_Click();
            pbVerAsientoCuadreAux.AM_Click_Event += pbVerAsientoCuadreAux_AM_Click;
            pbFiltroCuadreAux.clear_AM_Click();
            pbFiltroCuadreAux.AM_Click_Event += pbFiltroCuadreAux_AM_Click;
            pbRefrescarCuadres.clear_AM_Click();
            pbRefrescarCuadres.AM_Click_Event += pbRefrescarCuadres_AM_Click;
            pbCancelar.clear_AM_Click();
            pbCancelar.AM_Click_Event += pbCancelar_AM_Click;
        }
        /// <summary>  
        /// Realiza acciones necesarias después de regresar de una operación o vista.  
        /// </summary>  
        public override void DespuesdeRegresar()
        {
            //CambiarTab(nCurrentTab);            
        }
        /// <summary>  
        /// Inicializa el proceso del asistente de cuadre entre CG y auxiliares.  
        /// Configura las clases funcionales y las variables necesarias para el wizard.  
        /// </summary>  
        /// <returns>Devuelve true si la inicialización fue exitosa, false en caso contrario.</returns>  
        public bool InitProcess()
        {
            SalBoolean lbOk = new SalBoolean();
            //
            Set(ref lbOk, true);
            //
            //Se inicializan las clases funcionales utilizadas
            if (lbOk)
            {
                Set(ref lbOk, vfciCGAuxWiz.InitInstance());
                //
                //
                //Se inicializan las variables del Wizard
            }
            if (lbOk)
            {
                Set(ref lbOk, InicializarDatosWizard());
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Carga los datos iniciales necesarios para el asistente de cuadre.  
        /// </summary>  
        /// <returns>Devuelve true si los datos se cargaron correctamente, false en caso contrario.</returns>  
        public bool CargarDatos()
        {
            SalBoolean lbOk = new SalBoolean();
            //
            //
            Set(ref lbOk, CargarModulos(""));
            //
            //
            return lbOk;
        }
        /// <summary>  
        /// Inicializa las variables del asistente de cuadre entre CG y auxiliares.  
        /// Configura los pasos del wizard y las variables predeterminadas.  
        /// </summary>  
        /// <returns>Devuelve true si la inicialización fue exitosa.</returns>  
        public bool InicializarDatosWizard()
        {
            Set(ref nTABPaso0, 0);
            Set(ref nTABPaso1, 1);
            Set(ref nTABPaso2, 2);
            Set(ref nTABPaso3, 3);
            Set(ref nTABPaso4, 4);
            Set(ref nTABPaso5, 5);
            Set(ref nTABPaso6, 6);
            Set(ref nTABPaso7, 7);
            Set(ref nTABPaso8, 8);
            Set(ref nTABPaso9, 9);
            //
            Set(ref vbCuadreNuevo, true);
            //Set vnCodigoCuadre = -1
            //Por el momento se asume que siempre se va a cuadrar el mismo
            Set(ref vnCodigoCuadre, 1);
            //
            Set(ref isFiltroCuentas, "'ND'");
            Set(ref vfciCGAuxWiz.isCuentas, string.Empty);
            //
            //
            Set(ref vsItemResumen, string.Empty);
            //
            Set(ref vnPrevTab, 4);
            //
            //
            return true;
        }
        /// <summary>  
        /// Valida la información del tab actual en el asistente de cuadre.  
        /// Dependiendo del tab activo, ejecuta la validación correspondiente.  
        /// </summary>  
        /// <returns>Devuelve true si la validación fue exitosa, false en caso contrario.</returns>  
        public bool ValidateTabInfo()
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //
            if (this.nCurrentTab == nTABPaso0)
            {
                Set(ref lbOk, Valida_Paso0());
            }
            else
            {
                if (this.nCurrentTab == nTABPaso1)
                {
                    Set(ref lbOk, Valida_Paso1());
                }
                else
                {
                    if (this.nCurrentTab == nTABPaso2)
                    {
                        Set(ref lbOk, Valida_Paso2());
                    }
                    else
                    {
                        if (this.nCurrentTab == nTABPaso3)
                        {
                            Set(ref lbOk, Valida_Paso3());
                        }
                        else
                        {
                            if (this.nCurrentTab == nTABPaso4)
                            {
                                Set(ref lbOk, Valida_Paso4());
                            }
                            else
                            {
                                if (this.nCurrentTab == nTABPaso5)
                                {
                                    Set(ref lbOk, Valida_Paso5());
                                }
                                else
                                {
                                    Set(ref lbOk, false);
                                    //$Siguiente es Call$
                                    SPSMessageBox("Error, validación del TAB no definida", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                                    //
                                    //
                                    //
                                }
                            }
                        }
                    }
                }
            }
            return lbOk;
        }
        /// <summary>  
        /// Valida la información del paso 0 en el asistente de cuadre.  
        /// Determina si se debe realizar un nuevo cuadre o abrir uno existente.  
        /// </summary>  
        /// <returns>Devuelve true si la validación fue exitosa, false en caso contrario.</returns>  
        public bool Valida_Paso0()
        {
            WindowHandle hwndColumna = new WindowHandle();
            SalDecimal lnIndice = new SalDecimal();
            SalBoolean lbRowSeleccionado = new SalBoolean();
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            Set(ref lbRowSeleccionado, SalTblAnyRows(tblCuadresCG, ROW_Flags.ROW_Selected, 0));
            //
            if (lbRowSeleccionado)
            {
                switch (SPSMessageBox("¿ Desea hacer un nuevo cuadre o abrir el cuadre seleccionado?", "Advertencia", MBF_IconQuestion, "Nuevo,Abrir"))
                {
                    case MB_Button1:
                        {
                            //
                            //Si el usuario le da siguiente, se asume que desea hacer un cuadre nuevo
                            Set(ref lbOk, NewCuadres());
                            //
                            break;
                        }
                    //Caer al return en cualquiera de los casos IDYES o IDNO
                    case MB_Button2:
                        {
                            //
                            Set(ref lbOk, OpenCuadres());
                            break;
                        }
                }
            }
            else
            {
                //$Siguiente es Call$
                SPSMessageBox("Se realizará un nuevo cuadre, la siguiente ventana le solicitará los datos generales para iniciar el proceso", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                Set(ref lbOk, NewCuadres());
                //
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Valida los datos ingresados en el paso 1 del asistente de cuadre entre CG y auxiliares.  
        /// Realiza verificaciones sobre las fechas, descripción y módulo seleccionado, asegurándose de que los datos sean correctos y completos.  
        /// </summary>  
        /// <returns>Devuelve true si todos los datos son válidos, false en caso contrario.</returns>  
        public bool Valida_Paso1()
        {
            SalString lsNombreModulo = new SalString();
            SalDecimal lnIndice = new SalDecimal();
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //Validaciones de datos de la ventana
            if (true)
            {
                //Valida Fecha Inicial
                if (lbOk)
                {
                    if (!dfFechaIni.ValorFecha)
                    {
                        //$Siguiente es Call$
                        SPSMessageBox("Debe seleccionar una fecha inicial para el cuadre.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                        //$Siguiente es Call$
                        // picTabs.BringToTop(nTABPaso1, true);
                        Set(ref this.nCurrentTab, nTABPaso1);
                        //$Siguiente es Call$
                        SalSetFocus(dfFechaIni);
                        Set(ref lbOk, false);
                    }
                    //
                    //Valida Fecha Final
                }
                if (lbOk)
                {
                    if (!dfFechaFin.ValorFecha)
                    {
                        //$Siguiente es Call$
                        SPSMessageBox("Debe seleccionar una fecha final para el cuadre.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                        //$Siguiente es Call$
                        //picTabs.BringToTop(nTABPaso1, true);
                        Set(ref this.nCurrentTab, nTABPaso1);
                        //$Siguiente es Call$
                        SalSetFocus(dfFechaFin);
                        Set(ref lbOk, false);
                    }
                    //
                    //Valida Descripcion
                }
                if (lbOk)
                {
                    if (!dfDescripcion.ValorTexto)
                    {
                        //$Siguiente es Call$
                        SPSMessageBox("Debe digitar una breve Descripción o identificación para el cuadre que va a realizar.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                        //$Siguiente es Call$
                        //picTabs.BringToTop(nTABPaso1, true);
                        Set(ref this.nCurrentTab, nTABPaso1);
                        //$Siguiente es Call$
                        SalSetFocus(dfDescripcion);
                        Set(ref lbOk, false);
                    }
                    //
                    //Valida que el usuario haya escogido un modulo para cuadre
                }
                if (lbOk)
                {
                    Set(ref lnIndice, SalListQuerySelection(lbModOrigen));
                    if (lnIndice == LB_Err)
                    {
                        //$Siguiente es Call$
                        SPSMessageBox("Debe seleccionar algún módulo para realizar el cuadre.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                        //$Siguiente es Call$
                        //  picTabs.BringToTop(nTABPaso1, true);
                        Set(ref this.nCurrentTab, nTABPaso1);
                        //$Siguiente es Call$
                        //  SalSetFocus(lbModOrigen);
                        Set(ref lbOk, false);
                    }
                    else
                    {
                        //
                        Set(ref lbOk, true);
                        //$Siguiente es Call$
                        SalListQueryText(lbModOrigen, lnIndice, ref lsNombreModulo);
                        //Migración 2021 se agrega esta línea para obtener solamente el nombre del modulo  
                        //SalString modulo = lsNombreModulo.Value.Split(',')[1].Replace("]", "").Trim();
                        SalString modulo = lsNombreModulo.ToString().Trim();
                        //$Siguiente es Call$
                        SPSMessageBox("Se ha seleccionado el módulo de: " + modulo + " para el cuadre.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                        //
                        Set(ref isNombreModulo, lsNombreModulo);
                        //
                        Set(ref isModuloCuadre, lbModOrigen.GetModulo());
                        //
                        if (isModuloCuadre == CC_ORIGEN)
                        {
                        }
                        else
                        {
                            if (isModuloCuadre == CP_ORIGEN)
                            {
                            }
                            else
                            {
                                if (isModuloCuadre == CB_ORIGEN)
                                {
                                }
                                else
                                {
                                    if (isModuloCuadre == CI_ORIGEN)
                                    {
                                    }
                                    else
                                    {
                                        if (isModuloCuadre == AF_ORIGEN)
                                        {
                                        }
                                        else
                                        {
                                            //$Siguiente es Call$
                                            SPSMessageBox("El cuadre con el módulo de " + lsNombreModulo + " todavía no está soportado, por favor seleccione un módulo diferente.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                                            //$Siguiente es Call$
                                            //picTabs.BringToTop(nTABPaso1, true);
                                            //$Siguiente es Call$
                                            //SalSetFocus(lbModOrigen);
                                            Set(ref lbOk, false);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                //
                //Se carga la información del módulo
            }
            if (lbOk)
            {
                Set(ref lbOk, CargaInfoModulo(isModuloCuadre));
                //
                //
                //
            }
            if (lbOk)
            {
                //
                if (!(vfciCGAuxWiz.idtFechaDesde == dfFechaIni.ValorFecha) || !(vfciCGAuxWiz.idtFechaHasta == dfFechaFin.ValorFecha))
                {
                    //
                    Set(ref vbRefrescarDatos, true);
                    //
                    if (vbRefrescarDatos && !vbCuadreNuevo)
                    {
                        //$Siguiente es Call$
                        SPSMessageBox("Dado que se han cambiado las fechas, se deberán refrescar los datos para el cuadre de auxiliares.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                    }
                    //
                    //
                    //Se actuallizan las variables de instancia de la clase
                }
                Set(ref vfciCGAuxWiz.idtFechaDesde, dfFechaIni.ValorFecha);
                Set(ref vfciCGAuxWiz.idtFechaHasta, dfFechaFin.ValorFecha);
                //
                //
                //Se graba la información del cuadre
            }
            Set(ref lbOk, lbOk && SaveCuadres(vbCuadreNuevo));
            if (lbOk)
            {
                Set(ref vbCuadreNuevo, false);
                //
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Valida los datos ingresados en el paso 2 del asistente de cuadre entre CG y auxiliares.  
        /// Obtiene las cuentas seleccionadas, compara los filtros y carga los datos necesarios para el cálculo del cuadro resumen.  
        /// </summary>  
        /// <returns>Devuelve true si los datos son válidos y se cargan correctamente, false en caso contrario.</returns>  
        public bool Valida_Paso2()
        {
            SalDecimal lnCantCuentasSeleccionadas = new SalDecimal();
            SalString lsFiltroNuevoCuentas = new SalString();
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            //Cargar los Datos a las tablas Temporales y cálculo del cuadro resumen
            //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            //
            //Obtiene las cuentas marcadas de la tabla tblSelCuentas
            //Bug 137566 lgonzalez ini --->
            //Set lbOk = ObtenerCuentasMarcadas(lsFiltroNuevoCuentas)
            Set(ref lbOk, ObtenerCuentasMarcadas(ref lsFiltroNuevoCuentas, ref lnCantCuentasSeleccionadas));
            //Bug 137566 lgonzalez fin <---
            //
            if (lsFiltroNuevoCuentas)
            {
                //
                //Se compara el filtro nuevo de cuentas con el filtro que anteriormente se había seleccionado para determinar si hubo algún cambio.
                if (isFiltroCuentas && !vbRefrescarDatos)
                {
                    //
                    if ((isFiltroCuentas != lsFiltroNuevoCuentas))
                    {
                        //
                        switch (SPSMessageBox("La selección de cuentas o rangos de fechas ha cambiado, desea refrescar los datos con las nuevas cuentas seleccionadas o desea continuar con la selección que había hecho anteriormente?", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconQuestion, "Refrescar,Mantener selección anterior"))
                        {
                            case MB_Button1:
                                {
                                    //
                                    Set(ref vbRefrescarDatos, true);
                                    //
                                    break;
                                }
                            //caer al return en cualquiera de los casos IDYES o IDNO
                            case MB_Button2:
                                {
                                    //
                                    break;
                                }
                        }
                    }
                    else
                    {
                        //El Filtro es el mismo, no se debe volver a cargar
                        Set(ref vbRefrescarDatos, false);
                    }
                    //
                    //
                }
                if (lbOk && vbRefrescarDatos)
                {
                    //
                    //$Siguiente es Call$
                    VisWaitCursor(true);
                    //
                    //Se almacena el filtro de cuentas a utilizar
                    Set(ref isFiltroCuentas, lsFiltroNuevoCuentas);
                    //Bug 137566 lgonzalez ini --->
                    Set(ref vfciCGAuxWiz.ibExisteFiltroCuentas, (tblSelCuentas.nTotRows != lnCantCuentasSeleccionadas));
                    //Bug 137566 lgonzalez fin <---
                    //
                    //Si se trata de un cuadre nuevo entonces se deben cargar los datos en las tablas
                    Set(ref lbOk, vfciCGAuxWiz.CargaDatosCGAux(isFiltroCuentas, vnCodigoCuadre, dfFechaIni.ValorFecha, dfFechaFin.ValorFecha));
                    //
                    //$Siguiente es Call$
                    VisWaitCursor(false);
                    //
                    if (lbOk && SqlNet.bDebugging)
                    {
                        //
                        //$Siguiente es Call$
                        SPSMessageBox("Carga de Datos Exitosa!", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                    }
                    //
                }
            }
            else
            {
                //$Siguiente es Call$
                SPSMessageBox("No hay cuentas seleccionadas para el cuadre contable, debe seleccionar al menos una cuenta contable.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                Set(ref lbOk, false);
                //
                //Se calculan los datos del cuadro resumen
            }
            if (lbOk && vbRefrescarDatos)
            {
                //
                //! INICIO GHA -CASO #24327-
                Set(ref g().g_bLiberaRecursos, true);
                Set(ref lbOk, CalcularResumen());
                Set(ref g().g_bLiberaRecursos, false);

                //FIN GHA -CASO #24327-
                //
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Valida los datos ingresados en el paso 3 del asistente de cuadre entre CG y auxiliares.  
        /// Limpia los filtros activos, acomoda los cuadros y popula las tablas de cuadre contable y auxiliar.  
        /// </summary>  
        /// <returns>Devuelve true si las tablas se populan correctamente, false en caso contrario.</returns>  
        public bool Valida_Paso3()
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //Se limpian los Filtros que pueden estar activos
            //$Siguiente es Call$
            LimpiarFiltros();
            //
            //dvargas Caso => 36040
            //
            //$Siguiente es Call$
            AcomodaCuadros();
            //
            //dvargas Caso <= 36040
            //
            //Se popula la tabla de Cuadre Conta
            if (lbOk)
            {
                Set(ref lbOk, tblCuadreConta.LimiteSeleccion(tblCuadreConta.CreateWHERE()));
                //
                //Se popula la tabla de Cuadre Aux
            }
            if (lbOk)
            {
                Set(ref lbOk, tblCuadreAux.LimiteSeleccion(tblCuadreAux.CreateWHERE()));
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Valida el paso 4 del proceso, calculando el balance de cuentas.  
        /// </summary>  
        /// <returns>Devuelve true si el cálculo del balance de cuentas fue exitoso, false en caso contrario.</returns>  
        public bool Valida_Paso4()
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //  
            Set(ref lbOk, CalcularBalanceCuentas(REG_TODOS, AMBAS));
            //  
            return lbOk;
        }
        /// <summary>  
        /// Valida el paso 5 del proceso, mostrando mensajes de confirmación para finalizar o almacenar los datos del proceso actual.  
        /// </summary>  
        /// <returns>Devuelve true si el proceso se finalizó correctamente, false en caso contrario.</returns>  
        public bool Valida_Paso5()
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //  
            switch (SPSMessageBox("¿ Desea finalizar el proceso ?", "Advertencia", MBF_IconQuestion, "Sí,No"))
            {
                case MB_Button1:
                    {
                        //  
                        Set(ref lbOk, true);
                        //  
                        if (this.nCurrentTab > 1)
                        {
                            //  
                            switch (SPSMessageBox("¿ Desea almacenar los datos del proceso actual ?", "Advertencia", MBF_IconQuestion, "Sí,No"))
                            {
                                case MB_Button1:
                                    {
                                        //  
                                        Set(ref lbOk, SaveCuadres(false));
                                        //  
                                        break;
                                    }
                                //Caer al return en cualquiera de los casos IDYES o IDNO
                                case MB_Button2:
                                    {
                                        //  
                                        if (vbCuadreNuevo)
                                        {
                                            Set(ref lbOk, vfciCGAuxWiz.DeleteCuadre(vnCodigoCuadre));
                                            //  
                                        }
                                        break;
                                    }
                            }
                            //  
                        }
                        //$Siguiente es Call$
                        cerradoFinal = true;
                        ComunicarMensajeAlUsuario("", "", TipoMensajeUsuario.CerrarVentana);
                        // SalEndDialog(this, 0);
                        break;
                    }
                //Caer al return en cualquiera de los casos IDYES o IDNO
                case MB_Button2:
                    {
                        Set(ref lbOk, false);
                        break;
                    }
            }
            //  
            return lbOk;
        }
        /// <summary>  
        /// Inicializa el proceso, configurando la interfaz y ajustando el tamaño de los objetos según sea necesario.  
        /// </summary>  
        /// <returns>Devuelve true si la inicialización fue exitosa.</returns>  
        public bool CreateComplete()
        {
            //$Siguiente es Call$
            // picTabs.BringToTop(nTABPaso0, true);
            Set(ref this.nCurrentTab, nTABPaso0);
            //
            //Por problemas aún no identificados, se hace necesario reasignar el tamaño de algunos objetos
            //$Siguiente es Call$
            //SalSetWindowSize(pbRefrescarCuadres, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbCambiarVista, 0.5, 0.29);
            ////
            ////$Siguiente es Call$
            //SalSetWindowSize(pbFiltroCuadreConta, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbExcelCuadreConta, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbVerAsientoCuadreConta, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbColumnsCuadreConta, 0.5, 0.29);
            ////
            ////$Siguiente es Call$
            //SalSetWindowSize(pbFiltroCuadreAux, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbExcelCuadreAux, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbVerAsientoCuadreAux, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbColumnsCuadreAux, 0.5, 0.29);
            ////
            ////$Siguiente es Call$
            //SalSetWindowSize(pbNewCtas, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbCargaCtas, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbExcelCtas, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbEliminarCtas, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbSelecAllCtas, 0.5, 0.29);
            ////
            ////$Siguiente es Call$
            //SalSetWindowSize(dfFechaIni, 1.7, 0.25);
            ////$Siguiente es Call$
            //SalSetWindowSize(dfFechaFin, 1.7, 0.25);
            ////
            ////$Siguiente es Call$
            //SalSetWindowSize(pbNewCuadres, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbDelCuadres, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbOpenCuadres, 0.5, 0.29);
            ////
            ////Botones del Balance de Cuentas
            ////$Siguiente es Call$
            //SalSetWindowSize(pbExcelBalCtas, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(pbExcelBalCtas, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(obMonedaLoc, 0.5, 0.29);
            ////$Siguiente es Call$
            //SalSetWindowSize(obMonedaDol, 0.5, 0.29);
            //
            //Habilita o deshabilita los campos de doble moneda
            if (fciGlobalesSPS.sDobleMonedaCompania != CG_SI)
            {
                //$Siguiente es Call$
                SalHideWindow(tblCuadreConta.colContaDebitoDol);
                //$Siguiente es Call$
                SalHideWindow(tblCuadreConta.colContaCreditoDol);
                //$Siguiente es Call$
                SalHideWindow(tblCuadreAux.colAuxCreditoDol);
                //$Siguiente es Call$
                SalHideWindow(tblCuadreAux.colAuxDebitoDol);
                //
                //dvargas => Caso 36040 12/01/10
                //
            }
            //$Siguiente es Call$
            //SalHideWindow(picLogo);
            //$Siguiente es Call$
            //SalShowWindow(picLogo2);
            //
            //! dvargas => Caso 36040 12/01/10

            //KGO 
            //Pongo el valor de la obMoneda local como true por defecto , pero se debe revisar 
            //para determinar cual es el volar que debe de ser
            Set(ref obMonedaLoc.ValorBooleano, true);
            return true;
        }
        /// <summary>  
        /// Cancela el proceso actual, mostrando mensajes de confirmación y permitiendo almacenar los datos si es necesario.  
        /// </summary>  
        /// <returns>Devuelve true si el proceso fue cancelado correctamente, false en caso contrario.</returns>  
        public bool CancelProcess()
        {
            SalBoolean bOk = new SalBoolean();
            switch (SPSMessageBox("¿ Desea cancelar este proceso ?", "Advertencia", MBF_IconQuestion, "Sí,No"))
            {
                case MB_Button1:
                    {
                        //
                        Set(ref bOk, true);
                        //
                        if (this.nCurrentTab > 1)
                        {
                            //
                            switch (SPSMessageBox("¿ Desea almacenar los datos del proceso actual ?", "Advertencia", MBF_IconQuestion, "Sí,No"))
                            {
                                case MB_Button1:
                                    {
                                        //
                                        Set(ref bOk, SaveCuadres(false));
                                        //
                                        break;
                                    }
                                //Caer al return en cualquiera de los casos IDYES o IDNO
                                case MB_Button2:
                                    {
                                        //
                                        if (vbCuadreNuevo)
                                        {
                                            Set(ref bOk, vfciCGAuxWiz.DeleteCuadre(vnCodigoCuadre));
                                            //
                                        }
                                        break;
                                    }
                            }
                            cerradoFinal = true;
                            //
                        }
                        break;
                    }
                //Caer al return en cualquiera de los casos IDYES o IDNO
                case MB_Button2:
                    {
                        Set(ref bOk, false);
                        break;
                    }
            }
            return bOk;
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón "Cancelar".  
        /// Si el proceso de cancelación se ejecuta correctamente, regresa al estado anterior; de lo contrario, retorna 0.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación. 1 si se regresa correctamente, 0 en caso contrario.</returns>  
        public SalDecimal pbCancelar_AM_Click()
        {
            if (CancelProcess())
            {
                return this.Regresar();
            }
            else
            {
                return new SalDecimal(0);
            }

        }
        /// <summary>  
        /// Activa la lógica asociada a la finalización de la activación de una pestaña en el asistente.  
        /// Cambia el texto descriptivo según la pestaña activa y realiza configuraciones específicas.  
        /// </summary>  
        /// <param name="pwndHandle">Handle de la ventana asociada.</param>  
        /// <param name="pnTab">Número de la pestaña activa.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación. 1 si se ejecuta correctamente.</returns>  
        public SalDecimal TabActivateFinish(SalWindowHandle pwndHandle, SalDecimal pnTab)
        {
            //If (pnTab = nTABPaso1) OR (pnTab = nTABPaso0)
            //
            //Call SalShowWindow ( picLogo )
            //Call SalHideWindow ( picLogo2 )
            //
            //Call SalDisableWindow( pbAnterior )
            //
            //Else
            //
            //Call SalHideWindow ( picLogo )
            //Call SalShowWindow ( picLogo2 )
            //
            //
            //dvargas => Caso 36040 12/01/10
            //
            if ((pnTab == nTABPaso2))
            {




                mlDescripProceso.ValorTexto = "Cuentas Contables Objeto del Cuadre";


                //
            }
            if ((pnTab == nTABPaso4))
            {
                mlDescripProceso.ValorTexto = "Detalle de Movimientos del Auxiliar";
            }
            if ((pnTab == nTABPaso1))
            {

                //
                //$Siguiente es Call$
                //SalShowWindow(picLogo);
                //$Siguiente es Call$
                //SalShowWindow(picLogo2);
                //
                //$Siguiente es Call$
                SalDisableWindow(pbAnterior);
                mlDescripProceso.ValorTexto = " Datos Generales" + Environment.NewLine +
                    " Este Wizard le guiará en los pasos necesarios para que usted pueda comparar los datos arrojados por los distintos auxiliares de la contabilidad y cotejarlos contra los movimientos contables de este módulo.";




                //
            }
            else
            {
                //
                //$Siguiente es Call$
                // SalHideWindow(picLogo);
                //$Siguiente es Call$
                //SalShowWindow(picLogo2);
                //
                //
                //dvargas => Caso 36040 12/01/10
                //
                //Oculta los botones de moneda si
            }
            if ((pnTab == nTABPaso3) || (pnTab == nTABPaso5))
            {
                if (fciGlobalesSPS.sDobleMonedaCompania != CG_SI)
                {
                    //$Siguiente es Call$
                    SalHideWindow(obMonedaDol);
                    //$Siguiente es Call$
                    SalHideWindow(obMonedaLoc);
                }
                if ((pnTab == nTABPaso3))
                {
                    mlDescripProceso.ValorTexto = "Resumen del Cuadre";
                }
                if ((pnTab == nTABPaso5))
                {
                    mlDescripProceso.ValorTexto = " Balance de las Cuentas";
                }
            }
            ComunicarMensajeAlUsuario("VisibleDialogo", "VisibleDialogo", TipoMensajeUsuario.VisibleDialogo);

            return new SalDecimal(1);
        }
        /// <summary>  
        /// Carga los módulos disponibles en el sistema y los despliega en la lista de selección.  
        /// Permite filtrar los módulos según el parámetro proporcionado.  
        /// </summary>  
        /// <param name="psModulo">Código del módulo que se desea cargar. Si es nulo, se cargará el módulo por defecto "CC".</param>  
        /// <returns>Devuelve true si los módulos se cargan correctamente, false en caso contrario.</returns>  
        public bool CargarModulos(SalString psModulo)
        {
            SalString lsListaModulosTmp = new SalString();
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //
            //Truco para engañar a la clase para indicarle que solo CC se debe desplegar en la lista
            Set(ref lsListaModulosTmp, ModulosInstalados);
            Set(ref g().g_ModulosInstalados, "CC,CP,CB,CI,AF");
            //
            //$Siguiente es Call$
            SalListClear(lbModOrigen);
            if (psModulo)
            {
                Set(ref lbOk, lbModOrigen.DesplegarModulos(psModulo));
            }
            else
            {
                Set(ref lbOk, lbModOrigen.DesplegarModulos("CC"));
                //
            }
            //$Siguiente es Call$
            SalListSelectString(lbModOrigen, 0, Globales.NombreModuloExactus(psModulo));
            //
            //
            //Se restaura el valor de la variable ModulosInstalados
            Set(ref g().g_ModulosInstalados, lsListaModulosTmp);
            //
            return lbOk;
        }
        /// <summary>  
        /// Carga las cuentas contables en la tabla de selección de cuentas.  
        /// Si se proporciona una lista de cuentas, las utiliza para filtrar la carga.  
        /// Si no se proporciona, pregunta al usuario si desea realizar una nueva carga.  
        /// </summary>  
        /// <param name="psListaCuentas">Lista de cuentas contables a cargar. Si está vacía, se realiza una carga general.</param>  
        /// <returns>Devuelve true si la carga fue exitosa, false en caso contrario.</returns>  
        public bool CargarCuentas(SalString psListaCuentas)
        {
            SalBoolean lbOk = new SalBoolean();
            //
            Set(ref lbOk, true);
            //
            if (psListaCuentas)
            {
                //
                Set(ref isListaCuentasCuadre, psListaCuentas);
                Set(ref isFiltroCuentas, psListaCuentas);
                //
                Set(ref lbOk, tblSelCuentas.LimiteSeleccion(tblSelCuentas.CreateWHERE()));
            }
            else
            {
                //
                //Pregunta si desea hacer la carga nuevamente ( solo pregunta si ya hay cuentas cargadas)
                if (lbOk && tblSelCuentas.nTotRows > 0)
                {
                    //
                    switch (SPSMessageBox("Si vuelve a realizar la carga perderá los datos de la tabla ¿Está seguro que desea volver a cargar las cuentas?", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconQuestion, "Cargar,Cancelar"))
                    {
                        case MB_Button1:
                            {
                                Set(ref lbOk, true);
                                break;
                            }
                        //caer al return en cualquiera de los casos IDYES o IDNO
                        case MB_Button2:
                            {
                                Set(ref lbOk, false);
                                break;
                            }
                    }
                    //
                    //
                    //Realiza la carga de cuentas
                }
                if (lbOk)
                {
                    Set(ref lbOk, vfciCGAuxWiz.CargarCtasContables(isModuloCuadre, ref isListaCuentasCuadre));
                    if (isListaCuentasCuadre)
                    {
                        //
                        //Call SalSendMsg( tblSelCuentas, AM_PopulateTable, 0, 0 )
                        //$Siguiente es Call$
                        tblSelCuentas.LimiteSeleccion(tblSelCuentas.CreateWHERE());
                    }
                    else
                    {
                        //
                        //$Siguiente es Call$
                        SPSMessageBox("No hay Cuentas Contables para cargar", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                    }
                }
                //
            }
            tblEntesAuxiliar.tblSelCuentas = tblSelCuentas;
            return lbOk;
        }
        /// <summary>  
        /// Carga la información del módulo seleccionado, incluyendo tablas, columnas y nombres de entes auxiliares.  
        /// También actualiza el título de la columna en la tabla de entes auxiliares.  
        /// </summary>  
        /// <param name="psModulo">Código del módulo seleccionado para cargar la información.</param>  
        /// <returns>Devuelve true si la carga fue exitosa, false en caso contrario.</returns>  
        public bool CargaInfoModulo(SalString psModulo)
        {
            APP hwndColumna = new APP();
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            if (!vfciCGAuxWiz.CargaInfoModulo(psModulo, ref isEnteAuxTabla, ref isEnteAuxColumnas, ref isEnteAuxNombreCol, ref isEnteAuxNombre))
            {
                //
                //
                //
                //$Siguiente es Call$
                SPSMessageBox("No se pudo cargar la información del módulo seleccionado", "dlgCGAuxWiz - CargaInfoModulo()", MBF_IconExclamation, CONTINUAR);
                Set(ref lbOk, false);
                //
                //Se ponen los nombres de acuerdo con el módulo seleccionado
            }
            if (lbOk && isEnteAuxNombre)
            {
                //
                Set(ref hwndColumna, SalTblGetColumnWindow(this.tblEntesAuxiliar, 0, COL_GetID));
                Set(ref lbOk, SalTblSetColumnTitle(hwndColumna, isEnteAuxNombre));
                //
            }
            else
            {
                //
                //$Siguiente es Call$
                SPSMessageBox("No se ha definido el nombre del ente auxiliar!", "dlgCGAuxWiz - CargaInfoModulo()", MBF_IconExclamation, CONTINUAR);
                //
                Set(ref lbOk, false);
                //
                //
            }
            Set(ref isNombreModulo, Globales.NombreModuloExactus(psModulo));
            //
            return lbOk;
        }
        /// <summary>  
        /// Pobla la tabla de entes auxiliares con los datos correspondientes.  
        /// Inicializa las variables necesarias y ejecuta la consulta para obtener los datos.  
        /// </summary>  
        /// <param name="lnRow">Número de fila inicial para poblar la tabla.</param>  
        /// <returns>Devuelve true si la operación fue exitosa.</returns>  
        public bool PoblarEnteAux(SalDecimal lnRow)
        {
            //
            //
            //Se llama a OnCreate() para que se inicialicen las variables sDBName, etc.. ya que estas son dinámicas
            //$Siguiente es Call$
            this.tblEntesAuxiliar.OnCreate();
            //
            //$Siguiente es Call$
            this.tblEntesAuxiliar.LimiteSeleccion(this.tblEntesAuxiliar.CreateWHERE());
            //
            //Se llama a OnDestroy() para desconectar cursor
            //Call this.tblEntesAuxiliar.OnDestroy()
            return new SalBoolean(true);
        }
        /// <summary>  
        /// Obtiene las cuentas marcadas en la tabla de selección de cuentas.  
        /// Genera una lista de cuentas marcadas y cuenta el número total de cuentas seleccionadas.  
        /// </summary>  
        /// <param name="psCuentasMarcadas">Referencia para almacenar la lista de cuentas marcadas.</param>  
        /// <param name="pnCantCuentasMarcadas">Referencia para almacenar el número total de cuentas marcadas.</param>  
        /// <returns>Devuelve true si la operación fue exitosa.</returns>  
        public bool ObtenerCuentasMarcadas(ref SalString psCuentasMarcadas, ref SalDecimal pnCantCuentasMarcadas)
        {
            SalDecimal lnCurRow = new SalDecimal();
            SalBoolean lbOk = new SalBoolean();
            //
            Set(ref lbOk, true);
            //Bug 137566 lgonzalez ini --->
            Set(ref pnCantCuentasMarcadas, 0);
            //Bug 137566 lgonzalez fin <---
            //
            //Temporalmente se le pasa la misma lista
            //Set psCuentasMarcadas = isListaCuentasCuadre
            //
            Set(ref lnCurRow, TBL_MinRow);
            //
            while (SalTblFindNextRow(tblSelCuentas, ref lnCurRow, ROW_Flags.ROW_UserFlag1, ROW_Flags.ROW_Hidden | ROW_Flags.ROW_MarkDeleted))
            {
                //$Siguiente es Call$
                SalTblFetchRow(tblSelCuentas, lnCurRow);
                //
                //Se agrega la cuenta a la lista
                if (tblSelCuentas.colCuentaCG.colValorTexto)
                {
                    if (psCuentasMarcadas)
                    {
                        Set(ref psCuentasMarcadas, psCuentasMarcadas + ", '" + tblSelCuentas.colCuentaCG.colValorTexto + "'");
                    }
                    else
                    {
                        Set(ref psCuentasMarcadas, "'" + tblSelCuentas.colCuentaCG.colValorTexto + "'");
                    }
                    //
                    //Bug 137566 lgonzalez ini --->
                }
                Set(ref pnCantCuentasMarcadas, pnCantCuentasMarcadas + 1);
                //Bug 137566 lgonzalez fin <---
            }
            //
            //
            return lbOk;
        }
        /// <summary>  
        /// Muestra un documento asociado en un diálogo modal.  
        /// Proporciona detalles del documento, incluyendo débitos y créditos en moneda local y dólar.  
        /// </summary>  
        /// <param name="psGUID">Identificador único del documento asociado.</param>  
        /// <param name="psDocOrigen">Origen del documento asociado.</param>  
        /// <param name="pnDebitoLoc">Monto de débito en moneda local.</param>  
        /// <param name="pnDebitoDol">Monto de débito en moneda dólar.</param>  
        /// <param name="pnCreditoLoc">Monto de crédito en moneda local.</param>  
        /// <param name="pnCreditoDol">Monto de crédito en moneda dólar.</param>  
        /// <param name="psDesde">Fecha desde la cual se muestra el documento.</param>  
        /// <returns>Devuelve true si la operación fue exitosa.</returns>  
        public bool MostarDocumentoAsociado(SalString psGUID, SalString psDocOrigen, SalDecimal pnDebitoLoc, SalDecimal pnDebitoDol, SalDecimal pnCreditoLoc, SalDecimal pnCreditoDol, SalString psDesde)
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            Set(ref lbOk, SalModalDialog<dlgCGAuxDocAsociado>(hWndForm, psGUID, psDocOrigen, pnDebitoLoc, pnDebitoDol, pnCreditoLoc, pnCreditoDol, psDesde));
            //
            //
            return lbOk;
        }
        /// <summary>  
        /// Desasocia un movimiento seleccionado en la contabilidad o en el auxiliar.  
        /// Verifica que solo haya un movimiento seleccionado y que esté asociado antes de proceder.  
        /// </summary>  
        /// <param name="pbCuadreConta">Indica si el movimiento pertenece a la contabilidad (true) o al auxiliar (false).</param>  
        /// <returns>Devuelve true si la operación fue exitosa, false en caso contrario.</returns>  
        public bool DesAsociarMovimiento(SalBoolean pbCuadreConta)
        {
            SalString lsSqlCmd = new SalString();
            SalDecimal lnRow = new SalDecimal();
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //
            if (pbCuadreConta)
            {
                //Verifica que haya una línea seleccionada en la tabla CuadreConta
                if (lbOk)
                {
                    Set(ref lnRow, TBL_MinRow);
                    Set(ref lbOk, SalTblFindNextRow(tblCuadreConta, ref lnRow, ROW_Flags.ROW_Selected, 0));
                    if (lbOk)
                    {
                        //
                        if (SalTblFindNextRow(tblCuadreConta, ref lnRow, ROW_Flags.ROW_Selected, 0))
                        {
                            //
                            //$Siguiente es Call$
                            SPSMessageBox("Existe más de un movimiento seleccionado en la contabilidad para ligar. Debe seleccionar solamente un movimiento.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                            Set(ref lbOk, false);
                        }
                        else
                        {
                            //
                            if (tblCuadreConta.colContaGUIDConta.colValorTexto == string.Empty)
                            {
                                //
                                //$Siguiente es Call$
                                SPSMessageBox("Este registro no está asociado a otro. No se puede ejecutar el proceso solicitado.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                                Set(ref lbOk, false);
                            }
                            //
                        }
                    }
                    else
                    {
                        //$Siguiente es Call$
                        SPSMessageBox("Debe seleccionar un movimiento a ligar en la contabilidad.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                        //
                    }
                    //
                    //Una vez identificados los movimientos se procede a desligarlos (esto implica eliminar la entrada en la tabla CG_AUX)
                }
                if (lbOk)
                {
                    //
                    Set(ref lbOk, vfciCGAuxWiz.DelCuadreContaAux(vnCodigoCuadre, string.Empty, tblCuadreConta.colContaRowPointer.colValorTexto));
                    //
                }
            }
            else
            {
                //
                //Verifica que haya una línea seleccionada en la tabla CuadreAux
                if (lbOk)
                {
                    Set(ref lnRow, TBL_MinRow);
                    Set(ref lbOk, SalTblFindNextRow(tblCuadreAux, ref lnRow, ROW_Flags.ROW_Selected, 0));
                    if (lbOk)
                    {
                        //
                        if (SalTblFindNextRow(tblCuadreAux, ref lnRow, ROW_Flags.ROW_Selected, 0))
                        {
                            //
                            //$Siguiente es Call$
                            SPSMessageBox("Existe más de un movimiento seleccionado en el auxiliar para ligar. Debe seleccionar solamente un movimiento.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                            Set(ref lbOk, false);
                        }
                        else
                        {
                            //
                            if (tblCuadreAux.colAuxGUIDAux.colValorTexto == string.Empty)
                            {
                                //
                                //$Siguiente es Call$
                                SPSMessageBox("Este registro no está asociado a otro. No se puede ejecutar el proceso solicitado.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                                Set(ref lbOk, false);
                            }
                            //
                        }
                    }
                    else
                    {
                        //$Siguiente es Call$
                        SPSMessageBox("Debe seleccionar un movimiento a ligar en el auxiliar.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                    }
                    //
                    //Una vez identificados los movimientos se procede a desligarlos (esto implica eliminar la entrada en la tabla CG_AUX)
                }
                if (lbOk)
                {
                    //
                    Set(ref lbOk, vfciCGAuxWiz.DelCuadreContaAux(vnCodigoCuadre, tblCuadreAux.colAuxRowPointer.colValorTexto, string.Empty));
                }
                //
            }
            if (lbOk)
            {
                //$Siguiente es Call$
                SPSMessageBox("Se desasociaron los movimientos exitosamente.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                //
                //  Set(ref pbRefrescarCuadres.bBackgroundColor, true);
                //Set(ref pbRefrescarCuadres.bEstaParpadeando, true);
                //$Siguiente es Call$
                // SalTimerSet(pbRefrescarCuadres, TIMER_REFRESH, 500);
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Asocia un movimiento contable con un movimiento auxiliar.  
        /// Verifica que haya una línea seleccionada en ambas tablas y realiza la asociación.  
        /// Muestra mensajes de error si no se cumplen las condiciones necesarias.  
        /// </summary>  
        /// <returns>Devuelve true si la asociación se realiza correctamente, de lo contrario false.</returns>  
        public bool AsociarMovimiento()
        {
            SalString lsSqlCmd = new SalString();
            SalDecimal lnRow = new SalDecimal();
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //
            //Verifica que haya una línea seleccionada en la tabla CuadreConta
            if (lbOk)
            {
                Set(ref lnRow, TBL_MinRow);
                Set(ref lbOk, SalTblFindNextRow(tblCuadreConta, ref lnRow, ROW_Flags.ROW_Selected, 0));
                if (lbOk)
                {
                    //
                    if (SalTblFindNextRow(tblCuadreConta, ref lnRow, ROW_Flags.ROW_Selected, 0))
                    {
                        //
                        //$Siguiente es Call$
                        SPSMessageBox("Existe más de un movimiento seleccionado en la contabilidad para ligar. Debe seleccionar solamente un movimiento.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                        Set(ref lbOk, false);
                        //
                    }
                }
                else
                {
                    //$Siguiente es Call$
                    SPSMessageBox("Debe seleccionar un movimiento a ligar en la contabilidad.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                }
                //
                //
                //Verifica que haya una línea seleccionada en la tabla CuadreAux
            }
            if (lbOk)
            {
                Set(ref lnRow, TBL_MinRow);
                Set(ref lbOk, SalTblFindNextRow(tblCuadreAux, ref lnRow, ROW_Flags.ROW_Selected, 0));
                if (lbOk)
                {
                    //
                    if (SalTblFindNextRow(tblCuadreAux, ref lnRow, ROW_Flags.ROW_Selected, 0))
                    {
                        //
                        //$Siguiente es Call$
                        SPSMessageBox("Existe más de un movimiento seleccionado en el auxiliar para ligar. Debe seleccionar solamente un movimiento.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                        Set(ref lbOk, false);
                        //
                    }
                }
                else
                {
                    //$Siguiente es Call$
                    SPSMessageBox("Debe seleccionar un movimiento a ligar en el auxiliar.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                }
                //
                //Una vez identificados los movimientos se procede a realizar la liga de movimientos
            }
            if (lbOk)
            {
                //
                Set(ref lbOk, vfciCGAuxWiz.InsertaCuadreContaAux(vnCodigoCuadre, tblCuadreAux.colAuxRowPointer.colValorTexto, tblCuadreConta.colContaRowPointer.colValorTexto, "N"));
                //
            }
            if (lbOk)
            {
                //$Siguiente es Call$
                SPSMessageBox("La liga entre movimientos se realizó con éxito.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                //
                //Set(ref pbRefrescarCuadres.bBackgroundColor, true);
                //Set(ref pbRefrescarCuadres.bEstaParpadeando, true);
                ////$Siguiente es Call$
                //SalTimerSet(pbRefrescarCuadres, TIMER_REFRESH, 500);
                //
                //Set pbRefrescarCuadreAux.bBackgroundColor =TRUE
                //Set pbRefrescarCuadreAux.bEstaParpadeando = TRUE
                //Call SalTimerSet( pbRefrescarCuadreAux, TIMER_REFRESH, 500 )
                //
                //
                //
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Calcula el resumen de movimientos contables y auxiliares.  
        /// Obtiene los datos de resumen y balance de cuentas, y actualiza la interfaz con los resultados.  
        /// </summary>  
        /// <returns>Devuelve true si el cálculo se realiza correctamente, de lo contrario false.</returns>  
        public bool CalcularResumen()
        {
            SalBoolean lbOk = new SalBoolean();
            //
            Set(ref lbOk, true);
            //
            //$Siguiente es Call$
            VisWaitCursor(true);
            //
            Set(ref lbOk, vfciCGAuxWiz.DatosResumenCuadre(vnCodigoCuadre, ref vnContaDebitoLoc, ref vnContaDebitoDol, ref vnContaCreditoLoc, ref vnContaCreditoDol, ref vnAuxDebitoLoc, ref vnAuxDebitoDol, ref vnAuxCreditoLoc, ref vnAuxCreditoDol, ref vnCGDebitoLoc, ref vnCGDebitoDol, ref vnCGCreditoLoc, ref vnCGCreditoDol, ref vnOtrosDebitoLoc, ref vnOtrosDebitoDol, ref vnOtrosCreditoLoc, ref vnOtrosCreditoDol, ref vnAuxNCDebitoLoc, ref vnAuxNCDebitoDol, ref vnAuxNCCreditoLoc, ref vnAuxNCCreditoDol, ref vnAuxFPDebitoLoc, ref vnAuxFPDebitoDol, ref vnAuxFPCreditoLoc, ref vnAuxFPCreditoDol));
            //
            //$Siguiente es Call$
            CambiarTipoMoneda();
            //
            //
            //
            Set(ref lbOk, lbOk && vfciCGAuxWiz.DatosBalanceCuentas(vnCodigoCuadre));
            //
            Set(ref lbOk, lbOk && tblBalanceCtas.LoadTable(REG_NINGUNO, string.Empty));
            //
            //
            //$Siguiente es Call$
            VisWaitCursor(false);
            //
            if (lbOk && SqlNet.bDebugging)
            {
                //
                //$Siguiente es Call$
                SPSMessageBox("cálculo de Cuadre Resumen y Balance de Ctas. Exitoso!", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Muestra el detalle de cuentas basado en el rubro seleccionado.  
        /// Aplica filtros según el componente seleccionado y calcula el balance de cuentas.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal VerDetalleCuentas()
        {
            SalString lsDebitosCreditos = new SalString();
            SalDecimal lnOpcion = new SalDecimal();
            SalBoolean lbOk = new SalBoolean();
            //
            Set(ref lbOk, true);
            Set(ref lnOpcion, REG_NINGUNO);
            Set(ref lsDebitosCreditos, string.Empty);
            //
            if (vsItemResumen)
            {
                //
                //Se pone el filtro según el componente seleccionado
                if (vsItemResumen == "dfResContaDebLoc")
                {
                    //
                    Set(ref lnOpcion, REG_CONTA);
                    Set(ref lsDebitosCreditos, DEBITO);
                    //
                }
                else
                {
                    if (vsItemResumen == "dfResContaCredLoc")
                    {
                        //
                        Set(ref lsDebitosCreditos, CREDITO);
                        Set(ref lnOpcion, REG_CONTA);
                        //
                    }
                    else
                    {
                        if (vsItemResumen == "dfResContaNeto")
                        {
                            //
                            Set(ref lsDebitosCreditos, AMBAS);
                            Set(ref lnOpcion, REG_CONTA);
                            //
                            //
                        }
                        else
                        {
                            if (vsItemResumen == "dfResAuxDebLoc")
                            {
                                //
                                Set(ref lsDebitosCreditos, DEBITO);
                                Set(ref lnOpcion, REG_AUX);
                                //
                            }
                            else
                            {
                                if (vsItemResumen == "dfResAuxCredLoc")
                                {
                                    //
                                    Set(ref lsDebitosCreditos, CREDITO);
                                    Set(ref lnOpcion, REG_AUX);
                                }
                                else
                                {
                                    if (vsItemResumen == "dfResAuxNeto")
                                    {
                                        //
                                        Set(ref lsDebitosCreditos, AMBAS);
                                        Set(ref lnOpcion, REG_AUX);
                                        //
                                    }
                                    else
                                    {
                                        if (vsItemResumen == "dfResDifDebLoc")
                                        {
                                            //
                                            Set(ref lbOk, false);
                                        }
                                        else
                                        {
                                            if (vsItemResumen == "dfResDifCredLoc")
                                            {
                                                //
                                                Set(ref lbOk, false);
                                            }
                                            else
                                            {
                                                if (vsItemResumen == "dfResDifNeto")
                                                {
                                                    //
                                                    Set(ref lbOk, false);
                                                    //
                                                }
                                                else
                                                {
                                                    if (vsItemResumen == "dfResCGDebLoc")
                                                    {
                                                        //
                                                        Set(ref lsDebitosCreditos, DEBITO);
                                                        Set(ref lnOpcion, REG_CG);
                                                    }
                                                    else
                                                    {
                                                        if (vsItemResumen == "dfResCGCredLoc")
                                                        {
                                                            //
                                                            //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                            Set(ref lsDebitosCreditos, CREDITO);
                                                            Set(ref lnOpcion, REG_CG);
                                                        }
                                                        else
                                                        {
                                                            if (vsItemResumen == "dfResCGNetoLoc")
                                                            {
                                                                //
                                                                //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                Set(ref lsDebitosCreditos, AMBAS);
                                                                Set(ref lnOpcion, REG_CG);
                                                                //
                                                            }
                                                            else
                                                            {
                                                                if (vsItemResumen == "dfResOtrosDebLoc")
                                                                {
                                                                    //
                                                                    //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                    Set(ref lsDebitosCreditos, DEBITO);
                                                                    Set(ref lnOpcion, REG_OTROS);
                                                                }
                                                                else
                                                                {
                                                                    if (vsItemResumen == "dfResOtrosCredLoc")
                                                                    {
                                                                        //
                                                                        //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                        Set(ref lsDebitosCreditos, CREDITO);
                                                                        Set(ref lnOpcion, REG_OTROS);
                                                                    }
                                                                    else
                                                                    {
                                                                        if (vsItemResumen == "dfResOtrosNetoLoc")
                                                                        {
                                                                            //
                                                                            //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                            Set(ref lsDebitosCreditos, AMBAS);
                                                                            Set(ref lnOpcion, REG_OTROS);
                                                                            //
                                                                        }
                                                                        else
                                                                        {
                                                                            if (vsItemResumen == "dfResTotCGDebLoc")
                                                                            {
                                                                                //
                                                                                Set(ref lbOk, false);
                                                                            }
                                                                            else
                                                                            {
                                                                                if (vsItemResumen == "dfResTotCGCredLoc")
                                                                                {
                                                                                    //
                                                                                    Set(ref lbOk, false);
                                                                                }
                                                                                else
                                                                                {
                                                                                    if (vsItemResumen == "dfResTotCGNetoLoc")
                                                                                    {
                                                                                        //
                                                                                        Set(ref lbOk, false);
                                                                                        //
                                                                                        //!!!! ESTOS MOVIMIENTOS NO TIENEN DETALLE DE CUENTAS
                                                                                        //Movimientos No Contabilizados o Fuera de Período
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if (vsItemResumen == "dfResAuxNCDebLoc")
                                                                                        {
                                                                                            //
                                                                                            Set(ref lbOk, false);
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if (vsItemResumen == "dfResAuxNCCredLoc")
                                                                                            {
                                                                                                //
                                                                                                Set(ref lbOk, false);
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if (vsItemResumen == "dfResAuxNCNetoLoc")
                                                                                                {
                                                                                                    //
                                                                                                    Set(ref lbOk, false);
                                                                                                    //
                                                                                                    //
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if (vsItemResumen == "dfResAuxFPDebLoc")
                                                                                                    {
                                                                                                        //
                                                                                                        Set(ref lbOk, false);
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if (vsItemResumen == "dfResAuxFPCredLoc")
                                                                                                        {
                                                                                                            //
                                                                                                            Set(ref lbOk, false);
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if (vsItemResumen == "dfResAuxFPNetoLoc")
                                                                                                            {
                                                                                                                //
                                                                                                                Set(ref lbOk, false);
                                                                                                                //
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if (vsItemResumen == "dfResAuxTotalDebLoc")
                                                                                                                {
                                                                                                                    //
                                                                                                                    Set(ref lbOk, false);
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if (vsItemResumen == "dfResAuxTotalCredLoc")
                                                                                                                    {
                                                                                                                        //
                                                                                                                        Set(ref lbOk, false);
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if (vsItemResumen == "dfResAuxTotalNetoLoc")
                                                                                                                        {
                                                                                                                            //
                                                                                                                            Set(ref lbOk, false);
                                                                                                                            //
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            //
                                                                                                                            //$Siguiente es Call$
                                                                                                                            SPSMessageBox("Error - No se pudo obtener el detalle de cuentas del rubro seleccionado.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                                                                                                                            Set(ref lbOk, false);
                                                                                                                            //
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                Set(ref vsItemResumen, string.Empty);
                //
                if (!(lnOpcion == REG_NINGUNO))
                {
                    //
                    //$Siguiente es Call$
                    CalcularBalanceCuentas(lnOpcion, lsDebitosCreditos);
                    //
                }
            }
            else
            {
                //Hay un error no se recibió el componente que solicita el detalle de movimientos
                //$Siguiente es Call$
                SPSMessageBox("Error - No se pudo obtener el detalle de cuentas del rubro seleccionado.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                Set(ref lbOk, false);
                //
            }
            if (lbOk)
            {
                Set(ref vnPrevTab, 3);
            }
            else
            {
                Set(ref vnPrevTab, 4);
                //
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Obtiene el detalle de movimientos del rubro seleccionado en el resumen.  
        /// Limpia los filtros de las tablas Cuadre Conta y Cuadre Aux, y aplica el filtro correspondiente según el rubro seleccionado.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal VerDetalleResumen()
        {
            SalBoolean lbOk = new SalBoolean();
            //
            Set(ref lbOk, true);
            //
            //
            if (vsItemResumen)
            {
                //Se limpian los filtros de las tabla Cuadre Conta y Cuadre Aux
                //$Siguiente es Call$
                LimpiarFiltros();
                //
                //Se pasa al TAB del Paso 4 - Detalle de Movimientos para Análisis
                //$Siguiente es Call$
                //picTabs.BringToTop(nTABPaso4, true);
                Set(ref this.nCurrentTab, nTABPaso4);
                //
                //Se pone el filtro según el componente seleccionado
                if (vsItemResumen == "dfResContaDebLoc")
                {
                    //
                    //Se setea el FILTRO de acuerdo con el campo seleccionado
                    Set(ref tblCuadreConta.isDebitosCreditos, DEBITO);
                    Set(ref tblCuadreConta.isMovimientos, CG_ASOCIADOS);
                    //
                    //Se popula la tabla de Contabilidad
                    if (lbOk)
                    {
                        Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                    }
                }
                else
                {
                    if (vsItemResumen == "dfResContaCredLoc")
                    {
                        //
                        //Se setea el FILTRO de acuerdo con el campo seleccionado
                        Set(ref tblCuadreConta.isDebitosCreditos, CREDITO);
                        Set(ref tblCuadreConta.isMovimientos, CG_ASOCIADOS);
                        //
                        //Se popula la tabla de Contabilidad
                        if (lbOk)
                        {
                            Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                        }
                    }
                    else
                    {
                        if (vsItemResumen == "dfResContaNeto")
                        {
                            //Se setea el FILTRO de acuerdo con el campo seleccionado
                            Set(ref tblCuadreConta.isDebitosCreditos, AMBAS);
                            Set(ref tblCuadreConta.isMovimientos, CG_ASOCIADOS);
                            //
                            //Se popula la tabla de Contabilidad
                            if (lbOk)
                            {
                                Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                //
                            }
                            //
                        }
                        else
                        {
                            if (vsItemResumen == "dfResAuxDebLoc")
                            {
                                //
                                Set(ref tblCuadreAux.isDebitosCreditos, DEBITO);
                                Set(ref tblCuadreAux.isMovimientos, CG_ASOCIADOS);
                                //
                                //Se popula la tabla de Auxiliar
                                if (lbOk)
                                {
                                    Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                }
                            }
                            else
                            {
                                if (vsItemResumen == "dfResAuxCredLoc")
                                {
                                    //
                                    Set(ref tblCuadreAux.isDebitosCreditos, CREDITO);
                                    Set(ref tblCuadreAux.isMovimientos, CG_ASOCIADOS);
                                    //
                                    //Se popula la tabla de Auxiliar
                                    if (lbOk)
                                    {
                                        Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                    }
                                }
                                else
                                {
                                    if (vsItemResumen == "dfResAuxNeto")
                                    {
                                        //
                                        Set(ref tblCuadreAux.isDebitosCreditos, AMBAS);
                                        Set(ref tblCuadreAux.isMovimientos, CG_ASOCIADOS);
                                        //
                                        //Se popula la tabla de Auxiliar
                                        if (lbOk)
                                        {
                                            Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                        }
                                        //
                                    }
                                    else
                                    {
                                        if (vsItemResumen == "dfResDifDebLoc")
                                        {
                                            //
                                            Set(ref tblCuadreConta.isDebitosCreditos, DEBITO);
                                            Set(ref tblCuadreConta.isMovimientos, CG_ASOCIADOS);
                                            Set(ref tblCuadreAux.isDebitosCreditos, DEBITO);
                                            Set(ref tblCuadreAux.isMovimientos, CG_ASOCIADOS);
                                            //
                                            //Se popula la tabla de Auxiliar y Conta
                                            if (lbOk)
                                            {
                                                Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                            }
                                        }
                                        else
                                        {
                                            if (vsItemResumen == "dfResDifCredLoc")
                                            {
                                                //
                                                Set(ref tblCuadreConta.isDebitosCreditos, CREDITO);
                                                Set(ref tblCuadreConta.isMovimientos, CG_ASOCIADOS);
                                                Set(ref tblCuadreAux.isDebitosCreditos, CREDITO);
                                                Set(ref tblCuadreAux.isMovimientos, CG_ASOCIADOS);
                                                //
                                                //Se popula la tabla de Auxiliar y Conta
                                                if (lbOk)
                                                {
                                                    Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                    Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                                }
                                            }
                                            else
                                            {
                                                if (vsItemResumen == "dfResDifNeto")
                                                {
                                                    //
                                                    Set(ref tblCuadreConta.isDebitosCreditos, AMBAS);
                                                    Set(ref tblCuadreConta.isMovimientos, CG_ASOCIADOS);
                                                    Set(ref tblCuadreAux.isDebitosCreditos, AMBAS);
                                                    Set(ref tblCuadreAux.isMovimientos, CG_ASOCIADOS);
                                                    //
                                                    //Se popula la tabla de Auxiliar y Conta
                                                    if (lbOk)
                                                    {
                                                        Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                        Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                                    }
                                                    //
                                                }
                                                else
                                                {
                                                    if (vsItemResumen == "dfResCGDebLoc")
                                                    {
                                                        //
                                                        //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                        Set(ref tblCuadreConta.isDebitosCreditos, DEBITO);
                                                        Set(ref tblCuadreConta.isMovimientos, CG_NO_ASOCIADOS);
                                                        Set(ref tblCuadreConta.isOrigen, "'CG'");
                                                        //
                                                        //Se popula la tabla de Contabilidad
                                                        if (lbOk)
                                                        {
                                                            Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                                        }
                                                    }
                                                    else
                                                    {
                                                        if (vsItemResumen == "dfResCGCredLoc")
                                                        {
                                                            //
                                                            //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                            Set(ref tblCuadreConta.isDebitosCreditos, CREDITO);
                                                            Set(ref tblCuadreConta.isMovimientos, CG_NO_ASOCIADOS);
                                                            Set(ref tblCuadreConta.isOrigen, "'CG'");
                                                            //
                                                            //Se popula la tabla de Contabilidad
                                                            if (lbOk)
                                                            {
                                                                Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                                            }
                                                        }
                                                        else
                                                        {
                                                            if (vsItemResumen == "dfResCGNetoLoc")
                                                            {
                                                                //
                                                                //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                Set(ref tblCuadreConta.isDebitosCreditos, AMBAS);
                                                                Set(ref tblCuadreConta.isMovimientos, CG_NO_ASOCIADOS);
                                                                Set(ref tblCuadreConta.isOrigen, "'CG'");
                                                                //
                                                                //Se popula la tabla de Contabilidad
                                                                if (lbOk)
                                                                {
                                                                    Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                                                }
                                                                //
                                                            }
                                                            else
                                                            {
                                                                if (vsItemResumen == "dfResOtrosDebLoc")
                                                                {
                                                                    //
                                                                    //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                    Set(ref tblCuadreConta.isDebitosCreditos, DEBITO);
                                                                    Set(ref tblCuadreConta.isMovimientos, CG_NO_ASOCIADOS);
                                                                    Set(ref tblCuadreConta.isNOTOrigen, "'CG'");
                                                                    //
                                                                    //Se popula la tabla de Contabilidad
                                                                    if (lbOk)
                                                                    {
                                                                        Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    if (vsItemResumen == "dfResOtrosCredLoc")
                                                                    {
                                                                        //
                                                                        //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                        Set(ref tblCuadreConta.isDebitosCreditos, CREDITO);
                                                                        Set(ref tblCuadreConta.isMovimientos, CG_NO_ASOCIADOS);
                                                                        Set(ref tblCuadreConta.isNOTOrigen, "'CG'");
                                                                        //
                                                                        //
                                                                        //
                                                                        //
                                                                        //Se popula la tabla de Contabilidad
                                                                        if (lbOk)
                                                                        {
                                                                            Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        if (vsItemResumen == "dfResOtrosNetoLoc")
                                                                        {
                                                                            //
                                                                            //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                            Set(ref tblCuadreConta.isDebitosCreditos, AMBAS);
                                                                            Set(ref tblCuadreConta.isMovimientos, CG_NO_ASOCIADOS);
                                                                            Set(ref tblCuadreConta.isNOTOrigen, "'CG'");
                                                                            //
                                                                            //Se popula la tabla de Contabilidad
                                                                            if (lbOk)
                                                                            {
                                                                                Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                                                            }
                                                                            //
                                                                        }
                                                                        else
                                                                        {
                                                                            if (vsItemResumen == "dfResTotCGDebLoc")
                                                                            {
                                                                                //
                                                                                //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                Set(ref tblCuadreConta.isDebitosCreditos, DEBITO);
                                                                                Set(ref tblCuadreConta.isMovimientos, CG_NO_ASOCIADOS);
                                                                                //
                                                                                //Se popula la tabla de Contabilidad
                                                                                if (lbOk)
                                                                                {
                                                                                    Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                if (vsItemResumen == "dfResTotCGCredLoc")
                                                                                {
                                                                                    //
                                                                                    //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                    Set(ref tblCuadreConta.isDebitosCreditos, CREDITO);
                                                                                    Set(ref tblCuadreConta.isMovimientos, CG_NO_ASOCIADOS);
                                                                                    //
                                                                                    //Se popula la tabla de Contabilidad
                                                                                    if (lbOk)
                                                                                    {
                                                                                        Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    if (vsItemResumen == "dfResTotCGNetoLoc")
                                                                                    {
                                                                                        //
                                                                                        //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                        Set(ref tblCuadreConta.isDebitosCreditos, AMBAS);
                                                                                        Set(ref tblCuadreConta.isMovimientos, CG_NO_ASOCIADOS);
                                                                                        //
                                                                                        //Se popula la tabla de Contabilidad
                                                                                        if (lbOk)
                                                                                        {
                                                                                            Set(ref lbOk, this.tblCuadreConta.LimiteSeleccion(this.tblCuadreConta.CreateWHERE()));
                                                                                        }
                                                                                        //
                                                                                        //Movimientos No Contabilizados o Fuera de Período
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        if (vsItemResumen == "dfResAuxNCDebLoc")
                                                                                        {
                                                                                            //
                                                                                            //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                            Set(ref tblCuadreAux.isDebitosCreditos, DEBITO);
                                                                                            Set(ref tblCuadreAux.isMovimientos, CG_NO_ASOCIADOS);
                                                                                            Set(ref tblCuadreAux.isNoAsociados, AUX_NO_CONTABILIZADO);
                                                                                            //
                                                                                            //Se popula la tabla de Auxiliar
                                                                                            if (lbOk)
                                                                                            {
                                                                                                Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if (vsItemResumen == "dfResAuxNCCredLoc")
                                                                                            {
                                                                                                //
                                                                                                //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                                Set(ref tblCuadreAux.isDebitosCreditos, CREDITO);
                                                                                                Set(ref tblCuadreAux.isMovimientos, CG_NO_ASOCIADOS);
                                                                                                Set(ref tblCuadreAux.isNoAsociados, AUX_NO_CONTABILIZADO);
                                                                                                //
                                                                                                //Se popula la tabla de Auxiliar
                                                                                                if (lbOk)
                                                                                                {
                                                                                                    Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                                                                }
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                if (vsItemResumen == "dfResAuxNCNetoLoc")
                                                                                                {
                                                                                                    //
                                                                                                    //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                                    Set(ref tblCuadreAux.isDebitosCreditos, AMBAS);
                                                                                                    Set(ref tblCuadreAux.isMovimientos, CG_NO_ASOCIADOS);
                                                                                                    Set(ref tblCuadreAux.isNoAsociados, AUX_NO_CONTABILIZADO);
                                                                                                    //
                                                                                                    //Se popula la tabla de Auxiliar
                                                                                                    if (lbOk)
                                                                                                    {
                                                                                                        Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                                                                    }
                                                                                                    //
                                                                                                    //
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    if (vsItemResumen == "dfResAuxFPDebLoc")
                                                                                                    {
                                                                                                        //
                                                                                                        //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                                        Set(ref tblCuadreAux.isDebitosCreditos, DEBITO);
                                                                                                        Set(ref tblCuadreAux.isMovimientos, CG_NO_ASOCIADOS);
                                                                                                        Set(ref tblCuadreAux.isNoAsociados, AUX_CONTABILIZADO);
                                                                                                        //
                                                                                                        //Se popula la tabla de Auxiliar
                                                                                                        if (lbOk)
                                                                                                        {
                                                                                                            Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                                                                        }
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        if (vsItemResumen == "dfResAuxFPCredLoc")
                                                                                                        {
                                                                                                            //
                                                                                                            //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                                            Set(ref tblCuadreAux.isDebitosCreditos, CREDITO);
                                                                                                            Set(ref tblCuadreAux.isMovimientos, CG_NO_ASOCIADOS);
                                                                                                            Set(ref tblCuadreAux.isNoAsociados, AUX_CONTABILIZADO);
                                                                                                            //
                                                                                                            //Se popula la tabla de Auxiliar
                                                                                                            if (lbOk)
                                                                                                            {
                                                                                                                Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                                                                            }
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            if (vsItemResumen == "dfResAuxFPNetoLoc")
                                                                                                            {
                                                                                                                //
                                                                                                                //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                                                Set(ref tblCuadreAux.isDebitosCreditos, AMBAS);
                                                                                                                Set(ref tblCuadreAux.isMovimientos, CG_NO_ASOCIADOS);
                                                                                                                Set(ref tblCuadreAux.isNoAsociados, AUX_CONTABILIZADO);
                                                                                                                //
                                                                                                                //Se popula la tabla de Auxiliar
                                                                                                                if (lbOk)
                                                                                                                {
                                                                                                                    Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                                                                                }
                                                                                                                //
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                if (vsItemResumen == "dfResAuxTotalDebLoc")
                                                                                                                {
                                                                                                                    //
                                                                                                                    //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                                                    Set(ref tblCuadreAux.isDebitosCreditos, DEBITO);
                                                                                                                    Set(ref tblCuadreAux.isMovimientos, CG_NO_ASOCIADOS);
                                                                                                                    //
                                                                                                                    //Se popula la tabla de Auxiliar
                                                                                                                    if (lbOk)
                                                                                                                    {
                                                                                                                        Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                                                                                    }
                                                                                                                }
                                                                                                                else
                                                                                                                {
                                                                                                                    if (vsItemResumen == "dfResAuxTotalCredLoc")
                                                                                                                    {
                                                                                                                        //
                                                                                                                        //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                                                        Set(ref tblCuadreAux.isDebitosCreditos, CREDITO);
                                                                                                                        Set(ref tblCuadreAux.isMovimientos, CG_NO_ASOCIADOS);
                                                                                                                        //
                                                                                                                        //Se popula la tabla de Auxiliar
                                                                                                                        if (lbOk)
                                                                                                                        {
                                                                                                                            Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                                                                                        }
                                                                                                                    }
                                                                                                                    else
                                                                                                                    {
                                                                                                                        if (vsItemResumen == "dfResAuxTotalNetoLoc")
                                                                                                                        {
                                                                                                                            //
                                                                                                                            //Se setea el FILTRO de acuerdo con el campo seleccionado
                                                                                                                            Set(ref tblCuadreAux.isDebitosCreditos, AMBAS);
                                                                                                                            Set(ref tblCuadreAux.isMovimientos, CG_NO_ASOCIADOS);
                                                                                                                            //
                                                                                                                            //Se popula la tabla de Auxiliar
                                                                                                                            if (lbOk)
                                                                                                                            {
                                                                                                                                Set(ref lbOk, this.tblCuadreAux.LimiteSeleccion(this.tblCuadreAux.CreateWHERE()));
                                                                                                                            }
                                                                                                                            //
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                            //
                                                                                                                            //$Siguiente es Call$
                                                                                                                            SPSMessageBox("Error - No se pudo obtener el detalle de movimientos del rubro seleccionado.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                                                                                                                            Set(ref lbOk, false);
                                                                                                                            //
                                                                                                                            //
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                Set(ref vsItemResumen, string.Empty);
            }
            else
            {
                //Hay un error no se recibió el componente que solicita el detalle de movimientos
                //$Siguiente es Call$
                SPSMessageBox("Error - No se pudo obtener el detalle de movimientos del rubro seleccionado.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                Set(ref lbOk, false);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Cambia el tipo de moneda entre moneda local y dólar, actualizando los valores y ocultando las columnas correspondientes.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal CambiarTipoMoneda()
        {
            //If nMonedaLocal ! Cambiar a moneda Dólar
            //Esconder las columnas de moneda local
            //Call SalHideWindow( tblDetalleDeSaldos.colSaldoInicialFL )
            //Call SalHideWindow( tblDetalleDeSaldos.colCreditosFL )
            //Call SalHideWindow( tblDetalleDeSaldos.colDebitosFL )
            //Call SalHideWindow( tblDetalleDeSaldos.colSaldoFinalFL )
            //Call SalHideWindow( tblDetalleDeSaldos.colSaldoInicialCL )
            //Call SalHideWindow( tblDetalleDeSaldos.colCreditosCL )
            //Call SalHideWindow( tblDetalleDeSaldos.colDebitosCL )
            //Call SalHideWindow( tblDetalleDeSaldos.colSaldoFinalCL )
            //If nContaFiscal
            //
            //Else
            //
            //Else ! Cambiar a moneda local
            //Esconder columnas de moneda Dólar
            //Call SalHideWindow( tblDetalleDeSaldos.colSaldoInicialFD )
            //Call SalHideWindow( tblDetalleDeSaldos.colCreditosFD )
            //Call SalHideWindow( tblDetalleDeSaldos.colDebitosFD )
            //Call SalHideWindow( tblDetalleDeSaldos.colSaldoFinalFD )
            //Call SalHideWindow( tblDetalleDeSaldos.colSaldoInicialCD )
            //Call SalHideWindow( tblDetalleDeSaldos.colCreditosCD )
            //Call SalHideWindow( tblDetalleDeSaldos.colDebitosCD )
            //Call SalHideWindow( tblDetalleDeSaldos.colSaldoFinalCD )
            //If nContaFiscal
            //
            //Else
            //
            //Set nMonedaLocal = NOT nMonedaLocal
            //Call CambiarFmts()
            //Call DesplegarSaldosTotales()
            //
            //
            //
            if (obMonedaLoc.ValorBooleano)
            {
                //
                //Set dfResContaDebLoc.sSimboloMoneda = fciGlobalesAS.sSimboloMonFunc
                //
                Set(ref dfResContaDebLoc.ValorNumero, vnContaDebitoLoc);
                Set(ref dfResContaCredLoc.ValorNumero, vnContaCreditoLoc);
                Set(ref dfResContaNeto.ValorNumero, vnContaDebitoLoc - vnContaCreditoLoc);
                //
                Set(ref dfResAuxDebLoc.ValorNumero, vnAuxDebitoLoc);
                Set(ref dfResAuxCredLoc.ValorNumero, vnAuxCreditoLoc);
                Set(ref dfResAuxNeto.ValorNumero, vnAuxDebitoLoc - vnAuxCreditoLoc);
                //
                Set(ref dfResDifDebLoc.ValorNumero, vnContaDebitoLoc - vnAuxDebitoLoc);
                Set(ref dfResDifCredLoc.ValorNumero, vnContaCreditoLoc - vnAuxCreditoLoc);
                Set(ref dfResDifNeto.ValorNumero, (vnContaDebitoLoc - vnAuxDebitoLoc) - (vnContaCreditoLoc - vnAuxCreditoLoc));
                //
                //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
                //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1 CG !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                //
                //Movimientos Registrados directamente en CG
                Set(ref dfResCGDebLoc.ValorNumero, vnCGDebitoLoc);
                Set(ref dfResCGCredLoc.ValorNumero, vnCGCreditoLoc);
                Set(ref dfResCGNetoLoc.ValorNumero, vnCGDebitoLoc - vnCGCreditoLoc);
                //
                //Movimientos Registrados en otros módulos
                Set(ref dfResOtrosDebLoc.ValorNumero, vnOtrosDebitoLoc);
                Set(ref dfResOtrosCredLoc.ValorNumero, vnOtrosCreditoLoc);
                Set(ref dfResOtrosNetoLoc.ValorNumero, vnOtrosDebitoLoc - vnOtrosCreditoLoc);
                //
                Set(ref dfResTotCGDebLoc.ValorNumero, vnCGDebitoLoc + vnOtrosDebitoLoc);
                Set(ref dfResTotCGCredLoc.ValorNumero, vnCGCreditoLoc + vnOtrosCreditoLoc);
                Set(ref dfResTotCGNetoLoc.ValorNumero, (vnCGDebitoLoc - vnCGCreditoLoc) + (vnOtrosDebitoLoc - vnOtrosCreditoLoc));
                //
                //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! AUXILIAR !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                //
                //Movimientos del auxiliar no contabilizados
                Set(ref dfResAuxNCDebLoc.ValorNumero, vnAuxNCDebitoLoc);
                Set(ref dfResAuxNCCredLoc.ValorNumero, vnAuxNCCreditoLoc);
                Set(ref dfResAuxNCNetoLoc.ValorNumero, vnAuxNCDebitoLoc - vnAuxNCCreditoLoc);
                //
                //Movimientos del auxiliar fuera de Período
                Set(ref dfResAuxFPDebLoc.ValorNumero, vnAuxFPDebitoLoc);
                Set(ref dfResAuxFPCredLoc.ValorNumero, vnAuxFPCreditoLoc);
                Set(ref dfResAuxFPNetoLoc.ValorNumero, vnAuxFPDebitoLoc - vnAuxFPCreditoLoc);
                //
                Set(ref dfResAuxTotalDebLoc.ValorNumero, vnAuxNCDebitoLoc + vnAuxFPDebitoLoc);
                Set(ref dfResAuxTotalCredLoc.ValorNumero, vnAuxNCCreditoLoc + vnAuxFPCreditoLoc);
                Set(ref dfResAuxTotalNetoLoc.ValorNumero, (vnAuxNCDebitoLoc + vnAuxFPDebitoLoc) - (vnAuxNCCreditoLoc + vnAuxFPCreditoLoc));
                //
            }
            else
            {
                if (obMonedaDol.ValorBooleano)
                {
                    //
                    //Set dfResContaDebLoc.sSimboloMoneda = fciGlobalesAS.sSimboloMonRep
                    //
                    Set(ref dfResContaDebLoc.ValorNumero, vnContaDebitoDol);
                    Set(ref dfResContaCredLoc.ValorNumero, vnContaCreditoDol);
                    Set(ref dfResContaNeto.ValorNumero, vnContaDebitoDol - vnContaCreditoDol);
                    //
                    Set(ref dfResAuxDebLoc.ValorNumero, vnAuxDebitoDol);
                    Set(ref dfResAuxCredLoc.ValorNumero, vnAuxCreditoDol);
                    Set(ref dfResAuxNeto.ValorNumero, vnAuxDebitoDol - vnAuxCreditoDol);
                    //
                    Set(ref dfResDifDebLoc.ValorNumero, vnContaDebitoDol - vnAuxDebitoDol);
                    Set(ref dfResDifCredLoc.ValorNumero, vnContaCreditoDol - vnAuxCreditoDol);
                    Set(ref dfResDifNeto.ValorNumero, (vnContaDebitoDol - vnAuxDebitoDol) - (vnContaCreditoDol - vnAuxCreditoDol));
                    //
                    //Movimientos Registrados directamente en CG
                    Set(ref dfResCGDebLoc.ValorNumero, vnCGDebitoDol);
                    Set(ref dfResCGCredLoc.ValorNumero, vnCGCreditoDol);
                    Set(ref dfResCGNetoLoc.ValorNumero, vnCGDebitoDol - vnCGCreditoDol);
                    //
                    //Movimientos Registrados en otros módulos
                    Set(ref dfResOtrosDebLoc.ValorNumero, vnOtrosDebitoDol);
                    Set(ref dfResOtrosCredLoc.ValorNumero, vnOtrosCreditoDol);
                    Set(ref dfResOtrosNetoLoc.ValorNumero, vnOtrosDebitoDol - vnOtrosCreditoDol);
                    //
                    Set(ref dfResTotCGDebLoc.ValorNumero, vnCGDebitoDol + vnOtrosDebitoDol);
                    Set(ref dfResTotCGCredLoc.ValorNumero, vnCGCreditoDol + vnOtrosCreditoDol);
                    Set(ref dfResTotCGNetoLoc.ValorNumero, (vnCGDebitoDol - vnCGCreditoDol) + (vnOtrosDebitoDol - vnOtrosCreditoDol));
                    //
                    //Movimientos del auxiliar no contabilizados
                    Set(ref dfResAuxNCDebLoc.ValorNumero, vnAuxNCDebitoDol);
                    Set(ref dfResAuxNCCredLoc.ValorNumero, vnAuxNCCreditoDol);
                    Set(ref dfResAuxNCNetoLoc.ValorNumero, vnAuxNCDebitoDol - vnAuxNCCreditoDol);
                    //
                    //Movimientos del auxiliar fuera de Período
                    Set(ref dfResAuxFPDebLoc.ValorNumero, vnAuxFPDebitoDol);
                    Set(ref dfResAuxFPCredLoc.ValorNumero, vnAuxFPCreditoDol);
                    Set(ref dfResAuxFPNetoLoc.ValorNumero, vnAuxFPDebitoDol - vnAuxFPCreditoDol);
                    //
                    Set(ref dfResAuxTotalDebLoc.ValorNumero, vnAuxNCDebitoDol + vnAuxFPDebitoDol);
                    Set(ref dfResAuxTotalCredLoc.ValorNumero, vnAuxNCCreditoDol + vnAuxFPCreditoDol);
                    Set(ref dfResAuxTotalNetoLoc.ValorNumero, (vnAuxNCDebitoDol + vnAuxFPDebitoDol) - (vnAuxNCCreditoDol + vnAuxFPCreditoDol));
                    //
                }
                else
                {
                    if (obMonedaDol.ValorBooleano)
                    {
                        //
                        //Set dfResContaDebLoc.sSimboloMoneda = ''
                        //
                        Set(ref dfResContaDebLoc.ValorNumero, 0);
                        Set(ref dfResContaCredLoc.ValorNumero, 0);
                        Set(ref dfResContaNeto.ValorNumero, 0);
                        //
                        Set(ref dfResAuxDebLoc.ValorNumero, 0);
                        Set(ref dfResAuxCredLoc.ValorNumero, 0);
                        Set(ref dfResAuxNeto.ValorNumero, 0);
                        //
                        Set(ref dfResDifDebLoc.ValorNumero, 0);
                        Set(ref dfResDifCredLoc.ValorNumero, 0);
                        Set(ref dfResDifNeto.ValorNumero, 0);
                        //
                        //Movimientos Registrados directamente en CG
                        Set(ref dfResCGDebLoc.ValorNumero, 0);
                        Set(ref dfResCGCredLoc.ValorNumero, 0);
                        Set(ref dfResCGNetoLoc.ValorNumero, 0);
                        //
                        //Movimientos Registrados en otros módulos
                        Set(ref dfResOtrosDebLoc.ValorNumero, 0);
                        Set(ref dfResOtrosCredLoc.ValorNumero, 0);
                        Set(ref dfResOtrosNetoLoc.ValorNumero, 0);
                        //
                        //Movimientos del auxiliar no contabilizados
                        Set(ref dfResAuxNCDebLoc.ValorNumero, 0);
                        Set(ref dfResAuxNCCredLoc.ValorNumero, 0);
                        Set(ref dfResAuxNCNetoLoc.ValorNumero, 0);
                        //
                        //Movimientos del auxiliar fuera de Período
                        Set(ref dfResAuxFPDebLoc.ValorNumero, 0);
                        Set(ref dfResAuxFPCredLoc.ValorNumero, 0);
                        Set(ref dfResAuxFPNetoLoc.ValorNumero, 0);
                        //
                        Set(ref dfResTotCGDebLoc.ValorNumero, 0);
                        Set(ref dfResTotCGCredLoc.ValorNumero, 0);
                        Set(ref dfResTotCGNetoLoc.ValorNumero, 0);
                        //
                        Set(ref dfResAuxTotalDebLoc.ValorNumero, 0);
                        Set(ref dfResAuxTotalCredLoc.ValorNumero, 0);
                        Set(ref dfResAuxTotalNetoLoc.ValorNumero, 0);
                        //
                        //
                        //Se inicializa el despliegue de los símbolos de monedas
                        //Call dfResContaDebLoc.IniDespliegue()
                    }
                }
            }

            ComunicarMensajeAlUsuario("VisibleDialogo", "VisibleDialogo", TipoMensajeUsuario.VisibleDialogo);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Limpia los filtros aplicados en las tablas Cuadre Conta y Cuadre Aux, y las reinicia.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal LimpiarFiltros()
        {
            //
            //$Siguiente es Call$
            tblCuadreConta.ClearFiltro();
            //$Siguiente es Call$
            tblCuadreConta.LimpiarTabla();
            //
            //$Siguiente es Call$
            tblCuadreAux.ClearFiltro();
            //$Siguiente es Call$
            tblCuadreAux.LimpiarTabla();
            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea un nuevo cuadre entre contabilidad general (CG) y auxiliares.  
        /// Inicializa las variables necesarias y configura el asistente para comenzar el proceso de cuadre.  
        /// </summary>  
        /// <returns>Devuelve true si el proceso se realiza correctamente, false en caso contrario.</returns>  
        public bool NewCuadres()
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //If bDebugging
            //
            //Call SPSMessageBox( 'Se ha seleccionado hacer un cuadre nuevo.', 'Wizard de Cuadre entre CG y Auxiliares', MBF_IconExclamation, CONTINUAR )
            //
            //Se llama a hacer un nuevo cuadre
            Set(ref lbOk, lbOk && vfciCGAuxWiz.ClearInstanceCuadre());
            //Set lbOk = lbOk AND vfciCGAuxWiz.AddModCuadre(TRUE)
            //
            //
            //Se sigue por el wizard como normalmente...
            Set(ref vbCuadreNuevo, true);
            //Set vnCodigoCuadre = vfciCGAuxWiz.inCuadre
            //
            //
            //Call picTabs.BringToTop( nTABPaso1, TRUE )
            //Set this.nCurrentTab = nTABPaso1
            //$Siguiente es Call$
            SalDisableWindow(pbAnterior);
            //
            return lbOk;
        }
        /// <summary>  
        /// Elimina un cuadre existente entre contabilidad general (CG) y auxiliares.  
        /// Verifica que se haya seleccionado un cuadre, solicita confirmación al usuario y realiza la eliminación.  
        /// </summary>  
        /// <returns>Devuelve true si el proceso se realiza correctamente, false en caso contrario.</returns>  
        public bool DelCuadres()
        {
            SalBoolean lbBorrar = new SalBoolean();
            SalBoolean lbOk = new SalBoolean();
            //If bDebugging
            //
            //Call SPSMessageBox( 'Se ha seleccionado borrar un cuadre existente', 'Wizard de Cuadre entre CG y Auxiliares', MBF_IconExclamation, CONTINUAR )
            Set(ref lbOk, true);
            //
            //Verifica que se haya seleccionado una l'inea en la tabla
            if (lbOk)
            {
                //
                Set(ref lbOk, SalTblAnyRows(tblCuadresCG, ROW_Flags.ROW_Selected, 0));
                //
                if (!lbOk)
                {
                    //
                    //$Siguiente es Call$
                    SPSMessageBox("No hay líneas marcadas para eliminar, por favor seleccione un cuadre a eliminar.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                    return lbOk;
                }
                //
                //Se Pregunta al usuario si realmente desea borrar el cuadre
            }
            if (lbOk)
            {
                //
                switch (SPSMessageBox("¿ está seguro que desea borrar el cuadre # " + Sal.NumberToStrX(tblCuadresCG.colNumCuadre.ValorNumero, 0) + " ?", "Advertencia", MBF_IconQuestion, "Sí,No"))
                {
                    case MB_Button1:
                        {
                            Set(ref lbBorrar, true);
                            break;
                        }
                    case MB_Button2:
                        {
                            Set(ref lbBorrar, false);
                            break;
                        }
                }
                //
            }
            //$Siguiente es Call$
            //SalWaitCursor(true);
            //
            //Se llama a la funcion que borra el cuadre
            if (lbOk)
            {
                //
                if (lbBorrar)
                {
                    //
                    Set(ref lbOk, vfciCGAuxWiz.DeleteCuadre(tblCuadresCG.colNumCuadre.colValorNumero));
                }
                //
                //
                //Se repopula la tabla de CuadresCG
            }
            if (lbOk)
            {
                //
                Set(ref lbOk, tblCuadresCG.PopulateTable(true, true));
                //
                //
            }
            //$Siguiente es Call$
            //SalWaitCursor(false);
            //
            //Se muestra mensaje de error si hubo algún problema
            if (!lbOk)
            {
                //$Siguiente es Call$
                SPSMessageBox("Hubo problemas borrando el cuadre seleccionado", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Abre un cuadre existente entre contabilidad general (CG) y auxiliares.  
        /// Carga los datos del cuadre seleccionado y configura el asistente para continuar el proceso.  
        /// </summary>  
        /// <returns>Devuelve true si el proceso se realiza correctamente, false en caso contrario.</returns>  
        public bool OpenCuadres()
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //
            if (SqlNet.bDebugging)
            {
                //
                //$Siguiente es Call$
                SPSMessageBox("Se ha seleccionado abrir un cuadre existente", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                //
                //Verifica que se haya seleccionado una l'inea en la tabla
            }
            if (lbOk)
            {
                //
                Set(ref lbOk, SalTblAnyRows(tblCuadresCG, ROW_Flags.ROW_Selected, 0));
                //
                if (!lbOk)
                {
                    //
                    //$Siguiente es Call$
                    SPSMessageBox("No se ha seleccionado ningún cuadre para abrir, por favor seleccione un cuadre.", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                    return lbOk;
                }
                //
                //
                //Se realiza la carga del cuadre
            }
            Set(ref lbOk, vfciCGAuxWiz.ReadCuadre(tblCuadresCG.colNumCuadre.colValorNumero));
            //
            //Se inicializan las variables
            if (vfciCGAuxWiz.isCuentas == "'ND'")
            {
                Set(ref vfciCGAuxWiz.isCuentas, string.Empty);
            }
            Set(ref vbCuadreNuevo, false);
            Set(ref vnCodigoCuadre, vfciCGAuxWiz.inCuadre);
            Set(ref dfFechaIni.ValorFecha, vfciCGAuxWiz.idtFechaDesde);
            Set(ref dfFechaFin.ValorFecha, vfciCGAuxWiz.idtFechaHasta);
            Set(ref dfDescripcion.ValorTexto, vfciCGAuxWiz.isDescripcion);
            Set(ref isModuloCuadre, vfciCGAuxWiz.isModulo);
            //Se carga la lista de módulos visualmente con el módulo indicado marcado.
            //$Siguiente es Call$
            CargarModulos(isModuloCuadre);
            //
            Set(ref vbRefrescarDatos, false);
            //
            //
            //Se carga la información del módulo
            if (lbOk)
            {
                Set(ref lbOk, CargaInfoModulo(isModuloCuadre));
                //
                //Se cargan las cuentas contables
            }
            Set(ref lbOk, lbOk && CargarCuentas(vfciCGAuxWiz.isCuentas));
            //$Siguiente es Call$
            tblSelCuentas.SeleccionarTodasCtas(1);
            //
            //
            //Se calcula el cuadro resumen
            Set(ref lbOk, lbOk && CalcularResumen());
            //
            //Se populan las tablas de datos de detalle
            Set(ref lbOk, lbOk && Valida_Paso3());
            //
            //Se carga el TAB que quedó activo
            if (lbOk)
            {
                //
                if (!vfciCGAuxWiz.inTabActivo)
                {
                    Set(ref vfciCGAuxWiz.inTabActivo, 1);
                    //
                }
                //$Siguiente es Call$
                // picTabs.BringToTop(vfciCGAuxWiz.inTabActivo, true);
                CambiarTab(vfciCGAuxWiz.inTabActivo);
                Set(ref this.nCurrentTab, vfciCGAuxWiz.inTabActivo);
                //$Siguiente es Call$
                SalEnableWindow(pbAnterior);
                //
                if (vfciCGAuxWiz.inTabActivo == nTABPaso5)
                {
                    Set(ref lbOk, lbOk && Valida_Paso4());
                }
                //
                //Se muestra mensaje de error si hubo algún problema
            }
            if (!lbOk)
            {
                //$Siguiente es Call$
                SPSMessageBox("Hubo problemas cargando el cuadre seleccionado", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                //
                //
            }
            //
            FormatearDf();
            return lbOk;
        }
        /// <summary>  
        /// Guarda los datos de un cuadre entre contabilidad general (CG) y auxiliares.  
        /// Realiza la inserción o actualización de los datos en la base de datos.  
        /// </summary>  
        /// <param name="pbNuevo">Indica si el cuadre es nuevo (true) o una actualización (false).</param>  
        /// <returns>Devuelve true si el proceso se realiza correctamente, false en caso contrario.</returns>  
        public bool SaveCuadres(SalBoolean pbNuevo)
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //
            Set(ref lbOk, lbOk && vfciCGAuxWiz.FillInstanceCuadre(vnCodigoCuadre, dfDescripcion.ValorTexto, isModuloCuadre, GetDateAndTime(), dfFechaIni.ValorFecha, dfFechaFin.ValorFecha, "Filtros", isFiltroCuentas, "Otros", this.nCurrentTab));
            //
            //
            //Se hace la inserción o actualización
            if (lbOk)
            {
                //
                Set(ref lbOk, vfciCGAuxWiz.AddModCuadre(pbNuevo));
                //
            }
            if (lbOk && pbNuevo)
            {
                //
                //Se inicializan las variables
                Set(ref vbCuadreNuevo, false);
                Set(ref vnCodigoCuadre, vfciCGAuxWiz.inCuadre);
                Set(ref dfFechaIni.ValorFecha, vfciCGAuxWiz.idtFechaDesde);
                Set(ref dfFechaFin.ValorFecha, vfciCGAuxWiz.idtFechaHasta);
                Set(ref dfDescripcion.ValorTexto, vfciCGAuxWiz.isDescripcion);
                Set(ref isModuloCuadre, vfciCGAuxWiz.isModulo);
                //
                //Se muestra mensaje de error si hubo algún problema
            }
            if (!lbOk)
            {
                //$Siguiente es Call$
                SPSMessageBox("Hubo problemas almacenando el cuadre actual", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                //
            }
            if (lbOk && SqlNet.bDebugging)
            {
                //
                //$Siguiente es Call$
                SPSMessageBox("Datos guardados exitosamente!", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Ajusta la posición y tamaño de los cuadros en la interfaz según la orientación seleccionada.  
        /// Si la orientación es vertical, organiza los elementos en columnas; si es horizontal, los organiza en filas.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal AcomodaCuadros()
        {
            SalDecimal lnPosY = new SalDecimal();
            SalDecimal lnPosX = new SalDecimal();
            SalString lsString = new SalString();
            WindowHandle lhWnd = new WindowHandle();
            //
            //MRL S2C28703 --->
            if (vbVertical)
            {
                //
                //$Siguiente es Call$
                //SalSetWindowLoc(tblCuadreConta, 0.18, 2.429);
                ////$Siguiente es Call$
                //SalSetWindowSize(tblCuadreConta, 7.3, 3.976);
                ////
                ////$Siguiente es Call$
                //SalSetWindowLoc(tblCuadreAux, 7.58, 2.405);
                ////$Siguiente es Call$
                //SalSetWindowSize(tblCuadreAux, 8.1, 4.0);
                //
                Set(ref lsString, "Detalle de Movimientos de la Contabilidad");
                // Set(ref lhWnd, VisWinGetHandle(hWndForm, lsString, TYPE_BkgdText));
                if (lhWnd)
                {
                    //
                    //$Siguiente es Call$
                    //SalSetWindowLoc(lhWnd, 0.18, 1.821);
                    ////$Siguiente es Call$
                    //SalSetWindowSize(lhWnd, 7.3, 0.25);
                    ////
                }
                Set(ref lsString, "Detalle de Movimientos del Auxiliar");
                //  Set(ref lhWnd, VisWinGetHandle(hWndForm, lsString, TYPE_BkgdText));
                if (lhWnd)
                {
                    //
                    ////$Siguiente es Call$
                    //SalSetWindowLoc(lhWnd, 9.28, 1.821);
                    ////$Siguiente es Call$
                    //SalSetWindowSize(lhWnd, 5.2, 0.25);
                    //
                    //Acomodo de los botones
                }
                Set(ref lnPosX, 0.4);
                Set(ref lnPosY, 2.107);
                //
                //$Siguiente es Call$
                // SalSetWindowLoc(pbFiltroCuadreConta, lnPosX, lnPosY);
                Set(ref lnPosX, lnPosX + 0.5);
                //$Siguiente es Call$
                //SalSetWindowLoc(pbColumnsCuadreConta, lnPosX, lnPosY);
                Set(ref lnPosX, lnPosX + 0.5);
                //$Siguiente es Call$
                //SalSetWindowLoc(pbExcelCuadreConta, lnPosX, lnPosY);
                Set(ref lnPosX, lnPosX + 0.5);
                //$Siguiente es Call$
                //SalSetWindowLoc(pbVerAsientoCuadreConta, lnPosX, lnPosY);
                //
                //
                Set(ref lnPosX, 7.7);
                //
                //$Siguiente es Call$
                //SalSetWindowLoc(pbFiltroCuadreAux, lnPosX, lnPosY);
                Set(ref lnPosX, lnPosX + 0.5);
                //$Siguiente es Call$
                //SalSetWindowLoc(pbColumnsCuadreAux, lnPosX, lnPosY);
                Set(ref lnPosX, lnPosX + 0.5);
                //$Siguiente es Call$
                // SalSetWindowLoc(pbExcelCuadreAux, lnPosX, lnPosY);
                Set(ref lnPosX, lnPosX + 0.5);
                //$Siguiente es Call$
                //SalSetWindowLoc(pbVerAsientoCuadreAux, lnPosX, lnPosY);
                //
                //Acomodo de pictabs
                //$Siguiente es Call$
                //SalSetWindowLoc(picTabPaso40, 0.28, 2.071);
                //$Siguiente es Call$
                //SalSetWindowLoc(picTabPaso41, 7.58, 2.071);
                //
                //
                //MRL S2C28703 <---
                //
            }
            else
            {
                //
                Set(ref lnPosX, 2.08);
                //
                //$Siguiente es Call$
                //SalSetWindowLoc(tblCuadreConta, lnPosX, 2.095);
                //$Siguiente es Call$
                //SalSetWindowSize(tblCuadreConta, 13.7, 1.976);
                //
                //$Siguiente es Call$
                //SalSetWindowLoc(tblCuadreAux, lnPosX, 4.571);
                //$Siguiente es Call$
                //SalSetWindowSize(tblCuadreAux, 13.7, 1.833);
                //
                Set(ref lsString, "Detalle de Movimientos de la Contabilidad");
                // Set(ref lhWnd, VisWinGetHandle(hWndForm, lsString, TYPE_BkgdText));
                if (lhWnd)
                {
                    //
                    //$Siguiente es Call$
                    // SalSetWindowLoc(lhWnd, 0.28, 2.405);
                    //$Siguiente es Call$
                    //SalSetWindowSize(lhWnd, 1.7, 0.75);
                    //
                }
                Set(ref lsString, "Detalle de Movimientos del Auxiliar");
                // Set(ref lhWnd, VisWinGetHandle(hWndForm, lsString, TYPE_BkgdText));
                if (lhWnd)
                {
                    //
                    //$Siguiente es Call$
                    // SalSetWindowLoc(lhWnd, 0.28, 5.071);
                    //$Siguiente es Call$
                    //SalSetWindowSize(lhWnd, 1.7, 0.667);
                    //
                    //Acomodo de los botones
                }
                Set(ref lnPosX, 2.2);
                Set(ref lnPosY, 1.774);
                //
                ////$Siguiente es Call$
                //SalSetWindowLoc(pbFiltroCuadreConta, lnPosX, lnPosY);
                //Set(ref lnPosX, lnPosX + 0.5);
                ////$Siguiente es Call$
                //SalSetWindowLoc(pbColumnsCuadreConta, lnPosX, lnPosY);
                //Set(ref lnPosX, lnPosX + 0.5);
                ////$Siguiente es Call$
                //SalSetWindowLoc(pbExcelCuadreConta, lnPosX, lnPosY);
                //Set(ref lnPosX, lnPosX + 0.5);
                ////$Siguiente es Call$
                //SalSetWindowLoc(pbVerAsientoCuadreConta, lnPosX, lnPosY);
                ////Set lnPosY = lnPosY + 0.29
                ////Call SalSetWindowLoc( pbRefrescarCuadreConta, lnPosX, lnPosY )
                ////
                //Set(ref lnPosY, 4.274);
                //Set(ref lnPosX, 2.2);
                ////$Siguiente es Call$
                //SalSetWindowLoc(pbFiltroCuadreAux, lnPosX, lnPosY);
                //Set(ref lnPosX, lnPosX + 0.5);
                ////$Siguiente es Call$
                //SalSetWindowLoc(pbColumnsCuadreAux, lnPosX, lnPosY);
                //Set(ref lnPosX, lnPosX + 0.5);
                ////$Siguiente es Call$
                //SalSetWindowLoc(pbExcelCuadreAux, lnPosX, lnPosY);
                //Set(ref lnPosX, lnPosX + 0.5);
                ////$Siguiente es Call$
                //SalSetWindowLoc(pbVerAsientoCuadreAux, lnPosX, lnPosY);
                //Set(ref lnPosX, lnPosX + 0.5);
                ////Call SalSetWindowLoc( pbRefrescarCuadreAux, lnPosX, lnPosY )
                ////Set lnPosY = lnPosY + 0.29
                ////
                ////MRL S2C28703 --->
                ////Acomodo de pictabs
                ////$Siguiente es Call$
                //SalSetWindowLoc(picTabPaso40, 2.08, 1.738);
                ////$Siguiente es Call$
                //SalSetWindowLoc(picTabPaso41, 2.08, 4.238);
                ////MRL S2C28703 <---
                ////
                ////
                ////
            }
            //$Siguiente es Call$
            //SalInvalidateWindow(hWndForm);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Calcula el balance de cuentas y actualiza la tabla correspondiente en el paso 5 del asistente.  
        /// </summary>  
        /// <param name="pnOpcion">Opción seleccionada para el cálculo del balance.</param>  
        /// <param name="psDebitosCreditos">Cadena que indica si se deben calcular débitos o créditos.</param>  
        /// <returns>Devuelve true si el cálculo fue exitoso, de lo contrario false.</returns>  
        public bool CalcularBalanceCuentas(SalDecimal pnOpcion, SalString psDebitosCreditos)
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //Se pasa al TAB del Paso 5 - Balance de Cuentas
            //$Siguiente es Call$
            //picTabs.BringToTop(nTABPaso5, true);
            Set(ref this.nCurrentTab, nTABPaso5);
            //
            Set(ref lbOk, lbOk && vfciCGAuxWiz.DatosBalanceCuentas(vnCodigoCuadre));
            //
            Set(ref lbOk, lbOk && tblBalanceCtas.LoadTable(pnOpcion, psDebitosCreditos));
            //
            return lbOk;
        }
        /// <summary>  
        /// Cambia al tab anterior en el asistente si el tab actual es el paso 4.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal PostPrevTab()
        {
            //
            if (this.nCurrentTab == nTABPaso4)
            {
                //
                //$Siguiente es Call$
                //picTabs.BringToTop(vnPrevTab, true);
                Set(ref this.nCurrentTab, vnPrevTab);
                //
                Set(ref vnPrevTab, 4);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Muestra la ayuda asociada al formulario actual.  
        /// </summary>  
        /// <returns>Devuelve un objeto `SalDecimal` con valor inicializado.</returns>  
        public SalDecimal Help()
        {
            //$Siguiente es Call$  
            // DesplegarAyuda2(hWndForm, CG_HELP, HELP_Context, CGHLP_CUADREAUXILIAR, "");  
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Genera el formato de decimales basado en la cantidad de decimales configurada en el sistema.  
        /// </summary>  
        /// <returns>Devuelve una cadena con el formato de decimales.</returns>  
        public SalString FormatoDecimales()
        {
            SalDecimal nDecimales = new SalDecimal();
            SalString sMascara = new SalString();
            Set(ref nDecimales, 0);
            Set(ref sMascara, "#,##0.");
            while (nDecimales < fciGlobalesCG.nCantDecimales)
            {
                Set(ref sMascara, sMascara + "0");
                Set(ref nDecimales, nDecimales + 1);
            }
            return sMascara;
        }
        /// <summary>  
        /// Aplica el formato de decimales a los campos de texto relacionados con valores monetarios.  
        /// </summary>  
        /// <returns>Devuelve un objeto `SalDecimal` con valor inicializado.</returns>  
        public SalDecimal FormatearDf()
        {
            //
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResContaDebLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResContaCredLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResContaNeto, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxDebLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxCredLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxNeto, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResDifDebLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResDifCredLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResDifNeto, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResCGDebLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResCGCredLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResCGNetoLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResOtrosDebLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResOtrosCredLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResOtrosNetoLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResTotCGDebLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResTotCGCredLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResTotCGNetoLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxNCDebLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxNCCredLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxNCNetoLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxFPDebLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxFPCredLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxFPNetoLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxTotalDebLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxTotalCredLoc, FormatoDecimales());
            //$Siguiente es Call$  
            SalFmtSetPicture(dfResAuxTotalNetoLoc, FormatoDecimales());
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de cierre del formulario.  
        /// </summary>  
        /// <returns>Devuelve un objeto `SalDecimal` con valor inicializado.</returns>  
        public SalDecimal dlgCGAuxWiz_SAM_Close()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Inicializa el formulario y carga los módulos disponibles.  
        /// </summary>  
        /// <returns>Devuelve un objeto `SalDecimal` con valor inicializado.</returns>  
        public SalDecimal dlgCGAuxWiz_SAM_CreateComplete()
        {
            Set(ref nTabsCount, OrdenTabs.Count);
            Set(ref nLastTab, nTabsCount - 1);
            //$Siguiente es Call$  
            CreateComplete();
            return CargarModulos("");
        }
        /// <summary>  
        /// Muestra el detalle del resumen en el formulario.  
        /// </summary>  
        /// <returns>Devuelve un objeto `SalDecimal` con valor inicializado.</returns>  
        public SalDecimal dlgCGAuxWiz_AM_VerDetalleResumen()
        {
            //$Siguiente es Call$  
            VerDetalleResumen();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Muestra el detalle de las cuentas en el formulario.  
        /// </summary>  
        /// <returns>Devuelve un objeto `SalDecimal` con valor inicializado.</returns>  
        public SalDecimal dlgCGAuxWiz_AM_VerDetalleCuentas()
        {
            //$Siguiente es Call$  
            VerDetalleCuentas();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Muestra la ayuda asociada al formulario actual.  
        /// </summary>  
        /// <returns>Devuelve un objeto `SalDecimal` con valor inicializado.</returns>  
        public SalDecimal dlgCGAuxWiz_SAM_Help()
        {
            //$Siguiente es Call$  
            Help();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Cambia al tab anterior en el formulario y realiza validaciones necesarias.  
        /// </summary>  
        /// <returns>Devuelve un objeto `SalDecimal` con valor inicializado.</returns>  
        public SalDecimal pbAnterior_AM_Click()
        {
            //
            //Se redefine en la instancia dado que es necesario hacer algunas validaciones al darle el botón ANTERIOR
            //
            //$Siguiente es Call$
            this.PrevTab();
            //
            //$Siguiente es Call$
            this.PostPrevTab();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Abre el cuadro de diálogo para gestionar los cuadros existentes.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbOpenCuadres_AM_Click()
        {
            //
            //$Siguiente es Call$
            OpenCuadres();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Inicializa el botón "Abrir" con el texto y el tooltip correspondiente.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbOpenCuadres_AM_Create()
        {
            Set(ref sStatusText, "Abrir");
            //
            //Se define el ToolTip.
            //$Siguiente es Call$
            //InitTip("Abrir");
            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea un nuevo cuadro y cambia la pestaña activa al paso 1.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbNewCuadres_AM_Click()
        {
            //EFECTOS
            //Envía a la ventana padre el AM_ClassNewRow
            //
            //$Siguiente es Call$
            NewCuadres();
            //
            //$Siguiente es Call$
            //picTabs.BringToTop(nTABPaso1, true);
            CambiarTab(nTABPaso1);
            Set(ref this.nCurrentTab, nTABPaso1);
            FormatearDf();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Elimina el cuadro seleccionado.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbDelCuadres_AM_Click()
        {
            //EFECTOS
            //Envía a la ventana padre el AM_ClassNewRow
            //
            //$Siguiente es Call$
            DelCuadres();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Limpia el campo de descripción del cuadro.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfDescripcion_AM_ClearField()
        {
            //$Siguiente es Call$
            SalClearField(dfDescripcion);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el campo de descripción del cuadro con una longitud máxima de 40 caracteres.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfDescripcion_AM_Create()
        {
            //
            //Caso RD8-02907-DV49 JEV - Se cambia la longitud máxima permitida para el campo
            //$Siguiente es Call$
            SalSetMaxDataLength("dfDescripcion", 40);
            Set(ref dfDescripcion.sStatusText, "Descripción del cuadre");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Inicializa el campo de período contable con valores sugeridos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfPeriodoCuadre_AM_InitDFHelp()
        {
            Set(ref dfPeriodoCuadre.sStatusText, "Periodo contable sugerido");
            Set(ref dfPeriodoCuadre.bPermiteBlancos, true);
            Set(ref dfPeriodoCuadre.bVerificarExistencia, false);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Valida el período contable y ajusta las fechas inicial y final.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfPeriodoCuadre_AM_ExtraValidate()
        {
            //
            Set(ref dfFechaFin.ValorFecha, dfPeriodoCuadre.dtFechaFinal);
            //
            //$Siguiente es Call$
            dfPeriodoCuadre.ObtenerFechaInicial(dfPeriodoCuadre.dtFechaFinal, dfPeriodoCuadre.sTipo, ref dfFechaIni.ValorFecha);
            //
            return VALIDATE_OkClearFlag;
        }
        /// <summary>  
        /// Configura el campo de fecha inicial para el cuadro.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfFechaIni_AM_Create()
        {
            Set(ref dfFechaIni.sStatusText, "Fecha inicial para el cuadre con el auxiliar (Presione F1 o doble click para Ayuda)");
            //
            Set(ref dfFechaIni.bEsFechaDesde, true);
            Set(ref dfFechaIni.hwndFechaAsociada, dfFechaFin.ValorFecha);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Valida la fecha inicial y ajusta la fecha final automáticamente.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfFechaIni_AM_ExtraValidate()
        {
            //
            //Set fciFiltroDocumentosCB.dtFechaDocDesde=dfFechaIniCBDoc
            Set(ref dfFechaFin.ValorFecha, Sal.DateConstruct(Sal.DateYear(dfFechaIni.ValorFecha), Sal.DateMonth(dfFechaIni.ValorFecha), DiasEnMes(dfFechaIni.ValorFecha), 0, 0, 0));
            //
            return VALIDATE_OkClearFlag;
        }
        /// <summary>  
        /// Configura el campo de fecha final para el cuadro.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfFechaFin_AM_Create()
        {
            Set(ref dfFechaFin.sStatusText, "Fecha final el cuadre de los auxiliares (Presione F1 o doble click para Ayuda)");
            //
            Set(ref dfFechaFin.bEsFechaDesde, false);
            Set(ref dfFechaFin.hwndFechaAsociada, dfFechaIni.ValorFecha);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Valida la fecha final del cuadro.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfFechaFin_AM_ExtraValidate()
        {
            //
            //Set fciFiltroDocumentosCB.dtFechaDocHasta=dfFechaFinCBDoc
            return VALIDATE_OkClearFlag;
        }
        /// <summary>  
        /// Inicializa el botón para cargar las cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbCargaCtas_AM_Create()
        {
            Set(ref pbCargaCtas.sStatusText, "Cargar las cuentas contables");
            //$Siguiente es Call$
            //pbCargaCtas.InitTip("Cargar");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Carga las cuentas contables en la tabla correspondiente.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbCargaCtas_AM_Click()
        {
            //$Siguiente es Call$

            CargarCuentas("");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el botón para que no se deshabilite automáticamente.  
        /// </summary>  
        /// <returns>Devuelve un valor booleano indicando el resultado de la operación.</returns>  
        public SalDecimal pbCargaCtas_AM_IsBackground()
        {
            //Truco para que la clase no la deshabilite
            return true;
        }
        /// <summary>  
        /// Exporta las cuentas contables seleccionadas a un archivo Excel.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbExcelCtas_SAM_Click()
        {
            //
            //$Siguiente es Call$
            SalSendMsg(tblSelCuentas, Globales.AM_SendTableDataToExcel, 0, 0);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Exporta todas las cuentas contables a un archivo Excel.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbExcelCtasTodo_SAM_Click()
        {
            //
            //$Siguiente es Call$
            SalSendMsg(tblSelCuentas, Globales.AM_SendTableDataToExcelTodo, 0, 0);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea una nueva fila en la tabla de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbNewCtas_AM_Click()
        {
            //EFECTOS
            //Envía a la ventana padre el AM_ClassNewRow
            //
            //$Siguiente es Call$
            SalSendMsg(tblSelCuentas, Globales.AM_ClassNewRow, 0, 0);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Elimina la fila seleccionada en la tabla de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbEliminarCtas_AM_Click()
        {
            //EFECTOS
            //Envía a la ventana padre el AM_ClassNewRow
            //
            //$Siguiente es Call$
            SalSendMsg(tblSelCuentas, Globales.AM_ClassDelRow, 0, 0);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Inicializa el botón para seleccionar o desmarcar todas las cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbSelecAllCtas_AM_Create()
        {
            //EFECTOS
            //Inicializa el "status text" y el ToolTip. ( No se requiere redefinir en la instancia ).
            //
            if (!sStatusText)
            {
                //Si no se ha definido Estatus Text poner el Default
                Set(ref sStatusText, "Marca / Desmarca TODAS las cuentas");
                //
            }
            //$Siguiente es Call$
            ///InitTip("Marca / Desmarca todas");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Marca o desmarca todas las cuentas contables en la tabla.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbSelecAllCtas_AM_Click()
        {
            //
            //$Siguiente es Call$
            tblSelCuentas.SeleccionarTodasCtas(-1);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Cambia la moneda activa a moneda local y recarga la tabla de balances.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal obMonedaLoc_SAM_Click()
        {
            obMonedaDol.ValorBooleano = false;
            obMonedaLoc.ValorBooleano = true;
            //$Siguiente es Call$
            CambiarTipoMoneda();

            //$Siguiente es Call$
            tblBalanceCtas.LoadTable(REG_NINGUNO, string.Empty);
            ComunicarMensajeAlUsuario("VisibleDialogo", "VisibleDialogo", TD2Net.v2.TipoMensajeUsuario.VisibleDialogo);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Cambia la moneda activa a dólar, actualiza la tabla de balance de cuentas y muestra un mensaje al usuario.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal obMonedaDol_SAM_Click()
        {
            //$Siguiente es Call$  
            obMonedaLoc.ValorBooleano = false;
            obMonedaDol.ValorBooleano = true;
            CambiarTipoMoneda();
            //$Siguiente es Call$  
            tblBalanceCtas.LoadTable(REG_NINGUNO, string.Empty);
            ComunicarMensajeAlUsuario("VisibleDialogo", "VisibleDialogo", TD2Net.v2.TipoMensajeUsuario.VisibleDialogo);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Inicializa la opción de moneda dólar al completar la creación del control.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal obMonedaDol_AM_CreateComplete()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho en el campo de débito local de contabilidad.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResContaDebLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el clic derecho en el campo de débito local de contabilidad, mostrando un menú contextual o información adicional.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResContaDebLoc_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResContaDebLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho en el campo de crédito local de contabilidad.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResContaCredLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el clic derecho en el campo de crédito local de contabilidad, mostrando un menú contextual o información adicional.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResContaCredLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResContaCredLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho en el campo de neto de contabilidad.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResContaNeto_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el clic derecho en el campo de neto de contabilidad, mostrando un menú contextual o información adicional.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResContaNeto_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResContaNeto");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho en el campo de débito local del auxiliar.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxDebLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el clic derecho en el campo de débito local del auxiliar, mostrando un menú contextual o información adicional.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResAuxDebLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResAuxDebLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho en el campo de crédito local del auxiliar.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxCredLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el clic derecho en el campo de crédito local del auxiliar, mostrando un menú contextual o información adicional.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResAuxCredLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResAuxCredLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho en el campo de neto del auxiliar.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxNeto_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el clic derecho en el campo de neto del auxiliar, mostrando un menú contextual o información adicional.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResAuxNeto_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResAuxNeto");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho en el campo de débito local de diferencia.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResDifDebLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el clic derecho en el campo de débito local de diferencia, mostrando un menú contextual o información adicional.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResDifDebLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResDifDebLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho en el campo de crédito local de diferencia.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResDifCredLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el clic derecho en el campo de crédito local de diferencia, mostrando un menú contextual o información adicional.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResDifCredLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResDifCredLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje y reaccione como si se hubiera presionado el botón izquierdo del mouse.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada de SQLWindows.</returns>  
        public SalDecimal dfResDifNeto_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResDifNeto".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResDifNeto_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResDifNeto");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje y reaccione como si se hubiera presionado el botón izquierdo del mouse.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada de SQLWindows.</returns>  
        public SalDecimal dfResCGDebLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResCGDebLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResCGDebLoc_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResCGDebLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje y reaccione como si se hubiera presionado el botón izquierdo del mouse.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada de SQLWindows.</returns>  
        public SalDecimal dfResCGCredLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResCGCredLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResCGCredLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResCGCredLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje y reaccione como si se hubiera presionado el botón izquierdo del mouse.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada de SQLWindows.</returns>  
        public SalDecimal dfResCGNetoLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResCGNetoLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResCGNetoLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResCGNetoLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje y reaccione como si se hubiera presionado el botón izquierdo del mouse.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada de SQLWindows.</returns>  
        public SalDecimal dfResOtrosDebLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResOtrosDebLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResOtrosDebLoc_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResOtrosDebLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje y reaccione como si se hubiera presionado el botón izquierdo del mouse.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada de SQLWindows.</returns>  
        public SalDecimal dfResOtrosCredLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResOtrosCredLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResOtrosCredLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResOtrosCredLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje y reaccione como si se hubiera presionado el botón izquierdo del mouse.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada de SQLWindows.</returns>  
        public SalDecimal dfResOtrosNetoLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResOtrosNetoLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResOtrosNetoLoc_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, true);
            //    Set(ref vsItemResumen, "dfResOtrosNetoLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResTotCGDebLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResTotCGDebLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResTotCGDebLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResTotCGDebLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResTotCGCredLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResTotCGCredLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResTotCGCredLoc_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResTotCGCredLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResTotCGNetoLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResTotCGNetoLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResTotCGNetoLoc_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResTotCGNetoLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxNCDebLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResAuxNCDebLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResAuxNCDebLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResAuxNCDebLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxNCCredLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResAuxNCCredLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResAuxNCCredLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResAuxNCCredLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxNCNetoLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResAuxNCNetoLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResAuxNCNetoLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResAuxNCNetoLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxFPDebLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del mouse en el campo "dfResAuxFPDebLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfResAuxFPDebLoc_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResAuxFPDebLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxFPCredLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de clic derecho en el campo "dfResAuxFPCredLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal dfResAuxFPCredLoc_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResAuxFPCredLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxFPNetoLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de clic derecho en el campo "dfResAuxFPNetoLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal dfResAuxFPNetoLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResAuxFPNetoLoc");
            //    //$Siguiente es Call$
            //   // //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxTotalDebLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de clic derecho en el campo "dfResAuxTotalDebLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal dfResAuxTotalDebLoc_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResAuxTotalDebLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxTotalCredLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de clic derecho en el campo "dfResAuxTotalCredLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal dfResAuxTotalCredLoc_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResAuxTotalCredLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho y reaccione como si se hubiera presionado el botón izquierdo.  
        /// </summary>  
        /// <returns>Devuelve false para evitar la acción predeterminada.</returns>  
        public SalDecimal dfResAuxTotalNetoLoc_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de clic derecho en el campo "dfResAuxTotalNetoLoc".  
        /// Si se presiona la tecla Control, despliega la versión de los tools.  
        /// En caso contrario, configura el detalle de cuentas y muestra un menú flotante.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal dfResAuxTotalNetoLoc_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //
            //    Set(ref bMostrarDetalleCuentas, false);
            //    Set(ref vsItemResumen, "dfResAuxTotalNetoLoc");
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGAuxWizResumen", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Envía los datos de la tabla "tblCuadreConta" a Excel.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal pbExcelCuadreConta_SAM_Click()
        {
            //
            //$Siguiente es Call$
            SalSendMsg(tblCuadreConta, Globales.AM_SendTableDataToExcel, 0, 0);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Envía todos los datos de la tabla "tblCuadreConta" a Excel.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal pbExcelCuadreContaTodo_SAM_Click()
        {
            //
            //$Siguiente es Call$
            SalSendMsg(tblCuadreConta, Globales.AM_SendTableDataToExcelTodo, 0, 0);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el texto de estado para el botón de reporte de balance de cuentas en Excel.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal pbExcelBalCtas_AM_Create()
        {
            //
            Set(ref sStatusText, "Reporte de Balance de Cuentas en Excel");
            //
            //$Siguiente es Call$
            // InitTip("Reporte en Excel");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Envía los datos de la tabla correspondiente a Excel según la pestaña activa.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal pbExcelBalCtas_SAM_Click()
        {
            //
            if (this.nCurrentTab == nTABPaso5)
            {
                //$Siguiente es Call$
                SalSendMsg(tblBalanceCtas, Globales.AM_SendTableDataToExcel, 0, 0);
            }
            else
            {
                if (this.nCurrentTab == nTABPaso3)
                {
                    //$Siguiente es Call$
                    SalSendMsg(tblResumenCuadre, Globales.AM_SendTableDataToExcel, 0, 0);
                }
                else
                {
                    //
                    SalSendMsg(tblCuadreConta, Globales.AM_SendTableDataToExcel, 0, 0);

                    //
                }
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Envía todos los datos de la tabla correspondiente a Excel según la pestaña activa.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal pbExcelBalCtasTodo_SAM_Click()
        {
            //
            if (this.nCurrentTab == nTABPaso5)
            {
                //$Siguiente es Call$
                SalSendMsg(tblBalanceCtas, Globales.AM_SendTableDataToExcelTodo, 0, 0);
            }
            else
            {
                if (this.nCurrentTab == nTABPaso3)
                {
                    //$Siguiente es Call$
                    SalSendMsg(tblResumenCuadre, Globales.AM_SendTableDataToExcelTodo, 0, 0);
                }
                else
                {
                    //
                    SalSendMsg(tblCuadreConta, Globales.AM_SendTableDataToExcelTodo, 0, 0);

                    //
                }
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Envía todos los datos de la tabla correspondiente a Excel según la pestaña activa.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal pbExcelBalCtas2Todo_SAM_Click()
        {
            //
            if (this.nCurrentTab == nTABPaso5)
            {
                //$Siguiente es Call$
                SalSendMsg(tblBalanceCtas, Globales.AM_SendTableDataToExcelTodo, 0, 0);
            }
            else
            {
                if (this.nCurrentTab == nTABPaso3)
                {
                    //$Siguiente es Call$
                    SalSendMsg(tblResumenCuadre, Globales.AM_SendTableDataToExcelTodo, 0, 0);
                }
                else
                {
                    //
                    SalSendMsg(tblCuadreConta, Globales.AM_SendTableDataToExcelTodo, 0, 0);

                    //
                }
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Envía el mensaje "AM_ClassSelectColumns" a la ventana padre para seleccionar columnas en la tabla "tblCuadreConta".  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal pbColumnsCuadreConta_AM_Click()
        {
            //EFECTOS
            //Envía a la ventana padre el AM_ClassSelectColumns
            //
            //$Siguiente es Call$
            SalSendMsg(tblCuadreConta, Globales.AM_ClassSelectColumns, 0, 0);
            //
            //Call SalModalDialog( dlgSelectColumnas, hWndForm, tblCuadreConta, '' )
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el texto de estado para el botón de visualizar información de transacciones contables.  
        /// </summary>  
        /// <returns>Devuelve 1 para indicar que la operación se realizó correctamente.</returns>  
        public SalDecimal pbVerAsientoCuadreConta_AM_Create()
        {
            Set(ref sStatusText, "Visualizar la información de la transacción contable del documento seleccionado");
            //$Siguiente es Call$
            //InitTip("Ver " + fciGlobalesCG.NombreAsiento(false, false, false) + " contable");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Visualiza la información de la transacción contable asociada al documento seleccionado.  
        /// Si no hay información disponible, muestra un mensaje de error.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbVerAsientoCuadreConta_AM_Click()
        {
            //
            //Llamado a la funcion que toma la informacion del de documento
            //
            if (tblCuadreConta.colContaAsiento.colValorTexto)
            {
                //$Siguiente es Call$
                DesplegarAsiento(tblCuadreConta.colContaAsiento.colValorTexto, this);
            }
            else
            {
                //$Siguiente es Call$
                SPSMessageBox("Hubo un error al tratar de visualizar " + fciGlobalesCG.NombreAsiento(false, false, true) + " contable.", "Ver " + fciGlobalesCG.NombreAsiento(false, true, false) + " Contable - Movimientos de la Contabilidad", MBF_IconHand, CONTINUAR);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Aplica un filtro a la tabla de movimientos contables.  
        /// Envía un mensaje a la ventana padre para ejecutar la consulta con el filtro aplicado.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbFiltroCuadreConta_AM_Click()
        {
            //EFECTOS
            //Envía a la ventana padre el AM_ClassDoQuery
            //
            //$Siguiente es Call$
            SalSendMsg(tblCuadreConta, Globales.AM_ClassDoQuery, 0, 0);
            this.TieneFiltroAplicado = tblCuadreConta.TieneFiltroAplicado;

            if (tblCuadreConta.TieneFiltroAplicado)
            {
                pbFiltroCuadreConta.Tipo = TipoValor.Filtro;
            }

            return new SalDecimal(1);
        }
        public SalDecimal pbCambiarVista_AM_Create()
        {
            Set(ref sStatusText, "Cambiar el modo de visualización de la ventana");
            //$Siguiente es Call$
            //InitTip("Cambiar la vista");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Cambia el modo de visualización de la ventana entre vista vertical y horizontal.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbCambiarVista_AM_Click()
        {
            //
            Set(ref vbVertical, !vbVertical);
            //$Siguiente es Call$
            AcomodaCuadros();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Muestra el diálogo de selección de columnas para la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbColumnsCuadreAux_AM_Click()
        {
            //
            //Call SalModalDialog( dlgSelectColumnas, hWndForm, tblCuadreAux, '' )
            //! 600R1: INI: Mejora de dialogo de selección
            //$Siguiente es Call$
            MostrarSeleccionColumnas(tblCuadreAux, "");
            //! 600R1: FIN
            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Exporta los datos de la tabla de movimientos auxiliares a un archivo Excel.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbExcelCuadreAux_SAM_Click()
        {
            //
            //$Siguiente es Call$
            SalSendMsg(tblCuadreAux, Globales.AM_SendTableDataToExcel, 0, 0);
            return new SalDecimal(1);
        }

        /// <summary>  
        /// Exporta todos los datos de la tabla de movimientos auxiliares a un archivo Excel.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbExcelCuadreAuxTodo_SAM_Click()
        {
            //
            //$Siguiente es Call$
            SalSendMsg(tblCuadreAux, Globales.AM_SendTableDataToExcelTodo, 0, 0);
            return new SalDecimal(1);
        }
        public SalDecimal pbVerAsientoCuadreAux_AM_Create()
        {
            Set(ref sStatusText, "Visualizar la información de la transacción contable del documento seleccionado");
            //$Siguiente es Call$
            //InitTip("Ver " + fciGlobalesCG.NombreAsiento(false, false, false) + " contable");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Visualiza la información de la transacción contable asociada al documento seleccionado en la tabla de movimientos auxiliares.  
        /// Si no hay información disponible, muestra un mensaje de error.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbVerAsientoCuadreAux_AM_Click()
        {
            //
            //Llamado a la funcion que toma la informacion del de documento
            //
            if (tblCuadreAux.colAuxAsiento.colValorTexto)
            {
                //$Siguiente es Call$
                DesplegarAsiento(tblCuadreAux.colAuxAsiento.colValorTexto, this);
            }
            else
            {
                //$Siguiente es Call$
                SPSMessageBox("El documento seleccionado no tiene " + fciGlobalesCG.NombreAsiento(false, false, false) + " por lo tanto no se podrá visualizar.", "Ver " + fciGlobalesCG.NombreAsiento(false, true, false) + " Contable - Movimientos de la Contabilidad", MBF_IconHand, CONTINUAR);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Aplica un filtro a la tabla de movimientos auxiliares.  
        /// Envía un mensaje a la ventana padre para ejecutar la consulta con el filtro aplicado.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbFiltroCuadreAux_AM_Click()
        {
            //EFECTOS
            //Envía a la ventana padre el AM_ClassDoQuery
            //
            //$Siguiente es Call$
            SalSendMsg(tblCuadreAux, Globales.AM_ClassDoQuery, 0, 0);

            this.TieneFiltroAplicado = tblCuadreAux.TieneFiltroAplicado;

            if (tblCuadreAux.TieneFiltroAplicado)
            {
                pbFiltroCuadreAux.Tipo = TipoValor.Filtro;
            }

            return new SalDecimal(1);
        }
        /// <summary>  
        /// Refresca los datos de las tablas de movimientos contables y auxiliares.  
        /// Envía un mensaje a la ventana padre para repoblar las tablas.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbRefrescarCuadres_AM_Click()
        {
            //EFECTOS
            //Envía a la ventana padre el AM_PopulateTable
            //
            //$Siguiente es Call$
            SalSendMsg(tblCuadreAux, Globales.AM_PopulateTable, 0, 0);
            //$Siguiente es Call$
            SalSendMsg(tblCuadreConta, Globales.AM_PopulateTable, 0, 0);
            //
            //$Siguiente es Call$
            // SalTimerKill(pbRefrescarCuadres, TIMER_REFRESH);
            return new SalDecimal(1);
        }
        #endregion
    }
    /// <summary>  
    /// Clase que representa una tabla de búsqueda en el sistema.  
    /// Contiene columnas visibles y métodos para inicializar la interfaz, realizar búsquedas,  
    /// modificar filtros y manejar la ventana asociada.  
    /// Además, incluye propiedades para almacenar información relacionada con el cuadro de búsqueda,  
    /// como el número de cuadro, descripción, módulo, fechas y usuario.  
    /// </summary>  
    internal class tblCuadresCG : clsChldTblBusqueda
    {
        #region Controles Visuales
        [Control("_colNumCuadre", "Cuadre", TipoControl.Columna, TipoValor.Numero, 1, true, "", "", "", "", formato: "N0")]
        public clscolVisible _colNumCuadre { get { return colNumCuadre; } set { if (colNumCuadre.AM_Validate(value, this)) colNumCuadre = value; } }
        public clscolVisible colNumCuadre = new clscolVisible();
        [Control("_colDescCuadre", "Descripción", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colDescCuadre { get { return colDescCuadre; } set { if (colDescCuadre.AM_Validate(value, this)) colDescCuadre = value; } }
        public clscolVisible colDescCuadre = new clscolVisible();
        [Control("_colModuloCuadre", "Modulo", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colModuloCuadre { get { return colModuloCuadre; } set { if (colModuloCuadre.AM_Validate(value, this)) colModuloCuadre = value; } }
        public clscolVisible colModuloCuadre = new clscolVisible();
        [Control("_colFechaCuadre", "Fecha", TipoControl.Columna, TipoValor.Fecha, 1, true, "", "", "", "")]
        public clscolVisible _colFechaCuadre { get { return colFechaCuadre; } set { if (colFechaCuadre.AM_Validate(value, this)) colFechaCuadre = value; } }
        public clscolVisible colFechaCuadre = new clscolVisible();
        [Control("_colUsuarioCuadre", "Usuario", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colUsuarioCuadre { get { return colUsuarioCuadre; } set { if (colUsuarioCuadre.AM_Validate(value, this)) colUsuarioCuadre = value; } }
        public clscolVisible colUsuarioCuadre = new clscolVisible();
        [Control("_colFechaDesdeCuadre", "Desde", TipoControl.Columna, TipoValor.Fecha, 1, true, "", "", "", "")]
        public clscolVisible _colFechaDesdeCuadre { get { return colFechaDesdeCuadre; } set { if (colFechaDesdeCuadre.AM_Validate(value, this)) colFechaDesdeCuadre = value; } }
        public clscolVisible colFechaDesdeCuadre = new clscolVisible();
        [Control("_colFechaHastaCuadre", "Hasta", TipoControl.Columna, TipoValor.Fecha, 1, true, "", "", "", "")]
        public clscolVisible _colFechaHastaCuadre { get { return colFechaHastaCuadre; } set { if (colFechaHastaCuadre.AM_Validate(value, this)) colFechaHastaCuadre = value; } }
        public clscolVisible colFechaHastaCuadre = new clscolVisible();
        #endregion
        public dlgCGAuxWiz dlgCGAuxWiz = null;
        #region Constructor  
        /// <summary>  
        /// Constructor de la clase `tblCuadresCG`.  
        /// Inicializa la interfaz, obtiene la pantalla y deshabilita la ventana.  
        /// </summary>  
        public tblCuadresCG()
        {
            InicializarInterfaz();
            ObtenerPantalla();
            SalDisableWindow(this);
        }
        #endregion  
        /// <summary>  
        /// Método para inicializar la interfaz de la clase.  
        /// Configura las columnas de la tabla y asigna eventos para su población forzada.  
        /// </summary>  
        public void InicializarInterfaz()
        {
            colNumCuadre.clear_AM_ForcePopulate();
            colNumCuadre.AM_ForcePopulate_Event += colNumCuadre_AM_ForcePopulate;
            colDescCuadre.clear_AM_ForcePopulate();
            colDescCuadre.AM_ForcePopulate_Event += colDescCuadre_AM_ForcePopulate;
            colModuloCuadre.clear_AM_ForcePopulate();
            colModuloCuadre.AM_ForcePopulate_Event += colModuloCuadre_AM_ForcePopulate;
            colFechaCuadre.clear_AM_ForcePopulate();
            colFechaCuadre.AM_ForcePopulate_Event += colFechaCuadre_AM_ForcePopulate;
            colUsuarioCuadre.clear_AM_ForcePopulate();
            colUsuarioCuadre.AM_ForcePopulate_Event += colUsuarioCuadre_AM_ForcePopulate;
            colFechaDesdeCuadre.clear_AM_ForcePopulate();
            colFechaDesdeCuadre.AM_ForcePopulate_Event += colFechaDesdeCuadre_AM_ForcePopulate;
            colFechaHastaCuadre.clear_AM_ForcePopulate();
            colFechaHastaCuadre.AM_ForcePopulate_Event += colFechaHastaCuadre_AM_ForcePopulate;
        }
        #region Funciones
        /// <summary>  
        /// Inicializa la tabla con los parámetros proporcionados.  
        /// Configura las variables necesarias para la consulta SQL y la interacción con la interfaz.  
        /// </summary>  
        /// <param name="sTabla">Nombre de la tabla que se utilizará en la consulta.</param>  
        /// <param name="sColumnas">Columnas que se incluirán en la consulta SQL.</param>  
        /// <param name="sIntoVars">Variables que recibirán los valores de las columnas.</param>  
        /// <param name="hwndDF">Referencia al manejador de la ventana de datos.</param>  
        /// <param name="bRestrict">Indica si se aplicarán restricciones en la consulta.</param>  
        /// <param name="bBusquedaExacta">Indica si la búsqueda será exacta.</param>  
        /// <param name="bManejarVentana">Indica si se manejará la ventana asociada.</param>  
        /// <param name="nFlags1">Primer conjunto de banderas para configuración adicional.</param>  
        /// <param name="nFlags2">Segundo conjunto de banderas para configuración adicional.</param>  
        /// <returns>Devuelve true si la inicialización fue exitosa.</returns>  
        public override bool InitTable(ref SalString sTabla, ref SalString sColumnas, ref SalString sIntoVars, ref APP hwndDF, ref SalBoolean bRestrict, ref SalBoolean bBusquedaExacta, ref SalBoolean bManejarVentana, ref SalDecimal nFlags1, ref SalDecimal nFlags2)
        {
            Set(ref sTabla, SqlNet.ConcatCompany("CUADRES_CG"));
            Set(ref sColumnas, "CUADRES_CG, DESCRIPCION, MODULO, FECHA, CREATEDBY, FECHA_DESDE, FECHA_HASTA ");
            Set(ref sIntoVars, ":colNumCuadre, :colDescCuadre, :colModuloCuadre, :colFechaCuadre, :colUsuarioCuadre, :colFechaDesdeCuadre, :colFechaHastaCuadre ");
            //
            //Set(ref hwndDF, hWndNULL);
            Set(ref bRestrict, false);
            Set(ref bBusquedaExacta, true);
            Set(ref bManejarVentana, false);
            //
            Set(ref bPopulateOnCreate, true);
            //
            //
            return true;
        }
        /// <summary>  
        /// Obtiene la opción asociada a la tabla de cuadres CG.  
        /// </summary>  
        /// <returns>Devuelve el nombre de la opción como cadena de texto.</returns>  
        public SalString GetOpcion()
        {
            return "Cuadres_CG";
        }
        /// <summary>  
        /// Obtiene el origen asociado a la tabla de cuadres CG.  
        /// </summary>  
        /// <returns>Devuelve el origen como cadena de texto.</returns>  
        public SalString GetOrigen()
        {
            return CG_ORIGEN + "tblCuadresCG";
        }
        /// <summary>  
        /// Obtiene las declaraciones SQL asociadas a la tabla de cuadres CG.  
        /// </summary>  
        /// <returns>Devuelve una cadena vacía, ya que no hay declaraciones específicas.</returns>  
        public SalString GetStatements()
        {
            return "";
        }
        /// <summary>  
        /// Obtiene las variables asociadas a la tabla de cuadres CG.  
        /// </summary>  
        /// <returns>Devuelve una cadena vacía, ya que no hay variables específicas.</returns>  
        public SalString GetVariables()
        {
            return "";
        }
        /// <summary>  
        /// Crea una cláusula WHERE para la consulta SQL.  
        /// </summary>  
        /// <returns>Devuelve la cláusula WHERE como cadena de texto.</returns>  
        public SalString CreateWHERE()
        {
            SalString lsWhere = new SalString();
            //
            //
            return lsWhere;
        }
        /// <summary>  
        /// Configura las imágenes de las filas en la tabla.  
        /// </summary>  
        /// <param name="nRowFlag1">Primera bandera de configuración de filas.</param>  
        /// <param name="nRowFlag2">Segunda bandera de configuración de filas.</param>  
        /// <param name="nRowFlag3">Tercera bandera de configuración de filas.</param>  
        /// <param name="sResourceList">Lista de recursos asociados a las filas.</param>  
        /// <returns>Devuelve true si la configuración fue exitosa.</returns>  
        public bool RowPictures(ref SalDecimal nRowFlag1, ref SalDecimal nRowFlag2, ref SalDecimal nRowFlag3, ref SalString sResourceList)
        {
            Set(ref nRowFlag1, 0);
            Set(ref nRowFlag2, 0);
            Set(ref nRowFlag3, 0);
            return true;
        }
        /// <summary>  
        /// Realiza acciones posteriores a la inicialización de la tabla.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal AfterInitTable()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Obtiene el tamaño y la ubicación de la ventana.  
        /// </summary>  
        /// <param name="nWidth">Referencia para almacenar el ancho de la ventana.</param>  
        /// <param name="nHeight">Referencia para almacenar la altura de la ventana.</param>  
        /// <param name="nX">Referencia para almacenar la posición X de la ventana.</param>  
        /// <param name="nY">Referencia para almacenar la posición Y de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal GetWindowSizeAndLoc(ref SalDecimal nWidth, ref SalDecimal nHeight, ref SalDecimal nX, ref SalDecimal nY)
        {
            //$Siguiente es Call$
            // SalGetWindowSize(hWndTable, nWidth, nHeight);
            //$Siguiente es Call$
            //SalGetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Establece el tamaño y la ubicación de la ventana.  
        /// </summary>  
        /// <param name="nWidth">Ancho deseado de la ventana.</param>  
        /// <param name="nHeight">Altura deseada de la ventana.</param>  
        /// <param name="nX">Posición X deseada de la ventana.</param>  
        /// <param name="nY">Posición Y deseada de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal SetWindowSizeAndLoc(SalDecimal nWidth, SalDecimal nHeight, SalDecimal nX, SalDecimal nY)
        {
            //$Siguiente es Call$
            //SalSetWindowSize(hWndTable, nWidth, nHeight);
            ////
            ////Se comentan las llamadas para que compile
            ////$Siguiente es Call$
            //SetWindowInVisiblePos(hWndTable, nWidth, nHeight, nX, nY);
            ////
            ////$Siguiente es Call$
            //SalSetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Realiza acciones después de poblar la tabla.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal AfterPopulate()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Indica si se debe usar la cláusula DISTINCT en las consultas.  
        /// </summary>  
        /// <returns>Devuelve false indicando que no se usa DISTINCT.</returns>  
        public bool UsarDistinct()
        {
            return false;
        }
        /// <summary>  
        /// Indica si se debe realizar una búsqueda inicial al cargar la tabla.  
        /// </summary>  
        /// <returns>Devuelve true indicando que se realiza una búsqueda inicial.</returns>  
        public bool HacerBusquedaInicial()
        {
            return true;
        }
        /// <summary>  
        /// Devuelve el separador utilizado en las consultas.  
        /// </summary>  
        /// <returns>Devuelve una cadena con el separador utilizado (",").</returns>  
        public SalString DevolverSeparador()
        {
            return ",";
        }
        /// <summary>  
        /// Indica si se debe contar el número de resultados en las consultas.  
        /// </summary>  
        /// <returns>Devuelve false indicando que no se cuenta el número de resultados.</returns>  
        public bool UsarResultCount()
        {
            return false;
        }
        /// <summary>  
        /// Inicializa las preferencias de la tabla.  
        /// </summary>  
        /// <param name="bPrmExistenPreferencias">Indica si existen preferencias previas.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal InicializarPreferencias(SalBoolean bPrmExistenPreferencias)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Cambia la cláusula ORDER BY en las consultas.  
        /// </summary>  
        /// <param name="sPrmOrderBy">Nueva cláusula ORDER BY.</param>  
        /// <returns>Devuelve la cláusula ORDER BY modificada.</returns>  
        public SalString CambiarOrderBy(SalString sPrmOrderBy)
        {
            return sPrmOrderBy;
        }
        /// <summary>  
        /// Devuelve el índice de la columna utilizada para restricciones.  
        /// </summary>  
        /// <returns>Devuelve el índice de la primera columna (1).</returns>  
        public SalDecimal ColumnaDeRestriccion()
        {
            //
            //se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
            return 1;
        }
        /// <summary>  
        /// Modifica la cláusula WHERE en las consultas.  
        /// </summary>  
        /// <param name="psStringDesde">Valor inicial para la cláusula WHERE.</param>  
        /// <param name="psStringHasta">Valor final para la cláusula WHERE.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal ModificaWhere(SalString psStringDesde, SalString psStringHasta)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna "Número de Cuadre".  
        /// </summary>  
        /// <returns>Devuelve true indicando que la operación fue exitosa.</returns>  
        public SalDecimal colNumCuadre_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna "Descripción de Cuadre".  
        /// </summary>  
        /// <returns>Devuelve true indicando que la operación fue exitosa.</returns>  
        public SalDecimal colDescCuadre_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna "Módulo de Cuadre".  
        /// </summary>  
        /// <returns>Devuelve true indicando que la operación fue exitosa.</returns>  
        public SalDecimal colModuloCuadre_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna "Fecha de Cuadre".  
        /// </summary>  
        /// <returns>Devuelve true indicando que la operación fue exitosa.</returns>  
        public SalDecimal colFechaCuadre_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna "Usuario de Cuadre".  
        /// </summary>  
        /// <returns>Devuelve true indicando que la operación fue exitosa.</returns>  
        public SalDecimal colUsuarioCuadre_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna "Fecha Desde Cuadre".  
        /// </summary>  
        /// <returns>Devuelve true indicando que la operación fue exitosa.</returns>  
        public SalDecimal colFechaDesdeCuadre_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna "Fecha Hasta Cuadre".  
        /// </summary>  
        /// <returns>Devuelve true indicando que la operación fue exitosa.</returns>  
        public SalDecimal colFechaHastaCuadre_AM_ForcePopulate()
        {
            return true;
        }
        #endregion
    }
    /// <summary>  
    /// Clase que representa una tabla de selección de cuentas contables en el sistema.  
    /// Contiene métodos y propiedades para inicializar la interfaz, realizar búsquedas,  
    /// manejar filas y columnas, y proteger columnas.  
    /// Además, permite seleccionar todas las cuentas, marcar cuentas específicas,  
    /// insertar nuevas filas y eliminar filas existentes.  
    /// </summary>  
    internal class tblSelCuentas : clsChldTblBusqueda
    {
        #region Controles Visuales
        //KGO se crea esta variable ya que en la calse de gupta esta establecido entre las variables estaticas.
        public bool lbSeleccionar { get { return c<tblSelCuentas>().c_lbSeleccionar; } set { c<tblSelCuentas>().c_lbSeleccionar = value; } }
        public bool c_lbSeleccionar = false;
        public tblEntesAuxiliar tblEntesAuxiliar = null;

        [Control("_colCuentaCG", "Cuenta Contable", TipoControl.ColumnaDialogoSeleccion, TipoValor.TextoMascara, 1, false, "", "", "", "")]
        public clscolCuentaContableF1 _colCuentaCG { get { return colCuentaCG; } set { if (colCuentaCG.AM_Validate(value, this)) colCuentaCG = value; } }
        public clscolCuentaContableF1 colCuentaCG = new clscolCuentaContableF1();
        [Control("_colCuentaCGDesc", "Descripción", TipoControl.Columna, TipoValor.Texto, 1, false, "", "", "", "")]
        public clscolVisible _colCuentaCGDesc { get { return colCuentaCGDesc; } set { if (colCuentaCGDesc.AM_Validate(value, this)) colCuentaCGDesc = value; } }
        public clscolVisible colCuentaCGDesc = new clscolVisible();

        #endregion
        public dlgCGAuxWiz dlgCGAuxWiz = null;
        #region Constructor
        /// <summary>  
        /// Constructor de la clase `tblSelCuentas`.  
        /// Inicializa la interfaz de la tabla de selección de cuentas, configurando eventos y propiedades necesarias.  
        /// </summary>  
        public tblSelCuentas()
        {
            InicializarInterfaz();
            MarcarDobleclick = true;
            ObtenerPantalla();
        }
        #endregion
        /// <summary>  
        /// Método para inicializar la interfaz de la tabla de selección de cuentas.  
        /// Configura los eventos asociados a las columnas y controles de la tabla.  
        /// </summary>  
        public void InicializarInterfaz()
        {
            this.clear_SAM_RowHeaderClick();
            this.SAM_RowHeaderClick_Event += tblSelCuentas_SAM_RowHeaderClick;
            this.clear_SAM_Click();
            this.SAM_Click_Event += tblSelCuentas_SAM_Click;
            this.clear_AM_ClassNewRow();
            this.AM_ClassNewRow_Event += tblSelCuentas_AM_ClassNewRow;
            this.clear_AM_ClassDelRow();
            this.AM_ClassDelRow_Event += tblSelCuentas_AM_ClassDelRow;
            colCuentaCG.clear_AM_InitCOLHelp();
            colCuentaCG.AM_InitCOLHelp_Event += colCuentaCG_AM_InitCOLHelp;
            colCuentaCG.clear_AM_ForcePopulate();
            colCuentaCG.AM_ForcePopulate_Event += colCuentaCG_AM_ForcePopulate;
            colCuentaCG.clear_AM_Validate();
            colCuentaCG.AM_Validate_Event += colCuentaCG_AM_Validate;
            colCuentaCG.clear_AM_SortCol();
            colCuentaCG.AM_SortCol_Event += colCuentaCG_AM_SortCol;
            colCuentaCGDesc.clear_AM_ForcePopulate();
            colCuentaCGDesc.AM_ForcePopulate_Event += colCuentaCGDesc_AM_ForcePopulate;
            colCuentaCGDesc.clear_AM_SortCol();
            colCuentaCGDesc.AM_SortCol_Event += colCuentaCGDesc_AM_SortCol;
        }
        #region Funciones
        /// <summary>  
        /// Inicializa la tabla con los parámetros necesarios para realizar consultas SQL.  
        /// Configura las variables de tabla, columnas, restricciones y opciones de búsqueda.  
        /// </summary>  
        /// <param name="sTabla">Referencia a la tabla SQL que se utilizará.</param>  
        /// <param name="sColumnas">Referencia a las columnas que se incluirán en la consulta.</param>  
        /// <param name="sIntoVars">Referencia a las variables que recibirán los valores de las columnas.</param>  
        /// <param name="hwndDF">Referencia al manejador de la ventana de datos.</param>  
        /// <param name="bRestrict">Indica si se aplicarán restricciones en la consulta.</param>  
        /// <param name="bBusquedaExacta">Indica si la búsqueda será exacta.</param>  
        /// <param name="bManejarVentana">Indica si se manejará la ventana asociada.</param>  
        /// <param name="nFlags1">Referencia a los flags adicionales para la configuración.</param>  
        /// <param name="nFlags2">Referencia a los flags adicionales para la configuración.</param>  
        /// <returns>Devuelve true si la inicialización fue exitosa.</returns>  
        public override bool InitTable(ref SalString sTabla, ref SalString sColumnas, ref SalString sIntoVars, ref APP hwndDF, ref SalBoolean bRestrict, ref SalBoolean bBusquedaExacta, ref SalBoolean bManejarVentana, ref SalDecimal nFlags1, ref SalDecimal nFlags2)
        {
            Set(ref sTabla, SqlNet.ConcatCompany("CUENTA_CONTABLE "));
            Set(ref sColumnas, "CUENTA_CONTABLE, DESCRIPCION ");
            Set(ref sIntoVars, ":colCuentaCG, :colCuentaCGDesc");
            //
            // Set(ref hwndDF, hWndNULL);
            Set(ref bRestrict, false);
            Set(ref bBusquedaExacta, true);
            Set(ref bManejarVentana, false);
            //
            Set(ref bPopulateOnCreate, false);
            //
            //
            return true;
        }
        /// <summary>  
        /// Obtiene la opción seleccionada para la tabla de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve una cadena con la descripción de la opción seleccionada.</returns>  
        public SalString GetOpcion()
        {
            return "Seleccción de Cuentas";
        }
        /// <summary>  
        /// Obtiene el origen de los datos para la tabla de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve una cadena con el origen de los datos.</returns>  
        public SalString GetOrigen()
        {
            return CG_ORIGEN + "tblSelCuentas";
        }
        /// <summary>  
        /// Obtiene las declaraciones SQL asociadas a la tabla de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve una cadena con las declaraciones SQL.</returns>  
        public SalString GetStatements()
        {
            return "";
        }
        /// <summary>  
        /// Obtiene las variables utilizadas en la tabla de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve una cadena con las variables utilizadas.</returns>  
        public SalString GetVariables()
        {
            return "";
        }
        /// <summary>  
        /// Crea una cláusula WHERE para filtrar los datos de la tabla de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve una cadena con la cláusula WHERE generada.</returns>  
        public SalString CreateWHERE()
        {
            SalString lsWhere = new SalString();
            //
            if (dlgCGAuxWiz.isListaCuentasCuadre)
            {
                //
                Set(ref lsWhere, "WHERE CUENTA_CONTABLE IN ( " + dlgCGAuxWiz.isListaCuentasCuadre + " ) ");
                //
            }
            return lsWhere;
        }
        /// <summary>  
        /// Configura las imágenes de las filas en la tabla de cuentas contables.  
        /// </summary>  
        /// <param name="nRowFlag1">Referencia al flag de la primera fila.</param>  
        /// <param name="nRowFlag2">Referencia al flag de la segunda fila.</param>  
        /// <param name="nRowFlag3">Referencia al flag de la tercera fila.</param>  
        /// <param name="sResourceList">Referencia a la lista de recursos de imágenes.</param>  
        /// <returns>Devuelve true si la configuración fue exitosa.</returns>  
        public bool RowPictures(ref ROW_Flags nRowFlag1, ref ROW_Flags nRowFlag2, ref ROW_Flags nRowFlag3, ref SalString sResourceList)
        {
            Set(ref nRowFlag1, ROW_Flags.ROW_UserFlag1);
            Set(ref nRowFlag2, 0);
            Set(ref nRowFlag3, 0);
            Set(ref sResourceList, "Selecci.png");
            return true;
        }
        /// <summary>  
        /// Realiza acciones posteriores a la inicialización de la tabla de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal AfterInitTable()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Obtiene el tamaño y la ubicación de la ventana de la tabla de cuentas contables.  
        /// </summary>  
        /// <param name="nWidth">Referencia al ancho de la ventana.</param>  
        /// <param name="nHeight">Referencia a la altura de la ventana.</param>  
        /// <param name="nX">Referencia a la posición X de la ventana.</param>  
        /// <param name="nY">Referencia a la posición Y de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal GetWindowSizeAndLoc(ref SalDecimal nWidth, ref SalDecimal nHeight, ref SalDecimal nX, ref SalDecimal nY)
        {
            //$Siguiente es Call$
            //  SalGetWindowSize(hWndTable, nWidth, nHeight);
            //$Siguiente es Call$
            //SalGetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Establece el tamaño y la ubicación de la ventana de la tabla de cuentas contables.  
        /// </summary>  
        /// <param name="nWidth">Ancho de la ventana.</param>  
        /// <param name="nHeight">Altura de la ventana.</param>  
        /// <param name="nX">Posición X de la ventana.</param>  
        /// <param name="nY">Posición Y de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal SetWindowSizeAndLoc(SalDecimal nWidth, SalDecimal nHeight, SalDecimal nX, SalDecimal nY)
        {
            //$Siguiente es Call$
            //SalSetWindowSize(hWndTable, nWidth, nHeight);
            ////
            ////Se comentan las llamadas para que compile
            ////$Siguiente es Call$
            //SetWindowInVisiblePos(hWndTable, nWidth, nHeight, nX, nY);
            ////
            ////$Siguiente es Call$
            //SalSetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Se ejecuta después de que se ha poblado la tabla.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal AfterPopulate()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Indica si se debe usar la cláusula DISTINCT en las consultas.  
        /// </summary>  
        /// <returns>Devuelve false, indicando que no se utiliza DISTINCT.</returns>  
        public bool UsarDistinct()
        {
            return false;
        }
        /// <summary>  
        /// Determina si se debe realizar una búsqueda inicial al cargar la tabla.  
        /// </summary>  
        /// <returns>Devuelve true, indicando que se realiza una búsqueda inicial.</returns>  
        public bool HacerBusquedaInicial()
        {
            return true;
        }
        /// <summary>  
        /// Devuelve el separador utilizado en las consultas.  
        /// </summary>  
        /// <returns>Devuelve una cadena con el separador, en este caso una coma.</returns>  
        public SalString DevolverSeparador()
        {
            return ",";
        }
        /// <summary>  
        /// Indica si se debe contar el número de resultados en las consultas.  
        /// </summary>  
        /// <returns>Devuelve false, indicando que no se cuenta el número de resultados.</returns>  
        public bool UsarResultCount()
        {
            return false;
        }
        /// <summary>  
        /// Inicializa las preferencias de la tabla.  
        /// </summary>  
        /// <param name="bPrmExistenPreferencias">Indica si existen preferencias previas.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal InicializarPreferencias(SalBoolean bPrmExistenPreferencias)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Cambia el orden de las columnas en la consulta.  
        /// </summary>  
        /// <param name="sPrmOrderBy">Cadena que especifica el nuevo orden.</param>  
        /// <returns>Devuelve la cadena con el nuevo orden.</returns>  
        public SalString CambiarOrderBy(SalString sPrmOrderBy)
        {
            return sPrmOrderBy;
        }
        /// <summary>  
        /// Devuelve el índice de la columna utilizada como restricción.  
        /// </summary>  
        /// <returns>Devuelve el índice de la primera columna, usualmente el código.</returns>  
        public SalDecimal ColumnaDeRestriccion()
        {
            //
            //se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
            return 1;
        }
        /// <summary>  
        /// Modifica la cláusula WHERE de la consulta.  
        /// </summary>  
        /// <param name="psStringDesde">Valor inicial del rango.</param>  
        /// <param name="psStringHasta">Valor final del rango.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal ModificaWhere(SalString psStringDesde, SalString psStringHasta)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Selecciona todas las cuentas en la tabla según el parámetro proporcionado.  
        /// </summary>  
        /// <param name="pnSeleccionar">Indica si se deben seleccionar (1), deseleccionar (0) o alternar la selección (-1).</param>  
        /// <returns>Devuelve true si la operación fue exitosa.</returns>  
        public bool SeleccionarTodasCtas(SalDecimal pnSeleccionar)
        {
            SalDecimal nCurRow = new SalDecimal();
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            Set(ref nCurRow, TBL_MinRow);
            //
            switch (pnSeleccionar)
            {
                case 1:
                    {
                        //
                        c<tblSelCuentas>().c_lbSeleccionar = true;
                        break;
                    }
                case 0:
                    {
                        //
                        c<tblSelCuentas>().c_lbSeleccionar = false;
                        break;
                    }
                default:
                    {
                        c<tblSelCuentas>().c_lbSeleccionar = !lbSeleccionar;
                        break;
                    }
            }
            //
            //
            while (SalTblFindNextRow(this, ref nCurRow, 0, ROW_Flags.ROW_Hidden | ROW_Flags.ROW_MarkDeleted))
            {
                //$Siguiente es Call$
                SalTblFetchRow(this, nCurRow);
                //
                //$Siguiente es Call$
                //KGO
                // SalTblSetRowFlags(this, nCurRow, ROW_Flags.ROW_UnusedFlag1, lbSeleccionar);
                SalTblSetRowFlags(this, nCurRow, ROW_Flags.ROW_UserFlag1, lbSeleccionar);
            }
            //
            //Se vuelve a pintar la ventana para que aparezcan las marcas
            //$Siguiente es Call$
            //  SalInvalidateWindow(dlgCGAuxWiz.tblSelCuentas);
            //
            //
            ComunicarMensajeAlUsuario("VisibleDialogo", "VisibleDialogo", TipoMensajeUsuario.VisibleDialogo);
            return lbOk;
        }
        /// <summary>  
        /// Marca o desmarca una cuenta específica en la tabla.  
        /// </summary>  
        /// <param name="pnLinea">Número de línea de la cuenta a marcar. Si es null, se marcan todas las cuentas seleccionadas.</param>  
        /// <returns>Devuelve true si la operación fue exitosa.</returns>  
        public bool MarcarCuenta(SalDecimal pnLinea)
        {
            SalDecimal nCurRow = new SalDecimal();
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            if (pnLinea == NUMBER_Null)
            {
                //
                Set(ref nCurRow, TBL_MinRow);
                //
                while (SalTblFindNextRow(this, ref nCurRow, ROW_Flags.ROW_Selected, 0))
                {
                    //$Siguiente es Call$
                    SalTblFetchRow(this, nCurRow);
                    if (pnLinea < 0)
                    {
                        Set(ref pnLinea, nCurRow);
                        //
                    }
                    //$Siguiente es Call$
                    SalTblSetRowFlags(this, pnLinea, ROW_Flags.ROW_UserFlag1, true);
                }
            }
            else
            {
                //
                if (!SalTblQueryRowFlags(this, pnLinea, ROW_Flags.ROW_UserFlag1))
                {
                    //$Siguiente es Call$
                    SalTblSetRowFlags(this, pnLinea, ROW_Flags.ROW_UserFlag1, true);
                }
                else
                {
                    //$Siguiente es Call$
                    SalTblSetRowFlags(this, pnLinea, ROW_Flags.ROW_UserFlag1, false);
                    //
                }
                //
                //
                //Se vuelve a pintar la ventana para que aparezcan las marcas
            }
            //$Siguiente es Call$
            //SalInvalidateWindow(dlgCGAuxWiz.tblSelCuentas);
            //
            //
            //
            return lbOk;
        }
        /// <summary>  
        /// Protege o habilita las columnas de la tabla según el parámetro proporcionado.  
        /// </summary>  
        /// <param name="pbProteger">Indica si se deben proteger (true) o habilitar (false) las columnas.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal ProtegerColumnas(SalBoolean pbProteger)
        {
            APP hwndColumna = new APP();
            //
            Set(ref hwndColumna, SalTblGetColumnWindow(dlgCGAuxWiz.tblSelCuentas, 0, COL_GetID));
            //
            //$Siguiente es Call$
            //if ( (dlgCGAuxWiz.tblSelCuentas.FilaSeleccionada as RowClass).esNuevo == true || ((dlgCGAuxWiz.tblSelCuentas.FilaSeleccionada as RowClass).esModificado == true && (dlgCGAuxWiz.tblSelCuentas.FilaSeleccionada as RowClass).esNuevo == true))
            //{
            //    SalTblSetColumnFlags(hwndColumna, Globales.COL_Editable, true);
            //    return new SalDecimal(1);
            //}

            SalTblSetColumnFlags(hwndColumna, Globales.COL_Editable, !pbProteger);


            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Inserta una nueva fila en la tabla.  
        /// </summary>  
        /// <param name="bValidar">Indica si se debe validar la fila antes de insertarla.</param>  
        /// <returns>Devuelve true si la operación fue exitosa.</returns>  
        public bool InsertNewRow(SalBoolean bValidar)
        {
            SalDecimal nCuentaCols = new SalDecimal();
            SalDecimal nScrollPos = new SalDecimal();
            SalDecimal nMaxRow = new SalDecimal();
            SalDecimal nMinRow = new SalDecimal();
            SalDecimal bFlag = new SalDecimal();
            SalBoolean bOk = new SalBoolean();
            APP hwndCol1 = new APP();
            SalDecimal nNewRow = new SalDecimal();
            Set(ref bOk, false);
            //
            //$Siguiente es Call$
            ProtegerColumnas(false);
            //
            Set(ref nCuentaCols, 1);
            //! Obtener el handle de la primera columna visible
            while (true)
            {
                Set(ref hwndCol1, SalTblGetColumnWindow(this, nCuentaCols, COL_GetID));
                if (hwndCol1 == null || SalIsWindowVisible(hwndCol1))
                {
                    break;
                }
                else
                {
                    Set(ref nCuentaCols, nCuentaCols + 1);
                }
            }
            Set(ref nNewRow, SalTblInsertRow(this, TBL_MaxRow));
            //$Siguiente es Call$
            //SalUpdateWindow(this);
            if (nNewRow != TBL_Error)
            {
                //$Siguiente es Call$
                // SalTblSetFocusCell(tblSelCuentas, nNewRow, hwndCol1, 0, 0);
                //
                //$Siguiente es Call$
                SalTblSetRowFlags(this, nNewRow, ROW_Flags.ROW_New, true);
                //
                Set(ref bOk, true);
            }
            else
            {
                //$Siguiente es Call$
                SPSMessageBox("Error insertando un nuevo row en el table-window", "Wizard de Cuadre entre CG y Auxiliares", MBF_IconExclamation, CONTINUAR);
                //
                //Se marca la columna como editada para que se haga validación y no se permita dejar en blanco.
            }
            //$Siguiente es Call$

            //SalSetFieldEdit(this.colCuentaCG, true);
            this.colCuentaCG.Habilitado = true;
            ProtegerColumnas(false);
            //
            return bOk;
        }
        /// <summary>  
        /// Elimina una fila seleccionada de la tabla.  
        /// Verifica si hay más de una fila seleccionada, muestra un mensaje de advertencia si es el caso,  
        /// y solicita confirmación antes de proceder con la eliminación.  
        /// </summary>  
        /// <returns>Devuelve true si la fila fue eliminada correctamente, false en caso contrario.</returns>  
        public bool HacerDelRow()
        {
            SalBoolean lbOk = new SalBoolean();
            SalString sMensaje = new SalString();
            SalBoolean bMasDeUnRow = new SalBoolean();
            SalDecimal nRow2 = new SalDecimal();
            SalDecimal nRow1 = new SalDecimal();
            //Primero se ve si hay mas de un row marcado para borrar
            Set(ref nRow1, TBL_MinRow);
            //Buscamos el primer row marcado
            if (SalTblFindNextRow(this, ref nRow1, ROW_Flags.ROW_Selected, ROW_Flags.ROW_MarkDeleted | ROW_Flags.ROW_Hidden))
            {
                Set(ref nRow2, nRow1);
                //Buscamos a ver si hay un segundo row marcado
                if (SalTblFindNextRow(this, ref nRow1, ROW_Flags.ROW_Selected, ROW_Flags.ROW_MarkDeleted | ROW_Flags.ROW_Hidden))
                {
                    //Ajustamos al bandera a si hay mas de un row
                    if (nRow1 != nRow2)
                    {
                        Set(ref bMasDeUnRow, true);
                    }
                }
            }
            if (bMasDeUnRow)
            {
                //$Siguiente es Call$
                SPSMessageBox("Sólo puede eliminar una línea de la tabla a la vez.", "Eliminación de Registros", MBF_IconHand, CONTINUAR);
                return false;
            }
            Set(ref sMensaje, "¿Está seguro de que desea borrar esta línea?");
            if (bMasDeUnRow)
            {
                Set(ref sMensaje, "¿Está seguro de que desea borrar estas líneas?");
            }
            if (SPSMessageBox(sMensaje, "Advertencia", MBF_IconQuestion, "Borrar,Cancelar") == MB_Button2)
            {
                return false;
                //
                //If NOT ..DeleteConfirm( )
                //Return FALSE
                //
                //
                //Borrar el row
            }
            Set(ref nRow1, TBL_MinRow);
            Set(ref lbOk, SalTblFindNextRow(this, ref nRow1, ROW_Flags.ROW_Selected, ROW_Flags.ROW_MarkDeleted | ROW_Flags.ROW_Hidden));
            if (lbOk)
            {
                Set(ref lbOk, SalTblSetRowFlags(this, nRow1, ROW_Flags.ROW_MarkDeleted | ROW_Flags.ROW_Hidden, true));
                //
                //Si estaba marcada entonces se desmarca
                Set(ref lbOk, SalTblSetRowFlags(this, nRow1, ROW_Flags.ROW_UnusedFlag1, false));
                //
                //
                //Se limpia la tabla de entes auxiliar para que no quede con información de la cuenta reción borrada
            }
            if (lbOk)
            {
                //
                //$Siguiente es Call$
                tblEntesAuxiliar.LimpiarTabla();
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Maneja el evento de clic en el encabezado de una fila de la tabla.  
        /// Marca la cuenta asociada a la fila seleccionada y actualiza la información del ente auxiliar.  
        /// </summary>  
        /// <param name="lParam">Parámetro que indica la posición de la fila seleccionada.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblSelCuentas_SAM_RowHeaderClick(SalDecimal lParam)
        {
            //Solo se permite marcar el asiento si está activo el botón asociado
            //$Siguiente es Call$
            MarcarCuenta(this.Position);

            //$Siguiente es Call$
            //dlgCGAuxWiz.PoblarEnteAux(lParam);
            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en una fila de la tabla.  
        /// Protege o desbloquea las columnas según si la fila seleccionada es nueva o existente.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblSelCuentas_SAM_Click()
        {
            //$Siguiente es Call$

            //$Siguiente es Call$
            //ProtegerColumnas(true);
            if (this.FilaSeleccionada != null && (this.FilaSeleccionada as RowClass).esNuevo)
            {
                ProtegerColumnas(false);
            }
            else
            {
                dlgCGAuxWiz.PoblarEnteAux(this.Position);
                ProtegerColumnas(true);

            }

            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea una nueva fila en la tabla.  
        /// Valida la información antes de insertar la fila.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblSelCuentas_AM_ClassNewRow()
        {
            //
            return InsertNewRow(true);
        }
        /// <summary>  
        /// Elimina una fila de la tabla si hay filas disponibles.  
        /// Llama al método HacerDelRow para realizar la eliminación.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblSelCuentas_AM_ClassDelRow()
        {
            //
            if (nTotRows)
            {
                //$Siguiente es Call$
                HacerDelRow();
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Inicializa la columna de ayuda para cuentas contables.  
        /// Configura las propiedades de la columna, como descripción y restricciones.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colCuentaCG_AM_InitCOLHelp()
        {
            Set(ref colCuentaCG.hwndDescripcion, colCuentaCGDesc);
            Set(ref colCuentaCG.bSoloConMovimiento, true);
            Set(ref colCuentaCG.bPermiteBlancos, false);
            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza la población de datos en la columna de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve true indicando que la operación fue exitosa.</returns>  
        public SalDecimal colCuentaCG_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Valida la columna de cuentas contables.  
        /// Marca la fila como no nueva después de la validación.  
        /// </summary>  
        /// <param name="MyValue">Valor de la pantalla que se está validando.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colCuentaCG_AM_Validate(Pantalla MyValue)
        {
            //
            //$Siguiente es Call$
            SalTblSetRowFlags(this, this.nRow, ROW_Flags.ROW_New, false);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Indica si se puede realizar ordenamiento sobre la columna de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve false indicando que el ordenamiento no está permitido.</returns>  
        public SalDecimal colCuentaCG_AM_SortCol()
        {
            //Indica si se puede hacer ordenamiento sobre ella
            return false;
        }
        /// <summary>  
        /// Fuerza la población de datos en la columna de descripción de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve true indicando que la operación fue exitosa.</returns>  
        public SalDecimal colCuentaCGDesc_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Indica si se puede realizar ordenamiento sobre la columna de descripción de cuentas contables.  
        /// </summary>  
        /// <returns>Devuelve false indicando que el ordenamiento no está permitido.</returns>  
        public SalDecimal colCuentaCGDesc_AM_SortCol()
        {
            //Indica si se puede hacer ordenamiento sobre ella
            return false;
        }
        #endregion
    }
    /// <summary>  
    /// Clase `tblEntesAuxiliar` que representa una tabla auxiliar en el sistema.  
    /// Contiene métodos y propiedades para inicializar la interfaz,  
    /// gestionar columnas y deshabilitar la ventana.  
    /// </summary>  
    internal class tblEntesAuxiliar : clsChldTblBusqueda
    {
        #region Controles Visuales  
        /// <summary>  
        /// Referencia a la tabla de selección de cuentas asociada.  
        /// </summary>  
        public tblSelCuentas tblSelCuentas = null;
        [Control("_colEnteAux", "COLUMNA", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colEnteAux { get { return colEnteAux; } set { if (colEnteAux.AM_Validate(value, this)) colEnteAux = value; } }
        public clscolVisible colEnteAux = new clscolVisible();
        [Control("_colEnteAuxDesc", "Descripción", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colEnteAuxDesc { get { return colEnteAuxDesc; } set { if (colEnteAuxDesc.AM_Validate(value, this)) colEnteAuxDesc = value; } }
        public clscolVisible colEnteAuxDesc = new clscolVisible();
        #endregion
        /// <summary>  
        /// Referencia al diálogo asociado.  
        /// </summary>  
        public dlgCGAuxWiz dlgCGAuxWiz = null;
        #region Constructor  
        /// <summary>  
        /// Constructor de la clase que inicializa la interfaz y deshabilita la ventana.  
        /// </summary>  
        public tblEntesAuxiliar()
        {
            InicializarInterfaz();
            SalDisableWindow(this);

        }
        #endregion
        #region Funciones  
        /// <summary>  
        /// Método para inicializar la interfaz, configurando eventos y limpiando estados previos.  
        /// </summary>  
        public void InicializarInterfaz()
        {
            colEnteAux.clear_AM_ForcePopulate();
            colEnteAux.AM_ForcePopulate_Event += colEnteAux_AM_ForcePopulate;
            colEnteAux.clear_AM_SortCol();
            colEnteAux.AM_SortCol_Event += colEnteAux_AM_SortCol;
            colEnteAuxDesc.clear_AM_ForcePopulate();
            colEnteAuxDesc.AM_ForcePopulate_Event += colEnteAuxDesc_AM_ForcePopulate;
            colEnteAuxDesc.clear_AM_SortCol();
            colEnteAuxDesc.AM_SortCol_Event += colEnteAuxDesc_AM_SortCol;
        }
        /// <summary>  
        /// Inicializa la tabla con los parámetros proporcionados.  
        /// Configura la tabla, columnas, variables y otras propiedades necesarias para su uso.  
        /// </summary>  
        /// <param name="sTabla">Nombre de la tabla a inicializar.</param>  
        /// <param name="sColumnas">Columnas que se utilizarán en la tabla.</param>  
        /// <param name="sIntoVars">Variables asociadas a las columnas.</param>  
        /// <param name="hwndDF">Referencia al manejador de la ventana.</param>  
        /// <param name="bRestrict">Indica si se aplican restricciones en la tabla.</param>  
        /// <param name="bBusquedaExacta">Indica si la búsqueda debe ser exacta.</param>  
        /// <param name="bManejarVentana">Indica si se debe manejar la ventana.</param>  
        /// <param name="nFlags1">Primer conjunto de banderas para configuración.</param>  
        /// <param name="nFlags2">Segundo conjunto de banderas para configuración.</param>  
        /// <returns>Devuelve true si la inicialización fue exitosa.</returns>  
        public override bool InitTable(ref SalString sTabla, ref SalString sColumnas, ref SalString sIntoVars, ref APP hwndDF, ref SalBoolean bRestrict, ref SalBoolean bBusquedaExacta, ref SalBoolean bManejarVentana, ref SalDecimal nFlags1, ref SalDecimal nFlags2)
        {
            //
            //
            //
            //
            if (dlgCGAuxWiz.isEnteAuxTabla)
            {
                Set(ref sTabla, SqlNet.ConcatCompany(dlgCGAuxWiz.isEnteAuxTabla));
            }
            else
            {
                Set(ref sTabla, SqlNet.ConcatCompany("cuenta_contable"));
                //
            }
            if (dlgCGAuxWiz.isEnteAuxColumnas)
            {
                Set(ref sColumnas, dlgCGAuxWiz.isEnteAuxColumnas);
            }
            else
            {
                Set(ref sColumnas, "cuenta_contable, descripcion");
                //
            }
            Set(ref sIntoVars, " :colEnteAux, :colEnteAuxDesc ");
            //
            // Set(ref hwndDF, hWndNULL);
            Set(ref bRestrict, false);
            Set(ref bBusquedaExacta, true);
            Set(ref bManejarVentana, false);
            //
            Set(ref bPopulateOnCreate, false);
            //
            return true;
        }
        /// <summary>  
        /// Obtiene la opción seleccionada en el contexto actual.  
        /// </summary>  
        /// <returns>Devuelve una cadena con la opción seleccionada.</returns>  
        public SalString GetOpcion()
        {
            return "Seleccción de Cuentas";
        }
        /// <summary>  
        /// Obtiene el origen asociado a la tabla auxiliar.  
        /// </summary>  
        /// <returns>Devuelve una cadena con el origen configurado.</returns>  
        public SalString GetOrigen()
        {
            return CG_ORIGEN + "tblEntesAuxiliar";
        }
        /// <summary>  
        /// Obtiene las declaraciones SQL asociadas a la tabla.  
        /// </summary>  
        /// <returns>Devuelve una cadena con las declaraciones SQL.</returns>  
        public SalString GetStatements()
        {
            return "";
        }
        /// <summary>  
        /// Obtiene las variables asociadas a la tabla.  
        /// </summary>  
        /// <returns>Devuelve una cadena con las variables configuradas.</returns>  
        public SalString GetVariables()
        {
            return "";
        }
        /// <summary>  
        /// Crea una cláusula WHERE basada en las columnas y valores proporcionados.  
        /// </summary>  
        /// <returns>Devuelve una cadena con la cláusula WHERE generada.</returns>  
        public SalString CreateWHERE()
        {
            GuptaCollection<SalString> StringArray = new GuptaCollection<SalString>();
            SalDecimal lnNumCols = new SalDecimal();
            SalString lsWhere = new SalString();
            //
            //
            Set(ref lnNumCols, Sal.Tokenize(dlgCGAuxWiz.isEnteAuxNombreCol, "", ",", ref StringArray));
            //
            while (lnNumCols > 0)
            {
                //
                if (lsWhere)
                {
                    Set(ref lsWhere, lsWhere + " OR " + StringArray[lnNumCols - 1] + " = '" + dlgCGAuxWiz.tblSelCuentas.colCuentaCG.colValorTexto + "'");
                }
                else
                {
                    Set(ref lsWhere, " WHERE " + StringArray[lnNumCols - 1] + " = '" + dlgCGAuxWiz.tblSelCuentas.colCuentaCG.colValorTexto + "'");
                    //
                }
                Set(ref lnNumCols, lnNumCols - 1);
            }
            //
            //
            return lsWhere;
        }
        /// <summary>  
        /// Configura las imágenes de las filas en la tabla.  
        /// </summary>  
        /// <param name="nRowFlag1">Bandera de la primera fila.</param>  
        /// <param name="nRowFlag2">Bandera de la segunda fila.</param>  
        /// <param name="nRowFlag3">Bandera de la tercera fila.</param>  
        /// <param name="sResourceList">Lista de recursos para las imágenes.</param>  
        /// <returns>Devuelve true si la configuración fue exitosa.</returns>  
        public bool RowPictures(ref ROW_Flags nRowFlag1, ref ROW_Flags nRowFlag2, ref ROW_Flags nRowFlag3, ref SalString sResourceList)
        {

            Set(ref nRowFlag1, ROW_Flags.ROW_UserFlag1);

            Set(ref nRowFlag2, 0);
            Set(ref nRowFlag3, 0);
            Set(ref sResourceList, "Selecci.png");
            return true;
        }
        /// <summary>  
        /// Realiza acciones posteriores a la inicialización de la tabla.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de las acciones.</returns>  
        public SalDecimal AfterInitTable()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Obtiene el tamaño y la ubicación de la ventana.  
        /// Recupera las dimensiones y la posición de la ventana especificada.  
        /// </summary>  
        /// <param name="nWidth">Referencia para almacenar el ancho de la ventana.</param>  
        /// <param name="nHeight">Referencia para almacenar la altura de la ventana.</param>  
        /// <param name="nX">Referencia para almacenar la posición X de la ventana.</param>  
        /// <param name="nY">Referencia para almacenar la posición Y de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal GetWindowSizeAndLoc(ref SalDecimal nWidth, ref SalDecimal nHeight, ref SalDecimal nX, ref SalDecimal nY)
        {
            ////$Siguiente es Call$
            //SalGetWindowSize(hWndTable, nWidth, nHeight);
            ////$Siguiente es Call$
            //SalGetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Establece el tamaño y la ubicación de la ventana.  
        /// Configura las dimensiones y la posición de la ventana especificada.  
        /// </summary>  
        /// <param name="nWidth">Ancho deseado de la ventana.</param>  
        /// <param name="nHeight">Altura deseada de la ventana.</param>  
        /// <param name="nX">Posición X deseada de la ventana.</param>  
        /// <param name="nY">Posición Y deseada de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal SetWindowSizeAndLoc(SalDecimal nWidth, SalDecimal nHeight, SalDecimal nX, SalDecimal nY)
        {
            //$Siguiente es Call$
            //SalSetWindowSize(hWndTable, nWidth, nHeight);
            //
            //Se comentan las llamadas para que compile
            //$Siguiente es Call$
            //SetWindowInVisiblePos(hWndTable, nWidth, nHeight, nX, nY);
            //
            //$Siguiente es Call$
            //SalSetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Realiza acciones posteriores a la población de datos en la tabla.  
        /// Este método se ejecuta después de que los datos han sido cargados en la tabla.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal AfterPopulate()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Indica si se debe usar la cláusula DISTINCT en las consultas SQL.  
        /// Determina si los resultados de las consultas deben ser únicos.  
        /// </summary>  
        /// <returns>Devuelve false, indicando que no se debe usar DISTINCT.</returns>  
        public bool UsarDistinct()
        {
            return false;
        }
        /// <summary>  
        /// Indica si se debe realizar una búsqueda inicial al cargar la tabla.  
        /// Determina si se ejecuta una consulta inicial automáticamente.  
        /// </summary>  
        /// <returns>Devuelve true, indicando que se debe realizar una búsqueda inicial.</returns>  
        public bool HacerBusquedaInicial()
        {
            return true;
        }
        /// <summary>  
        /// Devuelve el separador utilizado en las consultas SQL.  
        /// Proporciona el carácter separador para las listas de valores en las consultas.  
        /// </summary>  
        /// <returns>Devuelve una cadena con el separador, en este caso una coma (,).</returns>  
        public SalString DevolverSeparador()
        {
            return ",";
        }
        /// <summary>  
        /// Indica si se debe contar el número de resultados en las consultas SQL.  
        /// Determina si se debe realizar un conteo de los registros obtenidos.  
        /// </summary>  
        /// <returns>Devuelve false, indicando que no se debe contar los resultados.</returns>  
        public bool UsarResultCount()
        {
            return false;
        }
        /// <summary>  
        /// Inicializa las preferencias de la tabla.  
        /// Configura las preferencias iniciales de la tabla según los parámetros proporcionados.  
        /// </summary>  
        /// <param name="bPrmExistenPreferencias">Indica si existen preferencias previas.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal InicializarPreferencias(SalBoolean bPrmExistenPreferencias)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Cambia la cláusula ORDER BY en las consultas SQL.  
        /// Modifica el orden de los resultados según el parámetro proporcionado.  
        /// </summary>  
        /// <param name="sPrmOrderBy">Nueva cláusula ORDER BY.</param>  
        /// <returns>Devuelve la cláusula ORDER BY modificada.</returns>  
        public SalString CambiarOrderBy(SalString sPrmOrderBy)
        {
            return sPrmOrderBy;
        }
        /// <summary>  
        /// Obtiene la columna de restricción utilizada en las consultas SQL.  
        /// Devuelve el índice de la columna que se utiliza para aplicar restricciones.  
        /// </summary>  
        /// <returns>Devuelve el índice de la primera columna de la tabla.</returns>  
        public SalDecimal ColumnaDeRestriccion()
        {
            //
            //se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
            return 1;
        }
        /// <summary>  
        /// Modifica la cláusula WHERE en las consultas SQL.  
        /// Ajusta los rangos de valores en la cláusula WHERE según los parámetros proporcionados.  
        /// </summary>  
        /// <param name="psStringDesde">Valor inicial del rango.</param>  
        /// <param name="psStringHasta">Valor final del rango.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal ModificaWhere(SalString psStringDesde, SalString psStringHasta)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza la población de datos en la columna "EnteAux".  
        /// Realiza acciones específicas para cargar datos en esta columna.  
        /// </summary>  
        /// <returns>Devuelve true, indicando que la operación fue exitosa.</returns>  
        public SalDecimal colEnteAux_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Indica si se puede realizar ordenamiento en la columna "EnteAux".  
        /// Determina si los datos de esta columna pueden ser ordenados.  
        /// </summary>  
        /// <returns>Devuelve false, indicando que no se puede realizar ordenamiento.</returns>  
        public SalDecimal colEnteAux_AM_SortCol()
        {
            //Indica si se puede hacer ordenamiento sobre ella
            return false;
        }
        /// <summary>  
        /// Fuerza la población de datos en la columna "EnteAuxDesc".  
        /// Realiza acciones específicas para cargar datos en esta columna.  
        /// </summary>  
        /// <returns>Devuelve true, indicando que la operación fue exitosa.</returns>  
        public SalDecimal colEnteAuxDesc_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Indica si se puede realizar ordenamiento en la columna "EnteAuxDesc".  
        /// Determina si los datos de esta columna pueden ser ordenados.  
        /// </summary>  
        /// <returns>Devuelve false, indicando que no se puede realizar ordenamiento.</returns>  
        public SalDecimal colEnteAuxDesc_AM_SortCol()
        {
            //Indica si se puede hacer ordenamiento sobre ella
            return false;
        }
        #endregion
    }
    /// <summary>  
    /// Clase que representa una tabla de búsqueda para el cuadre contable.  
    /// Contiene propiedades relacionadas con los filtros y parámetros necesarios para realizar búsquedas  
    /// y operaciones en el contexto de movimientos contables.  
    /// Incluye variables para manejar rangos de fechas, cuentas contables, origen de datos,  
    /// y banderas de control para la interfaz y el estado del filtro.  
    /// También se utiliza para interactuar con los diálogos de filtro y cuadre auxiliar.  
    /// </summary>  
    internal class tblCuadreConta : clsChldTblBusqueda
    {
        #region Variables
        /// <summary>  
        /// Número de asiento inicial para el filtro.  
        /// </summary>  
        public SalString isAsientoIni = new SalString();
        /// <summary>  
        /// Número de asiento final para el filtro.  
        /// </summary>  
        public SalString isAsientoFin = new SalString();
        /// <summary>  
        /// Código de cuenta contable inicial para el filtro.  
        /// </summary>  
        public SalString isCuentaIni = new SalString();
        /// <summary>  
        /// Código de cuenta contable final para el filtro.  
        /// </summary>  
        public SalString isCuentaFin = new SalString();
        /// <summary>  
        /// Fecha inicial para el filtro.  
        /// </summary>  
        public SalDate idtFechaIni = new SalDate();
        /// <summary>  
        /// Fecha final para el filtro.  
        /// </summary>  
        public SalDate idtFechaFin = new SalDate();
        /// <summary>  
        /// Origen de los movimientos contables.  
        /// </summary>  
        public SalString isOrigen = new SalString();
        /// <summary>  
        /// Origen excluido de los movimientos contables.  
        /// </summary>  
        public SalString isNOTOrigen = new SalString();
        /// <summary>  
        /// Contabilidad asociada a los movimientos.  
        /// </summary>  
        public SalString isContabilidad = new SalString();
        /// <summary>  
        /// Movimientos contables seleccionados.  
        /// </summary>  
        public SalString isMovimientos = new SalString();
        /// <summary>  
        /// Indicador de débitos y créditos en los movimientos.  
        /// </summary>  
        public SalString isDebitosCreditos = new SalString();
        /// <summary>  
        /// Diario mayor asociado a los movimientos.  
        /// </summary>  
        public SalString isDiarioMayor = new SalString();
        /// <summary>  
        /// Bandera que indica si se aplica un filtro.  
        /// </summary>  
        public SalBoolean bBanderaFiltro = new SalBoolean(false);
        /// <summary>  
        /// Bandera que indica si es la primera vez que se ejecuta el proceso.  
        /// </summary>  
        public SalBoolean bPrimeraVez = new SalBoolean(true);
        /// <summary>  
        /// Diálogo para configurar el filtro de movimientos contables.  
        /// </summary>  
        dlgFiltroCuadreConta dlgFiltroCuadreConta = new dlgFiltroCuadreConta();
        /// <summary>  
        /// Referencia al diálogo principal del asistente de cuadre auxiliar.  
        /// </summary>  
        public dlgCGAuxWiz dlgCGAuxWiz = null;
        #endregion
        #region Controles Visuales
        [Control("_colContaAsiento", "Transacción Contable", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaAsiento { get { return colContaAsiento; } set { if (colContaAsiento.AM_Validate(value, this)) colContaAsiento = value; } }
        public clscolVisible colContaAsiento = new clscolVisible();
        [Control("_colContaLinea", "Linea", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaLinea { get { return colContaLinea; } set { if (colContaLinea.AM_Validate(value, this)) colContaLinea = value; } }
        public clscolVisible colContaLinea = new clscolVisible();
        [Control("_colContaUbicacion", "Ubicacion", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaUbicacion { get { return colContaUbicacion; } set { if (colContaUbicacion.AM_Validate(value, this)) colContaUbicacion = value; } }
        public clscolVisible colContaUbicacion = new clscolVisible();
        [Control("_colContaOrigen", "Origen", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaOrigen { get { return colContaOrigen; } set { if (colContaOrigen.AM_Validate(value, this)) colContaOrigen = value; } }
        public clscolVisible colContaOrigen = new clscolVisible();
        [Control("_colContaContabilidad", "Contabilidad", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaContabilidad { get { return colContaContabilidad; } set { if (colContaContabilidad.AM_Validate(value, this)) colContaContabilidad = value; } }
        public clscolVisible colContaContabilidad = new clscolVisible();
        [Control("_colContaFecha", "Fecha", TipoControl.Columna, TipoValor.Fecha, 1, true, "", "", "", "")]
        public clscolVisible _colContaFecha { get { return colContaFecha; } set { if (colContaFecha.AM_Validate(value, this)) colContaFecha = value; } }
        public clscolVisible colContaFecha = new clscolVisible();
        [Control("_colContaCuenta", "Cuenta Contable", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaCuenta { get { return colContaCuenta; } set { if (colContaCuenta.AM_Validate(value, this)) colContaCuenta = value; } }
        public clscolVisible colContaCuenta = new clscolVisible();
        [Control("_colContaCuentaDesc", "Descripción Cuenta", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaCuentaDesc { get { return colContaCuentaDesc; } set { if (colContaCuentaDesc.AM_Validate(value, this)) colContaCuentaDesc = value; } }
        public clscolVisible colContaCuentaDesc = new clscolVisible();
        [Control("_colContaCentro", "Centro de Costo", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaCentro { get { return colContaCentro; } set { if (colContaCentro.AM_Validate(value, this)) colContaCentro = value; } }
        public clscolVisible colContaCentro = new clscolVisible();
        [Control("_colContaCentroDesc", "Descripción Centro", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaCentroDesc { get { return colContaCentroDesc; } set { if (colContaCentroDesc.AM_Validate(value, this)) colContaCentroDesc = value; } }
        public clscolVisible colContaCentroDesc = new clscolVisible();
        [Control("_colContaNIT", "NIT", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaNIT { get { return colContaNIT; } set { if (colContaNIT.AM_Validate(value, this)) colContaNIT = value; } }
        public clscolVisible colContaNIT = new clscolVisible();
        [Control("_colContaNITDesc", "Razón Social", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaNITDesc { get { return colContaNITDesc; } set { if (colContaNITDesc.AM_Validate(value, this)) colContaNITDesc = value; } }
        public clscolVisible colContaNITDesc = new clscolVisible();
        [Control("_colContaFuente", "Fuente", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaFuente { get { return colContaFuente; } set { if (colContaFuente.AM_Validate(value, this)) colContaFuente = value; } }
        public clscolVisible colContaFuente = new clscolVisible();
        [Control("_colContaReferencia", "Referencia", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colContaReferencia { get { return colContaReferencia; } set { if (colContaReferencia.AM_Validate(value, this)) colContaReferencia = value; } }
        public clscolVisible colContaReferencia = new clscolVisible();
        [Control("_colContaDebitoLoc", "Débito Local", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clscolVisible _colContaDebitoLoc { get { return colContaDebitoLoc; } set { if (colContaDebitoLoc.AM_Validate(value, this)) colContaDebitoLoc = value; } }
        public clscolVisible colContaDebitoLoc = new clscolVisible();
        [Control("_colContaDebitoDol", "Débito Dólar", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clscolVisible _colContaDebitoDol { get { return colContaDebitoDol; } set { if (colContaDebitoDol.AM_Validate(value, this)) colContaDebitoDol = value; } }
        public clscolVisible colContaDebitoDol = new clscolVisible();
        [Control("_colContaCreditoLoc", "Crédito Local", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clscolVisible _colContaCreditoLoc { get { return colContaCreditoLoc; } set { if (colContaCreditoLoc.AM_Validate(value, this)) colContaCreditoLoc = value; } }
        public clscolVisible colContaCreditoLoc = new clscolVisible();
        [Control("_colContaCreditoDol", "Crédito Dólar", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clscolVisible _colContaCreditoDol { get { return colContaCreditoDol; } set { if (colContaCreditoDol.AM_Validate(value, this)) colContaCreditoDol = value; } }
        public clscolVisible colContaCreditoDol = new clscolVisible();
        [Control("_colContaRowPointer", "RowPointer", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "", visible: false)]
        public clscolInvisible _colContaRowPointer { get { return colContaRowPointer; } set { if (colContaRowPointer.AM_Validate(value, this)) colContaRowPointer = value; } }
        public clscolInvisible colContaRowPointer = new clscolInvisible();
        [Control("_colContaGUIDConta", "Cuadre_Conta_Aux.GUIDConta", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "", visible: false)]
        public clscolInvisible _colContaGUIDConta { get { return colContaGUIDConta; } set { if (colContaGUIDConta.AM_Validate(value, this)) colContaGUIDConta = value; } }
        public clscolInvisible colContaGUIDConta = new clscolInvisible();
        #endregion
        #region Constructor
        /// <summary>  
        /// Constructor de la clase `tblCuadreConta`.  
        /// Este constructor inicializa la interfaz llamando al método `InicializarInterfaz`  
        /// y deshabilita la ventana actual utilizando `SalDisableWindow`.  
        /// </summary>  
        public tblCuadreConta()
        {
            InicializarInterfaz();
            SalDisableWindow(this);


        }
        #endregion
        #region Funciones
        /// <summary>  
        /// Inicializa la interfaz de la tabla Cuadre Conta, configurando eventos y limpiando configuraciones previas.  
        /// </summary>  
        public void InicializarInterfaz()
        {
            this.clear_AM_ClassDoQuery();
            this.AM_ClassDoQuery_Event += tblCuadreConta_AM_ClassDoQuery;
            this.clear_AM_ResultSetRestricted();
            this.AM_ResultSetRestricted_Event += tblCuadreConta_AM_ResultSetRestricted;
            this.clear_AM_ClassSelectColumns();
            this.AM_ClassSelectColumns_Event += tblCuadreConta_AM_ClassSelectColumns;
            this.clear_AM_MostrarAsociados();
            this.AM_MostrarAsociados_Event += tblCuadreConta_AM_MostrarAsociados;
            this.clear_AM_AsociarMovimiento();
            this.AM_AsociarMovimiento_Event += tblCuadreConta_AM_AsociarMovimiento;
            this.clear_AM_DesAsociarMovimiento();
            this.AM_DesAsociarMovimiento_Event += tblCuadreConta_AM_DesAsociarMovimiento;
            this.clear_WM_RBUTTONDOWN();
            this.WM_RBUTTONDOWN_Event += tblCuadreConta_WM_RBUTTONDOWN;
            //this.clear_WM_RBUTTONUP();
            //this.WM_RBUTTONUP_Event += tblCuadreConta_WM_RBUTTONUP;
            this.clear_AM_ClassDoQuery();
            this.AM_ClassDoQuery_Event += tblCuadreConta_AM_ClassDoQuery;
            this.clear_AM_ResultSetRestricted();
            this.AM_ResultSetRestricted_Event += tblCuadreConta_AM_ResultSetRestricted;
            this.clear_AM_ClassSelectColumns();
            this.AM_ClassSelectColumns_Event += tblCuadreConta_AM_ClassSelectColumns;
            this.clear_AM_MostrarAsociados();
            this.AM_MostrarAsociados_Event += tblCuadreConta_AM_MostrarAsociados;
            this.clear_AM_AsociarMovimiento();
            this.AM_AsociarMovimiento_Event += tblCuadreConta_AM_AsociarMovimiento;
            this.clear_AM_DesAsociarMovimiento();
            this.AM_DesAsociarMovimiento_Event += tblCuadreConta_AM_DesAsociarMovimiento;
            this.clear_WM_RBUTTONDOWN();
            this.WM_RBUTTONDOWN_Event += tblCuadreConta_WM_RBUTTONDOWN;
            //this.clear_WM_RBUTTONUP();
            //this.WM_RBUTTONUP_Event += tblCuadreConta_WM_RBUTTONUP;
            colContaAsiento.clear_AM_ForcePopulate();
            colContaAsiento.AM_ForcePopulate_Event += colContaAsiento_AM_ForcePopulate;
            colContaLinea.clear_AM_ForcePopulate();
            colContaLinea.AM_ForcePopulate_Event += colContaLinea_AM_ForcePopulate;
            colContaUbicacion.clear_AM_ForcePopulate();
            colContaUbicacion.AM_ForcePopulate_Event += colContaUbicacion_AM_ForcePopulate;
            colContaUbicacion.clear_AM_ColFetchRowDone();
            colContaUbicacion.AM_ColFetchRowDone_Event += colContaUbicacion_AM_ColFetchRowDone;
            colContaUbicacion.clear_AM_CanChange();
            colContaUbicacion.AM_CanChange_Event += colContaUbicacion_AM_CanChange;
            colContaOrigen.clear_AM_ForcePopulate();
            colContaOrigen.AM_ForcePopulate_Event += colContaOrigen_AM_ForcePopulate;
            colContaContabilidad.clear_AM_ForcePopulate();
            colContaContabilidad.AM_ForcePopulate_Event += colContaContabilidad_AM_ForcePopulate;
            colContaContabilidad.clear_AM_CanChange();
            colContaContabilidad.AM_CanChange_Event += colContaContabilidad_AM_CanChange;
            colContaContabilidad.clear_AM_ColFetchRowDone();
            colContaContabilidad.AM_ColFetchRowDone_Event += colContaContabilidad_AM_ColFetchRowDone;
            colContaFecha.clear_AM_ForcePopulate();
            colContaFecha.AM_ForcePopulate_Event += colContaFecha_AM_ForcePopulate;
            colContaCuenta.clear_AM_ForcePopulate();
            colContaCuenta.AM_ForcePopulate_Event += colContaCuenta_AM_ForcePopulate;
            colContaCuentaDesc.clear_AM_ForcePopulate();
            colContaCuentaDesc.AM_ForcePopulate_Event += colContaCuentaDesc_AM_ForcePopulate;
            colContaCentro.clear_AM_ForcePopulate();
            colContaCentro.AM_ForcePopulate_Event += colContaCentro_AM_ForcePopulate;
            colContaCentroDesc.clear_AM_ForcePopulate();
            colContaCentroDesc.AM_ForcePopulate_Event += colContaCentroDesc_AM_ForcePopulate;
            colContaNIT.clear_AM_ForcePopulate();
            colContaNIT.AM_ForcePopulate_Event += colContaNIT_AM_ForcePopulate;
            colContaNITDesc.clear_AM_ForcePopulate();
            colContaNITDesc.AM_ForcePopulate_Event += colContaNITDesc_AM_ForcePopulate;
            colContaFuente.clear_AM_ForcePopulate();
            colContaFuente.AM_ForcePopulate_Event += colContaFuente_AM_ForcePopulate;
            colContaReferencia.clear_AM_ForcePopulate();
            colContaReferencia.AM_ForcePopulate_Event += colContaReferencia_AM_ForcePopulate;
            colContaDebitoLoc.clear_AM_ForcePopulate();
            colContaDebitoLoc.AM_ForcePopulate_Event += colContaDebitoLoc_AM_ForcePopulate;
            colContaDebitoLoc.clear_AM_Create();
            colContaDebitoLoc.AM_Create_Event += colContaDebitoLoc_AM_Create;
            colContaDebitoDol.clear_AM_ForcePopulate();
            colContaDebitoDol.AM_ForcePopulate_Event += colContaDebitoDol_AM_ForcePopulate;
            colContaDebitoDol.clear_AM_Create();
            colContaDebitoDol.AM_Create_Event += colContaDebitoDol_AM_Create;
            colContaCreditoLoc.clear_AM_ForcePopulate();
            colContaCreditoLoc.AM_ForcePopulate_Event += colContaCreditoLoc_AM_ForcePopulate;
            colContaCreditoLoc.clear_AM_Create();
            colContaCreditoLoc.AM_Create_Event += colContaCreditoLoc_AM_Create;
            colContaCreditoDol.clear_AM_ForcePopulate();
            colContaCreditoDol.AM_ForcePopulate_Event += colContaCreditoDol_AM_ForcePopulate;
            colContaCreditoDol.clear_AM_Create();
            colContaCreditoDol.AM_Create_Event += colContaCreditoDol_AM_Create;
            colContaGUIDConta.clear_AM_CanChange();
            colContaGUIDConta.AM_CanChange_Event += colContaGUIDConta_AM_CanChange;
            colContaGUIDConta.clear_AM_ColFetchRowDone();
            colContaGUIDConta.AM_ColFetchRowDone_Event += colContaGUIDConta_AM_ColFetchRowDone;
        }
        /// <summary>  
        /// Inicializa la tabla Cuadre Conta con los parámetros necesarios para su configuración.  
        /// </summary>  
        /// <param name="sTabla">Nombre de la tabla a inicializar.</param>  
        /// <param name="sColumnas">Columnas que se incluirán en la consulta.</param>  
        /// <param name="sIntoVars">Variables que recibirán los valores de las columnas.</param>  
        /// <param name="hwndDF">Referencia al manejador de la ventana.</param>  
        /// <param name="bRestrict">Indica si se aplicarán restricciones en la consulta.</param>  
        /// <param name="bBusquedaExacta">Indica si la búsqueda será exacta.</param>  
        /// <param name="bManejarVentana">Indica si se manejará la ventana.</param>  
        /// <param name="nFlags1">Primer conjunto de banderas para configuración.</param>  
        /// <param name="nFlags2">Segundo conjunto de banderas para configuración.</param>  
        /// <returns>Devuelve true si la inicialización fue exitosa.</returns>  
        public override bool InitTable(ref SalString sTabla, ref SalString sColumnas, ref SalString sIntoVars, ref APP hwndDF, ref SalBoolean bRestrict, ref SalBoolean bBusquedaExacta, ref SalBoolean bManejarVentana, ref SalDecimal nFlags1, ref SalDecimal nFlags2)
        {
            string formatodecimales = dlgCGAuxWiz.FormatoDecimales();
            SalFmtSetPicture(colContaDebitoLoc, formatodecimales);
            SalFmtSetPicture(colContaDebitoDol, formatodecimales);
            SalFmtSetPicture(colContaCreditoLoc, formatodecimales);
            SalFmtSetPicture(colContaCreditoDol, formatodecimales);
            //$Siguiente es Call$
            SalTblSetColumnTitle(colContaAsiento, fciGlobalesCG.NombreAsiento(false, true, false));
            //
            //
            //MRL CR2-14074-75M0-1 -->
            //MRL S2B31523 -->
            //Set sTabla = ConcatCompany( 'CUADRE_CONTA CC ' )
            //Set sTabla = ConcatCompany( 'CUADRE_CONTA CC, ' ) || ConcatCompany( 'CUADRE_AUX CA ' )
            Set(ref sTabla, SqlNet.ConcatCompany("CUADRE_AUX CA, ") + SqlNet.ConcatCompany("CUADRE_CONTA CC "));
            //MRL CR2-14074-75M0-1 <--
            //
            Set(ref sColumnas, " CC.ASIENTO, CC.LINEA, CC.UBICACION, CC.ORIGEN, CC.CONTABILIDAD, CC.FECHA, CC.CUENTA, CC.CUENTA_DESC, CC.CENTRO, CC.CENTRO_DESC, CC.NIT, CC.NIT_DESC, CC.FUENTE, CC.REFERENCIA, CC.DEBITO_LOC, CC.DEBITO_DOL, CC.CREDITO_LOC, CC.CREDITO_DOL, CC.ROWPOINTER, CCA.GUID_CONTA ");
            Set(ref sIntoVars, ":colContaAsiento, :colContaLinea, :colContaUbicacion, :colContaOrigen, :colContaContabilidad, :colContaFecha, :colContaCuenta, :colContaCuentaDesc, :colContaCentro, :colContaCentroDesc, :colContaNIT, :colContaNITDesc, :colContaFuente, :colContaReferencia, :colContaDebitoLoc, :colContaDebitoDol, :colContaCreditoLoc, :colContaCreditoDol, :colContaRowPointer, :colContaGUIDConta ");
            //
            //  Set(ref hwndDF, hWndNULL);
            Set(ref bRestrict, false);
            Set(ref bBusquedaExacta, true);
            Set(ref bManejarVentana, false);
            //
            Set(ref bPopulateOnCreate, false);
            //
            //
            dlgFiltroCuadreConta.tblCuadreConta = this;


            return true;
        }
        /// <summary>  
        /// Obtiene la opción asociada a la tabla Cuadre Conta.  
        /// </summary>  
        /// <returns>Devuelve el nombre de la opción como cadena de texto.</returns>  
        public SalString GetOpcion()
        {
            return "Cuadre Conta";
        }
        /// <summary>  
        /// Obtiene el origen asociado a la tabla Cuadre Conta.  
        /// </summary>  
        /// <returns>Devuelve el origen como cadena de texto.</returns>  
        public SalString GetOrigen()
        {
            return CG_ORIGEN + "tblCuadreConta";
        }
        /// <summary>  
        /// Obtiene las declaraciones SQL necesarias para la consulta.  
        /// </summary>  
        /// <returns>Devuelve una cadena vacía que representa las declaraciones SQL.</returns>  
        public SalString GetStatements()
        {
            return "";
        }
        /// <summary>  
        /// Obtiene las variables necesarias para la consulta SQL.  
        /// </summary>  
        /// <returns>Devuelve una cadena vacía que representa las variables SQL.</returns>  
        public SalString GetVariables()
        {
            return "";
        }
        /// <summary>  
        /// Crea una cláusula WHERE para filtrar registros según los criterios especificados.  
        /// </summary>  
        /// <returns>Devuelve una cadena que representa la cláusula WHERE generada.</returns>  
        public SalString CreateWHERE()
        {
            SalString lsValoresEvaluados = new SalString();
            SalString lsFiltroConta = new SalString();
            SalString lsWhere = new SalString();
            //  
            //JOIN entre Tablas  
            Set(ref lsWhere, " LEFT OUTER JOIN " + SqlNet.ConcatCompany("CUADRE_CONTA_AUX CCA") + " ON CC.ROWPOINTER = CCA.GUID_CONTA WHERE 1=1 ");
            //  
            if (dlgCGAuxWiz.vnCodigoCuadre != NUMBER_Null)
            {
                //  
                Set(ref lsWhere, lsWhere + " AND CC.CUADRES_CG = :dlgCGAuxWiz.vnCodigoCuadre ");
                //  
                //Se Asigna el Filtro Correspondiente según las variables de la tabla  
            }
            if (true)
            {
                //
                //TAQ > CR4-17604-QSWF
                Set(ref lsFiltroConta, GetStringWhere("CC.ASIENTO", isAsientoIni, isAsientoFin));
                //TAQ < CR4-17604-QSWF
                //
                //MRL #31523 -->
                //Se agrega alias de la tabla a la columna FECHA
                Set(ref lsFiltroConta, lsFiltroConta + GetDateTimeWhere("CC.FECHA", idtFechaIni, idtFechaFin, "this.idtFechaIni", "this.idtFechaFin"));
                //MRL #31523 <--
                //
                if (isOrigen)
                {
                    Set(ref lsFiltroConta, lsFiltroConta + " AND CC.ORIGEN IN ( " + isOrigen + " ) ");
                    //
                }
                if (isNOTOrigen)
                {
                    Set(ref lsFiltroConta, lsFiltroConta + " AND CC.ORIGEN NOT IN ( " + isNOTOrigen + " ) ");
                    //
                }
                if (isMovimientos)
                {
                    //
                    if (isMovimientos == CG_TODOS)
                    {
                        //No se debe hacer filtro, por omisión van todos
                    }
                    else
                    {
                        if (isMovimientos == CG_ASOCIADOS)
                        {
                            //
                            Set(ref lsFiltroConta, lsFiltroConta + " AND CCA.GUID_CONTA IS NOT NULL ");
                        }
                        else
                        {
                            if (isMovimientos == CG_NO_ASOCIADOS)
                            {
                                //
                                Set(ref lsFiltroConta, lsFiltroConta + " AND CCA.GUID_CONTA IS NULL ");
                            }
                            else
                            {
                                if (isMovimientos == CG_ASOCIADOS_DIF)
                                {
                                    //
                                    //Set lsFiltroConta = lsFiltroConta || " AND SQLDecode('CC.DEBITO_LOC', 'NUM', 'NULL', )
                                    //MRL S2B31523 -->
                                    Set(ref lsFiltroConta, lsFiltroConta + " AND CCA.GUID_CONTA IS NOT NULL AND CC.CUADRES_CG = CA.CUADRES_CG AND CC.ASIENTO = CA.ASIENTO AND ((CC.DEBITO_LOC != CA.DEBITO_LOC) OR (CC.DEBITO_DOL != CA.DEBITO_DOL) OR (CC.CREDITO_LOC != CA.CREDITO_LOC) OR (CC.CREDITO_DOL != CA.CREDITO_DOL))");
                                    //MRL S2B31523 <--
                                    //
                                    //
                                }
                            }
                        }
                    }
                    //
                }
                if (isDebitosCreditos == AMBAS)
                {
                    //No hay que hacer nada, se muestran tanto Débitos como Créditos
                }
                else
                {
                    if (isDebitosCreditos == DEBITO)
                    {
                        //Se muestran solo Débitos
                        //MRL #31523 -->
                        //Se coloca el alias de la tabla a las columnas
                        Set(ref lsFiltroConta, lsFiltroConta + " AND (CC.DEBITO_LOC IS NOT NULL OR CC.DEBITO_DOL IS NOT NULL )");
                        //
                    }
                    else
                    {
                        if (isDebitosCreditos == CREDITO)
                        {
                            //Se muestran solo Créditos
                            Set(ref lsFiltroConta, lsFiltroConta + " AND (CC.CREDITO_LOC IS NOT NULL OR CC.CREDITO_DOL IS NOT NULL )");
                            //MRL #31523 <--
                            //
                        }
                    }
                }
                if (isDiarioMayor == AMBAS)
                {
                    //No hay que hacer nada, se muestran tanto los asientos en el DIARIO como los del MAYOR
                }
                else
                {
                    if (isDiarioMayor == DIARIO)
                    {
                        //Se muestran solo los asientos en el DIARIO
                        //MRL #31523 -->
                        //Se coloca el alias de la tabla a la columna UBICACION
                        Set(ref lsFiltroConta, lsFiltroConta + " AND CC.UBICACION = '" + DIARIO + "' ");
                        //MRL #31523 <--
                    }
                    else
                    {
                        if (isDiarioMayor == MAYOR)
                        {
                            //
                            //Se muestran solo los asientos en el MAYOR
                            //MRL #31523 -->
                            //Se coloca el alias de la tabla a la columna UBICACION
                            Set(ref lsFiltroConta, lsFiltroConta + " AND CC.UBICACION = '" + MAYOR + "' ");
                            //MRL #31523 <--
                        }
                    }
                }
                //
                //
            }
            if (lsFiltroConta)
            {
                if (lsWhere)
                {
                    //
                    Set(ref lsWhere, lsWhere + lsFiltroConta);
                }
                else
                {
                    //
                    Set(ref lsWhere, " WHERE 1=1 " + lsFiltroConta);
                }
                //
            }
            Set(ref this.TieneFiltroAplicado, lsWhere != "");
            Set(ref bBanderaFiltro, this.TieneFiltroAplicado);
            return lsWhere;
        }
        /// <summary>  
        /// Método que se ejecuta después de inicializar la tabla.  
        /// Este método puede ser utilizado para realizar configuraciones adicionales o inicializaciones específicas.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal AfterInitTable()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Obtiene el tamaño y la ubicación de la ventana asociada a la tabla.  
        /// </summary>  
        /// <param name="nWidth">Referencia para almacenar el ancho de la ventana.</param>  
        /// <param name="nHeight">Referencia para almacenar la altura de la ventana.</param>  
        /// <param name="nX">Referencia para almacenar la posición X de la ventana.</param>  
        /// <param name="nY">Referencia para almacenar la posición Y de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal GetWindowSizeAndLoc(ref SalDecimal nWidth, ref SalDecimal nHeight, ref SalDecimal nX, ref SalDecimal nY)
        {
            //$Siguiente es Call$
            //SalGetWindowSize(hWndTable, nWidth, nHeight);
            //$Siguiente es Call$
            //SalGetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Establece el tamaño y la ubicación de la ventana asociada a la tabla.  
        /// </summary>  
        /// <param name="nWidth">Ancho deseado de la ventana.</param>  
        /// <param name="nHeight">Altura deseada de la ventana.</param>  
        /// <param name="nX">Posición X deseada de la ventana.</param>  
        /// <param name="nY">Posición Y deseada de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal SetWindowSizeAndLoc(SalDecimal nWidth, SalDecimal nHeight, SalDecimal nX, SalDecimal nY)
        {
            //$Siguiente es Call$
            //SalSetWindowSize(hWndTable, nWidth, nHeight);
            //
            //Se comentan las llamadas para que compile
            //$Siguiente es Call$
            //SetWindowInVisiblePos(hWndTable, nWidth, nHeight, nX, nY);
            //
            //$Siguiente es Call$
            //SalSetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Método que se ejecuta después de poblar la tabla.  
        /// Este método puede ser utilizado para realizar configuraciones adicionales o inicializaciones específicas.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal AfterPopulate()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Indica si se debe usar la cláusula DISTINCT en las consultas SQL.  
        /// </summary>  
        /// <returns>Devuelve true si se debe usar DISTINCT, false en caso contrario.</returns>  
        public bool UsarDistinct()
        {
            return true;
        }
        /// <summary>  
        /// Indica si se debe realizar una búsqueda inicial al cargar la tabla.  
        /// </summary>  
        /// <returns>Devuelve true si se debe realizar la búsqueda inicial, false en caso contrario.</returns>  
        public bool HacerBusquedaInicial()
        {
            return true;
        }
        /// <summary>  
        /// Devuelve el separador utilizado en las cadenas de texto.  
        /// </summary>  
        /// <returns>Devuelve una cadena con el separador utilizado.</returns>  
        public SalString DevolverSeparador()
        {
            return ",";
        }
        /// <summary>  
        /// Indica si se debe contar el número de resultados obtenidos en las consultas SQL.  
        /// </summary>  
        /// <returns>Devuelve true si se debe contar los resultados, false en caso contrario.</returns>  
        public bool UsarResultCount()
        {
            return false;
        }
        /// <summary>  
        /// Inicializa las preferencias de la tabla.  
        /// </summary>  
        /// <param name="bPrmExistenPreferencias">Indica si existen preferencias previas.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal InicializarPreferencias(SalBoolean bPrmExistenPreferencias)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Cambia la cláusula ORDER BY utilizada en las consultas SQL.  
        /// </summary>  
        /// <param name="sPrmOrderBy">Nueva cláusula ORDER BY.</param>  
        /// <returns>Devuelve la cláusula ORDER BY modificada.</returns>  
        public SalString CambiarOrderBy(SalString sPrmOrderBy)
        {
            return sPrmOrderBy;
        }
        /// <summary>  
        /// Devuelve el número de la columna utilizada como restricción en las consultas SQL.  
        /// </summary>  
        /// <returns>Devuelve el número de la columna de restricción.</returns>  
        public SalDecimal ColumnaDeRestriccion()
        {
            //
            //se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
            return 1;
        }
        /// <summary>  
        /// Modifica la cláusula WHERE utilizada en las consultas SQL.  
        /// </summary>  
        /// <param name="psStringDesde">Valor inicial para la restricción.</param>  
        /// <param name="psStringHasta">Valor final para la restricción.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal ModificaWhere(SalString psStringDesde, SalString psStringHasta)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Selecciona las filas de la tabla basándose en un filtro.  
        /// </summary>  
        /// <returns>Devuelve true si la operación fue exitosa, false en caso contrario.</returns>  
        public bool SelectRows()
        {
            //
            //Llama al Filtro
            //
            if (SalModalDialog<dlgFiltroCuadreConta>(this, isAsientoIni, isAsientoFin, isCuentaIni, isCuentaFin, idtFechaIni, idtFechaFin, isOrigen, isNOTOrigen, isContabilidad, isMovimientos, isDebitosCreditos, isDiarioMayor, dlgCGAuxWiz.isModuloCuadre))
            {
                //
                //Vuelve a poblar la tabla con el filtro seleccionado (Nótese que en el CreateWHERE() se debe ajustar el Filtro)
                //$Siguiente es Call$
                LimiteSeleccion(CreateWHERE());
                //
                //$Siguiente es Call$
                SalSendMsg(hWndForm, Globales.AM_ResultSetRestricted, 1, 0);
                //this.TieneFiltroAplicado = true;
            }
            else
            {
                //$Siguiente es Call$
                SalSendMsg(hWndForm, Globales.AM_ResultSetRestricted, 0, 0);
                this.TieneFiltroAplicado = false;
                //
            }
            return new SalBoolean(true);
        }
        /// <summary>  
        /// Establece las banderas de fila y asigna un recurso gráfico para la lista de asociación.  
        /// </summary>  
        /// <param name="nRowFlag1">Referencia a la primera bandera de fila.</param>  
        /// <param name="nRowFlag2">Referencia a la segunda bandera de fila.</param>  
        /// <param name="nRowFlag3">Referencia a la tercera bandera de fila.</param>  
        /// <param name="sResourceList">Referencia al recurso gráfico asociado.</param>  
        /// <returns>Devuelve true si la operación se realiza correctamente.</returns>  
        public bool RowPictures(ref ROW_Flags nRowFlag1, ref ROW_Flags nRowFlag2, ref ROW_Flags nRowFlag3, ref SalString sResourceList)
        {
            Set(ref nRowFlag1, ROW_Flags.ROW_UserFlag1);
            Set(ref nRowFlag2, 0);
            Set(ref nRowFlag3, 0);
            Set(ref sResourceList, "listaasociacion.png");
            return true;
        }
        /// <summary>  
        /// Limpia los filtros aplicados en la tabla de movimientos contables.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el éxito de la operación.</returns>  
        public SalDecimal ClearFiltro()
        {
            //
            Set(ref isAsientoIni, string.Empty);
            Set(ref isAsientoFin, string.Empty);
            //
            Set(ref isCuentaIni, string.Empty);
            Set(ref isCuentaFin, string.Empty);
            //
            Set(ref isOrigen, string.Empty);
            Set(ref isNOTOrigen, string.Empty);
            //
            Set(ref isContabilidad, string.Empty);
            Set(ref isMovimientos, string.Empty);
            //
            Set(ref idtFechaIni, DATETIME_Null);
            Set(ref idtFechaFin, DATETIME_Null);
            //
            Set(ref isDiarioMayor, string.Empty);
            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Ejecuta la consulta de selección de filas en la tabla de movimientos contables.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el éxito de la operación.</returns>  
        public SalDecimal tblCuadreConta_AM_ClassDoQuery()
        {
            //
            return this.SelectRows();
        }
        /// <summary>  
        /// Indica si el conjunto de resultados fue restringido y actualiza el estado del botón de búsqueda.  
        /// </summary>  
        /// <param name="wParam">Parámetro que indica el estado del conjunto de resultados.</param>  
        /// <returns>Devuelve un valor decimal indicando el éxito de la operación.</returns>  
        public SalDecimal tblCuadreConta_AM_ResultSetRestricted()
        {
            //Indicación de que el result-set fue restringuido
            //Cambiar el botón de "buscar" para indicar esto
            if ((SalBoolean)wParam)
            {
                //$Siguiente es Call$
                //SalPicSet(pbFiltroCuadreConta, BuscarX, PIC_FormatBitmap);
            }
            else
            {
                //$Siguiente es Call$
                //SalPicSet(pbFiltroCuadreConta, Buscar, PIC_FormatBitmap);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Muestra el diálogo de selección de columnas para la tabla de movimientos contables.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el éxito de la operación.</returns>  
        public SalDecimal tblCuadreConta_AM_ClassSelectColumns()
        {
            //
            //Call SalModalDialog( dlgSelectColumnas, hWndForm, tblCuadreConta, '' )
            //! 600R1: INI: Mejora de dialogo de selección
            //$Siguiente es Call$
            MostrarSeleccionColumnas(this, "");
            //! 600R1: FIN
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Muestra los documentos asociados a un movimiento contable específico.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el éxito de la operación.</returns>  
        public SalDecimal tblCuadreConta_AM_MostrarAsociados()
        {
            //
            //$Siguiente es Call$
            dlgCGAuxWiz.MostarDocumentoAsociado(this.colContaRowPointer.colValorTexto, fciGlobalesCG.NombreAsiento(false, true, false) + ": " + this.colContaAsiento.colValorTexto + " - Linea: " + this.colContaLinea.colValorTexto, this.colContaDebitoLoc.colValorNumero, this.colContaDebitoDol.colValorNumero, this.colContaCreditoLoc.colValorNumero, this.colContaCreditoDol.colValorNumero, CONTA);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Asocia un movimiento contable a un documento auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el éxito de la operación.</returns>  
        public SalDecimal tblCuadreConta_AM_AsociarMovimiento()
        {
            //
            //$Siguiente es Call$
            dlgCGAuxWiz.AsociarMovimiento();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Desasocia un movimiento contable de un documento auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el éxito de la operación.</returns>  
        public SalDecimal tblCuadreConta_AM_DesAsociarMovimiento()
        {
            //
            //$Siguiente es Call$
            dlgCGAuxWiz.DesAsociarMovimiento(true);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de presionar el botón derecho del ratón en la tabla de movimientos contables.  
        /// </summary>  
        /// <returns>Devuelve false para evitar que SQLWindows intercepte el mensaje.</returns>  
        public SalDecimal tblCuadreConta_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de soltar el botón derecho del ratón en la tabla de movimientos contables.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el éxito de la operación.</returns>  
        public SalDecimal tblCuadreConta_WM_RBUTTONUP()
        {
            ////Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGCuadreAux", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza la población de datos en la columna "Transacción Contable".  
        /// </summary>  
        /// <returns>Devuelve true si la operación se realiza correctamente.</returns>  
        public SalDecimal colContaAsiento_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de datos en la columna "Línea".  
        /// </summary>  
        /// <returns>Devuelve true si la operación se realiza correctamente.</returns>  
        public SalDecimal colContaLinea_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de datos en la columna "Ubicación".  
        /// </summary>  
        /// <returns>Devuelve true si la operación se realiza correctamente.</returns>  
        public SalDecimal colContaUbicacion_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Ajusta el valor de la columna "Ubicación" después de que se completa la recuperación de la fila.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el éxito de la operación.</returns>  
        public SalDecimal colContaUbicacion_AM_ColFetchRowDone()
        {
            //
            SalString colContaUbicacionTemp = new SalString();
            if (colContaUbicacion.colValorTexto == DIARIO)
            {
                Set(ref colContaUbicacionTemp, _DIARIO);
                colContaUbicacion.colValorTexto = colContaUbicacionTemp;
            }
            else
            {
                if (colContaUbicacion.colValorTexto == MAYOR)
                {
                    Set(ref colContaUbicacionTemp, _MAYOR);
                    colContaUbicacion.colValorTexto = colContaUbicacionTemp;
                }
                else
                {
                    Set(ref colContaUbicacionTemp, NINGUNO);
                    colContaUbicacion.colValorTexto = colContaUbicacionTemp;
                }
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Indica si se puede cambiar el valor de la columna "Ubicación".  
        /// </summary>  
        /// <returns>Devuelve true si el cambio es permitido.</returns>  
        public SalDecimal colContaUbicacion_AM_CanChange()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna "Origen" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaOrigen_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna "Contabilidad" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaContabilidad_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Determina si la columna "Contabilidad" puede ser modificada.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaContabilidad_AM_CanChange()
        {
            return true;
        }
        /// <summary>  
        /// Realiza acciones posteriores a la recuperación de una fila en la columna "Contabilidad".  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaContabilidad_AM_ColFetchRowDone()
        {
            //
            SalString colContaUbicacionTemp = new SalString();
            if (colContaContabilidad.colValorTexto == CONTA_CORP)
            {
                Set(ref colContaUbicacionTemp, NOMBRE_CONTA_CORP);
                colContaContabilidad.colValorTexto = colContaUbicacionTemp;
            }
            else
            {
                if (colContaContabilidad.colValorTexto == CONTA_FISCAL)
                {
                    Set(ref colContaUbicacionTemp, NOMBRE_CONTA_FISCAL);
                    //
                    colContaContabilidad.colValorTexto = colContaUbicacionTemp;
                }
                else
                {
                    if (colContaContabilidad.colValorTexto == CONTA_AMBAS)
                    {
                        Set(ref colContaUbicacionTemp, NOMBRE_CONTA_AMBAS);
                        colContaContabilidad.colValorTexto = colContaUbicacionTemp;
                    }
                    else
                    {
                        Set(ref colContaUbicacionTemp, NINGUNO);
                        colContaContabilidad.colValorTexto = colContaUbicacionTemp;
                        //
                        //
                    }
                }
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza la población de la columna "Fecha" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaFecha_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna "Cuenta" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaCuenta_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna "Descripción de la Cuenta" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaCuentaDesc_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna "Centro de Costo" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaCentro_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna "Descripción del Centro de Costo" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaCentroDesc_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna "NIT" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaNIT_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna "Descripción del NIT" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaNITDesc_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna "Fuente" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaFuente_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna "Referencia" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaReferencia_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna "Débito Local" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaDebitoLoc_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Configura el formato de la columna "Débito Local" al momento de su creación.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaDebitoLoc_AM_Create()
        {
            //$Siguiente es Call$
            SalFmtSetPicture(colContaDebitoLoc, dlgCGAuxWiz.FormatoDecimales());
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza la población de la columna "Débito Dólar" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaDebitoDol_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Configura el formato de la columna "Débito Dólar" al momento de su creación.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaDebitoDol_AM_Create()
        {
            //$Siguiente es Call$
            SalFmtSetPicture(colContaDebitoDol, dlgCGAuxWiz.FormatoDecimales());
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza la población de la columna "Crédito Local" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaCreditoLoc_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Configura el formato de la columna "Crédito Local" al momento de su creación.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaCreditoLoc_AM_Create()
        {
            //$Siguiente es Call$
            SalFmtSetPicture(colContaCreditoLoc, dlgCGAuxWiz.FormatoDecimales());
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza la población de la columna "Crédito Dólar" en la tabla contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaCreditoDol_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Configura el formato de la columna "Crédito Dólar" al momento de su creación.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaCreditoDol_AM_Create()
        {
            //$Siguiente es Call$
            SalFmtSetPicture(colContaCreditoDol, dlgCGAuxWiz.FormatoDecimales());
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Determina si la columna "GUIDConta" puede ser modificada.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaGUIDConta_AM_CanChange()
        {
            return true;
        }
        /// <summary>  
        /// Realiza acciones posteriores a la recuperación de una fila en la columna "GUIDConta".  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colContaGUIDConta_AM_ColFetchRowDone()
        {
            //
            if (!(colContaGUIDConta.colValorTexto == string.Empty))
            {
                //
                //$Siguiente es Call$
                SalTblSetRowFlags(this, this.Position, ROW_Flags.ROW_UserFlag1, true);
                //
                //
                //
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Asigna la bandera de filtrado en la tabla contable.  
        /// </summary>  
        public override void AsignarBanderaFiltrado()
        {
            if (bPrimeraVez)
            {
                this.TieneFiltroAplicado = false;
                bPrimeraVez = false;
            }
            else
            {
                this.TieneFiltroAplicado = bBanderaFiltro;
            }

        }
        #endregion
    }
    /// <summary>  
    /// Clase que representa una tabla auxiliar para el cuadre de movimientos.  
    /// Contiene propiedades relacionadas con las fechas de inicio y fin, movimientos, débitos y créditos,  
    /// así como banderas para el filtro y el estado inicial.  
    /// También incluye una referencia al diálogo principal del asistente de cuadre auxiliar.  
    /// </summary>  
    internal class tblCuadreAux : clsChldTblBusqueda
    {
        #region Variables  
        /// <summary>  
        /// Fecha inicial para el filtro de movimientos.  
        /// </summary>  
        public SalDate idtFechaIni = new SalDate();

        /// <summary>  
        /// Fecha final para el filtro de movimientos.  
        /// </summary>  
        public SalDate idtFechaFin = new SalDate();

        /// <summary>  
        /// Cadena que representa los movimientos seleccionados.  
        /// </summary>  
        public SalString isMovimientos = new SalString();

        /// <summary>  
        /// Cadena que representa los débitos y créditos seleccionados.  
        /// </summary>  
        public SalString isDebitosCreditos = new SalString();

        /// <summary>  
        /// Cadena que representa los movimientos no asociados.  
        /// </summary>  
        public SalString isNoAsociados = new SalString();

        /// <summary>  
        /// Referencia al diálogo principal del asistente de cuadre auxiliar.  
        /// </summary>  
        public dlgCGAuxWiz dlgCGAuxWiz = null;

        /// <summary>  
        /// Bandera que indica si se aplica un filtro.  
        /// </summary>  
        public SalBoolean bBanderaFiltro = new SalBoolean(false);

        /// <summary>  
        /// Bandera que indica si es la primera vez que se utiliza la tabla.  
        /// </summary>  
        public SalBoolean bPrimeraVez = new SalBoolean(true);
        #endregion
        #region Controles Visuales
        [Control("_colAuxReferencia", "Referencia", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colAuxReferencia { get { return colAuxReferencia; } set { if (colAuxReferencia.AM_Validate(value, this)) colAuxReferencia = value; } }
        public clscolVisible colAuxReferencia = new clscolVisible();
        [Control("_colAuxOrigen", "Origen", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colAuxOrigen { get { return colAuxOrigen; } set { if (colAuxOrigen.AM_Validate(value, this)) colAuxOrigen = value; } }
        public clscolVisible colAuxOrigen = new clscolVisible();
        [Control("_colAuxFecha", "Fecha", TipoControl.Columna, TipoValor.Fecha, 1, true, "", "", "", "")]
        public clscolVisible _colAuxFecha { get { return colAuxFecha; } set { if (colAuxFecha.AM_Validate(value, this)) colAuxFecha = value; } }
        public clscolVisible colAuxFecha = new clscolVisible();
        [Control("_colAuxConcepto", "Concepto", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colAuxConcepto { get { return colAuxConcepto; } set { if (colAuxConcepto.AM_Validate(value, this)) colAuxConcepto = value; } }
        public clscolVisible colAuxConcepto = new clscolVisible();
        [Control("_colAuxAsiento", "Transacción Contable", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colAuxAsiento { get { return colAuxAsiento; } set { if (colAuxAsiento.AM_Validate(value, this)) colAuxAsiento = value; } }
        public clscolVisible colAuxAsiento = new clscolVisible();
        [Control("_colAuxDebitoLoc", "Débito Local", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clscolVisible _colAuxDebitoLoc { get { return colAuxDebitoLoc; } set { if (colAuxDebitoLoc.AM_Validate(value, this)) colAuxDebitoLoc = value; } }
        public clscolVisible colAuxDebitoLoc = new clscolVisible();
        [Control("_colAuxDebitoDol", "Débito Dólar", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clscolVisible _colAuxDebitoDol { get { return colAuxDebitoDol; } set { if (colAuxDebitoDol.AM_Validate(value, this)) colAuxDebitoDol = value; } }
        public clscolVisible colAuxDebitoDol = new clscolVisible();
        [Control("_colAuxCreditoLoc", "Crédito Local", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clscolVisible _colAuxCreditoLoc { get { return colAuxCreditoLoc; } set { if (colAuxCreditoLoc.AM_Validate(value, this)) colAuxCreditoLoc = value; } }
        public clscolVisible colAuxCreditoLoc = new clscolVisible();
        [Control("_colAuxCreditoDol", "Crédito Dólar", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clscolVisible _colAuxCreditoDol { get { return colAuxCreditoDol; } set { if (colAuxCreditoDol.AM_Validate(value, this)) colAuxCreditoDol = value; } }
        public clscolVisible colAuxCreditoDol = new clscolVisible();
        [Control("_colAuxRowPointer", "RowPointer", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "", visible: false)]
        public clscolInvisible _colAuxRowPointer { get { return colAuxRowPointer; } set { if (colAuxRowPointer.AM_Validate(value, this)) colAuxRowPointer = value; } }
        public clscolInvisible colAuxRowPointer = new clscolInvisible();
        [Control("_colAuxGUIDAux", "CUADRE_CONTA_AUX.GUID_Aux", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "", visible: false)]
        public clscolInvisible _colAuxGUIDAux { get { return colAuxGUIDAux; } set { if (colAuxGUIDAux.AM_Validate(value, this)) colAuxGUIDAux = value; } }
        public clscolInvisible colAuxGUIDAux = new clscolInvisible();
        #endregion
        #region Constructor
        /// <summary>  
        /// Constructor de la clase `tblCuadreAux`.  
        /// Inicializa la interfaz llamando al método `InicializarInterfaz` y deshabilita la ventana actual.  
        /// </summary>  
        public tblCuadreAux()
        {
            InicializarInterfaz();
            SalDisableWindow(this);
        }
        #endregion
        #region Funciones
        /// <summary>  
        /// Inicializa la interfaz de la tabla, configurando eventos y propiedades de las columnas.  
        /// </summary>  
        public void InicializarInterfaz()
        {
            this.clear_AM_ClassDoQuery();
            this.AM_ClassDoQuery_Event += tblCuadreAux_AM_ClassDoQuery;
            this.clear_AM_ResultSetRestricted();
            this.AM_ResultSetRestricted_Event += tblCuadreAux_AM_ResultSetRestricted;
            this.clear_AM_ClassSelectColumns();
            this.AM_ClassSelectColumns_Event += tblCuadreAux_AM_ClassSelectColumns;
            this.clear_AM_MostrarAsociados();
            this.AM_MostrarAsociados_Event += tblCuadreAux_AM_MostrarAsociados;
            this.clear_AM_AsociarMovimiento();
            this.AM_AsociarMovimiento_Event += tblCuadreAux_AM_AsociarMovimiento;
            this.clear_AM_DesAsociarMovimiento();
            this.AM_DesAsociarMovimiento_Event += tblCuadreAux_AM_DesAsociarMovimiento;
            this.clear_WM_RBUTTONDOWN();
            this.WM_RBUTTONDOWN_Event += tblCuadreAux_WM_RBUTTONDOWN;
            //this.clear_WM_RBUTTONUP();
            //this.WM_RBUTTONUP_Event += tblCuadreAux_WM_RBUTTONUP;
            this.clear_AM_ClassDoQuery();
            this.AM_ClassDoQuery_Event += tblCuadreAux_AM_ClassDoQuery;
            this.clear_AM_ResultSetRestricted();
            this.AM_ResultSetRestricted_Event += tblCuadreAux_AM_ResultSetRestricted;
            this.clear_AM_ClassSelectColumns();
            this.AM_ClassSelectColumns_Event += tblCuadreAux_AM_ClassSelectColumns;
            this.clear_AM_MostrarAsociados();
            this.AM_MostrarAsociados_Event += tblCuadreAux_AM_MostrarAsociados;
            this.clear_AM_AsociarMovimiento();
            this.AM_AsociarMovimiento_Event += tblCuadreAux_AM_AsociarMovimiento;
            this.clear_AM_DesAsociarMovimiento();
            this.AM_DesAsociarMovimiento_Event += tblCuadreAux_AM_DesAsociarMovimiento;
            this.clear_WM_RBUTTONDOWN();
            this.WM_RBUTTONDOWN_Event += tblCuadreAux_WM_RBUTTONDOWN;
            //this.clear_WM_RBUTTONUP();
            //this.WM_RBUTTONUP_Event += tblCuadreAux_WM_RBUTTONUP;
            colAuxReferencia.clear_AM_ForcePopulate();
            colAuxReferencia.AM_ForcePopulate_Event += colAuxReferencia_AM_ForcePopulate;
            colAuxOrigen.clear_AM_ForcePopulate();
            colAuxOrigen.AM_ForcePopulate_Event += colAuxOrigen_AM_ForcePopulate;
            colAuxFecha.clear_AM_ForcePopulate();
            colAuxFecha.AM_ForcePopulate_Event += colAuxFecha_AM_ForcePopulate;
            colAuxConcepto.clear_AM_ForcePopulate();
            colAuxConcepto.AM_ForcePopulate_Event += colAuxConcepto_AM_ForcePopulate;
            colAuxAsiento.clear_AM_ForcePopulate();
            colAuxAsiento.AM_ForcePopulate_Event += colAuxAsiento_AM_ForcePopulate;
            colAuxDebitoLoc.clear_AM_ForcePopulate();
            colAuxDebitoLoc.AM_ForcePopulate_Event += colAuxDebitoLoc_AM_ForcePopulate;
            colAuxDebitoLoc.clear_AM_Create();
            colAuxDebitoLoc.AM_Create_Event += colAuxDebitoLoc_AM_Create;
            colAuxDebitoDol.clear_AM_ForcePopulate();
            colAuxDebitoDol.AM_ForcePopulate_Event += colAuxDebitoDol_AM_ForcePopulate;
            colAuxDebitoDol.clear_AM_Create();
            colAuxDebitoDol.AM_Create_Event += colAuxDebitoDol_AM_Create;
            colAuxCreditoLoc.clear_AM_ForcePopulate();
            colAuxCreditoLoc.AM_ForcePopulate_Event += colAuxCreditoLoc_AM_ForcePopulate;
            colAuxCreditoLoc.clear_AM_Create();
            colAuxCreditoLoc.AM_Create_Event += colAuxCreditoLoc_AM_Create;
            colAuxCreditoDol.clear_AM_ForcePopulate();
            colAuxCreditoDol.AM_ForcePopulate_Event += colAuxCreditoDol_AM_ForcePopulate;
            colAuxCreditoDol.clear_AM_Create();
            colAuxCreditoDol.AM_Create_Event += colAuxCreditoDol_AM_Create;
            colAuxGUIDAux.clear_AM_CanChange();
            colAuxGUIDAux.AM_CanChange_Event += colAuxGUIDAux_AM_CanChange;
            colAuxGUIDAux.clear_AM_ColFetchRowDone();
            colAuxGUIDAux.AM_ColFetchRowDone_Event += colAuxGUIDAux_AM_ColFetchRowDone;
        }
        /// <summary>  
        /// Configura la tabla con las columnas, variables y restricciones necesarias para su inicialización.  
        /// </summary>  
        /// <param name="sTabla">Nombre de la tabla a configurar.</param>  
        /// <param name="sColumnas">Columnas que se incluirán en la tabla.</param>  
        /// <param name="sIntoVars">Variables asociadas a las columnas.</param>  
        /// <param name="hwndDF">Referencia al manejador de la ventana.</param>  
        /// <param name="bRestrict">Indica si se aplican restricciones.</param>  
        /// <param name="bBusquedaExacta">Indica si la búsqueda debe ser exacta.</param>  
        /// <param name="bManejarVentana">Indica si se maneja la ventana.</param>  
        /// <param name="nFlags1">Flags adicionales para configuración.</param>  
        /// <param name="nFlags2">Flags adicionales para configuración.</param>  
        /// <returns>Devuelve true si la configuración se realiza correctamente.</returns>  
        public override bool InitTable(ref SalString sTabla, ref SalString sColumnas, ref SalString sIntoVars, ref APP hwndDF, ref SalBoolean bRestrict, ref SalBoolean bBusquedaExacta, ref SalBoolean bManejarVentana, ref SalDecimal nFlags1, ref SalDecimal nFlags2)
        {
            //$Siguiente es Call$
            SalTblSetColumnTitle(colAuxAsiento, fciGlobalesCG.NombreAsiento(false, true, false));
            //! CASO S2B22009A ----------->
            //Cuando no se usa ODBC se debe concatenar la tabla de cuadre de auxiliares
            //Set sTabla = ConcatCompany( 'CUADRE_AUX CA ' )
            //MRL CR2-14074-75M0-1 -->
            //MRL S2B31523 -->
            //Set sTabla = ConcatCompany( 'CUADRE_AUX CA ' )
            //Set sTabla = ConcatCompany( 'CUADRE_AUX CA, ' ) || ConcatCompany( 'CUADRE_CONTA CC' )
            Set(ref sTabla, SqlNet.ConcatCompany("CUADRE_CONTA CC, ") + SqlNet.ConcatCompany("CUADRE_AUX CA "));
            //MRL CR2-14074-75M0-1 <--
            //! <----------- CASO S2B22009A
            Set(ref sColumnas, " CA.REFERENCIA, CA.ORIGEN, CA.FECHA, CA.CONCEPTO, CA.ASIENTO, CA.DEBITO_LOC, CA.DEBITO_DOL, CA.CREDITO_LOC, CA.CREDITO_DOL, CA.ROWPOINTER, CCA.GUID_AUX ");
            Set(ref sIntoVars, ":colAuxReferencia, :colAuxOrigen, :colAuxFecha, :colAuxConcepto, :colAuxAsiento, :colAuxDebitoLoc, :colAuxDebitoDol, :colAuxCreditoLoc, :colAuxCreditoDol, :colAuxRowPointer, :colAuxGUIDAux ");
            //
            // Set(ref hwndDF, hWndNULL);
            Set(ref bRestrict, false);
            Set(ref bBusquedaExacta, true);
            Set(ref bManejarVentana, false);
            //
            Set(ref bPopulateOnCreate, false);
            //
            //
            string formatodecimales = dlgCGAuxWiz.FormatoDecimales();
            SalFmtSetPicture(colAuxDebitoLoc, formatodecimales);
            SalFmtSetPicture(colAuxCreditoLoc, formatodecimales);
            SalFmtSetPicture(colAuxDebitoDol, formatodecimales);
            SalFmtSetPicture(colAuxCreditoDol, formatodecimales);
            return true;
        }
        /// <summary>  
        /// Obtiene la opción configurada para el cuadro auxiliar.  
        /// </summary>  
        /// <returns>Devuelve la opción como cadena de texto.</returns>  
        public SalString GetOpcion()
        {
            return "Cuadre Auxiliar";
        }
        /// <summary>  
        /// Obtiene el origen configurado para el cuadro auxiliar.  
        /// </summary>  
        /// <returns>Devuelve el origen como cadena de texto.</returns>  
        public SalString GetOrigen()
        {
            return CG_ORIGEN + "tblCuadreAux";
        }
        /// <summary>  
        /// Obtiene las sentencias SQL configuradas para el cuadro auxiliar.  
        /// </summary>  
        /// <returns>Devuelve las sentencias como cadena de texto.</returns>  
        public SalString GetStatements()
        {
            return "";
        }
        /// <summary>  
        /// Obtiene las variables configuradas para el cuadro auxiliar.  
        /// </summary>  
        /// <returns>Devuelve las variables como cadena de texto.</returns>  
        public SalString GetVariables()
        {
            return "";
        }
        /// <summary>  
        /// Crea la cláusula WHERE para filtrar los datos en el cuadro auxiliar.  
        /// </summary>  
        /// <returns>Devuelve la cláusula WHERE como cadena de texto.</returns>  
        public SalString CreateWHERE()
        {
            SalString lsFiltroAux = new SalString();
            SalString lsWhere = new SalString();
            //
            //JOIN entre tablas
            //Set lsWhere = "WHERE CA.ROWPOINTER " || SQLOuterJoin('CCA.GUID_AUX')
            Set(ref lsWhere, " LEFT OUTER JOIN " + SqlNet.ConcatCompany("CUADRE_CONTA_AUX CCA") + " ON CA.ROWPOINTER = CCA.GUID_AUX WHERE 1=1 ");
            //
            if (dlgCGAuxWiz.vnCodigoCuadre != NUMBER_Null)
            {
                //
                Set(ref lsWhere, lsWhere + " AND CA.CUADRES_CG = :dlgCGAuxWiz.vnCodigoCuadre ");
                //
            }
            if (true)
            {
                //
                //
                //MRL #31523 -->
                //Se agrega alias de la tabla a la columna FECHA
                Set(ref lsFiltroAux, lsFiltroAux + GetDateTimeWhere("CA.FECHA", idtFechaIni, idtFechaFin, "this.idtFechaIni", "this.idtFechaFin"));
                //MRL #31523 <--
                //
                if (isMovimientos)
                {
                    //
                    if (isMovimientos == AUX_TODOS)
                    {
                        //No se debe hacer filtro, por omisión van todos
                    }
                    else
                    {
                        if (isMovimientos == AUX_ASOCIADOS)
                        {
                            //
                            //MRL #31523 -->
                            //Se agrega alias de la tabla a la columna GUID_AUX
                            Set(ref lsFiltroAux, lsFiltroAux + " AND CCA.GUID_AUX IS NOT NULL ");
                            //MRL #31523 <--
                            //
                            //If isAsociados
                            //
                            //Mostrar movimientos asociados con diferencia
                            //
                        }
                        else
                        {
                            if (isMovimientos == AUX_ASOC_CONDIF)
                            {
                                //
                                //MRL S2B31523 -->
                                Set(ref lsFiltroAux, lsFiltroAux + " AND CCA.GUID_AUX IS NOT NULL AND CC.CUADRES_CG = CA.CUADRES_CG AND CC.ASIENTO = CA.ASIENTO AND ((CC.DEBITO_LOC != CA.DEBITO_LOC) OR (CC.DEBITO_DOL != CA.DEBITO_DOL) OR (CC.CREDITO_LOC != CA.CREDITO_LOC) OR (CC.CREDITO_DOL != CA.CREDITO_DOL))");
                                //MRL S2B31523 <--
                                //
                            }
                            else
                            {
                                if (isMovimientos == AUX_NO_ASOCIADOS)
                                {
                                    //
                                    //MRL #31523 -->
                                    //Se agrega alias de la tabla a la columna GUID_AUX
                                    Set(ref lsFiltroAux, lsFiltroAux + " AND CCA.GUID_AUX IS NULL ");
                                    //MRL #31523 <--
                                    //
                                    if (isNoAsociados == AUX_CONTABILIZADO)
                                    {
                                        //
                                        //MRL #31523 -->
                                        //Se agrega alias de la tabla a la columna ASIENTO
                                        Set(ref lsFiltroAux, lsFiltroAux + " AND CA.ASIENTO IS NOT NULL ");
                                        //MRL #31523 <--
                                    }
                                    else
                                    {
                                        if (isNoAsociados == AUX_NO_CONTABILIZADO)
                                        {
                                            //
                                            //MRL #31523 -->
                                            //Se agrega alias de la tabla a la columna ASIENTO
                                            Set(ref lsFiltroAux, lsFiltroAux + " AND CA.ASIENTO IS NULL ");
                                            //MRL #31523 <--
                                        }
                                    }
                                }
                            }
                        }
                    }
                    //
                }
                if (isDebitosCreditos == AMBAS)
                {
                    //No hay que hacer nada, se muestran tanto Débitos como Créditos
                }
                else
                {
                    if (isDebitosCreditos == DEBITO)
                    {
                        //Se muestran solo Débitos
                        //MRL #31523 -->
                        //Se agrega alias de la tabla a las columnas
                        Set(ref lsFiltroAux, lsFiltroAux + " AND (CA.DEBITO_LOC IS NOT NULL OR CA.DEBITO_DOL IS NOT NULL )");
                        //
                        Set(ref lsFiltroAux, lsFiltroAux + " AND (CA.DEBITO_LOC <> 0 OR CA.DEBITO_DOL <> 0 )");
                        //MRL #31523 <--
                        //
                    }
                    else
                    {
                        if (isDebitosCreditos == CREDITO)
                        {
                            //Se muestran solo Créditos
                            //MRL #31523 -->
                            //Se agrega alias de la tabla a las columnas
                            Set(ref lsFiltroAux, lsFiltroAux + " AND (CA.CREDITO_LOC IS NOT NULL OR CA.CREDITO_DOL IS NOT NULL )");
                            //
                            Set(ref lsFiltroAux, lsFiltroAux + " AND ( CA.CREDITO_LOC <> 0 OR CA.CREDITO_DOL <> 0 )");
                            //MRL #31523 <--
                            //
                        }
                    }
                }
                //
                //
            }
            if (lsFiltroAux)
            {
                if (lsWhere)
                {
                    //
                    Set(ref lsWhere, lsWhere + lsFiltroAux);
                }
                else
                {
                    //
                    Set(ref lsWhere, " WHERE 1=1 " + lsFiltroAux);
                }
                //
            }
            Set(ref this.TieneFiltroAplicado, lsWhere != "");
            Set(ref bBanderaFiltro, this.TieneFiltroAplicado);
            return lsWhere;
        }
        /// <summary>  
        /// Inicializa la tabla después de su creación.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la inicialización.</returns>  
        public SalDecimal AfterInitTable()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Obtiene el tamaño y la ubicación de la ventana.  
        /// </summary>  
        /// <param name="nWidth">Referencia para almacenar el ancho de la ventana.</param>  
        /// <param name="nHeight">Referencia para almacenar la altura de la ventana.</param>  
        /// <param name="nX">Referencia para almacenar la posición X de la ventana.</param>  
        /// <param name="nY">Referencia para almacenar la posición Y de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal GetWindowSizeAndLoc(ref SalDecimal nWidth, ref SalDecimal nHeight, ref SalDecimal nX, ref SalDecimal nY)
        {
            //$Siguiente es Call$
            //SalGetWindowSize(hWndTable, nWidth, nHeight);
            //$Siguiente es Call$
            //SalGetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Establece el tamaño y la ubicación de la ventana.  
        /// </summary>  
        /// <param name="nWidth">Ancho de la ventana.</param>  
        /// <param name="nHeight">Altura de la ventana.</param>  
        /// <param name="nX">Posición X de la ventana.</param>  
        /// <param name="nY">Posición Y de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal SetWindowSizeAndLoc(SalDecimal nWidth, SalDecimal nHeight, SalDecimal nX, SalDecimal nY)
        {
            //$Siguiente es Call$
            //SalSetWindowSize(hWndTable, nWidth, nHeight);
            ////
            ////Se comentan las llamadas para que compile
            ////$Siguiente es Call$
            //SetWindowInVisiblePos(hWndTable, nWidth, nHeight, nX, nY);
            ////
            ////$Siguiente es Call$
            //SalSetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Realiza acciones después de poblar la tabla.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal AfterPopulate()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Indica si se debe usar la cláusula DISTINCT en las consultas.  
        /// </summary>  
        /// <returns>Devuelve true si se debe usar DISTINCT, false en caso contrario.</returns>  
        public bool UsarDistinct()
        {
            return true;
        }
        /// <summary>  
        /// Indica si se debe realizar una búsqueda inicial al cargar la tabla.  
        /// </summary>  
        /// <returns>Devuelve true si se debe realizar la búsqueda inicial, false en caso contrario.</returns>  
        public bool HacerBusquedaInicial()
        {
            return true;
        }
        /// <summary>  
        /// Devuelve el separador utilizado en las consultas.  
        /// </summary>  
        /// <returns>Devuelve una cadena con el separador utilizado.</returns>  
        public SalString DevolverSeparador()
        {
            return ",";
        }
        /// <summary>  
        /// Indica si se debe contar el número de resultados en las consultas.  
        /// </summary>  
        /// <returns>Devuelve true si se debe contar los resultados, false en caso contrario.</returns>  
        public bool UsarResultCount()
        {
            return false;
        }
        /// <summary>  
        /// Inicializa las preferencias de la tabla.  
        /// </summary>  
        /// <param name="bPrmExistenPreferencias">Indica si existen preferencias previas.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la inicialización.</returns>  
        public SalDecimal InicializarPreferencias(SalBoolean bPrmExistenPreferencias)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Cambia la cláusula ORDER BY en las consultas.  
        /// </summary>  
        /// <param name="sPrmOrderBy">Nueva cláusula ORDER BY.</param>  
        /// <returns>Devuelve la cláusula ORDER BY modificada.</returns>  
        public SalString CambiarOrderBy(SalString sPrmOrderBy)
        {
            return sPrmOrderBy;
        }
        /// <summary>  
        /// Devuelve el índice de la columna utilizada para restricciones.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el índice de la columna.</returns>  
        public SalDecimal ColumnaDeRestriccion()
        {
            //
            //se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
            return 1;
        }
        /// <summary>  
        /// Modifica la cláusula WHERE en las consultas.  
        /// </summary>  
        /// <param name="psStringDesde">Valor inicial para la cláusula WHERE.</param>  
        /// <param name="psStringHasta">Valor final para la cláusula WHERE.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la modificación.</returns>  
        public SalDecimal ModificaWhere(SalString psStringDesde, SalString psStringHasta)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura las imágenes de las filas en la tabla.  
        /// </summary>  
        /// <param name="nRowFlag1">Referencia para el primer indicador de fila.</param>  
        /// <param name="nRowFlag2">Referencia para el segundo indicador de fila.</param>  
        /// <param name="nRowFlag3">Referencia para el tercer indicador de fila.</param>  
        /// <param name="sResourceList">Referencia para la lista de recursos de imágenes.</param>  
        /// <returns>Devuelve true si la configuración fue exitosa, false en caso contrario.</returns>  
        public bool RowPictures(ref ROW_Flags nRowFlag1, ref ROW_Flags nRowFlag2, ref ROW_Flags nRowFlag3, ref SalString sResourceList)
        {
            Set(ref nRowFlag1, ROW_Flags.ROW_UserFlag1);
            Set(ref nRowFlag2, 0);
            Set(ref nRowFlag3, 0);
            Set(ref sResourceList, "listaasociacion.png");
            return true;
        }
        /// <summary>  
        /// Selecciona las filas de la tabla según el filtro aplicado.  
        /// </summary>  
        /// <returns>Devuelve true si la selección fue exitosa, false en caso contrario.</returns>  
        public bool SelectRows()
        {
            //
            //Llama al Filtro
            //
            //MRL S2B31523 -->
            //Se elimina el parámetro de Asociados
            if (SalModalDialog<dlgFiltroCuadreAux>(this, idtFechaIni, idtFechaFin, isMovimientos, isDebitosCreditos, isNoAsociados))
            {
                //Vuelve a poblar la tabla con el filtro seleccionado (Nótese que en el CreateWHERE() se debe ajustar el Filtro)
                //$Siguiente es Call$
                LimiteSeleccion(CreateWHERE());
                //$Siguiente es Call$
                SalSendMsg(hWndForm, Globales.AM_ResultSetRestricted, 1, 0);
                //MRL S2B31523 <--

                //this.TieneFiltroAplicado = true;
            }
            else
            {
                //$Siguiente es Call$
                SalSendMsg(hWndForm, Globales.AM_ResultSetRestricted, 0, 0);
                //
                //
                this.TieneFiltroAplicado = false;
            }
            return new SalBoolean(true);
        }
        /// <summary>  
        /// Limpia los filtros aplicados en la tabla.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal ClearFiltro()
        {
            //
            //Set isAsientoIni = STRING_Null
            //Set isAsientoFin = STRING_Null
            //Set isOrigen = STRING_Null
            //Set isContabilidad = STRING_Null
            //Set isMovimientos = STRING_Null
            //
            //Set idtFechaIni = DATETIME_Null
            //Set idtFechaFin = DATETIME_Null
            //
            Set(ref isMovimientos, string.Empty);
            Set(ref isDebitosCreditos, string.Empty);
            Set(ref isNoAsociados, string.Empty);
            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Ejecuta la consulta de la clase para poblar la tabla.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblCuadreAux_AM_ClassDoQuery()
        {
            //
            return this.SelectRows();
        }
        /// <summary>  
        /// Indica si el conjunto de resultados fue restringido.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblCuadreAux_AM_ResultSetRestricted()
        {
            //Indicación de que el result-set fue restringuido
            //Cambiar el botón de "buscar" para indicar esto
            if ((SalBoolean)wParam)
            {
                //$Siguiente es Call$
                //  SalPicSet(pbFiltroCuadreAux, BuscarX, PIC_FormatBitmap);
            }
            else
            {
                //$Siguiente es Call$
                //SalPicSet(pbFiltroCuadreAux, Buscar, PIC_FormatBitmap);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Muestra el diálogo de selección de columnas para la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblCuadreAux_AM_ClassSelectColumns()
        {
            //
            //Call SalModalDialog( dlgSelectColumnas, hWndForm, tblCuadreAux, '' )
            //! 600R1: INI: Mejora de dialogo de selección
            //$Siguiente es Call$
            MostrarSeleccionColumnas(this, "");
            //! 600R1: FIN
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Muestra los documentos asociados a un movimiento auxiliar específico.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblCuadreAux_AM_MostrarAsociados()
        {
            //
            //$Siguiente es Call$
            dlgCGAuxWiz.MostarDocumentoAsociado(this.colAuxRowPointer.colValorTexto, "Documento: " + this.colAuxReferencia.colValorTexto, this.colAuxDebitoLoc.colValorNumero, this.colAuxDebitoDol.colValorNumero, this.colAuxCreditoLoc.colValorNumero, this.colAuxCreditoDol.colValorNumero, AUX);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Asocia un movimiento auxiliar a un documento contable.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblCuadreAux_AM_AsociarMovimiento()
        {
            //
            //$Siguiente es Call$
            dlgCGAuxWiz.AsociarMovimiento();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Desasocia un movimiento auxiliar de un documento contable.  
        /// </summary>  
        /// <param name="pbCuadreConta">Indica si el movimiento pertenece a la contabilidad general.</param>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblCuadreAux_AM_DesAsociarMovimiento()
        {
            //
            //$Siguiente es Call$
            dlgCGAuxWiz.DesAsociarMovimiento(false);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Evita que SQLWindows intercepte el mensaje de clic derecho en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor booleano indicando si se debe interceptar el mensaje.</returns>  
        public SalDecimal tblCuadreAux_WM_RBUTTONDOWN()
        {
            //Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
            //presionado el botón izquierdo
            return false;
        }
        /// <summary>  
        /// Maneja el evento de liberación del botón derecho del ratón en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblCuadreAux_WM_RBUTTONUP()
        {
            //Desplegar la versión de los tools
            //if (wParam == MK_CONTROL)
            //{
            //    //$Siguiente es Call$
            //    DisplayToolsVersion();
            //    //Crea el menú de despliegue como un menú flotante en la ventana
            //}
            //else
            //{
            //    //$Siguiente es Call$
            //    //SalTrackPopupMenu(hWndForm, "menuCGCuadreAux", TPM_CursorX  TPM_CursorY + TPM_RightButton, 0, 0);
            //}
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza la población de la columna de referencia en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor booleano indicando si la operación fue exitosa.</returns>  
        public SalDecimal colAuxReferencia_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna de origen en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor booleano indicando si la operación fue exitosa.</returns>  
        public SalDecimal colAuxOrigen_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna de fecha en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor booleano indicando si la operación fue exitosa.</returns>  
        public SalDecimal colAuxFecha_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna de concepto en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor booleano indicando si la operación fue exitosa.</returns>  
        public SalDecimal colAuxConcepto_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna de asiento contable en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor booleano indicando si la operación fue exitosa.</returns>  
        public SalDecimal colAuxAsiento_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza la población de la columna de débito en moneda local en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor booleano indicando si la operación fue exitosa.</returns>  
        public SalDecimal colAuxDebitoLoc_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Configura el formato de la columna de débito en moneda local en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxDebitoLoc_AM_Create()
        {
            //$Siguiente es Call$
            SalFmtSetPicture(colAuxDebitoLoc, dlgCGAuxWiz.FormatoDecimales());
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza la población de la columna de débito en moneda dólar en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor booleano indicando si la operación fue exitosa.</returns>  
        public SalDecimal colAuxDebitoDol_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Configura el formato de la columna de débito en moneda dólar en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxDebitoDol_AM_Create()
        {
            //$Siguiente es Call$
            SalFmtSetPicture(colAuxDebitoDol, dlgCGAuxWiz.FormatoDecimales());
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza la población de la columna de crédito en moneda local en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor booleano indicando si la operación fue exitosa.</returns>  
        public SalDecimal colAuxCreditoLoc_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Configura el formato de la columna de crédito en moneda local en la tabla de movimientos auxiliares.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxCreditoLoc_AM_Create()
        {
            //$Siguiente es Call$
            SalFmtSetPicture(colAuxCreditoLoc, dlgCGAuxWiz.FormatoDecimales());
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza la población de la columna "AuxCreditoDol".  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxCreditoDol_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Configura la columna "AuxCreditoDol" al momento de su creación.  
        /// Aplica el formato de decimales definido en el asistente.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxCreditoDol_AM_Create()
        {
            //$Siguiente es Call$  
            SalFmtSetPicture(colAuxCreditoDol, dlgCGAuxWiz.FormatoDecimales());
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Determina si se puede cambiar el valor de la columna "AuxGUIDAux".  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxGUIDAux_AM_CanChange()
        {
            return true;
        }
        /// <summary>  
        /// Realiza acciones posteriores a la recuperación de una fila en la columna "AuxGUIDAux".  
        /// Si el valor de la columna no está vacío, establece una bandera de usuario en la fila.  
        /// </summary>  
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxGUIDAux_AM_ColFetchRowDone()
        {
            //
            if (!(colAuxGUIDAux.colValorTexto == string.Empty))
            {
                //
                //$Siguiente es Call$
                SalTblSetRowFlags(this, this.Position, ROW_Flags.ROW_UserFlag1, true);
                //
                //
                //
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Asigna la bandera de filtrado a la tabla.  
        /// Si es la primera vez que se ejecuta, inicializa el estado del filtro.  
        /// En caso contrario, aplica la bandera de filtro actual.  
        /// </summary>  
        public override void AsignarBanderaFiltrado()
        {
            if (bPrimeraVez)
            {
                this.TieneFiltroAplicado = false;
                bPrimeraVez = false;
            }
            else
            {
                this.TieneFiltroAplicado = bBanderaFiltro;
            }
        }
        #endregion
    }
    /// <summary>  
    /// Clase que representa una tabla de balance de cuentas en el sistema.  
    /// Contiene variables para almacenar información sobre débitos y créditos,  
    /// así como una opción seleccionada.  
    /// También incluye una referencia al diálogo principal del asistente de auxiliares contables.  
    /// </summary>  
    internal class tblBalanceCtas : clsChldTblBusqueda
    {
        #region Variables  
        /// <summary>  
        /// Representa los débitos y créditos en formato de cadena.  
        /// </summary>  
        public SalString vsDebitosCreditos = new SalString();
        /// <summary>  
        /// Opción seleccionada para el proceso actual.  
        /// </summary>  
        public SalDecimal vnOpcion = new SalDecimal();
        /// <summary>  
        /// Referencia al asistente de configuración de auxiliares.  
        /// </summary>  
        public dlgCGAuxWiz dlgCGAuxWiz = null;
        #endregion
        #region Controles Visuales
        [Control("_colBalDetalle", ".", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colBalDetalle { get { return colBalDetalle; } set { if (colBalDetalle.AM_Validate(value, this)) colBalDetalle = value; } }
        public clscolVisible colBalDetalle = new clscolVisible();
        [Control("_colBalCuenta", "Cuenta", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colBalCuenta { get { return colBalCuenta; } set { if (colBalCuenta.AM_Validate(value, this)) colBalCuenta = value; } }
        public clscolVisible colBalCuenta = new clscolVisible();
        [Control("_colBalCuentaDesc", "Descripcion", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colBalCuentaDesc { get { return colBalCuentaDesc; } set { if (colBalCuentaDesc.AM_Validate(value, this)) colBalCuentaDesc = value; } }
        public clscolVisible colBalCuentaDesc = new clscolVisible();
        [Control("_colBalDebito", "Débitos", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clscolVisible _colBalDebito { get { return colBalDebito; } set { if (colBalDebito.AM_Validate(value, this)) colBalDebito = value; } }
        public clscolVisible colBalDebito = new clscolVisible();
        [Control("_colBalCredito", "Créditos", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clscolVisible _colBalCredito { get { return colBalCredito; } set { if (colBalCredito.AM_Validate(value, this)) colBalCredito = value; } }
        public clscolVisible colBalCredito = new clscolVisible();
        #endregion
        #region Constructor
        /// <summary>  
        /// Constructor de la clase `tblBalanceCtas`.  
        /// Inicializa la interfaz de la tabla de balance de cuentas, deshabilita la ventana actual  
        /// y configura los eventos relacionados con la exportación de datos a Excel.  
        /// </summary>  
        public tblBalanceCtas()
        {
            InicializarInterfaz();
            ObtenerPantalla();
            SalDisableWindow(this);
        }
        #endregion
        /// <summary>  
        /// Método para inicializar la interfaz de la clase `tblBalanceCtas`.  
        /// Este método limpia los eventos previos relacionados con la exportación de datos a Excel  
        /// y los vuelve a configurar para que apunten al evento `tblBalanceCtas_AM_SendTableDataToExcel`.  
        /// </summary>  
        public void InicializarInterfaz()
        {
            this.clear_AM_SendTableDataToExcel();
            this.AM_SendTableDataToExcel_Event += tblBalanceCtas_AM_SendTableDataToExcel;
            this.clear_AM_SendTableDataToExcel();
            this.AM_SendTableDataToExcel_Event += tblBalanceCtas_AM_SendTableDataToExcel;
        }
        #region Funciones
        /// <summary>  
        /// Carga los datos en la tabla balance de cuentas contables según la opción y los débitos/créditos especificados.  
        /// Realiza cálculos y configuraciones de formato, inserta filas en la tabla y ajusta colores según los valores.  
        /// </summary>  
        /// <param name="pnOpcion">Opción para determinar el tipo de datos a cargar (REG_NINGUNO, REG_CONTA, REG_AUX, REG_CG, REG_OTROS, REG_TODOS).</param>  
        /// <param name="psDebitosCreditos">Cadena que especifica si se deben cargar débitos o créditos.</param>  
        /// <returns>Devuelve true si la operación se realiza correctamente, false en caso contrario.</returns>  
        public bool LoadTable(SalDecimal pnOpcion, SalString psDebitosCreditos)
        {
            SalDecimal lnTotalGeneral = new SalDecimal();
            SalDecimal lnTotalRegistradosCGDebitos = new SalDecimal();
            SalDecimal lnTotalMovAsociadosDebitos = new SalDecimal();
            SalDecimal lnTotalRegistradosCGCreditos = new SalDecimal();
            SalDecimal lnTotalMovAsociadosCreditos = new SalDecimal();
            SalDecimal lnTotalCredito = new SalDecimal();
            SalDecimal lnTotalDebito = new SalDecimal();
            SalBoolean lbContinuar = new SalBoolean();
            SalDecimal lnLinea = new SalDecimal();
            SalBoolean lbOk = new SalBoolean();
            string formatodecimales = dlgCGAuxWiz.FormatoDecimales();
            SalFmtSetPicture(colBalDebito, formatodecimales);
            SalFmtSetPicture(colBalCredito, formatodecimales);

            Set(ref lbOk, true);
            Set(ref lnLinea, 0);
            Set(ref lnTotalDebito, 0);
            Set(ref lnTotalCredito, 0);
            //
            //Se pasan los parámetros a las variables de ventana
            if (!(pnOpcion == REG_NINGUNO))
            {
                Set(ref vnOpcion, pnOpcion);
            }
            if (psDebitosCreditos)
            {
                Set(ref vsDebitosCreditos, psDebitosCreditos);
                //
                //
            }
            Set(ref lbOk, SalTblReset(this));
            //
            //
            Set(ref dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice, 0);
            Set(ref lbContinuar, true);
            //
            //
            //Se ponen los títulos del Reporte, estas líneas solo se van a mostrar luego de pasar a Excel el Reporte
            //

            if (true)
            {
                //
                //Set(ref lnLinea, lnLinea + 1);
                Set(ref lnLinea, lnLinea);
                //$Siguiente es Call$
                //SalTblInsertRow(this, lnLinea);
                SalTblInsertRow(this, TBL_MaxRow);


                this.colBalDetalle.colValorTexto = "Balance de Cuentas Contables";
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                //  SalTblInsertRow(this, lnLinea);
                SalTblInsertRow(this, TBL_MaxRow);

                this.colBalDetalle.colValorTexto = "módulo de " + dlgCGAuxWiz.isNombreModulo;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                // SalTblInsertRow(this, lnLinea);
                SalTblInsertRow(this, TBL_MaxRow);
                this.colBalDetalle.colValorTexto = "Del: " + SalFmtFormatDateTime(dlgCGAuxWiz.dfFechaIni.ValorFecha, "dd/MMM/yyyy") + " al: " + SalFmtFormatDateTime(dlgCGAuxWiz.dfFechaFin.ValorFecha, "dd/MMM/yyyy");
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                // SalTblInsertRow(this, lnLinea);
                SalTblInsertRow(this, TBL_MaxRow);
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                //
                if (vnOpcion == REG_CONTA)
                {
                    //
                    Set(ref lnLinea, lnLinea + 1);
                    //$Siguiente es Call$
                    //SalTblInsertRow(this, lnLinea);
                    SalTblInsertRow(this, TBL_MaxRow);
                    this.colBalDetalle.colValorTexto = "Registrados en CG producto del auxiliar";
                    //$Siguiente es Call$

                    //VisTblSetRowColor(tblBalanceCtas, SalTblQueryContext(tblBalanceCtas), COLOR_Blue);
                    this.Filas[this.Position].RowColor = COLOR_Blue;
                    //$Siguiente es Call$
                    SalColorSet((APP)SalTblGetColumnWindow(this, 2, COL_GetID), COLOR_IndexWindow, COLOR_Red);
                    //$Siguiente es Call$
                    SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                }
                if (vnOpcion == REG_AUX)
                {
                    //
                    Set(ref lnLinea, lnLinea + 1);
                    //$Siguiente es Call$
                    //SalTblInsertRow(this, lnLinea);
                    SalTblInsertRow(this, TBL_MaxRow);
                    this.colBalDetalle.colValorTexto = "Registrados en el auxiliar y contabilizados";
                    //$Siguiente es Call$
                    // VisTblSetRowColor(tblBalanceCtas, SalTblQueryContext(tblBalanceCtas), COLOR_Blue);
                    this.Filas[this.Position].RowColor = COLOR_Blue;
                    //$Siguiente es Call$
                    SalColorSet((APP)SalTblGetColumnWindow(this, 2, COL_GetID), COLOR_IndexWindow, COLOR_Magenta);
                    //$Siguiente es Call$
                    SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                }
                if (vnOpcion == REG_CG)
                {
                    //
                    Set(ref lnLinea, lnLinea + 1);
                    //$Siguiente es Call$
                    // SalTblInsertRow(this, lnLinea);
                    SalTblInsertRow(this, TBL_MaxRow);
                    this.colBalDetalle.colValorTexto = "Directamente en CG";
                    //$Siguiente es Call$
                    //VisTblSetRowColor(this, SalTblQueryContext(this), COLOR_Blue);
                    this.Filas[this.Position].RowColor = COLOR_Blue;
                    //$Siguiente es Call$
                    SalColorSet((APP)SalTblGetColumnWindow(this, 2, COL_GetID), COLOR_IndexWindow, COLOR_Magenta);
                    //$Siguiente es Call$
                    SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                }
                if (vnOpcion == REG_OTROS)
                {
                    //
                    Set(ref lnLinea, lnLinea + 1);
                    //$Siguiente es Call$
                    //SalTblInsertRow(this, lnLinea);
                    SalTblInsertRow(this, TBL_MaxRow);
                    this.colBalDetalle.colValorTexto = "Producto de otro auxiliar";
                    //$Siguiente es Call$
                    // VisTblSetRowColor(tblBalanceCtas, SalTblQueryContext(tblBalanceCtas), COLOR_Blue);
                    this.Filas[this.Position].RowColor = COLOR_Blue;
                    //$Siguiente es Call$
                    SalColorSet((APP)SalTblGetColumnWindow(this, 2, COL_GetID), COLOR_IndexWindow, COLOR_Magenta);
                    //$Siguiente es Call$
                    SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                }
                //
                //Se recorre el arreglo con los datos y se cargan en el WindowTable según la moneda seleccionada
            }
            while (lbContinuar)
            {
                //
                //
                if (dlgCGAuxWiz.obMonedaLoc.colValorBooleano)
                {
                    //
                    if (vnOpcion == REG_TODOS)
                    {
                        //
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        //SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        this.colBalDetalle.colValorTexto = "Cuenta Contable";
                        this.colBalCuenta.colValorTexto = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.isCuenta[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        this.colBalCuentaDesc.colValorTexto = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.isCuentaDesc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        //$Siguiente es Call$
                        //VisTblSetRowColor(this, SalTblQueryContext(this), COLOR_Blue);
                        this.Filas[this.Position].RowColor = COLOR_Blue;
                        //$Siguiente es Call$
                        SalColorSet((APP)SalTblGetColumnWindow(this, 2, COL_GetID), COLOR_IndexWindow, COLOR_Magenta);
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        //
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        // SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        //
                        //
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        //SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        this.colBalDetalle.colValorTexto = "Movimientos Asociados";
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        //
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        //SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        this.colBalDetalle.colValorTexto = " Registrados en CG producto del auxiliar";
                        this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        //
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        //SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        this.colBalDetalle.colValorTexto = " Registrados en el auxiliar y contabilizados";
                        this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        //
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        // SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        //TAQ >> 29086
                        this.colBalDetalle.colValorTexto = " Diferencia Movimientos Asociados";
                        //TAQ << 29086
                        this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice] - dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice] - dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        //$Siguiente es Call$
                        //VisTblSetRowColor(tblBalanceCtas, SalTblQueryContext(tblBalanceCtas), COLOR_Red);
                        this.Filas[this.Position].RowColor = COLOR_Red;
                        //TAQ >> 29086
                        //MRL CR2-14074-75M0 --> Se quitan los valores absolutos de los montos
                        Set(ref lnTotalMovAsociadosCreditos, lnTotalMovAsociadosCreditos + this.colBalCredito.ValorNumero);
                        Set(ref lnTotalMovAsociadosDebitos, lnTotalMovAsociadosDebitos + this.colBalDebito.ValorNumero);
                        //MRL CR2-14074-75M0 <--
                        //TAQ << 29086
                        //
                        //Inserta línea en blanco
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        //SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        //
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        // SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        this.colBalDetalle.colValorTexto = "Movimientos registrados en CG";
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        //
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        //SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        this.colBalDetalle.colValorTexto = " Directamente en CG";
                        this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        //
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        // SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        this.colBalDetalle.colValorTexto = " Producto de otro auxiliar";
                        this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        //
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        // SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        //TAQ >> 29086
                        this.colBalDetalle.colValorTexto = " Diferencia Movimientos registrados en CG";
                        //TAQ << 29086
                        this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice] + dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice] + dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        //$Siguiente es Call$
                        //VisTblSetRowColor(this, SalTblQueryContext(this), COLOR_Red);
                        this.Filas[this.Position].RowColor = COLOR_Red;
                        //TAQ >> 29086
                        //MRL CR2-14074-75M0 --> Se quitan los valores absolutos de los montos
                        Set(ref lnTotalRegistradosCGCreditos, lnTotalRegistradosCGCreditos + this.colBalCredito.colValorNumero);
                        Set(ref lnTotalRegistradosCGDebitos, lnTotalRegistradosCGDebitos + this.colBalDebito.colValorNumero);
                        //MRL CR2-14074-75M0 <--
                        //TAQ << 29086
                        //
                    }
                    else
                    {
                        //
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        // SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        this.colBalDetalle.colValorTexto = " Cuenta Contable";
                        this.colBalCuenta.colValorTexto = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.isCuenta[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        this.colBalCuentaDesc.colValorTexto = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.isCuentaDesc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        //
                        if (vnOpcion == REG_CONTA)
                        {
                            //
                            this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        }
                        if (vnOpcion == REG_AUX)
                        {
                            //
                            this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        }
                        if (vnOpcion == REG_CG)
                        {
                            //
                            this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                        }
                        if (vnOpcion == REG_OTROS)
                        {
                            //
                            this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoLoc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            //
                        }
                        Set(ref lnTotalDebito, lnTotalDebito + this.colBalDebito.colValorNumero);
                        Set(ref lnTotalCredito, lnTotalCredito + this.colBalCredito.colValorNumero);
                        //
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                    }
                }
                else
                {
                    if (dlgCGAuxWiz.obMonedaDol.ValorBooleano)
                    {
                        //
                        //
                        if (vnOpcion == REG_TODOS)
                        {
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            // SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            this.colBalDetalle.colValorTexto = "Cuenta Contable";
                            this.colBalCuenta.colValorTexto = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.isCuenta[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCuentaDesc.colValorTexto = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.isCuentaDesc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            //$Siguiente es Call$
                            //VisTblSetRowColor(this, SalTblQueryContext(this), 0x90000000);
                            //$Siguiente es Call$
                            //VisTblSetRowColor(this, SalTblQueryContext(this), COLOR_Blue);
                            this.Filas[this.Position].RowColor = COLOR_Blue;
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            // SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            // SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            this.colBalDetalle.colValorTexto = "Movimientos Asociados";
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            // SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            this.colBalDetalle.colValorTexto = " Registrados en CG producto del auxiliar";
                            this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            //SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            this.colBalDetalle.colValorTexto = " Registrados en el auxiliar y contabilizados";
                            this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            // SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            //TAQ >> 29086
                            this.colBalDetalle.colValorTexto = " Diferencia Movimientos Asociados";
                            //TAQ << 29086
                            this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice] - dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice] - dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                            //$Siguiente es Call$
                            // VisTblSetRowColor(this, SalTblQueryContext(this), COLOR_Red);
                            this.Filas[this.Position].RowColor = COLOR_Red;
                            //TAQ >> 29086
                            //MRL CR2-14074-75M0 --> Se quitan los valores absolutos de los montos
                            Set(ref lnTotalMovAsociadosCreditos, lnTotalMovAsociadosCreditos + this.colBalCredito.colValorNumero);
                            Set(ref lnTotalMovAsociadosDebitos, lnTotalMovAsociadosDebitos + this.colBalDebito.colValorNumero);
                            //MRL CR2-14074-75M0 <--
                            //TAQ << 29086
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            // SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            //SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            this.colBalDetalle.colValorTexto = "Movimientos NO Asociados";
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            // SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            this.colBalDetalle.colValorTexto = " Movimientos Contables en CG";
                            this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            //SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            this.colBalDetalle.colValorTexto = " Movimientos Contables en Otros módulos";
                            this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            // SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            //TAQ >> 29086
                            this.colBalDetalle.colValorTexto = " Diferencia Movimientos registrados en CG";
                            //TAQ << 29086
                            this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice] + dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice] + dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                            //$Siguiente es Call$
                            //VisTblSetRowColor(this, SalTblQueryContext(this), COLOR_Red);
                            this.Filas[this.Position].RowColor = COLOR_Red;
                            //TAQ >> 29086
                            //MRL CR2-14074-75M0 --> Se quitan los valores absolutos de los montos
                            Set(ref lnTotalRegistradosCGCreditos, lnTotalRegistradosCGCreditos + this.colBalCredito.colValorNumero);
                            Set(ref lnTotalRegistradosCGDebitos, lnTotalRegistradosCGDebitos + this.colBalDebito.colValorNumero);
                            //MRL CR2-14074-75M0 <--
                            //TAQ << 29086
                        }
                        else
                        {
                            //
                            Set(ref lnLinea, lnLinea + 1);
                            //$Siguiente es Call$
                            //   SalTblInsertRow(this, lnLinea);
                            SalTblInsertRow(this, TBL_MaxRow);
                            this.colBalDetalle.colValorTexto = " Cuenta Contable";
                            this.colBalCuenta.colValorTexto = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.isCuenta[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            this.colBalCuentaDesc.colValorTexto = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.isCuentaDesc[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            //
                            if (vnOpcion == REG_CONTA)
                            {
                                //
                                this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                                this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inCGCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            }
                            if (vnOpcion == REG_AUX)
                            {
                                //
                                this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                                this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inAuxCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            }
                            if (vnOpcion == REG_CG)
                            {
                                //
                                this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                                this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                            }
                            if (vnOpcion == REG_OTROS)
                            {
                                //
                                this.colBalDebito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                                this.colBalCredito.colValorNumero = dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoDol[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice];
                                //
                            }
                            Set(ref lnTotalDebito, lnTotalDebito + this.colBalDebito.colValorNumero);
                            Set(ref lnTotalCredito, lnTotalCredito + this.colBalCredito.colValorNumero);
                            //
                            //$Siguiente es Call$
                            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                        }
                        //
                    }
                }
                Set(ref dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice, dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice + 1);
                //
                if (!dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.isCuenta[dlgCGAuxWiz.vfciCGAuxWiz.ifciBalCtas.inIndice])
                {
                    //
                    Set(ref lbContinuar, false);
                }
                else
                {
                    //
                    if (vnOpcion == REG_TODOS)
                    {
                        //Una línea en blanco separando las cuentas
                        Set(ref lnLinea, lnLinea + 1);
                        //$Siguiente es Call$
                        //  SalTblInsertRow(this, lnLinea);
                        SalTblInsertRow(this, TBL_MaxRow);
                        //$Siguiente es Call$
                        SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                    }
                    //
                    //
                }
            }
            //
            //
            //Mostrar los totales
            if (vnOpcion == REG_CONTA || vnOpcion == REG_AUX || vnOpcion == REG_CG || vnOpcion == REG_OTROS)
            {
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                //  SalTblInsertRow(this, lnLinea);
                SalTblInsertRow(this, TBL_MaxRow);
                this.colBalDetalle.colValorTexto = "Total";
                this.colBalDebito.colValorNumero = lnTotalDebito;
                this.colBalCredito.colValorNumero = lnTotalCredito;
                //$Siguiente es Call$
                //VisTblSetRowColor(this, SalTblQueryContext(this), COLOR_Blue);
                this.Filas[this.Position].RowColor = COLOR_Blue;
                //$Siguiente es Call$
                SalColorSet((APP)SalTblGetColumnWindow(this, 2, COL_GetID), COLOR_IndexWindow, COLOR_Red);
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                //
                //TAQ >> 29086
                //Linea en Blanco.
            }
            Set(ref lnLinea, lnLinea + 1);
            //$Siguiente es Call$
            // SalTblInsertRow(this, lnLinea);
            SalTblInsertRow(this, TBL_MaxRow);
            //$Siguiente es Call$
            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
            //
            //Muestra Total.
            Set(ref lnLinea, lnLinea + 1);
            //$Siguiente es Call$
            // SalTblInsertRow(this, lnLinea);
            SalTblInsertRow(this, TBL_MaxRow);
            this.colBalDetalle.colValorTexto = "Total General del Cuadre";
            //MRL CR2-14074-75M0 --> Se agrega valor absoluto a la primer opción y se quitan los valores absolutos de los montos dentro de las restas
            Set(ref lnTotalGeneral, (Sal.NumberAbs(lnTotalMovAsociadosDebitos - lnTotalRegistradosCGDebitos)) - (Sal.NumberAbs(lnTotalMovAsociadosCreditos - lnTotalRegistradosCGCreditos)));
            //MRL CR2-14074-75M0 <--
            if (lnTotalGeneral > 0)
            {
                this.colBalDebito.colValorNumero = lnTotalGeneral;
                this.colBalCredito.colValorNumero = 0;
            }
            else
            {
                if (lnTotalGeneral < 0)
                {
                    this.colBalDebito.colValorNumero = 0;
                    this.colBalCredito.colValorNumero = Sal.NumberAbs(lnTotalGeneral);
                }
                else
                {
                    this.colBalDebito.colValorNumero = 0;
                    this.colBalCredito.colValorNumero = 0;
                }
            }
            //$Siguiente es Call$
            //VisTblSetRowColor(this, SalTblQueryContext(this), COLOR_Blue);
            this.Filas[this.Position].RowColor = COLOR_Blue;
            //$Siguiente es Call$
            SalColorSet((APP)SalTblGetColumnWindow(this, 2, COL_GetID), COLOR_IndexWindow, COLOR_Magenta);
            //$Siguiente es Call$
            SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
            //TAQ << 29086
            //
            return lbOk;
        }
        /// <summary>  
        /// Inicializa la tabla balance de cuentas contables, ocultando columnas específicas.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal Create()
        {
            //
            //$Siguiente es Call$
            //SalTblDefineRowHeader(tblBalanceCtas, ".", 220, TBL_RowHdr_ShareColorTBL_RowHdr_Visible, this.colBalDetalle);
            //$Siguiente es Call$
            SalHideWindow(this.colBalDetalle);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Destruye la tabla balance de cuentas contables, liberando recursos asociados.  
        /// </summary>  
        /// <returns>Devuelve true si la operación se realiza correctamente.</returns>  
        public bool Destroy()
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //
            return true;
        }
        /// <summary>  
        /// Envía los datos de la tabla balance de cuentas contables a un archivo Excel.  
        /// Muestra y oculta columnas específicas durante el proceso.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal tblBalanceCtas_AM_SendTableDataToExcel()
        {
            //$Siguiente es Call$
            SalShowWindow(this.colBalDetalle);
            //$Siguiente es Call$
            SalTblSetFlagsAnyRows(this, ROW_Flags.ROW_Selected, true, 0, 0);
            //$Siguiente es Call$
            TableWindow_AM_SendTableDataToExcel_Event();
            //$Siguiente es Call$
            SalHideWindow(this.colBalDetalle);
            return new SalDecimal(1);
        }

        #endregion
    }
    /// <summary>  
    /// Clase que representa la tabla de resumen de cuadre en el sistema.  
    /// Esta clase contiene propiedades y métodos relacionados con el manejo de datos  
    /// de resumen de cuadre, incluyendo la interacción con la interfaz de usuario  
    /// y la lógica de negocio asociada.  
    /// </summary>  
    internal class tblResumenCuadre : clsChldTblBusqueda
    {
        /// <summary>  
        /// Referencia al diálogo principal de cuadre auxiliar.  
        /// </summary>  
        public dlgCGAuxWiz dlgCGAuxWiz = null;
        #region Controles Visuales
        [Control("_colResDetalle", ".", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colResDetalle { get { return colResDetalle; } set { if (colResDetalle.AM_Validate(value, this)) colResDetalle = value; } }
        public clscolVisible colResDetalle = new clscolVisible();
        [Control("_colResDebito", "Débitos", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clsColDecimalCGAux _colResDebito { get { return colResDebito; } set { if (colResDebito.AM_Validate(value, this)) colResDebito = value; } }
        public clsColDecimalCGAux colResDebito = new clsColDecimalCGAux();
        [Control("_colResCredito", "Créditos", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clsColDecimalCGAux _colResCredito { get { return colResCredito; } set { if (colResCredito.AM_Validate(value, this)) colResCredito = value; } }
        public clsColDecimalCGAux colResCredito = new clsColDecimalCGAux();
        [Control("_colResNeto", "Neto", TipoControl.Columna, TipoValor.NumeroMascara, 1, true, "", "", "", "")]
        public clsColDecimalCGAux _colResNeto { get { return colResNeto; } set { if (colResNeto.AM_Validate(value, this)) colResNeto = value; } }
        public clsColDecimalCGAux colResNeto = new clsColDecimalCGAux();
        #endregion
        #region Constructor
        /// <summary>  
        /// Constructor de la clase tblResumenCuadre.  
        /// Este método inicializa la interfaz del objeto, desactiva la ventana  
        /// y establece su visibilidad como falsa.  
        /// </summary>  
        public tblResumenCuadre()
        {
            //ObtenerPantalla();
            InicializarInterfaz();
            SalDisableWindow(this);
            this.Visible = false;
        }
        #endregion
        #region Funciones
        /// <summary>
        /// Inicializa la interfaz de la tabla de resumen de cuadre.
        /// Configura eventos y limpia los datos existentes.
        /// </summary>
        public void InicializarInterfaz()
        {
            this.clear_AM_SendTableDataToExcel();
            this.AM_SendTableDataToExcel_Event += tblResumenCuadre_AM_SendTableDataToExcel;
            //this.clear_AM_SendTableDataToExcel();
            //this.AM_SendTableDataToExcel_Event += tblResumenCuadre_AM_SendTableDataToExcel;
            colResDebito.clear_AM_Create();
            colResDebito.AM_Create_Event += colResDebito_AM_Create;
            colResCredito.clear_AM_Create();
            colResCredito.AM_Create_Event += colResCredito_AM_Create;
            colResNeto.clear_AM_Create();
            colResNeto.AM_Create_Event += colResNeto_AM_Create;
        }
        /// <summary>
        /// Carga los datos en la tabla de resumen de cuadre.
        /// Incluye títulos del reporte y detalles de movimientos asociados, registrados en CG y en el auxiliar.
        /// </summary>
        /// <returns>Devuelve true si la operación de carga se realiza correctamente.</returns>
        public bool LoadTable()
        {
            SalDecimal lnLinea = new SalDecimal();
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            Set(ref lnLinea, 0);
            //
            Set(ref lbOk, SalTblReset(this));
            //
            //
            //Se ponen los títulos del Reporte, estas líneas solo se van a mostrar luego de pasar a Excel el Reporte
            if (true)
            {
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                SalString colResDetalleTemp = new SalString();
                Set(ref colResDetalleTemp, "Resumen de Cuadre");
                this.colResDetalle.colValorTexto = colResDetalleTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, "módulo de " + dlgCGAuxWiz.isNombreModulo);
                this.colResDetalle.colValorTexto = colResDetalleTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, "Del: " + SalFmtFormatDateTime(dlgCGAuxWiz.dfFechaIni.ValorFecha, "dd/MMM/yyyy") + " al: " + SalFmtFormatDateTime(dlgCGAuxWiz.dfFechaFin.ValorFecha, "dd/MMM/yyyy"));
                this.colResDetalle.colValorTexto = colResDetalleTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                //Se pasan los Datos a la Tabla
            }
            if (true)
            {
                //
                SalString colResDetalleTemp = new SalString();
                SalDecimal colResDebitoTemp = new SalDecimal();
                SalDecimal colResCreditoTemp = new SalDecimal();
                SalDecimal colResNetoTemp = new SalDecimal();

                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, "Movimientos Asociados");
                this.colResDetalle.colValorTexto = colResDetalleTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);


                Set(ref colResDetalleTemp, " Registrados en CG producto del auxiliar");
                Set(ref colResDebitoTemp, dlgCGAuxWiz.dfResContaDebLoc.ValorNumero);
                Set(ref colResCreditoTemp, dlgCGAuxWiz.dfResContaCredLoc.ValorNumero);
                Set(ref colResNetoTemp, dlgCGAuxWiz.dfResContaNeto.ValorNumero);

                this.colResDetalle.colValorTexto = colResDetalleTemp;
                this.colResDebito.colValorNumero = colResDebitoTemp;
                this.colResCredito.colValorNumero = colResCreditoTemp;
                this.colResNeto.colValorNumero = colResNetoTemp;

                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, " Registrados en el auxiliar y contabilizados");
                Set(ref colResDebitoTemp, dlgCGAuxWiz.dfResAuxDebLoc.ValorNumero);
                Set(ref colResCreditoTemp, dlgCGAuxWiz.dfResAuxCredLoc.ValorNumero);
                Set(ref colResNetoTemp, dlgCGAuxWiz.dfResAuxNeto.ValorNumero);

                this.colResDetalle.colValorTexto = colResDetalleTemp;
                this.colResDebito.colValorNumero = colResDebitoTemp;
                this.colResCredito.colValorNumero = colResCreditoTemp;
                this.colResNeto.colValorNumero = colResNetoTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, " Diferencia");
                Set(ref colResDebitoTemp, dlgCGAuxWiz.dfResDifDebLoc.ValorNumero);
                Set(ref colResCreditoTemp, dlgCGAuxWiz.dfResDifCredLoc.ValorNumero);
                Set(ref colResNetoTemp, dlgCGAuxWiz.dfResDifNeto.ValorNumero);

                this.colResDetalle.colValorTexto = colResDetalleTemp;
                this.colResDebito.colValorNumero = colResDebitoTemp;
                this.colResCredito.colValorNumero = colResCreditoTemp;
                this.colResNeto.colValorNumero = colResNetoTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                SalString colValorTextoTemp = new SalString();
                Set(ref colValorTextoTemp, "Movimientos Registrados en CG");
                this.colResDetalle.colValorTexto = colValorTextoTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, " Directamente en CG");
                Set(ref colResDebitoTemp, dlgCGAuxWiz.dfResCGDebLoc.ValorNumero);
                Set(ref colResCreditoTemp, dlgCGAuxWiz.dfResCGCredLoc.ValorNumero);
                Set(ref colResNetoTemp, dlgCGAuxWiz.dfResCGNetoLoc.ValorNumero);

                this.colResDetalle.colValorTexto = colResDetalleTemp;
                this.colResDebito.colValorNumero = colResDebitoTemp;
                this.colResCredito.colValorNumero = colResCreditoTemp;
                this.colResNeto.colValorNumero = colResNetoTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, " Producto de otro auxiliar");
                Set(ref colResDebitoTemp, dlgCGAuxWiz.dfResOtrosDebLoc.colValorNumero);
                Set(ref colResCreditoTemp, dlgCGAuxWiz.dfResOtrosCredLoc.colValorNumero);
                Set(ref colResNetoTemp, dlgCGAuxWiz.dfResOtrosNetoLoc.colValorNumero);


                this.colResDetalle.colValorTexto = colResDetalleTemp;
                this.colResDebito.colValorNumero = colResDebitoTemp;
                this.colResCredito.colValorNumero = colResCreditoTemp;
                this.colResNeto.colValorNumero = colResNetoTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, " Total:");
                Set(ref colResDebitoTemp, dlgCGAuxWiz.dfResTotCGDebLoc.ValorNumero);
                Set(ref colResCreditoTemp, dlgCGAuxWiz.dfResTotCGCredLoc.ValorNumero);
                Set(ref colResNetoTemp, dlgCGAuxWiz.dfResTotCGNetoLoc.ValorNumero);

                this.colResDetalle.colValorTexto = colResDetalleTemp;
                this.colResDebito.colValorNumero = colResDebitoTemp;
                this.colResCredito.colValorNumero = colResCreditoTemp;
                this.colResNeto.colValorNumero = colResNetoTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, "Movimientos registrados en el Auxiliar");
                this.colResDetalle.colValorTexto = colResDetalleTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, " No contabilizados");
                Set(ref colResDebitoTemp, dlgCGAuxWiz.dfResAuxNCDebLoc.ValorNumero);
                Set(ref colResCreditoTemp, dlgCGAuxWiz.dfResAuxNCCredLoc.ValorNumero);
                Set(ref colResNetoTemp, dlgCGAuxWiz.dfResAuxNCNetoLoc.ValorNumero);

                this.colResDetalle.colValorTexto = colResDetalleTemp;
                this.colResDebito.colValorNumero = colResDebitoTemp;
                this.colResCredito.colValorNumero = colResCreditoTemp;
                this.colResNeto.colValorNumero = colResNetoTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, " Contabilizados fuera del Período seleccionado");
                Set(ref colResDebitoTemp, dlgCGAuxWiz.dfResAuxFPDebLoc.ValorNumero);
                Set(ref colResCreditoTemp, dlgCGAuxWiz.dfResAuxFPCredLoc.ValorNumero);
                Set(ref colResNetoTemp, dlgCGAuxWiz.dfResAuxFPNetoLoc.ValorNumero);

                this.colResDetalle.colValorTexto = colResDetalleTemp;
                this.colResDebito.colValorNumero = colResDebitoTemp;
                this.colResCredito.colValorNumero = colResCreditoTemp;
                this.colResNeto.colValorNumero = colResNetoTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                Set(ref lnLinea, lnLinea + 1);
                //$Siguiente es Call$
                SalTblInsertRow(this, /*lnLinea*/ TBL_MaxRow);
                Set(ref colResDetalleTemp, " Total:");
                Set(ref colResDebitoTemp, dlgCGAuxWiz.dfResAuxTotalDebLoc.colValorNumero);
                Set(ref colResCreditoTemp, dlgCGAuxWiz.dfResAuxTotalCredLoc.colValorNumero);
                Set(ref colResNetoTemp, dlgCGAuxWiz.dfResAuxTotalNetoLoc.colValorNumero);

                this.colResDetalle.colValorTexto = colResDetalleTemp;
                this.colResDebito.colValorNumero = colResDebitoTemp;
                this.colResCredito.colValorNumero = colResCreditoTemp;
                this.colResNeto.colValorNumero = colResNetoTemp;
                //$Siguiente es Call$
                SalTblSetRowFlags(this, SalTblQueryContext(this), ROW_Flags.ROW_Edited | ROW_Flags.ROW_New, false);
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
                //
            }
            return lbOk;
        }
        /// <summary>
        /// Crea una fila en la tabla de resumen de cuadre.
        /// Este método inicializa la tabla y oculta la columna de detalle.
        /// </summary>
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>
        public SalDecimal Create()
        {
            //
            //Call SalTblDefineRowHeader( tblResumenCuadre, '.', 165, TBL_RowHdr_ShareColor|TBL_RowHdr_Visible, this.colResDetalle )
            //Call SalHideWindow( this.colResDetalle )
            return new SalDecimal(1);
        }
        /// <summary>
        /// Destruye los recursos asociados a la tabla de resumen de cuadre.
        /// Este método libera los recursos y establece el estado de la operación.
        /// </summary>
        /// <returns>True si la operación fue exitosa, de lo contrario False.</returns>
        public bool Destroy()
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //
            //
            return true;
        }
        /// <summary>
        /// Envía los datos de la tabla de resumen de cuadre a un archivo Excel.
        /// Este método carga la tabla, selecciona las filas, muestra la ventana y llama al evento de exportación.
        /// </summary>
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>
        public SalDecimal tblResumenCuadre_AM_SendTableDataToExcel()
        {
            //$Siguiente es Call$
            LoadTable();
            //$Siguiente es Call$
            SalTblSetFlagsAnyRows(this, ROW_Flags.ROW_Selected, true, 0, 0);

            //$Siguiente es Call$
            SalShowWindow(this);
            //$Siguiente es Call$


            //  TableWindow_AM_SendTableDataToExcel_Event();
            TableWindow_AM_SendTableDataToExcel_Event();

            //$Siguiente es Call$
            SalHideWindow(this);

            dlgCGAuxWiz.DescargarArchivo(this.ValorTexto, this.ValorBytes);
            return new SalDecimal(1);
        }
        /// <summary>
        /// Configura el formato de la columna de débito en la tabla de resumen.
        /// Este método aplica el formato de decimales definido en el asistente.
        /// </summary>
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>
        public SalDecimal colResDebito_AM_Create()
        {
            //$Siguiente es Call$
            SalFmtSetPicture(this.colResDebito, dlgCGAuxWiz.FormatoDecimales());
            return new SalDecimal(1);
        }
        /// <summary>
        /// Configura el formato de la columna de crédito en la tabla de resumen.
        /// Este método aplica el formato de decimales definido en el asistente.
        /// </summary>
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>
        public SalDecimal colResCredito_AM_Create()
        {
            //$Siguiente es Call$
            SalFmtSetPicture(this.colResCredito, dlgCGAuxWiz.FormatoDecimales());
            return new SalDecimal(1);
        }
        /// <summary>
        /// Configura el formato de la columna de neto en la tabla de resumen.
        /// Este método aplica el formato de decimales definido en el asistente.
        /// </summary>
        /// <returns>Un valor decimal indicando el resultado de la operación.</returns>
        public SalDecimal colResNeto_AM_Create()
        {
            //$Siguiente es Call$
            SalFmtSetPicture(this.colResNeto, dlgCGAuxWiz.FormatoDecimales());
            return new SalDecimal(1);
        }
        #endregion
    }
    /// <summary>  
    /// Clase que representa el filtro para el cuadro de contabilidad.  
    /// Contiene propiedades y parámetros relacionados con el filtro, como rangos de fechas,  
    /// cuentas contables, asientos, origen, movimientos, débitos y créditos, entre otros.  
    /// Además, incluye referencias a otras clases relacionadas con el cuadro de contabilidad  
    /// y el asistente de cuadro auxiliar.  
    /// </summary>  
    internal class dlgFiltroCuadreConta : APP
    {
        #region parametros  
        /// <summary>  
        /// Tabla que contiene los datos del cuadro de contabilidad.  
        /// </summary>  
        public tblCuadreConta tblCuadreConta = null;

        /// <summary>  
        /// Referencia al asistente de cuadro auxiliar.  
        /// </summary>  
        public dlgCGAuxWiz dlgCGAuxWiz = null;

        /// <summary>  
        /// Constante que representa el origen del cuadro.  
        /// </summary>  
        const string gsOrigen = "  ";

        /// <summary>  
        /// Parámetro que representa el asiento inicial del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmAsientoIni = new SalString();

        /// <summary>  
        /// Parámetro que representa el asiento final del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmAsientoFin = new SalString();

        /// <summary>  
        /// Parámetro que representa la cuenta inicial del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmCtaIni = new SalString();

        /// <summary>  
        /// Parámetro que representa la cuenta final del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmCtaFin = new SalString();

        /// <summary>  
        /// Parámetro que representa la fecha inicial del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalDate dtPrmFechaIni = new SalDate();

        /// <summary>  
        /// Parámetro que representa la fecha final del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalDate dtPrmFechaFin = new SalDate();

        /// <summary>  
        /// Parámetro que representa el origen del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmOrigen = new SalString();

        /// <summary>  
        /// Parámetro que representa el origen excluido del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmNOTOrigen = new SalString();

        /// <summary>  
        /// Parámetro que representa la contabilidad del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmContabilidad = new SalString();

        /// <summary>  
        /// Parámetro que representa los movimientos del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmMovimientos = new SalString();

        /// <summary>  
        /// Parámetro que representa los débitos y créditos del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmDebitosCreditos = new SalString();

        /// <summary>  
        /// Parámetro que representa el diario mayor del filtro.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmDiarioMayor = new SalString();

        /// <summary>  
        /// Representa el módulo del cuadro auxiliar.  
        /// </summary>  
        [Parametro(true)]
        public SalString isModuloCuadre = new SalString();
        #endregion
        #region Controles Visuales
        [Control("_rbVerTodos", "Ver Todos los Movimientos", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Movimientos de contabilidad")]
        public clsStdRB _rbVerTodos { get { return rbVerTodos; } set { if (rbVerTodos.AM_Validate(value, this)) rbVerTodos = value; } }
        public clsStdRB rbVerTodos = new clsStdRB();
        [Control("_rbVerAsociados", "Ver solo movimientos Asociados", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Movimientos de contabilidad")]
        public clsStdRB _rbVerAsociados { get { return rbVerAsociados; } set { if (rbVerAsociados.AM_Validate(value, this)) rbVerAsociados = value; } }
        public clsStdRB rbVerAsociados = new clsStdRB();

        [Control("_rbVerAsociadosDif", "Ver solo movimientos Asociados con diferencia", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Movimientos de contabilidad")]
        public clsStdRB _rbVerAsociadosDif { get { return rbVerAsociadosDif; } set { if (rbVerAsociadosDif.AM_Validate(value, this)) rbVerAsociadosDif = value; } }
        public clsStdRB rbVerAsociadosDif = new clsStdRB();

        [Control("_rbVerNoAsociados", "Ver solo movimientos NO Asociados", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Movimientos de contabilidad")]
        public clsStdRB _rbVerNoAsociados { get { return rbVerNoAsociados; } set { if (rbVerNoAsociados.AM_Validate(value, this)) rbVerNoAsociados = value; } }
        public clsStdRB rbVerNoAsociados = new clsStdRB();

        [Control("_dfAsientoIni", "Desde: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "código de Asiento")]
        public clsStdDF _dfAsientoIni { get { return dfAsientoIni; } set { if (dfAsientoIni.AM_Validate(value, this)) dfAsientoIni = value; } }
        public clsStdDF dfAsientoIni = new clsStdDF();
        [Control("_dfAsientoFin", "Hasta: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "código de Asiento")]
        public clsStdDF _dfAsientoFin { get { return dfAsientoFin; } set { if (dfAsientoFin.AM_Validate(value, this)) dfAsientoFin = value; } }
        public clsStdDF dfAsientoFin = new clsStdDF();
        [Control("_dfFechaIni", "Desde: ", TipoControl.CampoTexto, TipoValor.Fecha, 1, true, "", "", "", "Fecha")]
        public clsStdDFExtDate _dfFechaIni { get { return dfFechaIni; } set { if (dfFechaIni.AM_Validate(value, this)) dfFechaIni = value; } }
        public clsStdDFExtDate dfFechaIni = new clsStdDFExtDate();
        [Control("_dfFechaFin", "Fin: ", TipoControl.CampoTexto, TipoValor.Fecha, 1, true, "", "", "", "Fecha")]
        public clsStdDFExtDate _dfFechaFin { get { return dfFechaFin; } set { if (dfFechaFin.AM_Validate(value, this)) dfFechaFin = value; } }
        public clsStdDFExtDate dfFechaFin = new clsStdDFExtDate();
        [Control("_pbOrigenNinguno", "Ninguno", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "Origen de Movimientos")]
        public PushButton _pbOrigenNinguno { get { return pbOrigenNinguno; } set { if (pbOrigenNinguno.AM_Validate(value, this)) pbOrigenNinguno = value; } }
        public PushButton pbOrigenNinguno = new PushButton();
        [Control("_pbOrigenTodos", "Todos", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "Origen de Movimientos")]
        public PushButton _pbOrigenTodos { get { return pbOrigenTodos; } set { if (pbOrigenTodos.AM_Validate(value, this)) pbOrigenTodos = value; } }
        public PushButton pbOrigenTodos = new PushButton();
        //Origen        
        [Control("_lbOrigen", "", TipoControl.ListBox, TipoValor.Ninguno, 1, true, "", "", "", "Origen de Movimientos", seleccionmultiple: true, tamanio: 10)]
        public clsLstModSelecMultiple _lbOrigen { get { return lbOrigen; } set { if (lbOrigen.AM_Validate(value, this)) lbOrigen = value; } }
        public clsLstModSelecMultiple lbOrigen = new clsLstModSelecMultiple();
        [Control("_rbManual", "Seleccionar origen manualmente ", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Origen de Movimientos")]
        public clsStdRB _rbManual { get { return rbManual; } set { if (rbManual.AM_Validate(value, this)) rbManual = value; } }
        public clsStdRB rbManual = new clsStdRB();
        [Control("_rbSoloCG", "Solo movimientos de CG ", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Origen de Movimientos")]
        public clsStdRB _rbSoloCG { get { return rbSoloCG; } set { if (rbSoloCG.AM_Validate(value, this)) rbSoloCG = value; } }
        public clsStdRB rbSoloCG = new clsStdRB();
        [Control("_rbSoloAux", "Solo movimientos del Auxiliar ", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Origen de Movimientos")]
        public clsStdRB _rbSoloAux { get { return rbSoloAux; } set { if (rbSoloAux.AM_Validate(value, this)) rbSoloAux = value; } }
        public clsStdRB rbSoloAux = new clsStdRB();
        [Control("_rbOtros", "Movimientos de otros módulos ", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Origen de Movimientos")]
        public clsStdRB _rbOtros { get { return rbOtros; } set { if (rbOtros.AM_Validate(value, this)) rbOtros = value; } }
        public clsStdRB rbOtros = new clsStdRB();
        [Control("_cbDebitos", "Débitos: ", TipoControl.Check, TipoValor.Booleano, 1, true, "", "", "", "Débito/Créditos")]
        public clsStdCB _cbDebitos { get { return cbDebitos; } set { if (cbDebitos.AM_Validate(value, this)) cbDebitos = value; } }
        public clsStdCB cbDebitos = new clsStdCB();
        [Control("_cbCreditos", "Créditos: ", TipoControl.Check, TipoValor.Booleano, 1, true, "", "", "", "Débito/Créditos")]
        public clsStdCB _cbCreditos { get { return cbCreditos; } set { if (cbCreditos.AM_Validate(value, this)) cbCreditos = value; } }
        public clsStdCB cbCreditos = new clsStdCB();
        [Control("_cbDiario", "Diario", TipoControl.Check, TipoValor.Booleano, 1, true, "", "", "", "Origen/Ubicación")]
        public clsStdCB _cbDiario { get { return cbDiario; } set { if (cbDiario.AM_Validate(value, this)) cbDiario = value; } }
        public clsStdCB cbDiario = new clsStdCB();
        [Control("_cbMayor", "Mayor", TipoControl.Check, TipoValor.Booleano, 1, true, "", "", "", "Origen/Ubicación")]
        public clsStdCB _cbMayor { get { return cbMayor; } set { if (cbMayor.AM_Validate(value, this)) cbMayor = value; } }
        public clsStdCB cbMayor = new clsStdCB();
        [Control("_pbSeleccionar", "Seleccionar", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        public PushButton _pbSeleccionar { get { return pbSeleccionar; } set { if (pbSeleccionar.AM_Validate(value, this)) pbSeleccionar = value; } }
        public PushButton pbSeleccionar = new PushButton();
        [Control("_pbTodos", "Todos", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        public PushButton _pbTodos { get { return pbTodos; } set { if (pbTodos.AM_Validate(value, this)) pbTodos = value; } }
        public PushButton pbTodos = new PushButton();
        [Control("_pbCancelar", "Cancelar", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        public PushButton _pbCancelar { get { return pbCancelar; } set { if (pbCancelar.AM_Validate(value, this)) pbCancelar = value; } }
        public PushButton pbCancelar = new PushButton();

        #endregion
        #region Constructor
        /// <summary>  
        /// Constructor de la clase dlgFiltroCuadreConta.  
        /// Inicializa la interfaz de usuario y configura los grupos de orden para la pantalla de selección de asientos.  
        /// Los grupos incluyen movimientos de contabilidad, código de asiento, fecha, origen/ubicación, débito/créditos,  
        /// y origen de movimientos. También se invoca el método ObtenerPantalla para completar la configuración inicial.  
        /// </summary>  
        public dlgFiltroCuadreConta()
        {
            this.TituloPantalla = "Selección de Asientos";
            InicializarInterfaz();
            OrdenGroups = new List<string>() {"Movimientos de contabilidad"+ SeparadorGrupoTab + "",
                                               "código de Asiento" + SeparadorGrupoTab + "",
                                               "Fecha" + SeparadorGrupoTab + "",
                                               "Origen/Ubicación" + SeparadorGrupoTab + "",
                                               "Débito/Créditos" + SeparadorGrupoTab + "",
                                                "Origen de Movimientos" + SeparadorGrupoTab + "",
                                               "" + SeparadorGrupoTab + ""
                                                                               };
            ObtenerPantalla();


        }
        #endregion
        /// <summary>  
        /// Método para inicializar la interfaz de usuario.  
        /// Configura los eventos de creación y validación para los controles de la pantalla,  
        /// incluyendo botones, campos de texto y opciones de selección.  
        /// </summary>  
        public void InicializarInterfaz()
        {
            this.clear_AM_Create();
            this.AM_Create_Event += dlgFiltroCuadreConta_AM_Create;
            this.clear_SAM_CreateComplete();
            this.SAM_CreateComplete_Event += dlgFiltroCuadreConta_SAM_CreateComplete;
            rbVerTodos.clear_AM_Create();
            rbVerTodos.AM_Create_Event += rbVerTodos_AM_Create;
            rbVerAsociados.clear_AM_Create();
            rbVerAsociados.AM_Create_Event += rbVerAsociados_AM_Create;
            rbVerNoAsociados.clear_AM_Create();
            rbVerNoAsociados.AM_Create_Event += rbVerNoAsociados_AM_Create;
            rbVerAsociadosDif.clear_AM_Create();
            rbVerAsociadosDif.AM_Create_Event += rbVerAsociadosDif_AM_Create;
            dfAsientoIni.clear_AM_Create();
            dfAsientoIni.AM_Create_Event += dfAsientoIni_AM_Create;
            dfAsientoIni.clear_AM_Validate();
            dfAsientoIni.AM_Validate_Event += dfAsientoIni_AM_Validate;
            dfAsientoFin.clear_AM_Create();
            dfAsientoFin.AM_Create_Event += dfAsientoFin_AM_Create;
            dfFechaIni.clear_AM_Create();
            dfFechaIni.AM_Create_Event += dfFechaIni_AM_Create;
            dfFechaIni.clear_AM_Validate();
            dfFechaIni.AM_Validate_Event += dfFechaIni_AM_Validate;
            dfFechaFin.clear_AM_Create();
            dfFechaFin.AM_Create_Event += dfFechaFin_AM_Create;
            pbOrigenNinguno.clear_AM_Create();
            pbOrigenNinguno.AM_Create_Event += pbOrigenNinguno_AM_Create;
            pbOrigenNinguno.clear_SAM_Click();
            pbOrigenNinguno.SAM_Click_Event += pbOrigenNinguno_SAM_Click;
            pbOrigenTodos.clear_AM_Create();
            pbOrigenTodos.AM_Create_Event += pbOrigenTodos_AM_Create;
            pbOrigenTodos.clear_SAM_Click();
            pbOrigenTodos.SAM_Click_Event += pbOrigenTodos_SAM_Click;
            rbManual.clear_AM_Create();
            rbManual.AM_Create_Event += rbManual_AM_Create;
            rbManual.clear_AM_Click();
            rbManual.AM_Click_Event += rbManual_AM_Click;
            rbSoloCG.clear_AM_Create();
            rbSoloCG.AM_Create_Event += rbSoloCG_AM_Create;
            rbSoloCG.clear_AM_Click();
            rbSoloCG.AM_Click_Event += rbSoloCG_AM_Click;
            rbSoloAux.clear_AM_Create();
            rbSoloAux.AM_Create_Event += rbSoloAux_AM_Create;
            rbSoloAux.clear_AM_Click();
            rbSoloAux.AM_Click_Event += rbSoloAux_AM_Click;
            rbOtros.clear_AM_Create();
            rbOtros.AM_Create_Event += rbOtros_AM_Create;
            rbOtros.clear_AM_Click();
            rbOtros.AM_Click_Event += rbOtros_AM_Click;
            cbDebitos.clear_AM_Create();
            cbDebitos.AM_Create_Event += cbDebitos_AM_Create;
            cbCreditos.clear_AM_Create();
            cbCreditos.AM_Create_Event += cbCreditos_AM_Create;
            cbDiario.clear_AM_Create();
            cbDiario.AM_Create_Event += cbDiario_AM_Create;
            cbMayor.clear_AM_Create();
            cbMayor.AM_Create_Event += cbMayor_AM_Create;
            pbSeleccionar.clear_SAM_Click();
            pbSeleccionar.SAM_Click_Event += pbSeleccionar_SAM_Click;
            pbTodos.clear_SAM_Click();
            pbTodos.SAM_Click_Event += pbTodos_SAM_Click;
            pbCancelar.clear_SAM_Click();
            pbCancelar.SAM_Click_Event += pbCancelar_SAM_Click;
        }
        #region Funciones
        /// <summary>  
        /// Inicializa los campos del formulario con los valores proporcionados.  
        /// Configura los rangos de fechas, movimientos, débitos/créditos y diario/mayor según los parámetros recibidos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la inicialización.</returns>  
        public SalDecimal IniCampos()
        {
            //Inicializar los rangos con los valores que trae del result set de la tabla
            Set(ref dfAsientoIni.ValorFecha, sPrmAsientoIni);
            Set(ref dfAsientoFin.ValorFecha, sPrmAsientoFin);
            Set(ref dfFechaIni.ValorFecha, dtPrmFechaIni);
            Set(ref dfFechaFin.ValorFecha, dtPrmFechaFin);
            //
            //Movimientos
            if (sPrmMovimientos == CG_TODOS)
            {
                Set(ref rbVerTodos.ValorBooleano, true);
            }
            else
            {
                if (sPrmMovimientos == CG_ASOCIADOS)
                {
                    Set(ref rbVerAsociados.ValorBooleano, true);
                }
                else
                {
                    if (sPrmMovimientos == CG_NO_ASOCIADOS)
                    {
                        Set(ref rbVerNoAsociados.ValorBooleano, true);
                    }
                    else
                    {
                        if (sPrmMovimientos == CG_ASOCIADOS_DIF)
                        {
                            Set(ref rbVerAsociadosDif.ValorBooleano, true);
                        }
                        else
                        {
                            Set(ref rbVerTodos.ValorBooleano, true);
                            //
                        }
                    }
                }
            }
            if (sPrmDebitosCreditos == DEBITO)
            {
                Set(ref cbDebitos.ValorBooleano, true);
                Set(ref cbCreditos.ValorBooleano, false);
            }
            else
            {
                if (sPrmDebitosCreditos == CREDITO)
                {
                    Set(ref cbCreditos.ValorBooleano, true);
                    Set(ref cbDebitos.ValorBooleano, false);
                }
                else
                {
                    Set(ref cbCreditos.ValorBooleano, true);
                    Set(ref cbDebitos.ValorBooleano, true);
                    //
                }
            }
            if (sPrmDiarioMayor == DIARIO)
            {
                //
                Set(ref cbDiario.ValorBooleano, true);
                Set(ref cbMayor.ValorBooleano, false);
            }
            else
            {
                if (sPrmDiarioMayor == MAYOR)
                {
                    //
                    Set(ref cbDiario.ValorBooleano, false);
                    Set(ref cbMayor.ValorBooleano, true);
                }
                else
                {
                    //
                    Set(ref cbDiario.ValorBooleano, true);
                    Set(ref cbMayor.ValorBooleano, true);
                    //
                }
            }
            //$Siguiente es Call$
            rbManual.ValorBooleano = true;
            lbOrigen.DesplegarModulos(sPrmOrigen);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea un filtro para los asientos contables basado en los parámetros seleccionados.  
        /// Valida los rangos de fechas, movimientos, débitos/créditos y módulos origen antes de aplicar el filtro.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la creación del filtro.</returns>  
        public SalDecimal CrearFiltroAsientos()
        {
            if (ValidParametros())
            {
                Set(ref sPrmAsientoIni, dfAsientoIni.ValorFecha);
                Set(ref sPrmAsientoFin, dfAsientoFin.ValorFecha);
                Set(ref dtPrmFechaIni, dfFechaIni.ValorFecha);
                Set(ref dtPrmFechaFin, dfFechaFin.ValorFecha);
                //
                Set(ref sPrmOrigen, "");
                Set(ref sPrmNOTOrigen, "");
                //
                if (SalListQueryMultiCount(lbOrigen) != SalListQueryCount(lbOrigen))
                {
                    //AEC Bug 77036 -->
                    Set(ref sPrmOrigen, lbOrigen.GetModulos());
                    //$Siguiente es Call$
                    lbOrigen.ValidarGN(ref sPrmOrigen);
                    //AEC Bug 77036 -->
                    //
                    //If rbManual
                    //If SalListQueryMultiCount( lbOrigen ) != SalListQueryCount( lbOrigen )
                    //Set sPrmOrigen = lbOrigen.GetModulos()
                    //Else
                    //
                    //If rbSoloCG
                    //Set sPrmOrigen = "'CG'"
                    //Else If rbSoloAux
                    //Set sPrmOrigen = "'" || dlgCGAuxWiz.isModuloCuadre || "'"
                    //Else If rbOtros
                    //Set sPrmOrigen = ''
                    //
                    //Filtro de Movimientos
                }
                if (rbVerAsociados.ValorBooleano)
                {
                    //
                    Set(ref sPrmMovimientos, CG_ASOCIADOS);
                }
                else
                {
                    if (rbVerNoAsociados.ValorBooleano)
                    {
                        //
                        Set(ref sPrmMovimientos, CG_NO_ASOCIADOS);
                    }
                    else
                    {
                        if (rbVerTodos.ValorBooleano)
                        {
                            //
                            Set(ref sPrmMovimientos, CG_TODOS);
                        }
                        else
                        {
                            if (rbVerAsociadosDif.ValorBooleano)
                            {
                                //
                                Set(ref sPrmMovimientos, CG_ASOCIADOS_DIF);
                            }
                            else
                            {
                                //
                                Set(ref sPrmMovimientos, string.Empty);
                                //
                            }
                        }
                    }
                }
                if (cbDebitos.ValorBooleano && cbCreditos.ValorBooleano)
                {
                    Set(ref sPrmDebitosCreditos, AMBAS);
                }
                else
                {
                    if (cbDebitos.ValorBooleano)
                    {
                        Set(ref sPrmDebitosCreditos, DEBITO);
                    }
                    else
                    {
                        if (cbCreditos.ValorBooleano)
                        {
                            Set(ref sPrmDebitosCreditos, CREDITO);
                            //
                        }
                    }
                }
                if (cbDiario.ValorBooleano && cbMayor.ValorBooleano)
                {
                    Set(ref sPrmDiarioMayor, AMBAS);
                }
                else
                {
                    if (cbDiario.ValorBooleano)
                    {
                        Set(ref sPrmDiarioMayor, DIARIO);
                    }
                    else
                    {
                        if (cbMayor.ValorBooleano)
                        {
                            Set(ref sPrmDiarioMayor, MAYOR);
                            //
                            //
                        }
                    }
                }
                //$Siguiente es Call$
                SalEndDialog(hWndForm, true);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Elimina el filtro aplicado a los asientos contables.  
        /// Restablece los valores de los parámetros relacionados con los rangos de fechas, movimientos, débitos/créditos y módulos origen.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la eliminación del filtro.</returns>  
        public SalDecimal EliminarFiltroAsientos()
        {
            Set(ref sPrmAsientoIni, string.Empty);
            Set(ref sPrmAsientoFin, string.Empty);
            Set(ref dtPrmFechaIni, DATETIME_Null);
            Set(ref dtPrmFechaFin, DATETIME_Null);
            Set(ref sPrmOrigen, string.Empty);
            Set(ref sPrmContabilidad, string.Empty);
            Set(ref sPrmMovimientos, string.Empty);
            Set(ref sPrmDebitosCreditos, string.Empty);
            Set(ref sPrmDiarioMayor, string.Empty);
            //
            //
            //$Siguiente es Call$
            SalEndDialog(hWndForm, false);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Valida los parámetros ingresados en el formulario.  
        /// Verifica que los rangos de fechas y códigos sean ascendentes y que se haya seleccionado al menos un módulo origen.  
        /// </summary>  
        /// <returns>Devuelve true si los parámetros son válidos, false en caso contrario.</returns>  
        public bool ValidParametros()
        {
            if (dfAsientoIni.ValorTexto > dfAsientoFin.ValorTexto && dfAsientoFin.ValorTexto)
            {
                //$Siguiente es Call$
                SPSMessageBox("El rango de código de " + fciGlobalesCG.NombreAsiento(true, false, false) + " debe ser ascendente.", "Selección de " + fciGlobalesCG.NombreAsiento(false, true, false), MBF_IconHand, CONTINUAR);
                //$Siguiente es Call$
                SalSetFocus(dfAsientoIni);
                return false;
            }
            if (dfFechaIni.ValorFecha > dfFechaFin.ValorFecha && dfFechaFin.ValorFecha)
            {
                //$Siguiente es Call$
                SPSMessageBox("El rango de fechas debe ser ascendente.", "Selección de " + fciGlobalesCG.NombreAsiento(false, true, false), MBF_IconHand, CONTINUAR);
                //$Siguiente es Call$
                SalSetFocus(dfFechaIni);
                return false;
            }
            if (SalListQueryMultiCount(lbOrigen) <= 0)
            {
                //$Siguiente es Call$
                SPSMessageBox("Debe de escoger al menos un módulo origen.", "Selección de " + fciGlobalesCG.NombreAsiento(false, true, false), MBF_IconHand, CONTINUAR);
                //$Siguiente es Call$
                SalSetFocus(lbOrigen);
                return false;
            }
            return true;
        }
        /// <summary>  
        /// Crea el despliegue de los elementos visuales en la interfaz.  
        /// Cambia los títulos de los asientos y ajusta las posiciones de los elementos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal CrearDespliegue()
        {
            SalDecimal nDesplazamiento = new SalDecimal();
            SalDecimal nAlto = new SalDecimal();
            SalDecimal nAncho = new SalDecimal();
            SalDecimal nPosY = new SalDecimal();
            SalDecimal nPosX = new SalDecimal();
            WindowHandle hwndGrupoExportados = new WindowHandle();
            WindowHandle hwndGrupoPaquete = new WindowHandle();
            WindowHandle hwndGrupoConta = new WindowHandle();
            WindowHandle hwndGrupo = new WindowHandle();
            //Cambiar títulos del asiento
            //$Siguiente es Call$
            SalSetWindowText(hWndForm, "Selección de " + fciGlobalesCG.NombreAsiento(false, true, false));
            // Set(ref hwndGrupo, VisWinGetHandle(hWndForm, "código de 1234567890", TYPE_GroupBox));
            //$Siguiente es Call$
            SalSetWindowText(hwndGrupo, "código de " + fciGlobalesCG.NombreAsiento(false, true, false));
            // Set(ref hwndGrupo, VisWinGetHandle(hWndForm, "Tipo de 1234567890", TYPE_GroupBox));
            //$Siguiente es Call$
            SalSetWindowText(hwndGrupo, "Tipo de " + fciGlobalesCG.NombreAsiento(false, true, false));
            //$Siguiente es Call$
            // Sal.CenterWindow(hWndForm);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Selecciona o deselecciona todos los módulos en la lista de origen.  
        /// Ajusta el estado de los botones según la selección.  
        /// </summary>  
        /// <param name="bPrmSeleccion">Indica si se deben seleccionar (true) o deseleccionar (false) todos los módulos.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal SeleccionTodosModulos(SalBoolean bPrmSeleccion)
        {
            //$Siguiente es Call$
            SalListSetMultiSelect(lbOrigen, -1, bPrmSeleccion);
            if (bPrmSeleccion)
            {
                //Todos seleccionados
                //$Siguiente es Call$
                SalEnableWindow(pbOrigenNinguno);
                //$Siguiente es Call$
                SalDisableWindow(pbOrigenTodos);
            }
            else
            {
                //Ninguno seleccionado
                //$Siguiente es Call$
                SalDisableWindow(pbOrigenNinguno);
                //$Siguiente es Call$
                SalEnableWindow(pbOrigenTodos);
            }
            //$Siguiente es Call$
            //VisListSetFocusIndex(lbOrigen, 0);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Inicializa el filtro de cuadre contable y ajusta los tamaños de los grupos visuales.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dlgFiltroCuadreConta_AM_Create()
        {
            //$Siguiente es Call$
            CrearDespliegue();
            TamanioGrupo("Movimientos de contabilidad", 12, "");
            TamanioGrupo("código de Asiento", 6, "");
            TamanioGrupo("Fecha", 6, "");
            TamanioGrupo("Débito/Créditos", 6, "");
            TamanioGrupo("Origen/Ubicación", 6, "");
            TamanioGrupo("Origen de Movimientos", 12, "");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Completa la creación del filtro de cuadre contable inicializando los campos necesarios.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dlgFiltroCuadreConta_SAM_CreateComplete()
        {
            //$Siguiente es Call$
            IniCampos();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el botón para ver todos los movimientos, independientemente de su asociación.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerTodos_AM_Create()
        {
            //
            Set(ref rbVerTodos.sStatusText, "Ver todos los movimientos independientemente si están asociados o no");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el botón para ver solo los movimientos asociados al auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerAsociados_AM_Create()
        {
            //
            Set(ref rbVerAsociados.sStatusText, "Ver solo los movimientos asociados con alguno del auxiliar");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el botón para ver solo los movimientos no asociados al auxiliar seleccionado.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerNoAsociados_AM_Create()
        {
            //
            Set(ref rbVerAsociados.sStatusText, "Ver solo los movimientos que no están asociados al auxiliar seleccionado");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el botón para ver solo los movimientos asociados con diferencias en los montos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerAsociadosDif_AM_Create()
        {
            //
            Set(ref rbVerAsociadosDif.sStatusText, "Ver solo los movimientos asociados que tienen alguna diferencia con relación al monto del auxiliar");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el campo de entrada para el código inicial del asiento.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfAsientoIni_AM_Create()
        {
            Set(ref dfAsientoIni.sStatusText, "código de " + fciGlobalesCG.NombreAsiento(false, false, false) + " inicial");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Valida el campo de entrada para el código inicial del asiento.  
        /// Si el campo de código final está vacío, lo completa con el valor del código inicial.  
        /// </summary>  
        /// <param name="MyValue">Valor ingresado en el campo.</param>  
        /// <returns>Devuelve un valor indicando el resultado de la validación.</returns>  
        public SalDecimal dfAsientoIni_AM_Validate(Pantalla MyValue)
        {
            if (dfAsientoFin.ValorTexto == string.Empty)
            {
                Set(ref dfAsientoFin.ValorTexto, dfAsientoIni.ValorTexto);
            }
            return VALIDATE_OkClearFlag;
        }
        /// <summary>  
        /// Configura el campo de entrada para el código final del asiento.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfAsientoFin_AM_Create()
        {
            Set(ref dfAsientoFin.sStatusText, "código de " + fciGlobalesCG.NombreAsiento(false, false, false) + " final");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el campo de entrada para la fecha inicial de selección.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfFechaIni_AM_Create()
        {
            Set(ref dfFechaIni.sStatusText, "Fecha inicial para la selección de " + fciGlobalesCG.NombreAsiento(true, false, true));
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Valida el campo de entrada para la fecha inicial de selección.  
        /// Si el campo de fecha final está vacío, lo completa con el valor de la fecha inicial.  
        /// </summary>  
        /// <param name="MyValue">Valor ingresado en el campo.</param>  
        /// <returns>Devuelve un valor indicando el resultado de la validación.</returns>  
        public SalDecimal dfFechaIni_AM_Validate(Pantalla MyValue)
        {
            if (dfFechaFin.ValorFecha == DATETIME_Null)
            {
                Set(ref dfFechaFin.ValorFecha, dfFechaIni.ValorFecha);
            }
            return VALIDATE_OkClearFlag;
        }
        /// <summary>  
        /// Configura el campo de entrada para la fecha final de selección.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfFechaFin_AM_Create()
        {
            Set(ref dfFechaFin.sStatusText, "Fecha final para la selección de " + fciGlobalesCG.NombreAsiento(true, false, true));
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el botón para eliminar la selección de todos los módulos de origen.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbOrigenNinguno_AM_Create()
        {
            Set(ref pbOrigenNinguno.sStatusText, "Eliminar la selección de todos los módulos que originan " + fciGlobalesCG.NombreAsiento(true, false, true));
            //$Siguiente es Call$
            //pbOrigenNinguno.InitTip("Ninguno");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Elimina la selección de todos los módulos de origen.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbOrigenNinguno_SAM_Click()
        {
            //Dejar todos los tipos sin seleccionar
            //$Siguiente es Call$
            SeleccionTodosModulos(false);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea el botón para seleccionar todos los módulos que originan movimientos.  
        /// Configura el texto de estado del botón con el nombre del asiento.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la creación.</returns>  
        public SalDecimal pbOrigenTodos_AM_Create()
        {
            Set(ref pbOrigenTodos.sStatusText, "Selección de todos los módulos que originan " + fciGlobalesCG.NombreAsiento(true, false, true));
            //$Siguiente es Call$
            //pbOrigenTodos.InitTip("Todos");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón para seleccionar todos los módulos.  
        /// Llama a la función para seleccionar todos los módulos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbOrigenTodos_SAM_Click()
        {
            //Seleccionar todos
            //$Siguiente es Call$
            SeleccionTodosModulos(true);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea el botón para ver movimientos originados desde el módulo de Contabilidad General.  
        /// Configura el texto de estado del botón.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la creación.</returns>  
        public SalDecimal rbManual_AM_Create()
        {
            //
            Set(ref rbSoloCG.sStatusText, "Ver movimientos originados desde el módulo de Contabilidad General");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón para ver movimientos originados desde el módulo de Contabilidad General.  
        /// Limpia la lista de módulos y despliega los módulos relacionados.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbManual_AM_Click()
        {
            //
            //$Siguiente es Call$
            SalListClear(lbOrigen);
            //$Siguiente es Call$
            lbOrigen.DesplegarModulos("");
            //
            //Call SalEnableWindow( lbOrigen )
            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea el botón para ver movimientos originados desde el módulo de Contabilidad General.  
        /// Configura el texto de estado del botón.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la creación.</returns>  
        public SalDecimal rbSoloCG_AM_Create()
        {
            //
            Set(ref rbSoloCG.sStatusText, "Ver movimientos originados desde el módulo de Contabilidad General");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón para ver movimientos originados desde el módulo de Contabilidad General.  
        /// Limpia la lista de módulos y despliega los módulos relacionados con Contabilidad General.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbSoloCG_AM_Click()
        {
            //
            //$Siguiente es Call$
            SalListClear(lbOrigen);
            //$Siguiente es Call$
            lbOrigen.DesplegarModulos("CG");
            //
            //Call SalDisableWindow( lbOrigen )
            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea el botón para ver solo movimientos originados por el auxiliar.  
        /// Configura el texto de estado del botón.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la creación.</returns>  
        public SalDecimal rbSoloAux_AM_Create()
        {
            //
            Set(ref rbSoloAux.sStatusText, "Ver solo movimientos originados por el auxiliar");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón para ver solo movimientos originados por el auxiliar.  
        /// Limpia la lista de módulos y despliega los módulos relacionados con el auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbSoloAux_AM_Click()
        {
            //
            //$Siguiente es Call$
            SalListClear(lbOrigen);
            //$Siguiente es Call$
            lbOrigen.DesplegarModulos(isModuloCuadre);
            //
            //Call SalDisableWindow( lbOrigen )
            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea el botón para ver movimientos originados por otros módulos.  
        /// Configura el texto de estado del botón.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la creación.</returns>  
        public SalDecimal rbOtros_AM_Create()
        {
            //
            Set(ref rbOtros.sStatusText, "Ver movimientos originados por otros módulos");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón para ver movimientos originados por otros módulos.  
        /// Limpia la lista de módulos y despliega los módulos relacionados con otros módulos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbOtros_AM_Click()
        {
            //
            //$Siguiente es Call$
            SalListClear(lbOrigen);
            //$Siguiente es Call$
            lbOrigen.DesplegarModulosInv(isModuloCuadre + ",CG");
            //
            //Call SalDisableWindow( lbOrigen )
            //
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea el checkbox para mostrar débitos.  
        /// Configura el texto de estado y asocia el checkbox con el de créditos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la creación.</returns>  
        public SalDecimal cbDebitos_AM_Create()
        {
            Set(ref cbDebitos.sStatusText, "Mostrar Débitos");
            Set(ref cbDebitos.hwndCBAsociado, cbCreditos);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea el checkbox para mostrar créditos.  
        /// Configura el texto de estado y asocia el checkbox con el de débitos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la creación.</returns>  
        public SalDecimal cbCreditos_AM_Create()
        {
            Set(ref cbCreditos.sStatusText, "Mostrar Créditos");
            Set(ref cbCreditos.hwndCBAsociado, cbDebitos);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea el checkbox para mostrar solo movimientos del diario.  
        /// Configura el texto de estado y asocia el checkbox con el de mayor.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la creación.</returns>  
        public SalDecimal cbDiario_AM_Create()
        {
            Set(ref cbDiario.sStatusText, "Mostrar solo movimientos del diario");
            Set(ref cbDiario.hwndCBAsociado, cbMayor);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea el checkbox para mostrar solo movimientos del mayor.  
        /// Configura el texto de estado y asocia el checkbox con el de diario.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la creación.</returns>  
        public SalDecimal cbMayor_AM_Create()
        {
            Set(ref cbMayor.sStatusText, "Mostrar solo movimientos del mayor");
            Set(ref cbMayor.hwndCBAsociado, cbDiario);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón para seleccionar asientos.  
        /// Llama a la función para crear el filtro de asientos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbSeleccionar_SAM_Click()
        {
            //$Siguiente es Call$
            CrearFiltroAsientos();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón para inicializar los rangos a los valores máximos.  
        /// Llama a la función para eliminar el filtro de asientos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbTodos_SAM_Click()
        {
            //Inicializar los rangos a los valores maximos
            //$Siguiente es Call$
            EliminarFiltroAsientos();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón para cancelar la operación.  
        /// Finaliza el diálogo actual.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbCancelar_SAM_Click()
        {
            //$Siguiente es Call$
            SalEndDialog(hWndForm, false);
            return new SalDecimal(1);
        }
        #endregion
    }
    /// <summary>  
    /// Clase que representa el filtro para el cuadro auxiliar.  
    /// Contiene parámetros como fechas de inicio y fin, movimientos, débitos/créditos,  
    /// y movimientos no asociados, que se utilizan para configurar el filtro.  
    /// </summary>  
    internal class dlgFiltroCuadreAux : APP
    {
        #region parametros  
        /// <summary>  
        /// Representa la fecha inicial del rango de búsqueda.  
        /// </summary>  
        [Parametro(true)]
        public SalDate dtPrmFechaIni = new SalDate();
        /// <summary>  
        /// Representa la fecha final del rango de búsqueda.  
        /// </summary>  
        [Parametro(true)]
        public SalDate dtPrmFechaFin = new SalDate();
        /// <summary>  
        /// Representa los movimientos seleccionados para el proceso.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmMovimientos = new SalString();
        /// <summary>  
        /// Representa los débitos y créditos seleccionados para el proceso.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmDebitosCreditos = new SalString();
        /// <summary>  
        /// Representa los movimientos no asociados seleccionados para el proceso.  
        /// </summary>  
        [Parametro(true)]
        public SalString sPrmNoAsociados = new SalString();
        #endregion
        #region Controles Visuales
        [Control("_rbVerTodos", "Ver Todos los Movimientos: ", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Movimientos del Auxiliar")]
        public clsStdRB _rbVerTodos { get { return rbVerTodos; } set { if (rbVerTodos.AM_Validate(value, this)) rbVerTodos = value; } }
        public clsStdRB rbVerTodos = new clsStdRB();
        [Control("_rbVerAsociados", "Ver solo movimientos Asociados: ", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Movimientos del Auxiliar")]
        public clsStdRB _rbVerAsociados { get { return rbVerAsociados; } set { if (rbVerAsociados.AM_Validate(value, this)) rbVerAsociados = value; } }
        public clsStdRB rbVerAsociados = new clsStdRB();
        [Control("_rbVerAsociadosDif", "Ver solo movimientos Asociados con Diferencia: ", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Movimientos del Auxiliar")]
        public clsStdRB _rbVerAsociadosDif { get { return rbVerAsociadosDif; } set { if (rbVerAsociadosDif.AM_Validate(value, this)) rbVerAsociadosDif = value; } }
        public clsStdRB rbVerAsociadosDif = new clsStdRB();
        [Control("_rbVerNoAsociados", "Ver solo movimientos NO Asociados: ", TipoControl.Radio, TipoValor.Booleano, 1, true, "", "", "", "Movimientos del Auxiliar")]
        public clsStdRB _rbVerNoAsociados { get { return rbVerNoAsociados; } set { if (rbVerNoAsociados.AM_Validate(value, this)) rbVerNoAsociados = value; } }
        public clsStdRB rbVerNoAsociados = new clsStdRB();
        [Control("_cbContabilizados", "Ver movimientos contabilizados", TipoControl.Check, TipoValor.Booleano, 1, true, "", "", "", "Movimientos del Auxiliar")]
        public clsStdCB _cbContabilizados { get { return cbContabilizados; } set { if (cbContabilizados.AM_Validate(value, this)) cbContabilizados = value; } }
        public clsStdCB cbContabilizados = new clsStdCB();
        [Control("_cbNoContabilizados", "Ver movimientos NO contabilizados", TipoControl.Check, TipoValor.Booleano, 1, true, "", "", "", "Movimientos del Auxiliar")]
        public clsStdCB _cbNoContabilizados { get { return cbNoContabilizados; } set { if (cbNoContabilizados.AM_Validate(value, this)) cbNoContabilizados = value; } }
        public clsStdCB cbNoContabilizados = new clsStdCB();
        [Control("_dfFechaIni", "Desde: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFExtDate _dfFechaIni { get { return dfFechaIni; } set { if (dfFechaIni.AM_Validate(value, this)) dfFechaIni = value; } }
        public clsStdDFExtDate dfFechaIni = new clsStdDFExtDate();
        [Control("_dfFechaFin", "Hata: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFExtDate _dfFechaFin { get { return dfFechaFin; } set { if (dfFechaFin.AM_Validate(value, this)) dfFechaFin = value; } }
        public clsStdDFExtDate dfFechaFin = new clsStdDFExtDate();
        [Control("_cbDebitos", "Débito: ", TipoControl.Check, TipoValor.Booleano, 1, true, "", "", "", "Débitos/Créditos")]
        public clsStdCB _cbDebitos { get { return cbDebitos; } set { if (cbDebitos.AM_Validate(value, this)) cbDebitos = value; } }
        public clsStdCB cbDebitos = new clsStdCB();
        [Control("_cbCreditos", "Créditos: ", TipoControl.Check, TipoValor.Booleano, 1, true, "", "", "", "Débitos/Créditos")]
        public clsStdCB _cbCreditos { get { return cbCreditos; } set { if (cbCreditos.AM_Validate(value, this)) cbCreditos = value; } }
        public clsStdCB cbCreditos = new clsStdCB();
        [Control("_pbSeleccionar", "Seleccionar", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", " ")]
        public PushButton _pbSeleccionar { get { return pbSeleccionar; } set { if (pbSeleccionar.AM_Validate(value, this)) pbSeleccionar = value; } }
        public PushButton pbSeleccionar = new PushButton();
        [Control("_pbTodos", "Todos", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", " ")]
        public PushButton _pbTodos { get { return pbTodos; } set { if (pbTodos.AM_Validate(value, this)) pbTodos = value; } }
        public PushButton pbTodos = new PushButton();
        [Control("_pbCancelar", "Cancelar", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", " ")]
        public PushButton _pbCancelar { get { return pbCancelar; } set { if (pbCancelar.AM_Validate(value, this)) pbCancelar = value; } }
        public PushButton pbCancelar = new PushButton();
        #endregion
        #region Constructor
        /// <summary>  
        /// Constructor de la clase dlgFiltroCuadreAux.  
        /// Inicializa la interfaz y configura los parámetros necesarios para la selección de movimientos del auxiliar.  
        /// </summary>  
        public dlgFiltroCuadreAux()
        {
            this.TituloPantalla = "Selección de Movimientos del Auxiliar";
            this.dtPrmFechaIni = dtPrmFechaIni;
            this.dtPrmFechaFin = dtPrmFechaFin;
            this.sPrmMovimientos = sPrmMovimientos;
            this.sPrmDebitosCreditos = sPrmDebitosCreditos;
            this.sPrmNoAsociados = sPrmNoAsociados;
            InicializarInterfaz();
        }
        #endregion
        /// <summary>  
        /// Inicializa la interfaz de la clase dlgFiltroCuadreAux.  
        /// Configura los eventos y limpia los controles para preparar la pantalla de selección de movimientos.  
        /// </summary>  
        public void InicializarInterfaz()
        {
            this.clear_AM_Create();
            this.AM_Create_Event += dlgFiltroCuadreAux_AM_Create;
            this.clear_SAM_CreateComplete();
            this.SAM_CreateComplete_Event += dlgFiltroCuadreAux_SAM_CreateComplete;
            rbVerTodos.clear_AM_Create();
            rbVerTodos.AM_Create_Event += rbVerTodos_AM_Create;
            rbVerTodos.clear_AM_Click();
            rbVerTodos.AM_Click_Event += rbVerTodos_AM_Click;
            rbVerAsociados.clear_AM_Create();
            rbVerAsociados.AM_Create_Event += rbVerAsociados_AM_Create;
            rbVerAsociados.clear_AM_Click();
            rbVerAsociados.AM_Click_Event += rbVerAsociados_AM_Click;
            rbVerAsociadosDif.clear_AM_Create();
            rbVerAsociadosDif.AM_Create_Event += rbVerAsociadosDif_AM_Create;
            rbVerAsociadosDif.clear_AM_Click();
            rbVerAsociadosDif.AM_Click_Event += rbVerAsociadosDif_AM_Click;
            rbVerNoAsociados.clear_AM_Create();
            rbVerNoAsociados.AM_Create_Event += rbVerNoAsociados_AM_Create;
            rbVerNoAsociados.clear_AM_Click();
            rbVerNoAsociados.AM_Click_Event += rbVerNoAsociados_AM_Click;
            cbContabilizados.clear_AM_Create();
            cbContabilizados.AM_Create_Event += cbContabilizados_AM_Create;
            cbNoContabilizados.clear_AM_Create();
            cbNoContabilizados.AM_Create_Event += cbNoContabilizados_AM_Create;
            dfFechaIni.clear_AM_Create();
            dfFechaIni.AM_Create_Event += dfFechaIni_AM_Create;
            dfFechaIni.clear_AM_Validate();
            dfFechaIni.AM_Validate_Event += dfFechaIni_AM_Validate;
            dfFechaFin.clear_AM_Create();
            dfFechaFin.AM_Create_Event += dfFechaFin_AM_Create;
            cbDebitos.clear_AM_Create();
            cbDebitos.AM_Create_Event += cbDebitos_AM_Create;
            cbCreditos.clear_AM_Create();
            cbCreditos.AM_Create_Event += cbCreditos_AM_Create;
            pbSeleccionar.clear_SAM_Click();
            pbSeleccionar.SAM_Click_Event += pbSeleccionar_SAM_Click;
            pbTodos.clear_SAM_Click();
            pbTodos.SAM_Click_Event += pbTodos_SAM_Click;
            pbCancelar.clear_SAM_Click();
            pbCancelar.SAM_Click_Event += pbCancelar_SAM_Click;
        }
        #region Funciones
        /// <summary>  
        /// Inicializa los campos de la pantalla con los valores proporcionados.  
        /// Configura los rangos de fechas, movimientos, débitos/créditos y estados de contabilización según los parámetros recibidos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la inicialización.</returns>  
        public SalDecimal IniCampos()
        {
            //Inicializar los rangos con los valores que trae del result set de la tabla
            Set(ref dfFechaIni.ValorFecha, dtPrmFechaIni);
            Set(ref dfFechaFin.ValorFecha, dtPrmFechaFin);
            //
            //Movimientos
            if (sPrmMovimientos == AUX_TODOS)
            {
                Set(ref rbVerTodos.ValorBooleano, true);
                //
                //Call SalDisableWindow( cbConDiferencia )
                //$Siguiente es Call$
                SalDisableWindow(cbContabilizados);
                //$Siguiente es Call$
                SalDisableWindow(cbNoContabilizados);
            }
            else
            {
                if (sPrmMovimientos == AUX_ASOCIADOS)
                {
                    Set(ref rbVerAsociados.ValorBooleano, true);
                    //
                    //MRL -->
                    //Call SalEnableWindow( cbConDiferencia )
                    //Call SalDisableWindow( cbConDiferencia )
                    //MRL <--
                    //$Siguiente es Call$
                    SalDisableWindow(cbContabilizados);
                    //$Siguiente es Call$
                    SalDisableWindow(cbNoContabilizados);
                    //MRL S2B31523 -->
                }
                else
                {
                    if (sPrmMovimientos == AUX_ASOC_CONDIF)
                    {
                        Set(ref rbVerAsociadosDif.ValorBooleano, true);
                        //
                        //Call SalDisableWindow( cbConDiferencia )
                        //$Siguiente es Call$
                        SalDisableWindow(cbContabilizados);
                        //$Siguiente es Call$
                        SalDisableWindow(cbNoContabilizados);
                        //MRL S2B31523 <--
                    }
                    else
                    {
                        if (sPrmMovimientos == AUX_NO_ASOCIADOS)
                        {
                            Set(ref rbVerNoAsociados.ValorBooleano, true);
                            //
                            //Call SalDisableWindow( cbConDiferencia )
                            //$Siguiente es Call$
                            SalEnableWindow(cbContabilizados);
                            //$Siguiente es Call$
                            SalEnableWindow(cbNoContabilizados);
                        }
                        else
                        {
                            Set(ref rbVerTodos.ValorBooleano, true);
                            //
                            //Call SalDisableWindow( cbConDiferencia )
                            //$Siguiente es Call$
                            SalDisableWindow(cbContabilizados);
                            //$Siguiente es Call$
                            SalDisableWindow(cbNoContabilizados);
                            //
                        }
                    }
                }
            }
            if (sPrmDebitosCreditos == DEBITO)
            {
                Set(ref cbDebitos.ValorBooleano, true);
            }
            else
            {
                if (sPrmDebitosCreditos == CREDITO)
                {
                    Set(ref cbCreditos.ValorBooleano, true);
                }
                else
                {
                    if (sPrmDebitosCreditos == AMBAS)
                    {
                        Set(ref cbCreditos.ValorBooleano, true);
                        Set(ref cbDebitos.ValorBooleano, true);
                    }
                    else
                    {
                        Set(ref cbCreditos.ValorBooleano, true);
                        Set(ref cbDebitos.ValorBooleano, true);
                        //
                        //MRL -->
                        //If sPrmAsociados = AUX_ASOC_CONDIF
                        //
                        //Set cbConDiferencia = TRUE
                        //Else
                        //
                        //Set cbConDiferencia = FALSE
                        //MRL <--
                        //
                    }
                }
            }
            if (sPrmNoAsociados == AUX_CONTABILIZADO)
            {
                //
                Set(ref cbContabilizados.ValorBooleano, true);
                Set(ref cbNoContabilizados.ValorBooleano, false);
            }
            else
            {
                if (sPrmNoAsociados == AUX_NO_CONTABILIZADO)
                {
                    //
                    Set(ref cbContabilizados.ValorBooleano, false);
                    Set(ref cbNoContabilizados.ValorBooleano, true);
                }
                else
                {
                    //
                    Set(ref cbContabilizados.ValorBooleano, true);
                    Set(ref cbNoContabilizados.ValorBooleano, true);
                    //
                }
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea un filtro para los asientos contables basado en los parámetros seleccionados.  
        /// Valida los parámetros antes de aplicar el filtro y configura las variables necesarias para el proceso.  
        /// </summary>  
        /// <returns>  
        /// Devuelve un valor decimal indicando el resultado de la operación.  
        /// </returns>  
        public SalDecimal CrearFiltroAsientos()
        {
            if (ValidParametros())
            {
                Set(ref dtPrmFechaIni, dfFechaIni.ValorFecha);
                Set(ref dtPrmFechaFin, dfFechaFin.ValorFecha);
                //
                //Filtro de Movimientos
                if (rbVerAsociados.ValorBooleano)
                {
                    //
                    Set(ref sPrmMovimientos, AUX_ASOCIADOS);
                    //MRL S2B31523 -->
                }
                else
                {
                    if (rbVerAsociadosDif.ValorBooleano)
                    {
                        //
                        Set(ref sPrmMovimientos, AUX_ASOC_CONDIF);
                        //MRL S2B31523 <--
                    }
                    else
                    {
                        if (rbVerNoAsociados.ValorBooleano)
                        {
                            //
                            Set(ref sPrmMovimientos, AUX_NO_ASOCIADOS);
                        }
                        else
                        {
                            if (rbVerTodos.ValorBooleano)
                            {
                                //
                                Set(ref sPrmMovimientos, AUX_TODOS);
                            }
                            else
                            {
                                //
                                Set(ref sPrmMovimientos, string.Empty);
                                //
                            }
                        }
                    }
                }
                if (cbDebitos.ValorBooleano && cbCreditos.ValorBooleano)
                {
                    Set(ref sPrmDebitosCreditos, AMBAS);
                }
                else
                {
                    if (cbDebitos.ValorBooleano)
                    {
                        Set(ref sPrmDebitosCreditos, DEBITO);
                    }
                    else
                    {
                        if (cbCreditos.ValorBooleano)
                        {
                            Set(ref sPrmDebitosCreditos, CREDITO);
                            //
                            //MRL -->
                            //If cbConDiferencia
                            //
                            //Set sPrmAsociados = AUX_ASOC_CONDIF
                            //MRL <--
                            //
                        }
                    }
                }
                if (cbContabilizados.ValorBooleano && cbNoContabilizados.ValorBooleano)
                {
                    Set(ref sPrmNoAsociados, AMBAS);
                }
                else
                {
                    if (cbContabilizados.ValorBooleano)
                    {
                        Set(ref sPrmNoAsociados, AUX_CONTABILIZADO);
                    }
                    else
                    {
                        if (cbNoContabilizados.ValorBooleano)
                        {
                            Set(ref sPrmNoAsociados, AUX_NO_CONTABILIZADO);
                        }
                        else
                        {
                            Set(ref sPrmNoAsociados, "");
                            //
                            //
                        }
                    }
                }
                //$Siguiente es Call$
                SalEndDialog(hWndForm, true);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Elimina el filtro aplicado a los asientos contables y restablece los parámetros a valores predeterminados.  
        /// </summary>  
        /// <returns>  
        /// Devuelve un valor decimal indicando el resultado de la operación.  
        /// </returns>  
        public SalDecimal EliminarFiltroAsientos()
        {
            Set(ref dtPrmFechaIni, DATETIME_Null);
            Set(ref dtPrmFechaFin, DATETIME_Null);
            Set(ref sPrmMovimientos, string.Empty);
            Set(ref sPrmDebitosCreditos, string.Empty);
            //Set sPrmAsociados = STRING_Null
            Set(ref sPrmNoAsociados, string.Empty);
            //
            //
            //$Siguiente es Call$
            SalEndDialog(hWndForm, false);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Valida los parámetros ingresados para asegurarse de que sean correctos antes de aplicar el filtro.  
        /// </summary>  
        /// <returns>  
        /// Devuelve true si los parámetros son válidos, de lo contrario false.  
        /// </returns>  
        public bool ValidParametros()
        {
            if (dfFechaIni.ValorFecha > dfFechaFin.ValorFecha && dfFechaFin.ValorFecha)
            {
                //$Siguiente es Call$
                SPSMessageBox("El rango de fechas debe ser ascendente.", "Selección de " + fciGlobalesCG.NombreAsiento(false, true, false), MBF_IconHand, CONTINUAR);
                //$Siguiente es Call$
                SalSetFocus(dfFechaIni);
                return false;
            }
            return true;
        }
        /// <summary>  
        /// Crea el despliegue de los elementos visuales en la interfaz.  
        /// Inicializa las posiciones y dimensiones de los controles relacionados.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal CrearDespliegue()
        {
            SalDecimal nDesplazamiento = new SalDecimal();
            SalDecimal nAlto = new SalDecimal();
            SalDecimal nAncho = new SalDecimal();
            SalDecimal nPosY = new SalDecimal();
            SalDecimal nPosX = new SalDecimal();
            WindowHandle hwndGrupoExportados = new WindowHandle();
            WindowHandle hwndGrupoPaquete = new WindowHandle();
            WindowHandle hwndGrupoConta = new WindowHandle();
            WindowHandle hwndGrupo = new WindowHandle();
            //Cambiar títulos del asiento
            //$Siguiente es Call$
            // SalCenterWindow(hWndForm);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Crea el filtro para el cuadro auxiliar.  
        /// Llama a la función CrearDespliegue para inicializar los elementos visuales.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dlgFiltroCuadreAux_AM_Create()
        {
            //$Siguiente es Call$
            CrearDespliegue();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Completa la creación del cuadro auxiliar.  
        /// Inicializa los campos necesarios para la operación.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dlgFiltroCuadreAux_SAM_CreateComplete()
        {
            //$Siguiente es Call$
            IniCampos();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el botón de opción "Ver todos".  
        /// Establece el texto de estado del botón.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerTodos_AM_Create()
        {
            //
            Set(ref rbVerTodos.sStatusText, "Ver todos los movimientos independientemente si están asociados o no");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón de opción "Ver todos".  
        /// Desactiva los controles relacionados con movimientos contabilizados y no contabilizados.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerTodos_AM_Click()
        {
            //
            if (rbVerTodos.ValorBooleano)
            {
                //
                //Call SalDisableWindow( cbConDiferencia )
                //$Siguiente es Call$
                SalDisableWindow(cbContabilizados);
                //$Siguiente es Call$
                SalDisableWindow(cbNoContabilizados);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el botón de opción "Ver asociados".  
        /// Establece el texto de estado del botón.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerAsociados_AM_Create()
        {
            //
            Set(ref rbVerAsociados.sStatusText, "Ver solo los movimientos asociados con alguno del auxiliar");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón de opción "Ver asociados".  
        /// Activa el control relacionado con movimientos con diferencia y desactiva los demás.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerAsociados_AM_Click()
        {
            //
            if (rbVerAsociados.ValorBooleano)
            {
                //
                //Call SalEnableWindow( cbConDiferencia )
                //$Siguiente es Call$
                SalDisableWindow(cbContabilizados);
                //$Siguiente es Call$
                SalDisableWindow(cbNoContabilizados);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el botón de opción "Ver asociados con diferencia".  
        /// Establece el texto de estado del botón.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerAsociadosDif_AM_Create()
        {
            //
            Set(ref rbVerAsociadosDif.sStatusText, "Ver solo los movimientos asociados que tienen alguna diferencia con relación al monto de contabilidad");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón de opción "Ver asociados con diferencia".  
        /// Activa y desactiva los controles relacionados según el estado del botón.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerAsociadosDif_AM_Click()
        {
            //
            if (rbVerAsociadosDif.ValorBooleano)
            {
                //
                //Call SalEnableWindow( cbConDiferencia )
                //Call SalDisableWindow( cbConDiferencia )
                //$Siguiente es Call$
                SalDisableWindow(cbContabilizados);
                //$Siguiente es Call$
                SalDisableWindow(cbNoContabilizados);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el botón de opción "Ver no asociados".  
        /// Establece el texto de estado del botón.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerNoAsociados_AM_Create()
        {
            //
            Set(ref rbVerAsociados.sStatusText, "Ver solo los movimientos que no están asociados al auxiliar seleccionado");
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón de opción "Ver no asociados".  
        /// Activa los controles relacionados con movimientos contabilizados y no contabilizados.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal rbVerNoAsociados_AM_Click()
        {
            //
            if (rbVerNoAsociados.ValorBooleano)
            {
                //
                //Call SalDisableWindow( cbConDiferencia )
                //$Siguiente es Call$
                SalEnableWindow(cbContabilizados);
                //$Siguiente es Call$
                SalEnableWindow(cbNoContabilizados);
            }
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el checkbox "Contabilizados".  
        /// Establece el texto de estado y asocia el control con otro checkbox.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal cbContabilizados_AM_Create()
        {
            Set(ref cbContabilizados.sStatusText, "Mostrar movimientos contabilizados");
            Set(ref cbContabilizados.hwndCBAsociado, cbNoContabilizados);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el checkbox "No contabilizados".  
        /// Establece el texto de estado y asocia el control con otro checkbox.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal cbNoContabilizados_AM_Create()
        {
            Set(ref cbNoContabilizados.sStatusText, "Mostrar movimientos NO contabilizados");
            Set(ref cbNoContabilizados.hwndCBAsociado, cbContabilizados);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el campo de fecha inicial.  
        /// Establece el texto de estado del campo.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfFechaIni_AM_Create()
        {
            Set(ref dfFechaIni.sStatusText, "Fecha inicial para la selección de " + fciGlobalesCG.NombreAsiento(true, false, true));
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Valida el campo de fecha inicial.  
        /// Si la fecha final está vacía, la inicializa con la fecha inicial.  
        /// </summary>  
        /// <param name="MyValue">Valor de la pantalla.</param>  
        /// <returns>Devuelve un valor indicando el resultado de la validación.</returns>  
        public SalDecimal dfFechaIni_AM_Validate(Pantalla MyValue)
        {
            if (dfFechaFin.ValorFecha == DATETIME_Null)
            {
                Set(ref dfFechaFin.ValorFecha, dfFechaIni);
            }
            return VALIDATE_OkClearFlag;
        }
        /// <summary>  
        /// Configura el campo de fecha final.  
        /// Establece el texto de estado del campo.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal dfFechaFin_AM_Create()
        {
            Set(ref dfFechaFin.sStatusText, "Fecha final para la selección de " + fciGlobalesCG.NombreAsiento(true, false, true));
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el checkbox "Débitos".  
        /// Establece el texto de estado y asocia el control con otro checkbox.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal cbDebitos_AM_Create()
        {
            Set(ref cbDebitos.sStatusText, "Mostrar Débitos");
            Set(ref cbDebitos.hwndCBAsociado, cbCreditos);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Configura el checkbox "Créditos".  
        /// Establece el texto de estado y asocia el control con otro checkbox.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal cbCreditos_AM_Create()
        {
            Set(ref cbCreditos.sStatusText, "Mostrar Créditos");
            Set(ref cbCreditos.hwndCBAsociado, cbDebitos);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón "Seleccionar".  
        /// Crea el filtro de asientos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbSeleccionar_SAM_Click()
        {
            //$Siguiente es Call$  
            CrearFiltroAsientos();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón "Todos".  
        /// Inicializa los rangos a los valores máximos y elimina el filtro de asientos.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbTodos_SAM_Click()
        {
            //Inicializar los rangos a los valores maximos
            //$Siguiente es Call$
            EliminarFiltroAsientos();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón "Cancelar".  
        /// Finaliza el diálogo actual.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal pbCancelar_SAM_Click()
        {
            //$Siguiente es Call$  
            SalEndDialog(hWndForm, false);
            return new SalDecimal(1);
        }
        #endregion
    }
    /// <summary>  
    /// Clase que representa el diálogo para asociar documentos en el sistema.  
    /// Contiene propiedades relacionadas con los documentos asociados, como GUID, origen, débitos y créditos  
    /// en moneda local y dólar, así como información adicional sobre el origen del documento.  
    /// </summary>  
    internal class dlgCGAuxDocAsociado : APP
    {
        #region parametros
        /// <summary>  
        /// Tabla que representa la asociación de movimientos auxiliares.  
        /// </summary>  
        public tblAsocCuadreAux tblAsocCuadreAux = new tblAsocCuadreAux();

        /// <summary>  
        /// Identificador único global (GUID) del movimiento asociado.  
        /// </summary>  
        public SalString psGUID = new SalString();
        /// <summary>  
        /// Documento de origen del movimiento asociado.  
        /// </summary>  
        public SalString psDocOrigen = new SalString();
        /// <summary>  
        /// Valor del débito en moneda local.  
        /// </summary>  
        public SalDecimal pnDebitoLoc = new SalDecimal();
        /// <summary>  
        /// Valor del débito en moneda dólar.  
        /// </summary>  
        public SalDecimal pnDebitoDol = new SalDecimal();
        /// <summary>  
        /// Valor del crédito en moneda local.  
        /// </summary>  
        public SalDecimal pnCreditoLoc = new SalDecimal();
        /// <summary>  
        /// Valor del crédito en moneda dólar.  
        /// </summary>  
        public SalDecimal pnCreditoDol = new SalDecimal();
        /// <summary>  
        /// Fecha desde la cual se considera el movimiento asociado.  
        /// </summary>  
        public SalString psDesde = new SalString();
        #endregion
        #region Controles Visuales
        [Control("_dfMovimientoReferencia", "dfMovimientoReferencia: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsdfDescripcion _dfMovimientoReferencia { get { return dfMovimientoReferencia; } set { if (dfMovimientoReferencia.AM_Validate(value, this)) dfMovimientoReferencia = value; } }
        public clsdfDescripcion dfMovimientoReferencia = new clsdfDescripcion();
        [Control("_dfContaDebitoLoc", "dfContaDebitoLoc: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfContaDebitoLoc { get { return dfContaDebitoLoc; } set { if (dfContaDebitoLoc.AM_Validate(value, this)) dfContaDebitoLoc = value; } }
        public clsStdDFNumeric dfContaDebitoLoc = new clsStdDFNumeric();
        [Control("_dfContaCreditoLoc", "dfContaCreditoLoc: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfContaCreditoLoc { get { return dfContaCreditoLoc; } set { if (dfContaCreditoLoc.AM_Validate(value, this)) dfContaCreditoLoc = value; } }
        public clsStdDFNumeric dfContaCreditoLoc = new clsStdDFNumeric();
        [Control("_dfAuxDebitoLoc", "dfAuxDebitoLoc: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfAuxDebitoLoc { get { return dfAuxDebitoLoc; } set { if (dfAuxDebitoLoc.AM_Validate(value, this)) dfAuxDebitoLoc = value; } }
        public clsStdDFNumeric dfAuxDebitoLoc = new clsStdDFNumeric();
        [Control("_dfAuxCreditoLoc", "dfAuxCreditoLoc: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfAuxCreditoLoc { get { return dfAuxCreditoLoc; } set { if (dfAuxCreditoLoc.AM_Validate(value, this)) dfAuxCreditoLoc = value; } }
        public clsStdDFNumeric dfAuxCreditoLoc = new clsStdDFNumeric();
        [Control("_dfContaDebitoDol", "dfContaDebitoDol: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfContaDebitoDol { get { return dfContaDebitoDol; } set { if (dfContaDebitoDol.AM_Validate(value, this)) dfContaDebitoDol = value; } }
        public clsStdDFNumeric dfContaDebitoDol = new clsStdDFNumeric();
        [Control("_dfContaCreditoDol", "dfContaCreditoDol: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfContaCreditoDol { get { return dfContaCreditoDol; } set { if (dfContaCreditoDol.AM_Validate(value, this)) dfContaCreditoDol = value; } }
        public clsStdDFNumeric dfContaCreditoDol = new clsStdDFNumeric();
        [Control("_dfAuxDebitoDol", "dfAuxDebitoDol: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfAuxDebitoDol { get { return dfAuxDebitoDol; } set { if (dfAuxDebitoDol.AM_Validate(value, this)) dfAuxDebitoDol = value; } }
        public clsStdDFNumeric dfAuxDebitoDol = new clsStdDFNumeric();
        [Control("_dfAuxCreditoDol", "dfAuxCreditoDol: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfAuxCreditoDol { get { return dfAuxCreditoDol; } set { if (dfAuxCreditoDol.AM_Validate(value, this)) dfAuxCreditoDol = value; } }
        public clsStdDFNumeric dfAuxCreditoDol = new clsStdDFNumeric();
        [Control("_dfDifDebitoLoc", "dfDifDebitoLoc: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfDifDebitoLoc { get { return dfDifDebitoLoc; } set { if (dfDifDebitoLoc.AM_Validate(value, this)) dfDifDebitoLoc = value; } }
        public clsStdDFNumeric dfDifDebitoLoc = new clsStdDFNumeric();
        [Control("_dfDifCreditoLoc", "dfDifCreditoLoc: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfDifCreditoLoc { get { return dfDifCreditoLoc; } set { if (dfDifCreditoLoc.AM_Validate(value, this)) dfDifCreditoLoc = value; } }
        public clsStdDFNumeric dfDifCreditoLoc = new clsStdDFNumeric();
        [Control("_dfDifDebitoDol", "dfDifDebitoDol: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfDifDebitoDol { get { return dfDifDebitoDol; } set { if (dfDifDebitoDol.AM_Validate(value, this)) dfDifDebitoDol = value; } }
        public clsStdDFNumeric dfDifDebitoDol = new clsStdDFNumeric();
        [Control("_dfDifCreditoDol", "dfDifCreditoDol: ", TipoControl.CampoTexto, TipoValor.Texto, 1, true, "", "", "", "")]
        public clsStdDFNumeric _dfDifCreditoDol { get { return dfDifCreditoDol; } set { if (dfDifCreditoDol.AM_Validate(value, this)) dfDifCreditoDol = value; } }
        public clsStdDFNumeric dfDifCreditoDol = new clsStdDFNumeric();
        [Control("_pbSalir", "pbSalir: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        public PushButton _pbSalir { get { return pbSalir; } set { if (pbSalir.AM_Validate(value, this)) pbSalir = value; } }
        public PushButton pbSalir = new PushButton();
        #endregion
        #region Constructor
        /// <summary>  
        /// Constructor de la clase dlgCGAuxDocAsociado.  
        /// Inicializa una nueva instancia con los valores proporcionados para los parámetros.  
        /// </summary>  
        /// <param name="psGUID">Identificador único del documento asociado.</param>  
        /// <param name="psDocOrigen">Origen del documento asociado.</param>  
        /// <param name="pnDebitoLoc">Monto de débito en moneda local.</param>  
        /// <param name="pnDebitoDol">Monto de débito en dólares.</param>  
        /// <param name="pnCreditoLoc">Monto de crédito en moneda local.</param>  
        /// <param name="pnCreditoDol">Monto de crédito en dólares.</param>  
        /// <param name="psDesde">Información adicional sobre el origen del documento.</param>  
        public dlgCGAuxDocAsociado(SalString psGUID, SalString psDocOrigen, SalDecimal pnDebitoLoc, SalDecimal pnDebitoDol, SalDecimal pnCreditoLoc, SalDecimal pnCreditoDol, SalString psDesde)
        {
            this.psGUID = psGUID;
            this.psDocOrigen = psDocOrigen;
            this.pnDebitoLoc = pnDebitoLoc;
            this.pnDebitoDol = pnDebitoDol;
            this.pnCreditoLoc = pnCreditoLoc;
            this.pnCreditoDol = pnCreditoDol;
            this.psDesde = psDesde;
        }
        /// <summary>  
        /// Constructor de la clase dlgCGAuxDocAsociado.  
        /// Este constructor inicializa una nueva instancia de la clase dlgCGAuxDocAsociado.  
        /// </summary>  
        public dlgCGAuxDocAsociado()
        {
        }
        #endregion
        /// <summary>  
        /// Inicializa la interfaz del formulario, configurando los eventos y limpiando los controles.  
        /// </summary>  
        public void InicializarInterfaz()
        {
            this.clear_SAM_CreateComplete();
            this.SAM_CreateComplete_Event += dlgCGAuxDocAsociado_SAM_CreateComplete;
            pbSalir.clear_AM_Click();
            pbSalir.AM_Click_Event += pbSalir_AM_Click;
        }
        #region Funciones
        /// <summary>  
        /// Muestra los datos calculados en los campos correspondientes del formulario.  
        /// Realiza cálculos de diferencias entre débitos y créditos en moneda local y dólar.  
        /// </summary>  
        /// <returns>  
        /// Devuelve true si los datos se muestran correctamente.  
        /// </returns>  
        public bool MostrarDatos()
        {
            SalDecimal lnSum = new SalDecimal();
            WindowHandle hwndColumna = new WindowHandle();
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //  
            Set(ref dfAuxDebitoLoc.ValorNumero, SalTblColumnSum(tblAsocCuadreAux, 5, 0, 0));
            Set(ref dfAuxDebitoDol.ValorNumero, SalTblColumnSum(tblAsocCuadreAux, 6, 0, 0));
            Set(ref dfAuxCreditoLoc.ValorNumero, SalTblColumnSum(tblAsocCuadreAux, 7, 0, 0));
            Set(ref dfAuxCreditoDol.ValorNumero, SalTblColumnSum(tblAsocCuadreAux, 8, 0, 0));
            //  
            Set(ref dfContaDebitoLoc.ValorNumero, pnDebitoLoc);
            Set(ref dfContaDebitoDol.ValorNumero, pnDebitoDol);
            Set(ref dfContaCreditoLoc.ValorNumero, pnCreditoLoc);
            Set(ref dfContaCreditoDol.ValorNumero, pnCreditoDol);
            //  
            Set(ref dfDifDebitoLoc, dfContaDebitoLoc.ValorNumero - dfAuxDebitoLoc.ValorNumero);
            Set(ref dfDifDebitoDol, dfContaDebitoDol.ValorNumero - dfAuxDebitoDol.ValorNumero);
            Set(ref dfDifCreditoLoc, dfContaCreditoLoc.ValorNumero - dfAuxCreditoLoc.ValorNumero);
            Set(ref dfDifCreditoDol, dfContaCreditoDol.ValorNumero - dfAuxCreditoDol.ValorNumero);
            //  
            Set(ref dfMovimientoReferencia.ValorTexto, psDocOrigen);
            //
            //
            if (psDesde == CONTA)
            {
                //
                //$Siguiente es Call$
                SalSetWindowLabelText(dfMovimientoReferencia, "Movimiento en la Contabilidad:");
            }
            else
            {
                //
                //$Siguiente es Call$
                SalSetWindowLabelText(dfMovimientoReferencia, "Movimiento en el Auxiliar:");
                //
                //
                //
            }
            return lbOk;
        }
        /// <summary>  
        /// Evento que se ejecuta al completar la creación del formulario.  
        /// Llama a la función MostrarDatos para inicializar los valores en el formulario.  
        /// </summary>  
        /// <returns>  
        /// Devuelve un valor decimal indicando el resultado de la operación.  
        /// </returns>  
        public SalDecimal dlgCGAuxDocAsociado_SAM_CreateComplete()
        {
            //
            //$Siguiente es Call$
            MostrarDatos();
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Maneja el evento de clic en el botón "Salir".  
        /// Finaliza el diálogo y retorna un valor indicando el resultado.  
        /// </summary>  
        /// <returns>  
        /// Devuelve un valor decimal indicando el resultado de la operación.  
        /// </returns>  
        public SalDecimal pbSalir_AM_Click()
        {
            //
            //$Siguiente es Call$
            SalEndDialog(this, 1);
            return new SalDecimal(1);
        }
        #endregion
    }
    /// <summary>  
    /// Clase que representa una tabla de búsqueda asociada al cuadro auxiliar.  
    /// Proporciona métodos y propiedades para gestionar la interfaz y las operaciones  
    /// relacionadas con los documentos asociados al cuadro auxiliar.  
    /// </summary>  
    internal class tblAsocCuadreAux : clsChldTblBusqueda
    {
        #region Controles Visuales  
        /// <summary>  
        /// Diálogo para manejar documentos asociados al cuadro auxiliar.  
        /// </summary>  
        public dlgCGAuxDocAsociado dlgCGAuxDocAsociado = new dlgCGAuxDocAsociado();
        [Control("_colAuxReferencia", "Referencia", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colAuxReferencia { get { return colAuxReferencia; } set { if (colAuxReferencia.AM_Validate(value, this)) colAuxReferencia = value; } }
        public clscolVisible colAuxReferencia = new clscolVisible();
        [Control("_colAuxFecha", "Fecha", TipoControl.Columna, TipoValor.Fecha, 1, true, "", "", "", "")]
        public clscolVisible _colAuxFecha { get { return colAuxFecha; } set { if (colAuxFecha.AM_Validate(value, this)) colAuxFecha = value; } }
        public clscolVisible colAuxFecha = new clscolVisible();
        [Control("_colAuxConcepto", "Concepto", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colAuxConcepto { get { return colAuxConcepto; } set { if (colAuxConcepto.AM_Validate(value, this)) colAuxConcepto = value; } }
        public clscolVisible colAuxConcepto = new clscolVisible();
        [Control("_colAuxAsiento", "Transacción Contable", TipoControl.Columna, TipoValor.Texto, 1, true, "", "", "", "")]
        public clscolVisible _colAuxAsiento { get { return colAuxAsiento; } set { if (colAuxAsiento.AM_Validate(value, this)) colAuxAsiento = value; } }
        public clscolVisible colAuxAsiento = new clscolVisible();
        [Control("_colAuxDebitoLoc", "Débito Local", TipoControl.Columna, TipoValor.Numero, 1, true, "", "", "", "")]
        public clscolVisible _colAuxDebitoLoc { get { return colAuxDebitoLoc; } set { if (colAuxDebitoLoc.AM_Validate(value, this)) colAuxDebitoLoc = value; } }
        public clscolVisible colAuxDebitoLoc = new clscolVisible();
        [Control("_colAuxDebitoDol", "Débito Dólar", TipoControl.Columna, TipoValor.Numero, 1, true, "", "", "", "")]
        public clscolVisible _colAuxDebitoDol { get { return colAuxDebitoDol; } set { if (colAuxDebitoDol.AM_Validate(value, this)) colAuxDebitoDol = value; } }
        public clscolVisible colAuxDebitoDol = new clscolVisible();
        [Control("_colAuxCreditoLoc", "Crédito Local", TipoControl.Columna, TipoValor.Numero, 1, true, "", "", "", "")]
        public clscolVisible _colAuxCreditoLoc { get { return colAuxCreditoLoc; } set { if (colAuxCreditoLoc.AM_Validate(value, this)) colAuxCreditoLoc = value; } }
        public clscolVisible colAuxCreditoLoc = new clscolVisible();
        [Control("_colAuxCreditoDol", "Crédito Dólar", TipoControl.Columna, TipoValor.Numero, 1, true, "", "", "", "")]
        public clscolVisible _colAuxCreditoDol { get { return colAuxCreditoDol; } set { if (colAuxCreditoDol.AM_Validate(value, this)) colAuxCreditoDol = value; } }
        public clscolVisible colAuxCreditoDol = new clscolVisible();
        #endregion
        #region Constructor
        public tblAsocCuadreAux()
        {
        }
        #endregion
        /// <summary>  
        /// Método para inicializar la interfaz de la tabla de asociación de movimientos auxiliares.  
        /// Este método configura los eventos de las columnas de la tabla, asegurando que se ejecuten  
        /// las acciones correspondientes al forzar la población de datos en cada columna.  
        /// </summary>  
        public void InicializarInterfaz()
        {
            colAuxReferencia.clear_AM_ForcePopulate();
            colAuxReferencia.AM_ForcePopulate_Event += colAuxReferencia_AM_ForcePopulate;
            colAuxFecha.clear_AM_ForcePopulate();
            colAuxFecha.AM_ForcePopulate_Event += colAuxFecha_AM_ForcePopulate;
            colAuxConcepto.clear_AM_ForcePopulate();
            colAuxConcepto.AM_ForcePopulate_Event += colAuxConcepto_AM_ForcePopulate;
            colAuxAsiento.clear_AM_ForcePopulate();
            colAuxAsiento.AM_ForcePopulate_Event += colAuxAsiento_AM_ForcePopulate;
            colAuxDebitoLoc.clear_AM_ForcePopulate();
            colAuxDebitoLoc.AM_ForcePopulate_Event += colAuxDebitoLoc_AM_ForcePopulate;
            colAuxDebitoDol.clear_AM_ForcePopulate();
            colAuxDebitoDol.AM_ForcePopulate_Event += colAuxDebitoDol_AM_ForcePopulate;
            colAuxCreditoLoc.clear_AM_ForcePopulate();
            colAuxCreditoLoc.AM_ForcePopulate_Event += colAuxCreditoLoc_AM_ForcePopulate;
            colAuxCreditoDol.clear_AM_ForcePopulate();
            colAuxCreditoDol.AM_ForcePopulate_Event += colAuxCreditoDol_AM_ForcePopulate;
        }
        #region Funciones
        /// <summary>  
        /// Inicializa la tabla con los parámetros proporcionados.  
        /// Configura las columnas, variables y restricciones según el origen de los datos.  
        /// </summary>  
        /// <param name="sTabla">Referencia a la tabla que se inicializará.</param>  
        /// <param name="sColumnas">Referencia a las columnas que se incluirán en la tabla.</param>  
        /// <param name="sIntoVars">Referencia a las variables que se utilizarán en la consulta.</param>  
        /// <param name="hwndDF">Referencia al manejador de la ventana asociada.</param>  
        /// <param name="bRestrict">Indica si se aplicarán restricciones en la consulta.</param>  
        /// <param name="bBusquedaExacta">Indica si la búsqueda será exacta.</param>  
        /// <param name="bManejarVentana">Indica si se manejará la ventana asociada.</param>  
        /// <param name="nFlags1">Primer conjunto de banderas para configuración adicional.</param>  
        /// <param name="nFlags2">Segundo conjunto de banderas para configuración adicional.</param>  
        /// <returns>Devuelve true si la inicialización fue exitosa.</returns>  
        public bool InitTable(ref SalString sTabla, ref SalString sColumnas, ref SalString sIntoVars, ref SalWindowHandle hwndDF, ref SalBoolean bRestrict, ref SalBoolean bBusquedaExacta, ref SalBoolean bManejarVentana, ref SalDecimal nFlags1, ref SalDecimal nFlags2)
        {
            //$Siguiente es Call$  
            SalTblSetColumnTitle(colAuxAsiento, fciGlobalesCG.NombreAsiento(false, true, false));
            //  
            if (dlgCGAuxDocAsociado.psDesde == CONTA)
            {
                Set(ref sTabla, SqlNet.ConcatCompany("CUADRE_AUX "));
                Set(ref sColumnas, " REFERENCIA, FECHA, CONCEPTO, ASIENTO, DEBITO_LOC, DEBITO_DOL, CREDITO_LOC, CREDITO_DOL ");
            }
            else
            {
                Set(ref sTabla, SqlNet.ConcatCompany("CUADRE_CONTA "));
                Set(ref sColumnas, " FUENTE, FECHA, REFERENCIA, ASIENTO, DEBITO_LOC, DEBITO_DOL, CREDITO_LOC, CREDITO_DOL ");
            }
            Set(ref sIntoVars, ":colAuxReferencia, :colAuxFecha, :colAuxConcepto, :colAuxAsiento, :colAuxDebitoLoc, :colAuxDebitoDol, :colAuxCreditoLoc, :colAuxCreditoDol ");
            //  
            Set(ref hwndDF, hWndNULL);
            Set(ref bRestrict, false);
            Set(ref bBusquedaExacta, true);
            Set(ref bManejarVentana, false);
            //  
            Set(ref bPopulateOnCreate, true);
            //  
            //  
            return true;
        }
        /// <summary>  
        /// Obtiene la opción seleccionada para el cuadro auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un string con la opción seleccionada.</returns>  
        public SalString GetOpcion()
        {
            return "Cuadre Auxiliar";
        }
        /// <summary>  
        /// Obtiene el origen de los datos para el cuadro auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un string con el origen de los datos.</returns>  
        public SalString GetOrigen()
        {
            return CG_ORIGEN;
        }
        /// <summary>  
        /// Obtiene las declaraciones SQL asociadas al cuadro auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un string con las declaraciones SQL.</returns>  
        public SalString GetStatements()
        {
            return "";
        }
        /// <summary>  
        /// Obtiene las variables utilizadas en el cuadro auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un string con las variables utilizadas.</returns>  
        public SalString GetVariables()
        {
            return "";
        }
        /// <summary>  
        /// Crea la cláusula WHERE para la consulta SQL del cuadro auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un string con la cláusula WHERE generada.</returns>  
        public SalString CreateWHERE()
        {
            SalString lsWhere = new SalString();
            //  
            if (dlgCGAuxDocAsociado.psDesde == CONTA)
            {
                Set(ref lsWhere, " WHERE ROWPOINTER IN ( " + "SELECT CCA.GUID_AUX FROM " + SqlNet.ConcatCompany("CUADRE_CONTA_AUX CCA ") + "WHERE GUID_CONTA = :psGUID " + " ) ");
            }
            else
            {
                Set(ref lsWhere, " WHERE ROWPOINTER IN ( " + "SELECT CCA.GUID_CONTA FROM " + SqlNet.ConcatCompany("CUADRE_CONTA_AUX CCA ") + "WHERE GUID_AUX = :psGUID " + " ) ");
                //  
            }
            return lsWhere;
        }
        /// <summary>  
        /// Realiza acciones posteriores a la inicialización de la tabla.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de las acciones.</returns>  
        public SalDecimal AfterInitTable()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Obtiene el tamaño y la ubicación de la ventana.  
        /// </summary>  
        /// <param name="nWidth">Referencia al ancho de la ventana.</param>  
        /// <param name="nHeight">Referencia a la altura de la ventana.</param>  
        /// <param name="nX">Referencia a la posición X de la ventana.</param>  
        /// <param name="nY">Referencia a la posición Y de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal GetWindowSizeAndLoc(ref SalDecimal nWidth, ref SalDecimal nHeight, ref SalDecimal nX, ref SalDecimal nY)
        {
            //$Siguiente es Call$
            //SalGetWindowSize(hWndTable, nWidth, nHeight);
            ////$Siguiente es Call$
            //SalGetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Establece el tamaño y la ubicación de la ventana.  
        /// </summary>  
        /// <param name="nWidth">Ancho deseado de la ventana.</param>  
        /// <param name="nHeight">Altura deseada de la ventana.</param>  
        /// <param name="nX">Posición X deseada de la ventana.</param>  
        /// <param name="nY">Posición Y deseada de la ventana.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal SetWindowSizeAndLoc(SalDecimal nWidth, SalDecimal nHeight, SalDecimal nX, SalDecimal nY)
        {
            //$Siguiente es Call$
            //SalSetWindowSize(hWndTable, nWidth, nHeight);
            ////
            ////Se comentan las llamadas para que compile
            ////$Siguiente es Call$
            //SetWindowInVisiblePos(hWndTable, nWidth, nHeight, nX, nY);
            ////
            ////$Siguiente es Call$
            //SalSetWindowLoc(hWndTable, nX, nY);
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Realiza acciones después de poblar la tabla.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal AfterPopulate()
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Indica si se debe usar la cláusula DISTINCT en las consultas.  
        /// </summary>  
        /// <returns>Devuelve true si se debe usar DISTINCT, de lo contrario false.</returns>  
        public bool UsarDistinct()
        {
            return true;
        }
        /// <summary>  
        /// Indica si se debe realizar una búsqueda inicial al cargar la tabla.  
        /// </summary>  
        /// <returns>Devuelve true si se debe realizar la búsqueda inicial, de lo contrario false.</returns>  
        public bool HacerBusquedaInicial()
        {
            return true;
        }
        /// <summary>  
        /// Devuelve el separador utilizado en las consultas.  
        /// </summary>  
        /// <returns>Devuelve una cadena con el separador utilizado.</returns>  
        public SalString DevolverSeparador()
        {
            return ",";
        }
        /// <summary>  
        /// Indica si se debe usar el conteo de resultados en las consultas.  
        /// </summary>  
        /// <returns>Devuelve true si se debe usar el conteo de resultados, de lo contrario false.</returns>  
        public bool UsarResultCount()
        {
            return false;
        }
        /// <summary>  
        /// Inicializa las preferencias de la tabla.  
        /// </summary>  
        /// <param name="bPrmExistenPreferencias">Indica si existen preferencias previas.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal InicializarPreferencias(SalBoolean bPrmExistenPreferencias)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Cambia la cláusula ORDER BY en las consultas.  
        /// </summary>  
        /// <param name="sPrmOrderBy">Nueva cláusula ORDER BY.</param>  
        /// <returns>Devuelve la cláusula ORDER BY modificada.</returns>  
        public SalString CambiarOrderBy(SalString sPrmOrderBy)
        {
            return sPrmOrderBy;
        }
        /// <summary>  
        /// Devuelve el índice de la columna utilizada para restricciones.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el índice de la columna.</returns>  
        public SalDecimal ColumnaDeRestriccion()
        {
            //
            //se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
            return 1;
        }
        /// <summary>  
        /// Modifica la cláusula WHERE en las consultas.  
        /// </summary>  
        /// <param name="psStringDesde">Valor inicial para la cláusula WHERE.</param>  
        /// <param name="psStringHasta">Valor final para la cláusula WHERE.</param>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal ModificaWhere(SalString psStringDesde, SalString psStringHasta)
        {
            return new SalDecimal(1);
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna de referencia auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxReferencia_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna de fecha auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxFecha_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna de concepto auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxConcepto_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna de asiento auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxAsiento_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna de débito local auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxDebitoLoc_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna de débito dólar auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxDebitoDol_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna de crédito local auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxCreditoLoc_AM_ForcePopulate()
        {
            return true;
        }
        /// <summary>  
        /// Fuerza el poblamiento de la columna de crédito dólar auxiliar.  
        /// </summary>  
        /// <returns>Devuelve un valor decimal indicando el resultado de la operación.</returns>  
        public SalDecimal colAuxCreditoDol_AM_ForcePopulate()
        {
            return true;
        }
        #endregion
    }

}
