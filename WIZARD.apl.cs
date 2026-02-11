using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using Softland.TD2Net.v2;

namespace Softland.API
{
public partial class APP
{
#region Constantes
public const int SW_HIDE = 0;
public const int ACS_CENTER = 0x0001;
public const int ACS_AUTOPLAY = 0x0004;
public const int ACM_OPENW = WM_USER + 103;
public const int ACN_START = 1;
public const int ACN_STOP = 2;
public const string CHAR_SEPARATOR = "|";
#endregion
}

    public partial class clsdlgWizard : APP
    {
        #region Variables
        public SalDecimal nTabsCount = new SalDecimal();
        public SalDecimal nLastTab = new SalDecimal();
        public SalDecimal nCurrentTab = new SalDecimal();
        public SalBoolean ibHayConfiguración = new SalBoolean();
        public bool cerradoFinal = false;

        [Control("_pbCargar", "Cargar", TipoControl.Boton, TipoValor.Ninguno, 1, false, "", "", " ", " ", tamanio: 3)]
        public PushButton _pbCargar { get { return pbCargar; } set { if (pbCargar.AM_Validate(value, this)) pbCargar = value; } }
        public PushButton pbCargar = new PushButton();
        [Control("_pbAnterior", "< Anterior ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", " ", " ", tamanio: 3)]
        public PushButton _pbAnterior { get { return pbAnterior; } set { if (pbAnterior.AM_Validate(value, this)) pbAnterior = value; } }
        public PushButton pbAnterior = new PushButton();
        [Control("_pbSiguiente", "Siguiente > ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", " ", " ", tamanio: 3)]
        public PushButton _pbSiguiente { get { return pbSiguiente; } set { if (pbSiguiente.AM_Validate(value, this)) pbSiguiente = value; } }
        public PushButton pbSiguiente = new PushButton();
        [Control("_pbCancelar", "Cancelar ", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", " ", " ", tamanio: 3)]
        public PushButton _pbCancelar { get { return pbCancelar; } set { if (pbCancelar.AM_Validate(value, this)) pbCancelar = value; } }
        public PushButton pbCancelar = new PushButton();
        #endregion
        #region Constructor
        public clsdlgWizard()
        {
            InicializarInterfaz();
        }
        #endregion
        public void InicializarInterfaz()
        {
            this.clear_SAM_Create();
            this.SAM_Create_Event += clsdlgWizard_SAM_Create;
            this.clear_SAM_CreateComplete();
            this.SAM_CreateComplete_Event += clsdlgWizard_SAM_CreateComplete;
            this.clear_SAM_Close();
            this.SAM_Close_Event += clsdlgWizard_SAM_Close;
            this.clear_AM_Create();
            this.AM_Create_Event += clsdlgWizard_AM_Create;
            this.clear_AM_CreateComplete();
            this.AM_CreateComplete_Event += clsdlgWizard_AM_CreateComplete;
            this.clear_ActiveTabChange();
            this.ActiveTabChange_Event += clsdlgWizard_ActiveTabChange_Event;
            pbCargar.clear_AM_Click();
            pbCargar.AM_Click_Event += pbCargar_AM_Click;
            pbSiguiente.clear_AM_Click();
            pbSiguiente.AM_Click_Event += pbSiguiente_AM_Click;
            pbAnterior.clear_AM_Click();
            pbAnterior.AM_Click_Event += pbAnterior_AM_Click;
            pbCancelar.clear_AM_Click();
            pbCancelar.AM_Click_Event += pbCancelar_AM_Click;
        }
        #region Funciones
        public bool Create()
        {
            Set(ref nCurrentTab, 0);
            //$Siguiente es Call$
            SalSetFocus(pbSiguiente);
            //$Siguiente es Call$
            SalDisableWindow(pbAnterior);
            //
            return DosPuntosB(this, "InitProcess");
        }
        public bool CreateComplete()
        {
            return true;
        }
        public SalDecimal Destroy()
        {
            //if (DosPuntosB(this, "CancelProcess"))
            //{
            //    //$Siguiente es Call$
            //   // ComunicarMensajeAlUsuario("", "", TipoMensajeUsuario.CerrarVentana);
            //    return new SalDecimal(1);
            //    // SalEndDialog(hWndForm, 0);
            //}
            return new SalDecimal(0);
        }
        public SalDecimal Ayuda()
        {
            //$Siguiente es Call$
            DosPuntosB(this, "Help");
            return new SalDecimal(1);
        }
        public bool InitProcess()
        {
            return true;
        }
        public bool ExecuteProcess()
        {
            return true;
        }
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
        public bool ValidateTabInfo()
        {
            return true;
        }
        public SalDecimal Help()
        {
            //$Siguiente es Call$
            SPSMessageBox("No existe ayuda disponible para este tema.", "Error", MBF_IconExclamation, CONTINUAR);
            return new SalDecimal(1);
        }
        public bool TabCreate(APP hWnd) //SalWindowHandle
        {
            //El Tab es escondido al ser creado
            //para dar la apariencia del Wizard
            //$Siguiente es Call$
            SalHideWindow(hWnd);
            return new SalBoolean(true);
        }
        public SalDecimal PrevTab()
        {
            SalBoolean bTabActive = new SalBoolean();
            Set(ref bTabActive, false);
            SalDecimal tabActual = new SalDecimal();
            while (!bTabActive)
            {
               Set(ref nCurrentTab, nCurrentTab - 1);
                //
                //
                if (nCurrentTab == 6 || nCurrentTab == 5)
                {
                    //
                    //
                    //Se muestra el picture 2
                    //$Siguiente es Call$
                    //SalHideWindow(picLogo2);
                    //$Siguiente es Call$
                    //SalShowWindow(picLogo);
                    //
                }
                if (nCurrentTab == 7)
                {
                    //
                    //
                    //Se muestra el picture 2
                    //$Siguiente es Call$
                   // SalHideWindow(picLogo);
                    //$Siguiente es Call$
                    //SalShowWindow(picLogo2);
                    //
                    //
                    //
                }
                Set(ref bTabActive, TabIsEnabled(nCurrentTab + 1));
            }
            //$Siguiente es Call$
            CambiarTab(nCurrentTab);
           // picTabs.BringToTop(nCurrentTab, true);
            if (nCurrentTab == 0)
            {
                //Si esta en el primer Tab, deshabilita el boton Anterior
                //$Siguiente es Call$
                SalDisableWindow(pbAnterior);
            }
            if (nCurrentTab <= nLastTab - 1)
            {
                //Al entrar el Tab previo al último se cambia el titulo del boton por Siguiente
                //$Siguiente es Call$
                SalSetWindowText(pbSiguiente, "Siguiente >");
            }
            return new SalDecimal(1);
        }
        public SalDecimal NextTab()
        {
            SalString spbNext = new SalString();
            SalBoolean bTabActive = new SalBoolean();
            SalDecimal tabActual = new SalDecimal();
            //
            //Validar si permite avanzar al siguiente Tab
            if (DosPuntosB(this, "ValidateTabInfo"))
            {
                //
                Set(ref bTabActive, false);
                if (nCurrentTab != nLastTab)
                {
                    while (!bTabActive)
                    {
                        Set(ref nCurrentTab, nCurrentTab + 1);                        
                        Set(ref bTabActive, TabIsEnabled(nCurrentTab + 1));
                    }
                    //$Siguiente es Call$
                    CambiarTab(nCurrentTab);
                    // picTabs.BringToTop(nCurrentTab, true);
                    //
                }
                if (nCurrentTab > 0)
                {
                    //Al pasar al siguiente Tab, se habilita nuevamente el boton anterior
                    //$Siguiente es Call$
                    SalEnableWindow(pbAnterior);
                }
                //$Siguiente es Call$
                SalGetWindowText(pbSiguiente, ref spbNext, 12);
                if (((nCurrentTab == nLastTab) || (nCurrentTab == nLastTab - 1)) && spbNext == "Finalizar")
                {
                    //Al presionar el boton Finalizar se procesa la
                    //funcion redefinible ExecuteProcess()
                    //
                    //*******************************************shpaz mayo2994 mejoras cargadores 5.00****************
                    //$Siguiente es Call$
                    DosPuntosB(this, "ExecuteProcess");
                    //
                    //comentado por shpaz mayo 2004
                    //If ..ExecuteProcess()
                    //Call SalEndDialog( hWndForm, 1 )
                    //Else
                    //Call Destroy()
                    //***********************************************************
                    //
                    //If nCurrentTab = nLastTab OR ((nCurrentTab = nLastTab - 1) AND ibHayConfiguración) antes de cambios shpaz mayo 12 2004
                    //Al llegar al ultimo Tab, se cambia el titulo del boton Siguiente
                    //Call SalSetWindowText( pbSiguiente, 'Finalizar' )
                }
                if (nCurrentTab == nLastTab)
                {
                    
                    //Al llegar al ultimo Tab, se cambia el titulo del boton Siguiente
                    //$Siguiente es Call$
                    SalSetWindowText(pbSiguiente, "Finalizar");
                    //ICalvo 9/12/2004
                    //Al llegar al último Tab, se cambia el título del botón Cancelar
                    if (!SalIsWindowEnabled(pbSiguiente))
                    {
                        //$Siguiente es Call$
                        SalSetWindowText(pbCancelar, "Cerrar");
                        //$Siguiente es Call$
                       // pbCancelar.InitTip("Cerrar la ventana");
                        //ICalvo 9/12/2004
                    }
                }
            }
            return new SalDecimal(1);
        }
        public SalDecimal TabsCount()
        {
            return nTabsCount;
        }
        public bool TabIsEnabled(SalDecimal nprmTab)
        {
           return picTabs_IsEnabled(this, nprmTab);
        }
        public SalDecimal CurrentTab()
        {
            return nCurrentTab;
        }
        public SalDecimal EnableTab(SalDecimal nTabIndex)
        {
            //$Siguiente es Call$
            picTabs_Enable(this, nTabIndex, true);
            return new SalDecimal(1);
        }
        public SalDecimal DisableTab(SalDecimal nTabIndex)
        {
            //$Siguiente es Call$
            picTabs_Enable(this, nTabIndex, false);
            return new SalDecimal(1);
        }
        public SalDecimal SetPicture(SalString pstrFileName)
        {
            //$Siguiente es Call$
           // SalPicClear(picLogo);
            //$Siguiente es Call$
           // SalPicSetFile(picLogo, pstrFileName);
            return new SalDecimal(1);
        }
        public bool CargaDirecta()
        {
            //
            //
            return DosPuntosB(this, "ExecuteProcess");
        }
        #endregion
        #region Eventos
        public SalDecimal clsdlgWizard_SAM_Create()
        {
            //$Siguiente es Call$
           // Sal.CenterWindow(hWndForm);
            //
            //$Siguiente es Call$
            Create();
            //
            //$Siguiente es Call$
            SalSendMsg(this, Globales.AM_Create, 0, 0);
            return new SalDecimal(1);
        }
        public SalDecimal clsdlgWizard_SAM_CreateComplete()
        {
            Set(ref nTabsCount,OrdenTabs.Count);
            Set(ref nLastTab, nTabsCount - 1);
            //
            if (nTabsCount <= 1)
            {
                //$Siguiente es Call$
                SPSMessageBox("Deben definirse al menos 2 Tabs para utilizar el Asistente.", "Error", MBF_IconExclamation, CONTINUAR);
                //
            }
            //$Siguiente es Call$
            DosPuntosB(this, "CreateComplete");
            //
            //$Siguiente es Call$
            SalSendMsg(this, Globales.AM_CreateComplete, 0, 0);
            //
            //
            //Se oculta el segunto pic, ya que sólo se despliega en la asociación de datos
            //$Siguiente es Call$
            // SalHideWindow(picLogo2);
            //
            //rduran face lift se oculta el control de los tabs
            //$Siguiente es Call$
            // SalHideWindow(ccMSTabCtrl);
            //$Siguiente es Call$
            //SalHideWindow(picBackTab);
            return new SalDecimal(1);
        }
        public SalDecimal clsdlgWizard_SAM_Close()
        {
            if (cerradoFinal!= true)
            {
                if (!Destroy())
                {
                    return new SalDecimal(0);
                }
            }
            
            return new SalDecimal(1);
        }
        public SalDecimal clsdlgWizard_AM_Create()
        {
            //
            //Mensaje llamado despues de SAM_Create
            //Es PREFERIBLE utilizar el método InitProcess() !!!
            return true;
        }
        public SalDecimal clsdlgWizard_AM_CreateComplete()
        {
            //
            //Mensaje llamado despues de SAM_CreateComplete
            //Es PREFERIBLE utilizar el método CreateComplete () !!!
            return new SalDecimal(1);
        }

        public SalDecimal pbSiguiente_AM_Click()
        {
            return NextTab();
        }

        public SalDecimal pbCargar_AM_Click()
        {
            if (CargaDirecta())
            {
                SalEndDialog(this, true);
            }
            else
            {
                Destroy();
            }
            return new SalDecimal(1);
        }

        public SalDecimal pbAnterior_AM_Click()
        {
            return PrevTab();
        }

        public SalDecimal pbCancelar_AM_Click()
        {
            if (DosPuntosB(this, "CancelProcess"))
            {
                SalEndDialog(this, false);
                this.Regresar();
            }
            return new SalDecimal(1);
        }
        
        private SalDecimal clsdlgWizard_ActiveTabChange_Event(int tabIndex)
        {
            //TabCreate(null);
           DosPuntosB(this, "TabActivateFinish", null, tabIndex);
           DosPuntosB(this, "TabActivateStart", null, tabIndex);
            return new SalDecimal(1);
        }

        #endregion
    }

    public partial class clsdlgWaitDialog : APP
    {
        #region Variables
        public SalString sAviFile = new SalString();
        #endregion
        #region Controles Visuales
        [Control("_mlDescrip", "", TipoControl.AreaTexto, TipoValor.Texto, 1, false, "", "", "", " ", tamanio: 7, lineas: 5)]
        public clsStdDF _mlDescrip { get { return mlDescrip; } set { if (mlDescrip.AM_Validate(value, this)) mlDescrip = value; } }
        public clsStdDF mlDescrip = new clsStdDF();
        [Control("_pbCancelar", "Cancelar", TipoControl.Boton, TipoValor.Ninguno, 1, true, "", "", "", "")]
        public PushButton _pbCancelar { get { return pbCancelar; } set { if (pbCancelar.AM_Validate(value, this)) pbCancelar = value; } }
        public PushButton pbCancelar = new PushButton();
        #endregion
        #region Constructor
        public clsdlgWaitDialog()
        {
            InicializarInterfaz();
            ObtenerPantalla();

        }
        #endregion
        public void InicializarInterfaz()
        {
            this.clear_SAM_Create();
            this.SAM_Create_Event += clsdlgWaitDialog_SAM_Create;
            this.clear_SAM_CreateComplete();
            this.SAM_CreateComplete_Event += clsdlgWaitDialog_SAM_CreateComplete;
            this.clear_SAM_Close();
            this.SAM_Close_Event += clsdlgWaitDialog_SAM_Close;
            pbCancelar.clear_AM_Click();
            pbCancelar.AM_Click_Event += pbCancelar_AM_Click;
        }
        #region Funciones
        public SalDecimal pbCancelar_AM_Click()
        {
            if (DosPuntosB(this, "CancelProcess"))
            {
                SalEndDialog(this, true);
                this.Regresar();
            }
            return new SalDecimal(1);
        }
        public SalDecimal Create()
        {
            //$Siguiente es Call$
            //FNavarro REVISAR
            SetAviFile("Working.avi");
            //$Siguiente es Call$
            DosPuntosB(this, "InitProcess");
            return new SalDecimal(1);
        }
        public SalDecimal Destroy()
        {
            if (DosPuntosB(this, "CancelProcess")) 
            {
                //$Siguiente es Call$
                SalEndDialog(this, false); //0
            }
            return new SalDecimal(1);
        }
        public bool InitProcess()
        {
            return true;
        }
        public bool Execute()
        {
            return DosPuntosB(this, "ExecuteProcess");
        }
        public bool ExecuteProcess()
        {
            return true;
        }
        public bool CancelProcess()
        {
            SalBoolean bOk = new SalBoolean();
            switch (SPSMessageBox("¿ Esta seguro de cancelar este proceso ?", "Advertencia", MBF_IconQuestion, "Aceptar,Cancelar"))
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
            return bOk;
        }
        public SalDecimal SetAviFile(SalString sprmAvi)
        {
            Set(ref sAviFile, sprmAvi); //this -> sAviFile
            return new SalDecimal(1);
        }
        public SalDecimal SetWindowTitle(SalString sprmTitle)
        {
            //$Siguiente es Call$
            SalSetWindowText(sAviFile, sprmTitle); //this -> sAviFile
            return new SalDecimal(1);
        }
        #endregion
        #region Eventos
        public SalDecimal clsdlgWaitDialog_SAM_Create()
        {
            //$Siguiente es Call$
            //Sal.CenterWindow(hWndForm);
            //$Siguiente es Call$
            Create();
            return new SalDecimal(1);
        }
        public SalDecimal clsdlgWaitDialog_SAM_CreateComplete()
        {
            //$Siguiente es Call$
            //ccAnimacion.Open(sAviFile);
            //$Siguiente es Call$
            //ccAnimacion.Play(0, -1, -1);
            //$Siguiente es Call$
            Execute();
            return new SalDecimal(1);
        }
        public SalDecimal clsdlgWaitDialog_SAM_Close()
        {
            //$Siguiente es Call$
            //ccAnimacion.Stop();
            //$Siguiente es Call$
            //ccAnimacion.Close();
            //$Siguiente es Call$
            //Sal.DestroyWindow(ccAnimacion);
            //$Siguiente es Call$
            Destroy();
            return new SalDecimal(1);
        }
        #endregion
    }
    public partial class clsfrmFindDoc : clsFrmTblQueryData
    {
        #region Variables
        public SalString sAviFile = new SalString();
        #endregion
        #region Constructor
        public clsfrmFindDoc()
        {
            InicializarInterfaz();
        }
        #endregion
        public void InicializarInterfaz()
        {
            this.clear_SAM_Create();
            this.SAM_Create_Event += clsfrmFindDoc_SAM_Create;
            this.clear_SAM_CreateComplete();
            this.SAM_CreateComplete_Event += clsfrmFindDoc_SAM_CreateComplete;
            this.clear_SAM_Close();
            this.SAM_Close_Event += clsfrmFindDoc_SAM_Close;
            this.clear_AM_Destroy();
            this.AM_Destroy_Event += clsfrmFindDoc_AM_Destroy;
            this.clear_AM_SetFormEdited();
            this.AM_SetFormEdited_Event += clsfrmFindDoc_AM_SetFormEdited;
        }
        #region Funciones
        public SalDecimal Create()
        {
            //$Siguiente es Call$
            SetAviFile("Working.avi");
            //$Siguiente es Call$
            DosPuntosB(this, "InitProcess");
            return new SalDecimal(1);
        }
        public bool InitProcess()
        {
            return true;
        }
        public SalDecimal SetAviFile(SalString sprmAvi)
        {
            Set(ref sAviFile, sprmAvi);
            return new SalDecimal(1);
        }
        public SalDecimal SetWindowTitle(SalString sprmTitle)
        {
            //$Siguiente es Call$
            SalSetWindowText(this, sprmTitle);
            return new SalDecimal(1);
        }
        public SalDecimal LimpiarTabla()
        {
            //
            //$Siguiente es Call$
            //SalTblReset(hWndChildTable);
            SalTblReset(TblQueryData);
            //Set(ref tblTabla.(clsStdTable).nTotRows, 0);
            Set(ref TblQueryData.nTotRows, 0);
            //Set(ref tblTabla.(clsStdTable).nRowsFetched, -1);
            Set(ref TblQueryData.nRowsFetched, -1);
            //
            return new SalDecimal(1);
        }
        #endregion
        #region Eventos
        public SalDecimal clsfrmFindDoc_SAM_Create()
        {
            //$Siguiente es Call$
            //Sal.CenterWindow(hWndForm);
            //$Siguiente es Call$
            Create();
            //
            //$Siguiente es Call$
            //base.SAM_Create();
            clsFrmTblQueryData_SAM_Create();
            return new SalDecimal(1);
        }
        public SalDecimal clsfrmFindDoc_SAM_CreateComplete()
        {
            //$Siguiente es Call$
            SalDisableWindow(SalParentWindow(this));
            //$Siguiente es Call$
            //ccAnimacion.Open(sAviFile);
            //$Siguiente es Call$
            //ccAnimacion.Play(0, -1, -1);
            //
            //$Siguiente es Call$
            //base.SAM_CreateComplete();
            clsFrmTblQueryData_SAM_CreateComplete();
            return new SalDecimal(1);
        }
        public SalDecimal clsfrmFindDoc_SAM_Close()
        {
            //$Siguiente es Call$
            //ccAnimacion.Stop();
            //$Siguiente es Call$
            //ccAnimacion.Close();
            //$Siguiente es Call$
            //Sal.DestroyWindow(ccAnimacion);
            //
            //$Siguiente es Call$
            //base.SAM_Close();
            clsFrmTblQueryData_SAM_Close();
            return new SalDecimal(1);
        }
        public SalDecimal clsfrmFindDoc_AM_Destroy()
        {
            //$Siguiente es Call$
            SalEnableWindow(SalParentWindow(this));
            //$Siguiente es Call$
            //SalBringWindowToTop(SalParentWindow(hWndForm));
            return new SalDecimal(1);
        }
        public SalDecimal clsfrmFindDoc_AM_SetFormEdited()
        {
            //
            //$Siguiente es Call$
            LimpiarTabla();
            //
            //$Siguiente es Call$
            SalSendMsg(pbRefrescar, Globales.AM_HacerParpadear, true, 0);
            return new SalDecimal(1);
        }
        #endregion
    }
}
