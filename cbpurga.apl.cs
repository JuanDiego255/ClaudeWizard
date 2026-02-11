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
        public SalBoolean gbTerminaBien { get { if (g().g_gbTerminaBien is null) { g().g_gbTerminaBien = new SalBoolean(); } return g().g_gbTerminaBien; } set { g().g_gbTerminaBien = value; } }
        public SalBoolean g_gbTerminaBien = null;
        #endregion
    }

    /// <summary>
    /// Clase interna que implementa el asistente de purga de movimientos bancarios.
    /// Permite seleccionar una cuenta bancaria y una conciliación a partir de la cual se purgarán los movimientos históricos y conciliaciones asociadas.
    /// Gestiona la interfaz de usuario, la validación de datos, la ejecución del proceso de purga y la comunicación de mensajes al usuario.
    /// </summary>
    internal class dlgCBPurga : clsdlgWizard
    {
        #region Variables        
        /// <summary>
        /// Instancia de la interfaz de Control Bancario utilizada para gestionar la purga de movimientos y conciliaciones.
        /// </summary>
        public fclsInterfaseCB fciCBAPIPurga = new fclsInterfaseCB();
        /// <summary>
        /// Almacena el número de la última conciliación bancaria disponible para la cuenta seleccionada.
        /// </summary>
        public SalDecimal lnUltimaConcil = new SalDecimal();

        //public dlgWaitPurga dlgWaitPurga = null;
        #endregion
        #region Controles Visuales
        [Control("_mlDescrip", "", TipoControl.AreaTexto, TipoValor.Texto, 1, false, "", "", "Paso 1", "", tamanio: 12, lineas: 5)]
        public clsStdDF _mlDescrip { get { return mlDescrip; } set { if (mlDescrip.AM_Validate(value, this)) mlDescrip = value; } }
        public clsStdDF mlDescrip = new clsStdDF();
        [Control("_dfCuenta", "Cuenta", TipoControl.DialogoSeleccion, TipoValor.TextoMascara, 1, true, "", "", "Paso 1", "", tamanio: 5, beginRow: true)]
        public dfCuentaBancariaF1 _dfCuenta { get { return dfCuenta; } set { if (dfCuenta.AM_Validate(value, this)) dfCuenta = value; } }
        public dfCuentaBancariaF1 dfCuenta = new dfCuentaBancariaF1();
        [Control("_dfCtaDescrip", "", TipoControl.CampoTexto, TipoValor.Texto, 1, false, "", "_dfCuenta", "Paso 1", "", tamanio: 5)]
        public clsdfDescripcion _dfCtaDescrip { get { return dfCtaDescrip; } set { if (dfCtaDescrip.AM_Validate(value, this)) dfCtaDescrip = value; } }
        public clsdfDescripcion dfCtaDescrip = new clsdfDescripcion();
        [Control("_mlDescrip2", "", TipoControl.AreaTexto, TipoValor.Texto, 1, false, "", "", "Paso 2", "", tamanio: 12, lineas: 3)]
        public clsStdDF _mlDescrip2 { get { return mlDescrip2; } set { if (mlDescrip2.AM_Validate(value, this)) mlDescrip2 = value; } }
        public clsStdDF mlDescrip2 = new clsStdDF();
        [Control("_dfCodigoConcil", "Código", TipoControl.DialogoSeleccion, TipoValor.NumeroMascara, 1, true, "", "", "Paso 2", "Conciliación", beginRow: true, tamanio: 12, formato: "F0")]
        public clsdfConcilF1 _dfCodigoConcil { get { return dfCodigoConcil; } set { if (dfCodigoConcil.AM_Validate(value, this)) dfCodigoConcil = value; } }
        public clsdfConcilF1 dfCodigoConcil = new clsdfConcilF1();
        [Control("_dfFechaIni", "Fecha Inicial", TipoControl.CampoTexto, TipoValor.Fecha, 1, false, "", "", "Paso 2", "Conciliación", beginRow: true, tamanio: 12)]
        public clsdfDescripcion _dfFechaIni { get { return dfFechaIni; } set { if (dfFechaIni.AM_Validate(value, this)) dfFechaIni = value; } }
        public clsdfDescripcion dfFechaIni = new clsdfDescripcion();
        [Control("_dfFechaFin", "Fecha Final: ", TipoControl.CampoTexto, TipoValor.Fecha, 1, false, "", "", "Paso 2", "Conciliación", beginRow: true, tamanio: 12)]
        public clsdfDescripcion _dfFechaFin { get { return dfFechaFin; } set { if (dfFechaFin.AM_Validate(value, this)) dfFechaFin = value; } }
        public clsdfDescripcion dfFechaFin = new clsdfDescripcion();
        [Control("_dfSaldoLibros", "Saldo Libros", TipoControl.CampoTexto, TipoValor.Numero, 1, false, "", "", "Paso 2", "Conciliación", beginRow: true, tamanio: 12, formato: "N2")]
        public clsdfDescripcion _dfSaldoLibros { get { return dfSaldoLibros; } set { if (dfSaldoLibros.AM_Validate(value, this)) dfSaldoLibros = value; } }
        public clsdfDescripcion dfSaldoLibros = new clsdfDescripcion();
        [Control("_dfSaldoBancos", "Saldo Bancos", TipoControl.CampoTexto, TipoValor.Numero, 1, false, "", "", "Paso 2", "Conciliación", beginRow: true, tamanio: 12, formato: "N2")]
        public clsdfDescripcion _dfSaldoBancos { get { return dfSaldoBancos; } set { if (dfSaldoBancos.AM_Validate(value, this)) dfSaldoBancos = value; } }
        public clsdfDescripcion dfSaldoBancos = new clsdfDescripcion();
        //[Control("_pbAnterior", "pbAnterior: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        //public PushButton _pbAnterior { get { return pbAnterior; } set { if (pbAnterior.AM_Validate(value, this)) pbAnterior = value; } }
        //public PushButton pbAnterior = new PushButton();
        //[Control("_pbSiguiente", "pbSiguiente: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        //public PushButton _pbSiguiente { get { return pbSiguiente; } set { if (pbSiguiente.AM_Validate(value, this)) pbSiguiente = value; } }
        //public PushButton pbSiguiente = new PushButton();

        ////[Control("_pbAyuda", "pbAyuda: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        ////public PushButton _pbAyuda { get { return pbAyuda; } set { if (pbAyuda.AM_Validate(value, this)) pbAyuda = value; } }
        ////public PushButton pbAyuda = new PushButton();
        //[Control("_pbCargar", "pbCargar: ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        //public PushButton _pbCargar { get { return pbCargar; } set { if (pbCargar.AM_Validate(value, this)) pbCargar = value; } }
        //public PushButton pbCargar = new PushButton();
        [Control("_mlDescrip3", "", TipoControl.AreaTexto, TipoValor.Texto, 1, false, "", "", "Paso 3", "", tamanio: 12, lineas: 3)]
        public clsStdDF _mlDescrip3 { get { return mlDescrip3; } set { if (mlDescrip3.AM_Validate(value, this)) mlDescrip3 = value; } }
        public clsStdDF mlDescrip3 = new clsStdDF();
        //[Control("_pbFinalizar", "Finalizar", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "Paso 3", "", tamanio: 6)]
        //public PushButton _pbFinalizar { get { return pbCargar; } set { if (pbCargar.AM_Validate(value, this)) pbCargar = value; } }
        //public PushButton pbFinalizar = new PushButton();
        [Control("_pbCancelar", "Cancelar", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", " ", " ", tamanio: 1)]
        public PushButton _pbCancelar { get { return pbCancelar; } set { if (pbCancelar.AM_Validate(value, this)) pbCancelar = value; } }
        public PushButton pbCancelar = new PushButton();

        #endregion
        #region Constructor
        /// <summary>
        /// Constructor de la clase <c>dlgCBPurga</c>.
        /// Inicializa la interfaz de usuario, obtiene la pantalla y configura los grupos y tabs del asistente de purga de movimientos bancarios.
        /// Establece los textos descriptivos y el título de la pantalla.
        /// </summary>
        public dlgCBPurga()
        {
            InicializarInterfaz();          

            OrdenTabs = new List<string>() { "Paso 1", "Paso 2", "Paso 3" };
            ObtenerPantalla();

            TamanioGrupo("", 12, "Paso 1");
            TamanioGrupo("", 12, "Paso 2");
            TamanioGrupo(" ", 4, "Paso 2");
            TamanioGrupo("Conciliación", 4, "Paso 2");
            TamanioGrupo("  ", 4, "Paso 2");
            TamanioGrupo("", 12, "Paso 3");
            TamanioGrupo(" ", 12, " ");


            this.esconderTabHeader = true;
            SalSetMaxDataLength(dfCodigoConcil, 4);

            OrdenGroups = new List<string>() {"" + SeparadorGrupoTab + "Paso 1" ,
                                              "" + SeparadorGrupoTab + "Paso 2",
                                              "Conciliación" + SeparadorGrupoTab + "Paso 2",
                                              "" + SeparadorGrupoTab + "Paso 3",
                                              " " + SeparadorGrupoTab + " "};


            mlDescrip.ValorTexto = "Asistente de Purga de Movimientos\n\nEste proceso realiza la purga de Movimientos en Libros y en Bancos para la cuenta especificada, así como la Conciliaciones Bancarias asociadas.\nPara continuar selecciones el numero de";
            mlDescrip2.ValorTexto = "Seleccione el número de Conciliación Bancaria a partir de la cual se purgarán los movimientos historicos";
            mlDescrip3.ValorTexto = "Ha concluido el ingreso de parámetros, para iniciar el proceso presione el botón Finalizar";

            pbCargar.TamanioControl = 2;
            pbCancelar.TamanioControl = 1;
            pbSiguiente.TamanioControl = 2;
            pbAnterior.TamanioControl = 2;

            this.TituloPantalla = "Purga de Movimientos";
            SalSetWindowText(this, sSPSCompania + " - Purga de Movimientos");

        }
        #endregion
        /// <summary>
        /// Inicializa la interfaz de usuario del asistente de purga de movimientos bancarios.
        /// Asocia los eventos de ayuda, destrucción y cierre de la ventana, así como los eventos de validación y ayuda de los controles de cuenta bancaria y conciliación.
        /// También asocia el evento de clic del botón cancelar.
        /// </summary>
        public void InicializarInterfaz()
        {
            this.clear_SAM_Help();
            this.SAM_Help_Event += dlgCBPurga_SAM_Help;
            this.clear_SAM_Destroy();
            this.SAM_Destroy_Event += dlgCBPurga_SAM_Destroy;
            this.clear_SAM_Close();
            this.SAM_Close_Event += dlgCBPurga_SAM_Close;
            dfCuenta.clear_AM_InitDFHelp();
            dfCuenta.AM_InitDFHelp_Event += dfCuenta_AM_InitDFHelp;
            dfCuenta.clear_AM_ExtraValidate();
            dfCuenta.AM_ExtraValidate_Event += dfCuenta_AM_ExtraValidate;
            dfCodigoConcil.clear_AM_InitDFHelp();
            dfCodigoConcil.AM_InitDFHelp_Event += dfCodigoConcil_AM_InitDFHelp;
            dfCodigoConcil.clear_AM_ExtraValidate();
            dfCodigoConcil.AM_ExtraValidate_Event += dfCodigoConcil_AM_ExtraValidate;
            pbCancelar.clear_AM_Click();
            pbCancelar.AM_Click_Event += pbCancelar_AM_Click;
        }
        #region Funciones        
        /// <summary>
        /// Evento que se ejecuta al cerrar el diálogo de purga de movimientos bancarios.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando el cierre exitoso del diálogo.</returns>
        public SalDecimal dlgCBPurga_SAM_Close()
        {
            return new SalDecimal(1);
        }
        /// <summary>
        /// Evento que se ejecuta al destruir el diálogo de purga de movimientos bancarios.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando la destrucción exitosa del diálogo.</returns>
        public SalDecimal dlgCBPurga_SAM_Destroy()
        {
            return new SalDecimal(1);
        }
        /// <summary>
        /// Limpia el campo de descripción de la cuenta bancaria.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando que el campo fue limpiado exitosamente.</returns>
        public SalDecimal dfCtaDescrip_AM_ClearField()
        {
            //$Siguiente es Call$
            SalClearField(dfCtaDescrip);
            return new SalDecimal(1);
        }
        /// <summary>
        /// Limpia el campo de fecha inicial de la conciliación bancaria.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando que el campo fue limpiado exitosamente.</returns>
        public SalDecimal dfFechaIni_AM_ClearField()
        {
            //$Siguiente es Call$
            SalClearField(dfFechaIni);
            return new SalDecimal(1);
        }
        /// <summary>
        /// Limpia el campo de fecha final de la conciliación bancaria.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando que el campo fue limpiado exitosamente.</returns>
        public SalDecimal dfFechaFin_AM_ClearField()
        {
            //$Siguiente es Call$
            SalClearField(dfFechaFin);
            return new SalDecimal(1);
        }
        /// <summary>
        /// Limpia el campo de saldo en libros de la conciliación bancaria.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando que el campo fue limpiado exitosamente.</returns>
        public SalDecimal dfSaldoLibros_AM_ClearField()
        {
            //$Siguiente es Call$
            SalClearField(dfSaldoLibros);
            return new SalDecimal(1);
        }
        /// <summary>
        /// Limpia el campo de saldo en bancos de la conciliación bancaria.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando que el campo fue limpiado exitosamente.</returns>
        public SalDecimal dfSaldoBancos_AM_ClearField()
        {
            //$Siguiente es Call$
            SalClearField(dfSaldoBancos);
            return new SalDecimal(1);
        }
        /// <summary>
        /// Permite cancelar el proceso de purga de movimientos bancarios.
        /// Muestra un mensaje de confirmación al usuario dependiendo de la pestaña actual y el estado del botón "Siguiente".
        /// </summary>
        /// <returns>
        /// Retorna true si el usuario confirma la cancelación del proceso, de lo contrario retorna false.
        /// </returns>
        public bool CancelProcess()
        {
            SalBoolean bOk = new SalBoolean();
            if (nCurrentTab != nLastTab)
            {
                switch (SPSMessageBox("¿ Desea cancelar este proceso ?", "Advertencia", MBF_IconQuestion, "Sí,No"))
                {
                    case MB_Button1:
                        {
                            //
                            Set(ref bOk, true);
                            break;
                        }
                    //Caer al return en cualquiera de los casos IDYES o IDNO
                    case MB_Button2:
                        {
                            Set(ref bOk, false);
                            break;
                        }
                }
            }
            else
            {
                if (nCurrentTab == nLastTab && SalIsWindowEnabled(pbSiguiente))
                {
                    switch (SPSMessageBox("¿ Desea cancelar este proceso ?", "Advertencia", MBF_IconQuestion, "Sí,No"))
                    {
                        case MB_Button1:
                            {
                                //
                                Set(ref bOk, true);
                                break;
                            }
                        //Caer al return en cualquiera de los casos IDYES o IDNO
                        case MB_Button2:
                            {
                                Set(ref bOk, false);
                                break;
                            }
                    }
                }
                else
                {
                    Set(ref bOk, true);
                }
                //! ICalvo 9/12/2004
            }
            return bOk;
        }
        /// <summary>
        /// Evento que se ejecuta al hacer clic en el botón Cancelar.
        /// Llama al proceso de cancelación y, si el usuario confirma, cierra el diálogo y regresa a la pantalla anterior.
        /// </summary>
        /// <returns>
        /// Retorna un valor decimal fijo (1) indicando la finalización del evento.
        /// </returns>
        public SalDecimal pbCancelar_AM_Click()
        {
            if (DosPuntosB(this, "CancelProcess"))
            {
                SalEndDialog(this, true);
                this.Regresar();
            }
            return new SalDecimal(1);
        }
        /// <summary>
        /// Inicializa el proceso de purga de movimientos bancarios.
        /// Inicializa la instancia de la interfaz de control bancario y establece el indicador de finalización en falso.
        /// </summary>
        /// <returns>
        /// Retorna true si la inicialización fue exitosa.
        /// </returns>
        public bool InitProcess()
        {
            //$Siguiente es Call$
            fciCBAPIPurga.InitInstance();
            //
            //INICIO GHA CASO #26411
            Set(ref g().g_gbTerminaBien, false);
            //FIN GHA CASO #26411
            return new SalBoolean(true);
        }
        /// <summary>
        /// Valida la información ingresada en la pestaña actual del asistente de purga de movimientos bancarios.
        /// Dependiendo de la pestaña, valida la cuenta bancaria, la conciliación seleccionada y muestra mensajes de error si corresponde.
        /// </summary>
        /// <returns>
        /// Retorna true si la información de la pestaña es válida; de lo contrario, false.
        /// </returns>
        public bool ValidateTabInfo()
        {
            SalBoolean bOk = new SalBoolean();
            switch (CurrentTab()) //indexTab
            {
                //Tab Paso 1
                case 0:
                    {
                        if (dfCuenta.ValorTexto)
                        {
                            Set(ref bOk, fciCBAPIPurga.SetCuentaBancaria(dfCuenta.ValorTexto));
                            if (bOk)
                            {
                                Set(ref bOk, fciCBAPIPurga.ValidarCuentaActiva());
                                if (bOk)
                                {
                                    Set(ref bOk, fciCBAPIPurga.fciCuentaBancaria.ObtConsecutivo(CB_CON_FIRM, ref lnUltimaConcil));
                                    //Se le resta uno al consecutivo de Conciliacion para obtener el numero de la ultima conciliacion
                                    Set(ref lnUltimaConcil, lnUltimaConcil - 1);
                                    //
                                    if (bOk && (lnUltimaConcil > 0))
                                    {
                                        Set(ref bOk, true);
                                    }
                                    else
                                    {
                                        if (bOk && (lnUltimaConcil <= 0))
                                        {
                                            Set(ref bOk, false);
                                            //$Siguiente es Call$
                                            SPSMessageBox("No es posible purgar esta Cuenta Bancaria ya que no posee conciliaciones previas.", CB_MSG_ERROR, MBF_IconHand, CONTINUAR);
                                            //
                                        }
                                    }
                                }
                                else
                                {
                                    Set(ref bOk, false);
                                    //$Siguiente es Call$
                                    SPSMessageBox("No es posible purgar la cuenta ya que no se encuentra activa.", CB_MSG_ERROR, MBF_IconHand, CONTINUAR);
                                }
                            }
                            else
                            {
                                Set(ref bOk, false);
                                //$Siguiente es Call$
                                SPSDisplayErrorMsg("La Cuenta Bancaria con ese código no existe.", CB_MSG_ERROR);
                            }
                        }
                        else
                        {
                            //$Siguiente es Call$
                            SPSMessageBox("Debe especificar el código de la Cuenta Bancaria para el proceso.", CB_MSG_ERROR, MBF_IconHand, CONTINUAR);
                            Set(ref bOk, false);
                            //
                        }
                        break;
                    }
                //Tab Paso 2
                case 1:
                    {
                        if (dfCodigoConcil.ValorNumero >= 0)
                        {
                            //
                            //No permitir purgar a partir de una conciliacion Temporal
                            if (fciCBAPIPurga.fciCBConcilia.sEstado == CB_CON_TEMP)
                            {
                                Set(ref bOk, false);
                                //$Siguiente es Call$
                                SPSMessageBox("No es posible purgar a partir de una Concilación Bancaria en estado Temporal. Debe seleccionar una Conciliación en estado En Firme.", CB_MSG_ERROR, MBF_IconHand, CONTINUAR);
                            }
                            else
                            {
                                if (fciCBAPIPurga.fciCBConcilia.sEstado == CB_CON_FIRM)
                                {
                                    Set(ref bOk, true);
                                    //Validar aspectos de consecutivo de la conciliacion
                                    //
                                    if (bOk && (this.dfCodigoConcil.ValorNumero == lnUltimaConcil))
                                    {
                                        Set(ref bOk, false);
                                        //$Siguiente es Call$
                                        SPSMessageBox("No es posible purgar la última Concilación Bancaria en estado En Firme. Debe seleccionar una Conciliación anterior a ésta.", CB_MSG_ERROR, MBF_IconHand, CONTINUAR);
                                    }
                                    else
                                    {
                                        if (bOk && (this.dfCodigoConcil.ValorNumero == lnUltimaConcil - 1))
                                        {
                                            Set(ref bOk, false);
                                            //$Siguiente es Call$
                                            SPSMessageBox("No es posible purgar la penúltima Concilación Bancaria en estado En Firme. Esto provocaría que no se puedan reversar datos muy recientes.", CB_MSG_ERROR, MBF_IconHand, CONTINUAR);
                                        }
                                        else
                                        {
                                            if (bOk && (this.dfCodigoConcil.ValorNumero > 0) && (this.dfCodigoConcil.ValorNumero < lnUltimaConcil))
                                            {
                                                Set(ref bOk, true);
                                                ComunicarMensajeAlUsuario("VisibleDialogo", "VisibleDialogo", TipoMensajeUsuario.VisibleDialogo);

                                            }
                                            else
                                            {
                                                Set(ref bOk, false);
                                                //$Siguiente es Call$
                                                SPSMessageBox("Datos ingresados como parámetro son invalidos. Consulte la documentación del sistema.", CB_MSG_ERROR, MBF_IconHand, CONTINUAR);
                                            }
                                        }
                                    }
                                    //
                                }
                            }
                        }
                        else
                        {
                            //$Siguiente es Call$
                            SPSMessageBox("Debe especificar el código de la Conciliación Bancaria para el proceso.", CB_MSG_ERROR, MBF_IconHand, CONTINUAR);
                            Set(ref bOk, false);
                            //
                        }
                        break;
                    }
                //Tab Paso 3
                case 2:
                    {
                        Set(ref bOk, true);
                        break;
                    }
            }
            //
            return bOk;
        }
        /// <summary>
        /// Ejecuta el proceso de purga de movimientos bancarios.
        /// Llama al diálogo de espera para la purga y muestra mensajes según el resultado.
        /// </summary>
        /// <returns>
        /// Retorna true si el proceso se ejecutó correctamente.
        /// </returns>
        public bool ExecuteProcess()
        {
            SalDecimal nRetVal = new SalDecimal();

            //INICIO GHA CASO #26411
            //Call SalModalDialog( dlgWaitPurga, hWndForm, this.dfCuenta, this.dfCodigoConcil, fciCBAPIPurga)
            if (gbTerminaBien == false)
            {
                Set(ref nRetVal, SalModalDialog<dlgWaitPurga>(this, dfCuenta.ValorTexto, dfCodigoConcil.ValorNumero, fciCBAPIPurga));
            }
            else
            {
                //$Siguiente es Call$
                SPSMessageBox("El proceso de Purga de Datos ya se ha llevado acabo con éxito. Presione Cancelar para cerrar el dialogo.", CB_MSG_ERROR, MBF_IconExclamation, CONTINUAR);
                //
            }
            if (nRetVal == 1 && gbTerminaBien == true)
            {
                //$Siguiente es Call$
                fciCBAPIPurga.ReleInstance();
                //FIN GHA CASO #26411
                //
            }

            return true;
        }
        /// <summary>
        /// Carga los datos de una conciliación bancaria específica y obtiene los saldos asociados.
        /// </summary>
        /// <param name="psCtaBanco">Código de la cuenta bancaria a consultar.</param>
        /// <param name="pnConciliacion">Número de la conciliación bancaria a cargar.</param>
        /// <returns>
        /// Retorna true si los datos se cargaron correctamente; de lo contrario, false.
        /// </returns>
        public bool CargarDatos(SalString psCtaBanco, SalDecimal pnConciliacion)
        {
            SalBoolean lbOk = new SalBoolean();
            Set(ref lbOk, true);
            //$Siguiente es Call$
            VisWaitCursor(true);
            //
            //Leer Conciliacion
            if (lbOk)
            {
                if (!fciCBAPIPurga.fciCBConcilia.ReadOnCodigo(psCtaBanco, pnConciliacion))
                {
                    Set(ref lbOk, false);
                    //$Siguiente es Call$
                    SPSDisplayErrorMsg("La Conciliación con ese código no existe.", CB_MSG_ERROR);
                }
                //
                //Cargar Saldos
            }
            if (lbOk)
            {
                //$Siguiente es Call$
                fciCBAPIPurga.fciCBConcilia.ObtenerSaldos();
                //
            }
            //$Siguiente es Call$
            VisWaitCursor(false);
            return lbOk;
        }
        /// <summary>
        /// Asigna los datos de la conciliación bancaria actual a los campos de la interfaz.
        /// </summary>
        /// <returns>
        /// Retorna true si la asignación fue exitosa.
        /// </returns>
        public bool AsignarConcil()
        {
            Set(ref dfFechaIni.ValorFecha, fciCBAPIPurga.fciCBConcilia.dtFechaInicial);
            Set(ref dfFechaFin.ValorFecha, fciCBAPIPurga.fciCBConcilia.dtFechaFinal);
            Set(ref dfSaldoLibros.ValorNumero, fciCBAPIPurga.fciCBConcilia.nSaldoLibros);
            Set(ref dfSaldoBancos.ValorNumero, fciCBAPIPurga.fciCBConcilia.nSaldoBancos);
            return new SalBoolean(true);
        }
        /// <summary>
        /// Limpia los campos de la interfaz relacionados con la conciliación bancaria.
        /// </summary>
        /// <returns>
        /// Retorna true si la limpieza fue exitosa.
        /// </returns>
        public bool LimpiarConcil()
        {
            Set(ref dfFechaIni.ValorFecha, DATETIME_Null);
            Set(ref dfFechaFin.ValorFecha, DATETIME_Null);
            Set(ref dfSaldoLibros.ValorNumero, NUMBER_Null);
            Set(ref dfSaldoBancos.ValorNumero, NUMBER_Null);
            return new SalBoolean(true);
        }
        /// <summary>
        /// Muestra la ayuda contextual para el asistente de purga de movimientos bancarios.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando la finalización de la acción de ayuda.</returns>
        public SalDecimal Help()
        {
            //$Siguiente es Call$
            //DesplegarAyuda2(this, CB_HELP, HELP_Context, CBHLP_PURGA, "");
            return new SalDecimal(1);
        }
        /// <summary>
        /// Evento que se ejecuta al solicitar ayuda (SAM_Help) en el diálogo de purga de movimientos bancarios.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando la finalización del evento de ayuda.</returns>
        public SalDecimal dlgCBPurga_SAM_Help()
        {
            //if (DesplegarHelp(wParam))
            //{
            //    //$Siguiente es Call$
            //    Help();
            //}
            return new SalDecimal(1);
        }
        /// <summary>
        /// Inicializa la ayuda para el campo de cuenta bancaria.
        /// Configura las propiedades de validación y estado del campo.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando la finalización de la inicialización.</returns>
        public SalDecimal dfCuenta_AM_InitDFHelp()
        {
            //$Siguiente es Call$
            //dfCuentaBancariaF1.Validacion(false);
            dfCuenta.Validacion(false);
            Set(ref dfCuenta.sStatusText, "Código de la Cuenta Bancaria (Presione F1 o doble click para Ayuda)");
            Set(ref dfCuenta.hwndDescripcion, this.dfCtaDescrip);
            Set(ref dfCuenta.bPermiteBlancos, true);
            Set(ref dfCuenta.bVerificarExistencia, true);
            return new SalDecimal(1);
        }
        /// <summary>
        /// Realiza una validación extra al campo de cuenta bancaria.
        /// Asigna la cuenta bancaria al campo de conciliación si es válido.
        /// </summary>
        /// <returns>
        /// Retorna <c>VALIDATE_OkClearFlag</c> si la cuenta es válida y se asigna correctamente; 
        /// de lo contrario, retorna <c>VALIDATE_Cancel</c>.
        /// </returns>
        public SalDecimal dfCuenta_AM_ExtraValidate()
        {
            if (dfCodigoConcil.AsignarCuenta(dfCuenta.ValorTexto))
            {
                return VALIDATE_OkClearFlag;
            }
            else
            {
                return VALIDATE_Cancel;
            }
        }
        /// <summary>
        /// Inicializa la ayuda para el campo de código de conciliación bancaria.
        /// Configura las propiedades de validación y estado del campo.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando la finalización de la inicialización.</returns>
        public SalDecimal dfCodigoConcil_AM_InitDFHelp()
        {
            //$Siguiente es Call$
            //clsdfConcilF1.Validacion(false);
            dfCodigoConcil.Validacion(false);
            Set(ref dfCodigoConcil.bPermiteBlancos, true);
            Set(ref dfCodigoConcil.bVerificarExistencia, false);
            return new SalDecimal(1);
        }
        /// <summary>
        /// Realiza una validación extra al campo de código de conciliación bancaria.
        /// Carga los datos de la conciliación y asigna los valores a los campos correspondientes.
        /// Si la carga falla, limpia los campos relacionados.
        /// </summary>
        /// <returns>
        /// Retorna <c>VALIDATE_OkClearFlag</c> si la carga y asignación de datos es exitosa;
        /// de lo contrario, retorna <c>VALIDATE_Cancel</c>.
        /// </returns>
        public SalDecimal dfCodigoConcil_AM_ExtraValidate()
        {
            if (CargarDatos(dfCuenta.ValorTexto, dfCodigoConcil.ValorNumero))
            {
                //$Siguiente es Call$
                AsignarConcil();
                ComunicarMensajeAlUsuario("VisibleDialogo", "VisibleDialogo", TipoMensajeUsuario.VisibleDialogo);
                return VALIDATE_OkClearFlag;
            }
            else
            {
                //$Siguiente es Call$
                LimpiarConcil();
                ComunicarMensajeAlUsuario("VisibleDialogo", "VisibleDialogo", TipoMensajeUsuario.VisibleDialogo);
                return VALIDATE_Cancel;
            }
        }
        /// <summary>
        /// Evento que se ejecuta al crear el botón de carga.
        /// Oculta el botón de carga al crearse.
        /// </summary>
        /// <returns>Retorna un valor decimal fijo (1) indicando la finalización del evento de creación.</returns>
        public SalDecimal pbCargar_AM_Create()
        {
            //$Siguiente es Call$
            SalHideWindow(pbCargar);
            return new SalDecimal(1);
        }
        #endregion
    }
    /// <summary>
    /// Gestiona el bloqueo de la cuenta, la transacción de purga y la comunicación del resultado al usuario.
    /// </summary>
    internal class dlgWaitPurga : clsdlgWaitDialog
    {
        #region parametros
        /// <summary>
        /// Código de la cuenta bancaria sobre la que se realizará la purga.
        /// </summary>
        [Parametro(true)]
        public SalString psCuenta = new SalString();
        /// <summary>
        /// Número de la conciliación bancaria a partir de la cual se purgarán los movimientos.
        /// </summary>
        [Parametro(true)]
        public SalDecimal pnCodigoConcil = new SalDecimal();
        /// <summary>
        /// Instancia de la interfaz de control bancario utilizada para gestionar la purga.
        /// </summary>
        [Parametro(true)]
        public fclsInterfaseCB pfciCBAPIPurga = new fclsInterfaseCB();
        #endregion
        #region Constructor       
        /// <summary>
        /// Constructor de la clase <c>dlgWaitPurga</c>.
        /// Inicializa el diálogo de espera para el proceso de purga de movimientos bancarios.
        /// Asigna los parámetros de cuenta bancaria, número de conciliación y la interfaz de control bancario.
        /// Configura la interfaz de usuario y los textos descriptivos.
        /// </summary>
        public dlgWaitPurga(/*SalString psCuenta, SalDecimal pnCodigoConcil, fclsInterfaseCB pfciCBAPIPurga*/)
        {
            this.psCuenta = psCuenta;
            this.pnCodigoConcil = pnCodigoConcil;
            this.pfciCBAPIPurga = pfciCBAPIPurga;

            InicializarInterfaz();
            ObtenerPantalla();

            OrdenGroups = new List<string>() {" " + SeparadorGrupoTab + "",
                                              "" + SeparadorGrupoTab + "" };

            mlDescrip.ValorTexto = "Por favor espere, este proceso puede durar algunos minutos";

            this.TituloPantalla = "Purga de Movimientos";
            SalSetWindowText(this, sSPSCompania + " - Purga de Movimientos");
        }
        #endregion
        #region Funciones
        /// <summary>
        /// Inicializa el proceso de purga de movimientos bancarios.
        /// Establece el archivo AVI de animación, el título de la ventana y marca el indicador de finalización como falso.
        /// </summary>
        /// <returns>
        /// Devuelve true si la inicialización fue exitosa.
        /// </returns>
        public bool InitProcess()
        {
            //$Siguiente es Call$
            SetAviFile("Findfile.avi");
            //$Siguiente es Call$
            SetWindowTitle("Purga de Movimientos");
            Set(ref g().g_gbTerminaBien, false);
            return new SalBoolean(true);
        }
        /// <summary>
        /// Ejecuta el proceso de purga de movimientos bancarios.
        /// Bloquea la cuenta bancaria, inicia la transacción, configura los parámetros contables, purga los documentos y finaliza la transacción.
        /// Desbloquea la cuenta bancaria al finalizar y comunica el resultado al usuario.
        /// </summary>
        /// <returns>
        /// Devuelve true si el proceso se ejecutó correctamente.
        /// </returns>
        public bool ExecuteProcess()
        {
            SalBoolean bFinOk = new SalBoolean();
            SalBoolean bOk = new SalBoolean();
            SalString sImpPaquete = new SalString();
            //
            //Bloquear Cuenta Bancaria
            Set(ref bOk, pfciCBAPIPurga.LockRowProceso(true)); //pfciCBAPIPurga
            //
            //Transaccion Control Bancario
            if (bOk)
            {
                Set(ref bOk, SqlNet.BeginTransac(hsqlDML, hsqlNull, hsqlNull, hsqlNull, hsqlNull));
                if (bOk)
                {
                    //$Siguiente es Call$
                    pfciCBAPIPurga.SetParamCG((fciGlobalesCB.sIntegraConta == CB_SI) && (IsInstalled(CG)), sImpPaquete, ASIENTO_NORMAL, pfciCBAPIPurga.fciCuentaBancaria.sMoneda, fciGlobalesCB.nModAplicAsiento, false, false);
                    //
                    Set(ref bOk, pfciCBAPIPurga.InicieTransaccionCB(hsqlDML));
                    //Purgar Documentos
                    if (bOk)
                    {
                        Set(ref bOk, pfciCBAPIPurga.PurgarDocumentos(psCuenta, pnCodigoConcil));
                        //Finalizar la transaccion
                    }
                    Set(ref bFinOk, pfciCBAPIPurga.FinaliceTransaccionCB(bOk));
                    //
                    Set(ref bOk, bOk && bFinOk);
                }
                //
                //Elimina el lock sobre la Cuenta (Lock de Proceso)
            }
            //$Siguiente es Call$
            pfciCBAPIPurga.UnlockRowCuentaBancaria();
            //
            if (bOk)
            {
                //$Siguiente es Call$
                SPSMessageBox("La Purga de datos ha sido realizada exitosamente.", "Control Bancario - Información", MBF_IconAsterisk, CONTINUAR);
                //
                //INICIO GHA CASO #26411
                Set(ref g().g_gbTerminaBien, true);
                //FIN GHA CASO #26411
            }
            else
            {
                //$Siguiente es Call$
                SPSMessageBox("Error purgando datos, el proceso no fue realizado.", CB_MSG_ERROR, MBF_IconHand, CONTINUAR);
                //
            }
            //$Siguiente es Call$
            SalEndDialog(this, true);
            return new SalBoolean(true);
        }
        /// <summary>
        /// Finaliza el diálogo modal y actualiza el estado de visibilidad del diálogo.
        /// Si el objeto es de tipo APP, invoca el método SAM_Destroy.
        /// </summary>
        /// <param name="dialogo">Objeto del diálogo que se va a finalizar.</param>
        /// <param name="bandera">Indica si el diálogo finalizó correctamente (true) o no (false).</param>
        public static void SalEndDialog(object dialogo, object bandera)
        {
            APP.g().ibReturnSalModal = new SalBoolean(Convert.ToBoolean(bandera));
            APP.g().set_VisibleDialogo(false);

            if ((dialogo as APP) != null)
            {
                var metodo = dialogo.GetType().GetMethod("SAM_Destroy");
                if (metodo != null)
                {
                    metodo.Invoke(dialogo, null);
                }
            }
        }
        #endregion
    }
}