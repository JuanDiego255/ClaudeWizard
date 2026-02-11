.head 0 +  Application Description: CGAUXWIZ.APL
Creado en el proyecto: ExactusCG500BetaII
Contiene las Interfases para el cuadre entre CG y los Auxiliares
Versión 7.0.0.x
.data CLASSPROPSSIZE
0000: 7000
.enddata
.data CLASSPROPS
0000: 557365476C6F6261 6C50617468000400 0100000000417070 506174684C656E00
0020: 0400380000000041 7070506174680038 00493A5C544F4F4C 533B493A5C544F4F
0040: 4C535C4655454E54 45533B493A5C424D 505F49434F3B493A 5C56455253494F4E
0060: 533B493A5C52554E 3B00000000000000
.enddata
.head 1 -  Outline Version - 4.0.35
.head 1 +  Design-time Settings
.data VIEWINFO
0000: 6F00000005000000 FFFF01000D004347 5458566965775374 6174650400010000
0020: 0000000000550100 002C000000020000 0003000000FFFFFF FFFFFFFFFFF8FFFF
0040: FFE1FFFFFF000000 0000000000710200 00C4010000010000 0001000000010000
0060: 000F4170706C6963 6174696F6E497465 6D03000000075769 6E646F77730B646C
0080: 6743474175785769 7A0946756E637469 6F6E730000018004 0001000000000000
00A0: 002D0100002C0000 0000000000010000 00FFFFFFFFFFFFFF FFFCFFFFFFE2FFFF
00C0: FF84000000840000 00120300004C0200 0000000000000000 00030000000F4170
00E0: 706C69636174696F 6E4974656D075769 6E646F77730B646C 6743474175785769
0100: 7A02000000094675 6E6374696F6E7314 44657341736F6369 61724D6F76696D69
0120: 656E746F01800400 0200000000000000 010100002C000000 0000000001000000
0140: FFFFFFFFFFFFFFFF FCFFFFFFE9FFFFFF 3200000032000000 6A030000F0010000
0160: 0000000000000000 030000000F417070 6C69636174696F6E 4974656D0757696E
0180: 646F777313646C67 4347417578446F63 41736F636961646F 040000000D436869
01A0: 6C642057696E646F 77731074626C4173 6F63437561647265 4175780946756E63
01C0: 74696F6E730C5573 617244697374696E 6374018004000100 000000000000CB00
01E0: 00002C0000000000 000001000000FFFF FFFFFFFFFFFFFCFF FFFFE9FFFFFF5800
0200: 0000580000006503 0000070200000000 0000000000000500 00000F4170706C69
0220: 636174696F6E4974 656D0757696E646F 77730B646C674347 41757857697A0D43
0240: 68696C642057696E 646F77730C74626C 4375616472654175 7800000000
.enddata
.head 2 -  Outline Window State: Normal
.head 2 +  Outline Window Location and Size
.data VIEWINFO
0000: 6600040003002D00 0000000000000000 0000B71E5D0E0500 1D00FFFF4D61696E
0020: 0000000000000000 0000000000000000 0000003B00010000 00000000000000E9
0040: 1E800A00008600FF FF496E7465726E61 6C2046756E637469 6F6E730000000000
0060: 0000000000000000 0000000000003200 0100000000000000 0000E91E800A0000
0080: DF00FFFF56617269 61626C6573000000 0000000000000000 0000000000000000
00A0: 3000010000000000 00000000F51E100D 0000F400FFFF436C 6173736573000000
00C0: 0000000000000000 0000000000000000
.enddata
.data VIEWSIZE
0000: D000
.enddata
.head 3 -  Left: -0.013"
.head 3 -  Top: 0.0"
.head 3 -  Width:  8.013"
.head 3 -  Height: 4.969"
.head 2 +  Options Box Location
.data VIEWINFO
0000: D4180909B80B1A00
.enddata
.data VIEWSIZE
0000: 0800
.enddata
.head 3 -  Visible? Yes
.head 3 -  Left: 4.15"
.head 3 -  Top: 1.885"
.head 3 -  Width:  3.8"
.head 3 -  Height: 2.073"
.head 2 +  Class Editor Location
.head 3 -  Visible? No
.head 3 -  Left: 0.575"
.head 3 -  Top: 0.094"
.head 3 -  Width:  5.063"
.head 3 -  Height: 2.719"
.head 2 +  Tool Palette Location
.head 3 -  Visible? No
.head 3 -  Left: 6.388"
.head 3 -  Top: 0.729"
.head 2 -  Fully Qualified External References? Yes
.head 2 -  Reject Multiple Window Instances? No
.head 2 -  Enable Runtime Checks Of External References? Yes
.head 2 -  Use Release 4.0 Scope Rules? No
.head 2 -  Edit Fields Read Only On Disable? No
.head 1 +  Libraries
.head 2 -  !
.head 2 -  ! File Include: i:\as\f1percon.apl
.head 2 -  ! File Include: i:\as\listmod.apl
.head 2 -  ! File Include: i:\cg\F1Cuenta.apl
.head 2 -  File Include: i:\cg\cgutil.apl
.head 2 -  ! File Include: utlcgauxwiz.apl
.head 2 -  !
.head 2 -  !
.head 2 -  !
.head 2 -  ! File Include: fechaf1.apl
.head 2 -  File Include: estandar.apl
.head 2 -  File Include: proceso.apl
.head 2 -  ! File Include: wizard.apl
.head 1 +  Global Declarations
.head 2 +  Window Defaults
.head 3 +  Tool Bar
.head 4 -  Display Style? Etched
.head 4 -  Font Name: Tahoma
.head 4 -  Font Size: 9
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Form Window
.head 4 -  Display Style? Etched
.head 4 -  Font Name: Tahoma
.head 4 -  Font Size: 9
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Dialog Box
.head 4 -  Display Style? Etched
.head 4 -  Font Name: Tahoma
.head 4 -  Font Size: 9
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Top Level Table Window
.head 4 -  Font Name: Tahoma
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: System Default
.head 4 -  Text Color: System Default
.head 4 -  Background Color: System Default
.head 3 +  Data Field
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Multiline Field
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Spin Field
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: Use Parent
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Background Text
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Pushbutton
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Use Parent
.head 3 +  Radio Button
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Check Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Option Button
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Use Parent
.head 3 +  Group Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Child Table Window
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  List Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Combo Box
.head 4 -  Font Name: Use Parent
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Use Parent
.head 4 -  Text Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 3 +  Line
.head 4 -  Line Color: Use Parent
.head 3 +  Frame
.head 4 -  Border Color: Use Parent
.head 4 -  Background Color: 3D Face Color
.head 3 +  Picture
.head 4 -  Border Color: Use Parent
.head 4 -  Background Color: Use Parent
.head 2 +  Formats
.head 3 -  Number: 0'%'
.head 3 -  Number: #0
.head 3 -  Number: ###000
.head 3 -  Number: ###000;'($'###000')'
.head 3 -  Date/Time: hh:mm:ss AMPM
.head 3 -  Date/Time: M/d/yy
.head 3 -  Date/Time: MM-dd-yy
.head 3 -  Date/Time: dd-MMM-yyyy
.head 3 -  Date/Time: MMM d, yyyy
.head 3 -  Date/Time: MMM d, yyyy hh:mm AMPM
.head 3 -  Date/Time: MMMM d, yyyy hh:mm AMPM
.head 3 -  Date/Time: dd-MM-yyyy
.head 3 -  Date/Time: dd/MM/yyyy
.head 2 +  External Functions
.head 2 +  Constants
.data CCDATA
0000: 3000000000000000 0000000000000000 00000000
.enddata
.data CCSIZE
0000: 1400
.enddata
.head 3 +  System
.head 4 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 4 -  ! Constantes para Cuadre entre CG y Auxiliares
.head 4 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 4 -  Number: AM_MostrarAsociados = SAM_User + 219
.head 4 -  Number: AM_AsociarMovimiento = SAM_User + 220
.head 4 -  Number: AM_VerDetalleResumen = SAM_User + 221
.head 4 -  Number: AM_DesAsociarMovimiento = SAM_User + 222
.head 4 -  Number: AM_VerDetalleCuentas = SAM_User + 223
.head 4 -  !
.head 4 -  String: CONTA = 'C'
.head 4 -  String: AUX = 'A'
.head 4 -  !
.head 3 +  User
.head 3 -  Enumerations
.head 2 +  Resources
.head 3 -  !
.head 3 +  Bitmap: picLink
.head 4 -  File Name: listaasociacion.bmp
.head 2 +  Variables
.head 3 -  !
.head 3 +  Boolean: bMostrarDetalleCuentas
.head 4 -  ! Esta variable se utiliza para habilitar/deshabilitar opciones del menú "menuCGAuxWizResumen"
.head 2 +  Internal Functions
.head 3 -  !
.head 3 -  ! Nuevo SQLOuterJoin_
.head 3 +  ! Function: SQLOuterJoin_
.head 4 -  Description: Retorna la instrucción necesaria para hacer un OUTER JOIN, 
según la sintaxis del RDBMS.
.head 4 +  Returns 
.head 5 +  String: 
.head 6 -  ! hilera resultado; conteniendo: 
la instrucción de OUTER JOIN según el RDMBS
.head 4 +  Parameters 
.head 5 -  ! Descripcion:
Retorna la instrucción necesaria para hacer un OUTER JOIN, 
según la sintaxis del RDBMS.
.head 5 -  !
.head 5 +  String: sOuterMember
.head 6 -  ! columna que indica el elemento externo del OUTER JOIN
.head 4 -  Static Variables 
.head 4 -  Local variables 
.head 4 +  Actions 
.head 5 +  ! REQUERIMIENTOS
.head 6 -    Que exista al menos una conexión a la base de datos
( i.e. que la variable global nRDBMS tenga valor asignado ).
.head 5 -  ! MODIFICACIONES
.head 5 +  ! EFECTOS
.head 6 -    Retorna la instrucción necesaria para hacer un OUTER JOIN, colocando
el símbolo de OUTER JOIN antes o después del elemento externo del JOIN
según la sintaxis del RDBMS.
.head 5 -  !
.head 5 +  If nRDBMS = DBV_BRAND_SYBASE OR nRDBMS = DBV_BRAND_ODBC
.head 6 -  Return ' *= ' || SalStrTrimX( sOuterMember ) || ' '
.head 5 +  Else 
.head 6 -  Return ' = ' || SalStrTrimX( sOuterMember ) || '(+) '
.head 2 +  Named Menus
.head 3 -  !
.head 3 -  ! Menúes para Click Derecho de Opciones del Wizard de Cuadre entre CG y Auxiliares
.head 3 +  Menu: menuCGCuadreAux
.head 4 -  Resource Id: 41228
.head 4 -  Title: &Despliegue
.head 4 -  Description: definicion del despliegue de los registros en la tabla
.head 4 -  Enabled when:
.head 4 -  Status Text: Opciones para el despliegue de registros
.head 4 -  Menu Item Name:
.head 4 +  Menu Item: &Filtrar Registros (QBE)...
.head 5 -  Resource Id: 41229
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text: Filtrar los registros que se desean consultar
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when: SalSendMsg( hWndForm, AM_IsResultSetRestricted, 0, 0 )
.head 5 +  Menu Actions
.head 6 +  If SalSendValidateMsg( ) != VALIDATE_Cancel
.head 7 -  Call SalSendMsg( hWndForm, AM_ClassDoQuery, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 +  Menu Item: &Ver Movimientos Asociados
.head 5 -  Resource Id: 41230
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text: Mostrar los movimientos asociados
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 +  If SalSendValidateMsg( ) != VALIDATE_Cancel
.head 7 -  Call SalSendMsg( hWndForm, AM_MostrarAsociados, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 +  Menu Item: &Asociar Movimiento
.head 5 -  Resource Id: 41235
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text: Asocia movimientos entre el auxiliar y la contabilidad
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 +  If SalSendValidateMsg( ) != VALIDATE_Cancel
.head 7 -  Call SalSendMsg( hWndForm, AM_AsociarMovimiento, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 +  Menu Item: &Desasociar Movimiento
.head 5 -  Resource Id: 32619
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text: Desasocia movimientos entre el auxiliar y la contabilidad
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 +  If SalSendValidateMsg( ) != VALIDATE_Cancel
.head 7 -  Call SalSendMsg( hWndForm, AM_DesAsociarMovimiento, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 -  Menu Separator
.head 4 +  Menu Item: Seleccionar &Columnas...
.head 5 -  Resource Id: 41231
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text: Seleccionar las columnas que se desean consultar
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 +  If SalSendValidateMsg( ) != VALIDATE_Cancel
.head 7 -  Call SalSendMsg( hWndForm, AM_ClassSelectColumns, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 +  Menu Item: &Ajustar Columnas
.head 5 -  Resource Id: 41232
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text: Ajustar el tamaño de las columnas al contenido máximo
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 +  If SalSendValidateMsg( ) != VALIDATE_Cancel
.head 7 -  Call SalSendMsg( hWndForm, AM_AdjustColumns, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 -  Menu Separator
.head 4 +  Menu Item: &Refrescar Datos
.head 5 -  Resource Id: 41233
.head 5 -  Keyboard Accelerator: Ctrl+W
.head 5 -  Status Text: Repoblar los datos que se despliegan en la tabla
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 +  If SalSendValidateMsg( ) != VALIDATE_Cancel
.head 7 -  Call SalSendMsg( hWndForm, AM_PopulateTable, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 -  Menu Separator
.head 4 +  Menu Item: Seleccionar &Todos
.head 5 -  Resource Id: 41234
.head 5 -  Keyboard Accelerator: Ctrl+T
.head 5 -  Status Text: Seleccionar todos los registros de la tabla
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 +  If SalSendValidateMsg( ) != VALIDATE_Cancel
.head 7 -  Call SalSendMsg( hWndForm, AM_SelectAll, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 +  Menu Item: Copiar al &Porta Papeles
.head 5 -  Resource Id: 41227
.head 5 -  Keyboard Accelerator: Ctrl+Ins
.head 5 -  Status Text: Copiar los registros seleccionados al porta papeles
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 +  If SalSendValidateMsg( ) != VALIDATE_Cancel
.head 7 -  Call SalSendMsg( hWndForm, AM_CopyToClipboard, 0, 0 )
.head 5 -  Menu Item Name:
.head 3 +  Menu: menuCGAuxWizResumen
.head 4 -  Resource Id: 45938
.head 4 -  Title: &Despliegue
.head 4 -  Description: definicion del despliegue de los registros en la tabla
.head 4 -  Enabled when:
.head 4 -  Status Text: Opciones para el despliegue de registros
.head 4 -  Menu Item Name:
.head 4 +  Menu Item: &Ver Detalle de Movimientos
.head 5 -  Resource Id: 45939
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text: Mostrar el detalle de los movimientos
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 +  If SalSendValidateMsg( ) != VALIDATE_Cancel
.head 7 -  Call SalSendMsg( hWndForm, AM_VerDetalleResumen, 0, 0 )
.head 5 -  Menu Item Name:
.head 4 +  Menu Item: &Ver Detalle de Cuentas
.head 5 -  Resource Id: 54587
.head 5 -  Keyboard Accelerator: (none)
.head 5 -  Status Text: Mostrar el detalle de las cuentas contables
.head 5 +  Menu Settings
.head 6 -  Enabled when: bMostrarDetalleCuentas
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 +  If SalSendValidateMsg( ) != VALIDATE_Cancel
.head 7 -  Call SalSendMsg( hWndForm, AM_VerDetalleCuentas, 0, 0 )
.head 5 -  Menu Item Name:
.head 3 -  !
.head 2 +  Class Definitions
.head 2 +  Default Classes
.head 3 -  MDI Window: cBaseMDI
.head 3 -  Form Window:
.head 3 -  Dialog Box:
.head 3 -  Table Window:
.head 3 -  Quest Window:
.head 3 -  Data Field: clsdfDescripcion
.head 3 -  Spin Field:
.head 3 -  Multiline Field:
.head 3 -  Pushbutton: clsStdPushbutton
.head 3 -  Radio Button: clsStdRB
.head 3 -  Option Button:
.head 3 -  Check Box: clsStdCB
.head 3 -  Child Table: clsChildTblNoDB
.head 3 -  Quest Child Window: cQuickDatabase
.head 3 -  List Box:
.head 3 -  Combo Box:
.head 3 -  Picture: clsToolbar
.head 3 -  Vertical Scroll Bar:
.head 3 -  Horizontal Scroll Bar:
.head 3 -  Column: clscolVisible
.head 3 -  Background Text:
.head 3 -  Group Box:
.head 3 -  Line:
.head 3 -  Frame:
.head 3 -  Custom Control:
.head 3 -  ActiveX:
.head 2 -  Application Actions
.head 1 +  Dialog Box: dlgCGAuxWiz
.head 2 -  Class: clsdlgWizard
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Cuadre de Auxiliares
.head 2 -  Accessories Enabled? Class Default
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? Yes
.head 3 -  Type of Dialog: Class Default
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 2.438"
.head 4 -  Top: 0.625"
.head 4 -  Width:  16.06"
.head 4 -  Width Editable? Class Default
.head 4 -  Height: 6.952"
.head 4 -  Height Editable? Class Default
.head 3 -  Absolute Screen Location? Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Charcoal
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description:
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Size: Class Default
.head 4 -  Size Editable? Class Default
.head 4 -  Docking Toolbar? Class Default
.head 4 -  Toolbar Docking Orientation: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Resizable? Class Default
.head 3 -  Contents
.head 2 +  Contents
.head 3 -  ! clsStdGroupBox: (class default)
.data INHERITPROPS
0000: 0100
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6533000000 00
.enddata
.data CLASSPROPSSIZE
0000: 1900
.enddata
.winattr class Group Box:
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.083"
.head 5 -  Top: 1.243"
.head 5 -  Width:  4.7"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.465"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Font Name: Tahoma
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  ! clsStdGroupBox: (class default)
.data INHERITPROPS
0000: 0100
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6533000000 00
.enddata
.data CLASSPROPSSIZE
0000: 1900
.enddata
.winattr class Group Box:
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 4.783"
.head 5 -  Top: 1.243"
.head 5 -  Width:  4.733"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.465"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Font Name: Tahoma
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  !
.head 3 +  Picture: picTabs
.data CLASSPROPS
0000: 5461624F7269656E 746174696F6E000A 00546162734F6E54 6F70000054616246
0020: 6F6E7453697A6500 0200360000546162 4C6566744D617267 696E000200300000
0040: 5461624375727265 6E740006004E616D 6535000054616252 696768744D617267
0060: 696E000200300000 5461624E616D6573 0024004E616D6535 094E616D6530094E
0080: 616D6531094E616D 6532094E616D6533 094E616D65340000 5461624C6162656C
00A0: 73002C005061736F 2030095061736F20 3120095061736F20 3220095061736F20
00C0: 33095061736F2034 095061736F203500 0054616250616765 436F756E74000200
00E0: 310000546162426F 74746F6D4D617267 696E000500302E34 3500005461624472
0100: 61775374796C6500 0B0057696E393553 74796C6500005461 62466F726D506167
0120: 6573000600090909 0909000054616254 6F704D617267696E 0002003000005461
0140: 62466F6E744E616D 650009004D532053 6572696600005461 62557365466F6E74
0160: 000700437573746F 6D00000000000000 0000000000000000 0000000000000000
0180: 00000000000000
.enddata
.data CLASSPROPSSIZE
0000: 8701
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 1
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdlgWizard
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: -0.02"
.head 5 -  Top: 6.988"
.head 5 -  Width:  7.7"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.333"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  File Name:
.head 4 -  Storage: Class Default
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Fit: Class Default
.head 4 -  Scaling
.head 5 -  Width:  Class Default
.head 5 -  Height:  Class Default
.head 4 -  Corners: Class Default
.head 4 -  Border Style: Class Default
.head 4 -  Border Thickness: Class Default
.head 4 -  Tile To Parent? No
.head 4 -  Border Color: Default
.head 4 -  Background Color: 3D Face Color
.head 4 -  Message Actions
.head 3 +  Pushbutton: pbAyuda
.head 4 -  Class Child Ref Key: 14
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdlgWizard
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 7.04"
.head 5 -  Top: 6.5"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 -  Message Actions
.head 3 +  Pushbutton: pbCargar
.head 4 -  Class Child Ref Key: 15
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdlgWizard
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 2.317"
.head 5 -  Top: 4.448"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 -  Message Actions
.head 3 +  Pushbutton: pbAnterior
.head 4 -  Class Child Ref Key: 5
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdlgWizard
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 10.28"
.head 5 -  Top: 6.5"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  ! Se redefine en la instancia dado que es necesario hacer 
algunas validaciones al darle el botón ANTERIOR
.head 6 -  !
.head 6 -  Call dlgCGAuxWiz.PrevTab()
.head 6 -  !
.head 6 -  Call dlgCGAuxWiz.PostPrevTab()
.head 3 +  Pushbutton: pbSiguiente
.head 4 -  Class Child Ref Key: 4
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdlgWizard
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 12.06"
.head 5 -  Top: 6.5"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 -  Message Actions
.head 3 +  Pushbutton: pbCancelar
.head 4 -  Class Child Ref Key: 6
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdlgWizard
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 13.94"
.head 5 -  Top: 6.5"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 -  Message Actions
.head 3 +  Picture: picLogo2
.head 4 -  Class Child Ref Key: 18
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdlgWizard
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: -5.75"
.head 5 -  Top: -1.9"
.head 5 -  Width:  21.8"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 8.905"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  File Name:
.head 4 -  Storage: Class Default
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Fit: Scale
.head 4 -  Scaling
.head 5 -  Width:  Class Default
.head 5 -  Height:  Class Default
.head 4 -  Corners: Class Default
.head 4 -  Border Style: Class Default
.head 4 -  Border Thickness: Class Default
.head 4 -  Tile To Parent? Class Default
.head 4 -  Border Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 +  Picture: picLogo
.head 4 -  Class Child Ref Key: 2
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdlgWizard
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.18"
.head 5 -  Top: 1.738"
.head 5 -  Width:  3.8"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 5.167"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  File Name:
.head 4 -  Storage: Class Default
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Fit: Class Default
.head 4 -  Scaling
.head 5 -  Width:  Class Default
.head 5 -  Height:  Class Default
.head 4 -  Corners: Class Default
.head 4 -  Border Style: Class Default
.head 4 -  Border Thickness: Class Default
.head 4 -  Tile To Parent? Class Default
.head 4 -  Border Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 -  Line
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 56711
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Coordinates
.head 5 -  Begin X:  3.92"
.head 5 -  Begin Y:  2.881"
.head 5 -  End X:  15.18"
.head 5 -  End Y:  2.881"
.head 4 -  Visible? No
.head 4 -  Line Style: Solid
.head 4 -  Line Thickness: 1
.head 4 -  Line Color: Default
.head 3 -  Line
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 45409
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Coordinates
.head 5 -  Begin X:  3.9"
.head 5 -  Begin Y:  4.274"
.head 5 -  End X:  15.15"
.head 5 -  End Y:  4.274"
.head 4 -  Visible? No
.head 4 -  Line Style: Solid
.head 4 -  Line Thickness: 1
.head 4 -  Line Color: Default
.head 3 -  !
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  ! PASO 0 - Cargar un cuadre que ya existe o hacer uno nuevo
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  !
.head 3 -  ! clsStdGroupBox: (class default)
.data INHERITPROPS
0000: 0100
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6535000000 00
.enddata
.data CLASSPROPSSIZE
0000: 1900
.enddata
.winattr class Group Box:
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 2.95"
.head 5 -  Top: 1.493"
.head 5 -  Width:  3.267"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.497"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Font Name: Tahoma
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  Background Text: A continuación se presenta una lista de cuadres que se encuentran en proceso. Usted puede seleccionar un cuadre para continuarlo, o bien realizar uno nuevo.
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65350000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 29159
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: -0.02"
.head 5 -  Top: 0.405"
.head 5 -  Width:  16.1"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.417"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  !
.head 3 +  Pushbutton: pbOpenCuadres
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65350000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbuttonAbrir
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.2"
.head 5 -  Top: 1.857"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Call OpenCuadres()
.head 5 +  On AM_Create
.head 6 -  Set sStatusText = 'Abrir'
.head 6 -  !
.head 6 -  ! Se define el ToolTip.
.head 6 -  Call InitTip( 'Abrir' )
.head 6 -  !
.head 3 +  Pushbutton: pbNewCuadres
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6535000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: PushbuttonNuevo
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.7"
.head 5 -  Top: 1.857"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Click
.head 6 +  ! EFECTOS
.head 7 -   Envía a la ventana padre el AM_ClassNewRow
.head 6 -  !
.head 6 -  Call NewCuadres()
.head 6 -  !
.head 6 -  Call picTabs.BringToTop( nTABPaso1, TRUE )
.head 6 -  Set dlgCGAuxWiz.nCurrentTab = nTABPaso1
.head 3 +  Pushbutton: pbDelCuadres
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6535000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: PushbuttonEliminar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.7"
.head 5 -  Top: 1.857"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Click
.head 6 +  ! EFECTOS
.head 7 -   Envía a la ventana padre el AM_ClassNewRow
.head 6 -  !
.head 6 -  Call DelCuadres()
.head 3 -  !
.head 3 +  Child Table: tblCuadresCG
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6535000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsChldTblBusqueda
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 0.58"
.head 6 -  Top: 2.238"
.head 6 -  Width:  15.1"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 4.0"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Yes
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  View: Class Default
.head 5 -  Allow Row Sizing? Class Default
.head 5 -  Lines Per Row: Class Default
.head 4 -  Memory Settings
.head 5 -  Maximum Rows in Memory: Class Default
.head 5 -  Discardable? Class Default
.head 4 +  Contents
.head 5 +  Column: colNumCuadre
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Cuadre
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.767"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: #0
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colDescCuadre
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Descripción
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.933"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colModuloCuadre
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Modulo
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.783"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colFechaCuadre
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Fecha
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Date/Time
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.933"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: DateTime
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colUsuarioCuadre
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Usuario
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.933"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colFechaDesdeCuadre
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Desde
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Date/Time
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.933"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: dd-MM-yyyy
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colFechaHastaCuadre
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Hasta
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Date/Time
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.933"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: dd-MM-yyyy
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 -  !
.head 4 +  Functions
.head 5 -  !
.head 5 -  ! Redefinibles Obligatorias
.head 5 +  Function: InitTable
.head 6 -  Description: Función que debe ser redefinida por las clases u objetos derivados
para establecer los valores necesarios para el manejo de la tabla.

La función debe retornar los valores necesarios en los parámetros
que se detallan.

Las clases u objetos derivados deben retornar TRUE en esta función
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Receive String: sTabla		! Nombre de la tabla (en la BD) sobre la cual se realiza la búsqueda
.head 7 -  Receive String: sColumnas		! Nombre de las columnas (en la BD) para las columnas del table-window
.head 7 -  Receive String: sIntoVars		! Into-variables para popular la tabla.  Deben  ser los nombres de la columnas en el table-window
.head 7 -  Receive Window Handle: hwndDF	! Data-field de donde se toma el valor inicial y donde se pone el valor elegido  hWndNULL en caso de no ser para help
.head 7 -  Receive Boolean: bRestrict		! Indica si se debe popular la tabla de forma tal que incluya solamente los rows que inicien con el valor inicial de búsqueda
.head 7 -  Receive Boolean: bBusquedaExacta	! Indica que solo busca rows que cumplan exactamente con lo digitado
.head 7 -  Receive Boolean: bManejarVentana	! Indica si la clase se encarga de manejar la ventana cuando se realiza la selección de un row
.head 7 -  Receive Number: nFlags1
.head 7 -  Receive Number: nFlags2
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set sTabla = ConcatCompany( 'CUADRES_CG' )
.head 7 -  Set sColumnas = 'CUADRES_CG, DESCRIPCION, MODULO, FECHA, CREATEDBY, FECHA_DESDE, FECHA_HASTA '
.head 7 -  Set sIntoVars = ':colNumCuadre, :colDescCuadre, :colModuloCuadre, :colFechaCuadre, :colUsuarioCuadre, :colFechaDesdeCuadre, :colFechaHastaCuadre  '
.head 7 -  !
.head 7 -  Set hwndDF = hWndNULL
.head 7 -  Set bRestrict = FALSE
.head 7 -  Set bBusquedaExacta = TRUE
.head 7 -  Set bManejarVentana = FALSE
.head 7 -  !
.head 7 -  Set bPopulateOnCreate = TRUE
.head 7 -  !
.head 7 -  !
.head 7 -  Return TRUE
.head 5 +  Function: GetOpcion
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar la
opción utilizada para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return 'Cuadres_CG'
.head 5 +  Function: GetOrigen
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar el
origen utilizado para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return CG_ORIGEN || "tblCuadresCG"
.head 5 +  Function: GetStatements
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  Function: GetVariables
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  ! Function: GetStatementsAndVars
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Long String: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Long String: ls1
.head 7 -  Long String: ls2
.head 7 -  Long String: lsTotal
.head 7 -  !
.head 7 -  Number: nPosMax
.head 6 +  Actions 
.head 7 -  !
.head 7 -  ! laar
.head 7 -  ! Set ls1 = ..GetStatements()
.head 7 -  Set ls1 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETSTATEMENTS ) )
.head 7 -  !
.head 7 -  ! Set ls2 = ..GetVariables()
.head 7 -  Set ls2 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETVARIABLES ) )
.head 7 -  !
.head 7 -  Set lsTotal = ls2 || ls1
.head 7 -  !
.head 7 -  ! Recortar el string al maximo permitido
.head 7 -  !
.head 7 -  Set nPosMax = SalStrLength( lsTotal ) - 1
.head 7 +  If nPosMax >  MAX_PREFERENCIA_LONG_SIZE
.head 8 -  Set nPosMax = VisStrScanReverse( lsTotal, MAX_PREFERENCIA_LONG_SIZE, LIST_SEPARATOR )
.head 8 -  Set lsTotal = SalStrLeftX( lsTotal, nPosMax )
.head 7 -  !
.head 7 -  Return lsTotal
.head 5 +  Function: CreateWHERE
.head 6 -  Description: Función para crear la porción where del comando sql para cargar la
tabla.
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  String: lsWhere
.head 6 +  Actions
.head 7 -  !
.head 7 -  !
.head 7 -  Return lsWhere
.head 5 +  Function: RowPictures
.head 6 -  Description: Debe ser redefinido para asignar a los parámetros los valores
necesarios para manejar row-pictures.  Debe retornar TRUE en
la redefinición
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Receive Number: nRowFlag1
.head 7 -  Receive Number: nRowFlag2
.head 7 -  Receive Number: nRowFlag3
.head 7 -  Receive String: sResourceList
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set nRowFlag1 = 0
.head 7 -  Set nRowFlag2 = 0
.head 7 -  Set nRowFlag3 = 0
.head 7 -  Return TRUE
.head 5 +  Function: AfterInitTable
.head 6 -  Description: Función que es llamada después de inicializar la tabla, leer las
preferencias de la base de datos y popularla
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: GetWindowSizeAndLoc
.head 6 -  Description: Retorna el tamaño y la localización del top-level window
para guardarlo en la base de datos y después restaurar al entrar.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Receive Number: nWidth
.head 7 -  Receive Number: nHeight
.head 7 -  Receive Number: nX
.head 7 -  Receive Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalGetWindowSize( hWndTable, nWidth, nHeight )
.head 7 -  Call SalGetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: SetWindowSizeAndLoc
.head 6 -  Description: Cambia el tamaño y la localización del top-level window
después de leerlo de la base de datos.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Number: nWidth
.head 7 -  Number: nHeight
.head 7 -  Number: nX
.head 7 -  Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalSetWindowSize( hWndTable, nWidth,  nHeight )
.head 7 -  !
.head 7 -  ! Se comentan las llamadas para que compile
.head 7 -  Call SetWindowInVisiblePos( hWndTable,  nWidth,  nHeight, nX, nY )
.head 7 -  !
.head 7 -  Call SalSetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: AfterPopulate
.head 6 -  Description: Función que es llamada después de poblar el table-window
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: UsarDistinct
.head 6 -  Description: Se redefine para retornar TRUE indicando que se utilice la cláusula
DISTINCT para poblar la tabla eliminando registros duplicados.
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return FALSE
.head 5 +  Function: HacerBusquedaInicial
.head 6 -  Description: Hacer la búsqueda binaria inicial si se especifica un "string-digitado"
a la hora de creación de la tabla
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return TRUE
.head 5 +  Function: DevolverSeparador
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ','
.head 5 +  Function: UsarResultCount
.head 6 -  Description: Indica si se debe utilizar GetResultSetCount( ) en lugar de ejecutar un
COUNT(*) en la base de datos
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return FALSE
.head 5 +  Function: InicializarPreferencias
.head 6 -  Description: Se llama luego de leer y ejecutar las preferencias.
Se puede redefinir para establecer los valores iniciales y
poder restringir el result-set o configurar el ambiente inicial.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Boolean: bPrmExistenPreferencias
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: CambiarOrderBy
.head 6 -  Description: Permite incluir campos en el ordenamiento default que tiene la
tabla. Es muy útil en tablas que son hijas de otra y que siempre
deben ordenar por el código del maestro. Esto mejora la
eficiencia al popular la tabla, siempre que se tengan los índices
bien definidos.
Recibe la hilera de campos en el order by y para que se le
inserten los campos en el orden que se desee ( inicio o final )
Recordar que la variable nFirstColumn indica el ID de la columna
por la cual se ordena.
.head 6 +  Returns
.head 7 -  String:
.head 6 +  Parameters
.head 7 -  String: sPrmOrderBy
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return sPrmOrderBy
.head 5 +  Function: ColumnaDeRestriccion
.head 6 -  Description: Define la columna por la cual se ha de restringir el result-set de la tabla F1.
Redefinible a nivel de la instancia; basicamente para campos F1 que no se
han de restringir la columna de codigo (#1 siempre!) sino por descripcion o
alguna otra columna.
.head 6 +  Returns
.head 7 +  Number:
.head 8 -  ! valor numerico de la columna por la cual se restringe;
siendo 1 por default.
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
.head 7 -  Return 1
.head 5 +  Function: ModificaWhere
.head 6 -  Description: Agregada 05/06/2000 JCHAVES
Utilizada para la funcionalidad de códigos de barras.
Permite agregar al sWhereRestrict cláusulas adicionales antes de
concatenarle el sWhereClause
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  String: psStringDesde
.head 7 -  String: psStringHasta
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 -  !
.head 5 -  !
.head 5 -  ! Otras Funciones
.head 5 -  !
.head 5 +  ! Function: InsertNewRow
.head 6 -  Description: Inserta un nuevo row al final de la tabla.  Llama a la función
NewRowInserted() indicando a las clases derivadas o instancias que un
nuevo row ha sido insertado.
bValidar indica si se desea validar el último row (llamar a
RowValidate()) antes de permitir inserción.
Retorna TRUE si se tuvo éxito en la operación.
.head 6 +  Returns 
.head 7 -  Boolean: 
.head 6 +  Parameters 
.head 7 -  Boolean: bValidar
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Number: nNewRow
.head 7 -  Window Handle: hwndCol1
.head 7 -  Boolean: bOk
.head 7 -  Number: bFlag
.head 7 -  Number: nMinRow
.head 7 -  Number: nMaxRow
.head 7 -  Number: nScrollPos
.head 7 -  Number: nCuentaCols
.head 6 +  Actions 
.head 7 -  Set bOk = FALSE
.head 7 -  !
.head 7 -  Call ProtegerColumnas(FALSE)
.head 7 -  !
.head 7 -  Set nCuentaCols = 1
.head 7 -  ! ! Obtener el handle de la primera columna visible
.head 7 +  Loop 
.head 8 -  Set hwndCol1 = SalTblGetColumnWindow( tblSelCuentas, nCuentaCols,
COL_GetID )
.head 8 +  If hwndCol1 = hWndNULL OR SalIsWindowVisible( hwndCol1 )
.head 9 -  Break 
.head 8 +  Else 
.head 9 -  Set nCuentaCols = nCuentaCols + 1
.head 7 -  Set nNewRow = SalTblInsertRow( tblSelCuentas, TBL_MaxRow )
.head 7 -  Call SalUpdateWindow( tblSelCuentas  )
.head 7 +  If nNewRow != TBL_Error
.head 8 -  Call SalTblSetFocusCell( tblSelCuentas, nNewRow, hwndCol1, 0, 0 )
.head 8 -  !
.head 8 -  Call SalTblSetRowFlags( tblSelCuentas, nNewRow, ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set bOk = TRUE
.head 7 +  Else 
.head 8 -  Call SPSMessageBox(
'Error insertando un nuevo row en el table-window',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 7 -  !
.head 7 -  ! Se marca la columna como editada para que se haga validación y no se permita dejar en blanco.
.head 7 -  Call SalSetFieldEdit( tblSelCuentas.colCuentaCG, TRUE )
.head 7 -  !
.head 7 -  Return bOk
.head 5 +  ! Function: HacerDelRow
.head 6 -  Description: Procesa la solicitud de borrado de una linea.
.head 6 +  Returns 
.head 7 +  Boolean: 
.head 8 -  ! indicador del resultado; pudiendo ser:
TRUE si fue posible el borrado de la linea seleccionada
FALSE de lo contrario, o bien, si el usuario decide cancelar
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 +  Number: nRow1
.head 8 -  ! numero de linea
.head 7 +  Number: nRow2
.head 8 -  ! numero de linea
.head 7 +  Boolean: bMasDeUnRow
.head 8 -  ! indicador de borrado de mas de una linea
.head 7 +  String: sMensaje
.head 8 -  ! mensaje al usuario
.head 7 -  Boolean: lbOk
.head 6 +  Actions 
.head 7 -  ! Primero se ve si hay mas de un row marcado para borrar
.head 7 -  Set nRow1 = TBL_MinRow
.head 7 -  ! Buscamos el primer row marcado
.head 7 +  If SalTblFindNextRow( tblSelCuentas, nRow1, ROW_Selected,
ROW_MarkDeleted | ROW_Hidden )
.head 8 -  Set nRow2 = nRow1
.head 8 -  ! Buscamos a ver si hay un segundo row marcado
.head 8 +  If SalTblFindNextRow( tblSelCuentas, nRow1, ROW_Selected,
ROW_MarkDeleted | ROW_Hidden )
.head 9 -  ! Ajustamos al bandera a si hay mas de un row
.head 9 +  If nRow1 != nRow2
.head 10 -  Set bMasDeUnRow = TRUE
.head 7 +  If bMasDeUnRow
.head 8 -  Call SPSMessageBox(
'Sólo puede eliminar una línea de la tabla a la vez.',
'Eliminación de Registros',
 MBF_IconHand, CONTINUAR )
.head 8 -  Return FALSE
.head 7 -  Set sMensaje = '¿Está seguro de que desea borrar esta línea?'
.head 7 +  If bMasDeUnRow
.head 8 -  Set sMensaje = '¿Está seguro de que desea borrar estas líneas?'
.head 7 +  If SPSMessageBox(
sMensaje,
'Advertencia',
MBF_IconQuestion,'&Borrar,&Cancelar' ) = MB_Button2
.head 8 -  Return FALSE
.head 7 -  !
.head 7 +  ! If NOT ..DeleteConfirm( )
.head 8 -  Return FALSE
.head 7 -  !
.head 7 -  !
.head 7 -  ! Borrar el row
.head 7 -  Set nRow1 = TBL_MinRow
.head 7 -  Set lbOk = SalTblFindNextRow( tblSelCuentas, nRow1, ROW_Selected,
ROW_MarkDeleted | ROW_Hidden )
.head 7 +  If lbOk
.head 8 -  Set lbOk = SalTblSetRowFlags( tblSelCuentas, nRow1,
ROW_MarkDeleted | ROW_Hidden, TRUE )
.head 7 -  !
.head 7 -  Return TRUE
.head 5 -  !
.head 4 -  Window Variables
.head 4 +  Message Actions
.head 5 +  ! On SAM_RowHeaderClick
.head 6 -  ! Solo se permite marcar el asiento si está activo el botón asociado
.head 6 -  Call MarcarCuenta( lParam )
.head 6 -  Call PoblarEnteAux(lParam)
.head 6 -  !
.head 5 +  ! On SAM_Click
.head 6 -  Call PoblarEnteAux(lParam)
.head 6 -  Call ProtegerColumnas(TRUE)
.head 5 +  ! On AM_ClassNewRow
.head 6 -  !
.head 6 -  Return InsertNewRow(TRUE)
.head 5 +  ! On AM_ClassDelRow
.head 6 -  !
.head 6 +  If nTotRows
.head 7 -  Call HacerDelRow()
.head 3 -  !
.head 3 -  !
.head 3 -  !
.head 3 -  !
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  ! PASO 1 - Datos Generales del Cuadre
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  Background Text: Este Wizard le guiará en los pasos necesarios para que usted pueda comparar los datos arrojados por los distintos auxiliares de la contabilidad y cotejarlos contra los movimientos contables de este módulo.
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65300000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 19625
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.08"
.head 5 -  Top: 0.405"
.head 5 -  Width:  16.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.5"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Datos Generales
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65300000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 19626
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: -0.02"
.head 5 -  Top: 0.095"
.head 5 -  Width:  16.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.31"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Bold-Underline
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  !
.head 3 +  Data Field: dfDescripcion
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6530000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDF
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 4.08"
.head 6 -  Top: 2.655"
.head 6 -  Width:  11.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_ClearField
.head 6 -  Call SalClearField( hWndItem )
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  ! Caso RD8-02907-DV49 JEV - Se cambia la longitud máxima permitida para el campo
.head 6 -  Call SalSetMaxDataLength( hWndItem,  40 )
.head 6 -  Set dfDescripcion.sStatusText = 'Descripción del cuadre'
.head 3 -  !
.head 3 -  Background Text: Período Contable:
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65300000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 31306
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 4.08"
.head 5 -  Top: 3.512"
.head 5 -  Width:  0.9"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Descripción:
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65300000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 46889
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 4.08"
.head 5 -  Top: 2.429"
.head 5 -  Width:  1.5"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Left
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 +  Data Field: dfPeriodoCuadre
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65300000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfPeriodoContableF1
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 5.08"
.head 6 -  Top: 3.488"
.head 6 -  Width:  1.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_InitDFHelp
.head 6 -  Set dfPeriodoCuadre.sStatusText =  'Periodo contable sugerido'
.head 6 -  Set dfPeriodoCuadre.bPermiteBlancos = TRUE
.head 6 -  Set dfPeriodoCuadre.bVerificarExistencia = FALSE
.head 5 +  On AM_ExtraValidate
.head 6 -  !
.head 6 -  Set dfFechaFin = dfPeriodoCuadre.dtFechaFinal
.head 6 -  !
.head 6 -  Call dfPeriodoCuadre.ObtenerFechaInicial(
				dfPeriodoCuadre.dtFechaFinal, 
				dfPeriodoCuadre.sTipo,
				dfFechaIni 
				)
.head 6 -  !
.head 6 -  Return VALIDATE_OkClearFlag
.head 3 -  !
.head 3 -  Group Box: Rango de Fechas
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65300000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 25992
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 4.08"
.head 5 -  Top: 3.905"
.head 5 -  Width:  5.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 2.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Desde:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6530000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 25993
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 5.28"
.head 5 -  Top: 4.512"
.head 5 -  Width:  0.7"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 +  Data Field: dfFechaIni
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65300000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfFechaF1
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 6.18"
.head 6 -  Top: 4.488"
.head 6 -  Width:  1.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set dfFechaIni.sStatusText = 'Fecha inicial para el cuadre con el auxiliar (Presione F1 o doble click para Ayuda)'
.head 6 -  !
.head 6 -  Set bEsFechaDesde = TRUE
.head 6 -  Set hwndFechaAsociada = dfFechaFin
.head 5 +  On AM_ExtraValidate
.head 6 -  !
.head 6 -  ! Set fciFiltroDocumentosCB.dtFechaDocDesde=dfFechaIniCBDoc
.head 6 -  Set dfFechaFin = SalDateConstruct (SalDateYear ( dfFechaIni ), SalDateMonth ( dfFechaIni ), DiasEnMes(dfFechaIni), 0, 0, 0)
.head 6 -  !
.head 6 -  Return VALIDATE_OkClearFlag
.head 3 -  Background Text: Hasta:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6530000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 25994
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 5.28"
.head 5 -  Top: 5.095"
.head 5 -  Width:  0.7"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 +  Data Field: dfFechaFin
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65300000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfFechaF1
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 6.18"
.head 6 -  Top: 5.071"
.head 6 -  Width:  1.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set dfFechaFin.sStatusText = 'Fecha final el cuadre de los auxiliares (Presione F1 o doble click para Ayuda)'
.head 6 -  !
.head 6 -  Set bEsFechaDesde = FALSE
.head 6 -  Set hwndFechaAsociada = dfFechaIni
.head 5 +  On AM_ExtraValidate
.head 6 -  !
.head 6 -  ! Set fciFiltroDocumentosCB.dtFechaDocHasta=dfFechaFinCBDoc
.head 6 -  Return VALIDATE_OkClearFlag
.head 3 -  !
.head 3 -  Background Text: Seleccione el módulo a Cuadrar:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6530000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 28364
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 12.38"
.head 5 -  Top: 3.571"
.head 5 -  Width:  3.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: White
.head 3 +  List Box: lbModOrigen
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6530000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsLstModSelecUnica
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 9.58"
.head 5 -  Top: 3.988"
.head 5 -  Width:  6.1"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 2.083"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Multiple selection? Class Default
.head 4 -  Sorted? Class Default
.head 4 -  Vertical Scroll? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Horizontal Scroll? Class Default
.head 4 -  List Initialization
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set lbModOrigen.sStatusText =
'Módulos que originan ' || fciGlobalesCG.NombreAsiento( TRUE, FALSE, TRUE )
.head 3 -  !
.head 3 -  !
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  ! PASO 2 - Cuentas Objeto del Cuadre
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  !
.head 3 -  Background Text: Cuentas Contables Objeto del Cuadre
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6531000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 35903
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: -0.02"
.head 5 -  Top: 0.155"
.head 5 -  Width:  16.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Bold-Underline
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  ! Background Text: Desde:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6531000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.65"
.head 5 -  Top: 0.813"
.head 5 -  Width:  1.5"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.end
.head 3 -  ! Background Text: Hasta:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6531000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 4.583"
.head 5 -  Top: 0.813"
.head 5 -  Width:  1.5"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.end
.head 3 +  ! clsdfCuentaContableF1: dfCuentaDesde
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65310000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 +  Message Actions 
.head 5 +  On AM_InitDFHelp
.head 6 -  Set dfCuentaDesde.bVerificarExistencia = FALSE
.head 6 -  Set dfCuentaDesde.bSoloConMovimiento = FALSE
.head 6 -  ! Set bPermiteBlancos = TRUE
.head 6 -  ! Set dfCuentaDesde.hwndDescripcion = dfDescCuentaInicial
.head 6 -  Set clsdfHelp.sStatusText =  'Código de la cuenta contable inicial ( F1 o doble-click para ayuda )'
.head 3 +  ! clsdfCuentaContableF1: dfCuentaHasta
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6531000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 +  Message Actions 
.head 5 +  ! On AM_InitDFHelp
.head 6 -  Set dfCuentaInicial.bVerificarExistencia = FALSE
.head 6 -  Set dfCuentaInicial.bSoloConMovimiento = FALSE
.head 6 -  Set dfCuentaInicial.hwndDescripcion = dfDescCuentaInicial
.head 6 -  Set clsdfHelp.sStatusText =  'Código de la cuenta contable inicial ( F1 o doble-click para ayuda )'
.head 3 -  !
.head 3 +  Pushbutton: pbCargaCtas
.data INHERITPROPS
0000: 0100
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6531000000 00
.enddata
.data CLASSPROPSSIZE
0000: 1900
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbuttonBase
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.88"
.head 5 -  Top: 1.94"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Bold
.head 4 -  Picture File Name: CARGA2.bmp
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set pbCargaCtas.sStatusText =
     'Cargar las cuentas contables'
.head 6 -  Call pbCargaCtas.InitTip( 'Cargar' )
.head 5 +  On AM_Click
.head 6 -  Call CargarCuentas('')
.head 5 +  On AM_IsBackground
.head 6 -  ! Truco para que la clase no la deshabilite
.head 6 -  Return TRUE
.head 3 +  Pushbutton: pbExcelCtas
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65310000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbuttonExcel
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 2.4"
.head 5 -  Top: 1.94"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  !
.head 6 -  Call SalSendMsg( tblSelCuentas, AM_SendTableDataToExcel, 0, 0 )
.head 3 +  Pushbutton: pbNewCtas
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65310000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: PushbuttonNuevo
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.4"
.head 5 -  Top: 1.94"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Click
.head 6 +  ! EFECTOS
.head 7 -   Envía a la ventana padre el AM_ClassNewRow
.head 6 -  !
.head 6 -  Call SalSendMsg( tblSelCuentas, AM_ClassNewRow, 0, 0 )
.head 3 +  Pushbutton: pbEliminarCtas
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65310000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: PushbuttonEliminar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.88"
.head 5 -  Top: 1.94"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Click
.head 6 +  ! EFECTOS
.head 7 -   Envía a la ventana padre el AM_ClassNewRow
.head 6 -  !
.head 6 -  Call SalSendMsg( tblSelCuentas, AM_ClassDelRow, 0, 0 )
.head 3 +  Pushbutton: pbSelecAllCtas
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65310000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbuttonBase
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.38"
.head 5 -  Top: 1.94"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name: SELTODOS.BMP
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 +  ! EFECTOS
.head 7 -   Inicializa el "status text" y el ToolTip. ( No se requiere redefinir en la instancia ).
.head 6 -  !
.head 6 +  If NOT sStatusText
.head 7 -  ! Si no se ha definido Estatus Text poner el Default
.head 7 -  Set sStatusText = 'Marca / Desmarca TODAS las cuentas'
.head 6 -  !
.head 6 -  Call InitTip( 'Marca / Desmarca todas' )
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Call SeleccionarTodasCtas(-1)
.head 3 -  !
.head 3 -  Group Separator
.head 4 -  Resource Id: 8830
.head 3 +  Child Table: tblSelCuentas
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6531000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsChldTblBusqueda
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 0.28"
.head 6 -  Top: 2.238"
.head 6 -  Width:  7.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 4.083"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  View: Class Default
.head 5 -  Allow Row Sizing? Class Default
.head 5 -  Lines Per Row: 1
.head 4 -  Memory Settings
.head 5 -  Maximum Rows in Memory: Class Default
.head 5 -  Discardable? Class Default
.head 4 +  Contents
.head 5 +  Column: colCuentaCG
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolCuentaContableF1
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Cuenta Contable
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  2.8"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_InitCOLHelp
.head 8 -  Set colCuentaCG.hwndDescripcion = colCuentaCGDesc
.head 8 -  Set colCuentaCG.bSoloConMovimiento = TRUE
.head 8 -  Set colCuentaCG.bPermiteBlancos = FALSE
.head 8 -  !
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_Validate
.head 8 -  !
.head 8 -  Call SalTblSetRowFlags( tblSelCuentas, tblSelCuentas.nRow, ROW_New, FALSE )
.head 7 +  On AM_SortCol
.head 8 -  ! Indica si se puede hacer ordenamiento sobre ella
.head 8 -  Return FALSE
.head 5 +  Column: colCuentaCGDesc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Descripción
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  3.9"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_SortCol
.head 8 -  ! Indica si se puede hacer ordenamiento sobre ella
.head 8 -  Return FALSE
.head 4 +  Functions
.head 5 -  !
.head 5 -  ! Redefinibles Obligatorias
.head 5 +  Function: InitTable
.head 6 -  Description: Función que debe ser redefinida por las clases u objetos derivados
para establecer los valores necesarios para el manejo de la tabla.

La función debe retornar los valores necesarios en los parámetros
que se detallan.

Las clases u objetos derivados deben retornar TRUE en esta función
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Receive String: sTabla		! Nombre de la tabla (en la BD) sobre la cual se realiza la búsqueda
.head 7 -  Receive String: sColumnas		! Nombre de las columnas (en la BD) para las columnas del table-window
.head 7 -  Receive String: sIntoVars		! Into-variables para popular la tabla.  Deben  ser los nombres de la columnas en el table-window
.head 7 -  Receive Window Handle: hwndDF	! Data-field de donde se toma el valor inicial y donde se pone el valor elegido  hWndNULL en caso de no ser para help
.head 7 -  Receive Boolean: bRestrict		! Indica si se debe popular la tabla de forma tal que incluya solamente los rows que inicien con el valor inicial de búsqueda
.head 7 -  Receive Boolean: bBusquedaExacta	! Indica que solo busca rows que cumplan exactamente con lo digitado
.head 7 -  Receive Boolean: bManejarVentana	! Indica si la clase se encarga de manejar la ventana cuando se realiza la selección de un row
.head 7 -  Receive Number: nFlags1
.head 7 -  Receive Number: nFlags2
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set sTabla = ConcatCompany( 'CUENTA_CONTABLE ' )
.head 7 -  Set sColumnas = 'CUENTA_CONTABLE, DESCRIPCION '
.head 7 -  Set sIntoVars = ':colCuentaCG, :colCuentaCGDesc'
.head 7 -  !
.head 7 -  Set hwndDF = hWndNULL
.head 7 -  Set bRestrict = FALSE
.head 7 -  Set bBusquedaExacta = TRUE
.head 7 -  Set bManejarVentana = FALSE
.head 7 -  !
.head 7 -  Set bPopulateOnCreate = FALSE
.head 7 -  !
.head 7 -  !
.head 7 -  Return TRUE
.head 5 +  Function: GetOpcion
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar la
opción utilizada para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return 'Seleccción de Cuentas'
.head 5 +  Function: GetOrigen
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar el
origen utilizado para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return CG_ORIGEN || "tblSelCuentas"
.head 5 +  Function: GetStatements
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  Function: GetVariables
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  ! Function: GetStatementsAndVars
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Long String: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Long String: ls1
.head 7 -  Long String: ls2
.head 7 -  Long String: lsTotal
.head 7 -  !
.head 7 -  Number: nPosMax
.head 6 +  Actions 
.head 7 -  !
.head 7 -  ! laar
.head 7 -  ! Set ls1 = ..GetStatements()
.head 7 -  Set ls1 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETSTATEMENTS ) )
.head 7 -  !
.head 7 -  ! Set ls2 = ..GetVariables()
.head 7 -  Set ls2 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETVARIABLES ) )
.head 7 -  !
.head 7 -  Set lsTotal = ls2 || ls1
.head 7 -  !
.head 7 -  ! Recortar el string al maximo permitido
.head 7 -  !
.head 7 -  Set nPosMax = SalStrLength( lsTotal ) - 1
.head 7 +  If nPosMax >  MAX_PREFERENCIA_LONG_SIZE
.head 8 -  Set nPosMax = VisStrScanReverse( lsTotal, MAX_PREFERENCIA_LONG_SIZE, LIST_SEPARATOR )
.head 8 -  Set lsTotal = SalStrLeftX( lsTotal, nPosMax )
.head 7 -  !
.head 7 -  Return lsTotal
.head 5 +  Function: CreateWHERE
.head 6 -  Description: Función para crear la porción where del comando sql para cargar la
tabla.
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  String: lsWhere
.head 6 +  Actions
.head 7 -  !
.head 7 +  If isListaCuentasCuadre
.head 8 -  !
.head 8 -  Set lsWhere = "WHERE CUENTA_CONTABLE IN ( " || isListaCuentasCuadre || " ) "
.head 7 -  !
.head 7 -  Return lsWhere
.head 5 +  Function: RowPictures
.head 6 -  Description: Debe ser redefinido para asignar a los parámetros los valores
necesarios para manejar row-pictures.  Debe retornar TRUE en
la redefinición
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Receive Number: nRowFlag1
.head 7 -  Receive Number: nRowFlag2
.head 7 -  Receive Number: nRowFlag3
.head 7 -  Receive String: sResourceList
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set nRowFlag1 = ROW_UserFlag1
.head 7 -  Set nRowFlag2 = 0
.head 7 -  Set nRowFlag3 = 0
.head 7 -  Set sResourceList = 'picAsientoMarcado'
.head 7 -  Return TRUE
.head 5 +  Function: AfterInitTable
.head 6 -  Description: Función que es llamada después de inicializar la tabla, leer las
preferencias de la base de datos y popularla
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: GetWindowSizeAndLoc
.head 6 -  Description: Retorna el tamaño y la localización del top-level window
para guardarlo en la base de datos y después restaurar al entrar.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Receive Number: nWidth
.head 7 -  Receive Number: nHeight
.head 7 -  Receive Number: nX
.head 7 -  Receive Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalGetWindowSize( hWndTable, nWidth, nHeight )
.head 7 -  Call SalGetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: SetWindowSizeAndLoc
.head 6 -  Description: Cambia el tamaño y la localización del top-level window
después de leerlo de la base de datos.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Number: nWidth
.head 7 -  Number: nHeight
.head 7 -  Number: nX
.head 7 -  Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalSetWindowSize( hWndTable, nWidth,  nHeight )
.head 7 -  !
.head 7 -  ! Se comentan las llamadas para que compile
.head 7 -  Call SetWindowInVisiblePos( hWndTable,  nWidth,  nHeight, nX, nY )
.head 7 -  !
.head 7 -  Call SalSetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: AfterPopulate
.head 6 -  Description: Función que es llamada después de poblar el table-window
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: UsarDistinct
.head 6 -  Description: Se redefine para retornar TRUE indicando que se utilice la cláusula
DISTINCT para poblar la tabla eliminando registros duplicados.
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return FALSE
.head 5 +  Function: HacerBusquedaInicial
.head 6 -  Description: Hacer la búsqueda binaria inicial si se especifica un "string-digitado"
a la hora de creación de la tabla
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return TRUE
.head 5 +  Function: DevolverSeparador
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ','
.head 5 +  Function: UsarResultCount
.head 6 -  Description: Indica si se debe utilizar GetResultSetCount( ) en lugar de ejecutar un
COUNT(*) en la base de datos
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return FALSE
.head 5 +  Function: InicializarPreferencias
.head 6 -  Description: Se llama luego de leer y ejecutar las preferencias.
Se puede redefinir para establecer los valores iniciales y
poder restringir el result-set o configurar el ambiente inicial.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Boolean: bPrmExistenPreferencias
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: CambiarOrderBy
.head 6 -  Description: Permite incluir campos en el ordenamiento default que tiene la
tabla. Es muy útil en tablas que son hijas de otra y que siempre
deben ordenar por el código del maestro. Esto mejora la
eficiencia al popular la tabla, siempre que se tengan los índices
bien definidos.
Recibe la hilera de campos en el order by y para que se le
inserten los campos en el orden que se desee ( inicio o final )
Recordar que la variable nFirstColumn indica el ID de la columna
por la cual se ordena.
.head 6 +  Returns
.head 7 -  String:
.head 6 +  Parameters
.head 7 -  String: sPrmOrderBy
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return sPrmOrderBy
.head 5 +  Function: ColumnaDeRestriccion
.head 6 -  Description: Define la columna por la cual se ha de restringir el result-set de la tabla F1.
Redefinible a nivel de la instancia; basicamente para campos F1 que no se
han de restringir la columna de codigo (#1 siempre!) sino por descripcion o
alguna otra columna.
.head 6 +  Returns
.head 7 +  Number:
.head 8 -  ! valor numerico de la columna por la cual se restringe;
siendo 1 por default.
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
.head 7 -  Return 1
.head 5 +  Function: ModificaWhere
.head 6 -  Description: Agregada 05/06/2000 JCHAVES
Utilizada para la funcionalidad de códigos de barras.
Permite agregar al sWhereRestrict cláusulas adicionales antes de
concatenarle el sWhereClause
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  String: psStringDesde
.head 7 -  String: psStringHasta
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 -  !
.head 5 -  !
.head 5 -  ! Otras Funciones
.head 5 -  !
.head 5 +  Function: SeleccionarTodasCtas
.head 6 -  Description: Selecciona todas las cuentas del tblSelCuentas
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Number: pnSeleccionar
.head 6 +  Static Variables
.head 7 -  Boolean: lbSeleccionar
.head 6 +  Local variables
.head 7 -  Boolean: lbOk
.head 7 -  Number: nCurRow
.head 6 +  Actions
.head 7 -  Set lbOk = TRUE
.head 7 -  !
.head 7 -  Set nCurRow = TBL_MinRow
.head 7 -  !
.head 7 +  Select Case pnSeleccionar
.head 8 +  Case 1
.head 9 -  !
.head 9 -  Set lbSeleccionar = TRUE
.head 9 -  Break
.head 8 +  Case 0
.head 9 -  !
.head 9 -  Set lbSeleccionar = FALSE
.head 9 -  Break
.head 8 +  Default
.head 9 -  Set lbSeleccionar = NOT lbSeleccionar
.head 7 -  !
.head 7 -  !
.head 7 +  While SalTblFindNextRow( tblSelCuentas, nCurRow,
		            0, ROW_Hidden | ROW_MarkDeleted )
.head 8 -  Call SalTblFetchRow( tblSelCuentas, nCurRow )
.head 8 -  !
.head 8 -  Call SalTblSetRowFlags( tblSelCuentas, nCurRow, ROW_UnusedFlag1, lbSeleccionar )
.head 7 -  !
.head 7 -  ! Se vuelve a pintar la ventana para que aparezcan las marcas
.head 7 -  Call SalInvalidateWindow ( dlgCGAuxWiz.tblSelCuentas )
.head 7 -  !
.head 7 -  !
.head 7 -  Return lbOk
.head 5 +  Function: MarcarCuenta
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Number: pnLinea
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: lbOk
.head 7 -  Number: nCurRow
.head 6 +  Actions
.head 7 -  Set lbOk = TRUE
.head 7 -  !
.head 7 +  If pnLinea = NUMBER_Null
.head 8 -  !
.head 8 -  Set nCurRow = TBL_MinRow
.head 8 -  !
.head 8 +  While SalTblFindNextRow( tblSelCuentas, nCurRow,
		            ROW_Selected, 0 )
.head 9 -  Call SalTblFetchRow( tblSelCuentas, nCurRow )
.head 9 +  If pnLinea < 0
.head 10 -  Set pnLinea = nCurRow
.head 9 -  !
.head 9 -  Call SalTblSetRowFlags( tblSelCuentas, pnLinea, ROW_UnusedFlag1, TRUE )
.head 7 +  Else
.head 8 -  !
.head 8 +  If NOT SalTblQueryRowFlags( tblSelCuentas, pnLinea, ROW_UnusedFlag1 )
.head 9 -  Call SalTblSetRowFlags( tblSelCuentas, pnLinea, ROW_UnusedFlag1, TRUE )
.head 8 +  Else
.head 9 -  Call SalTblSetRowFlags( tblSelCuentas, pnLinea, ROW_UnusedFlag1, FALSE )
.head 8 -  !
.head 7 -  !
.head 7 -  !
.head 7 -  ! Se vuelve a pintar la ventana para que aparezcan las marcas
.head 7 -  Call SalInvalidateWindow ( dlgCGAuxWiz.tblSelCuentas )
.head 7 -  !
.head 7 -  !
.head 7 -  !
.head 7 -  Return lbOk
.head 5 +  Function: ProtegerColumnas
.head 6 -  Description:
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Boolean: pbProteger
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Window Handle: hwndColumna
.head 6 +  Actions
.head 7 -  !
.head 7 -  Set hwndColumna = SalTblGetColumnWindow( dlgCGAuxWiz.tblSelCuentas, 1, COL_GetID )
.head 7 -  !
.head 7 -  Call SalTblSetColumnFlags( hwndColumna, COL_Editable, NOT pbProteger )
.head 7 -  !
.head 5 -  !
.head 5 +  Function: InsertNewRow
.head 6 -  Description: Inserta un nuevo row al final de la tabla.  Llama a la función
NewRowInserted() indicando a las clases derivadas o instancias que un
nuevo row ha sido insertado.
bValidar indica si se desea validar el último row (llamar a
RowValidate()) antes de permitir inserción.
Retorna TRUE si se tuvo éxito en la operación.
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Boolean: bValidar
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Number: nNewRow
.head 7 -  Window Handle: hwndCol1
.head 7 -  Boolean: bOk
.head 7 -  Number: bFlag
.head 7 -  Number: nMinRow
.head 7 -  Number: nMaxRow
.head 7 -  Number: nScrollPos
.head 7 -  Number: nCuentaCols
.head 6 +  Actions
.head 7 -  Set bOk = FALSE
.head 7 -  !
.head 7 -  Call ProtegerColumnas(FALSE)
.head 7 -  !
.head 7 -  Set nCuentaCols = 1
.head 7 -  ! ! Obtener el handle de la primera columna visible
.head 7 +  Loop
.head 8 -  Set hwndCol1 = SalTblGetColumnWindow( tblSelCuentas, nCuentaCols,
COL_GetID )
.head 8 +  If hwndCol1 = hWndNULL OR SalIsWindowVisible( hwndCol1 )
.head 9 -  Break
.head 8 +  Else
.head 9 -  Set nCuentaCols = nCuentaCols + 1
.head 7 -  Set nNewRow = SalTblInsertRow( tblSelCuentas, TBL_MaxRow )
.head 7 -  Call SalUpdateWindow( tblSelCuentas  )
.head 7 +  If nNewRow != TBL_Error
.head 8 -  Call SalTblSetFocusCell( tblSelCuentas, nNewRow, hwndCol1, 0, 0 )
.head 8 -  !
.head 8 -  Call SalTblSetRowFlags( tblSelCuentas, nNewRow, ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set bOk = TRUE
.head 7 +  Else
.head 8 -  Call SPSMessageBox(
'Error insertando un nuevo row en el table-window',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 7 -  !
.head 7 -  ! Se marca la columna como editada para que se haga validación y no se permita dejar en blanco.
.head 7 -  Call SalSetFieldEdit( tblSelCuentas.colCuentaCG, TRUE )
.head 7 -  !
.head 7 -  Return bOk
.head 5 +  Function: HacerDelRow
.head 6 -  Description: Procesa la solicitud de borrado de una linea.
.head 6 +  Returns
.head 7 +  Boolean:
.head 8 -  ! indicador del resultado; pudiendo ser:
TRUE si fue posible el borrado de la linea seleccionada
FALSE de lo contrario, o bien, si el usuario decide cancelar
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 +  Number: nRow1
.head 8 -  ! numero de linea
.head 7 +  Number: nRow2
.head 8 -  ! numero de linea
.head 7 +  Boolean: bMasDeUnRow
.head 8 -  ! indicador de borrado de mas de una linea
.head 7 +  String: sMensaje
.head 8 -  ! mensaje al usuario
.head 7 -  Boolean: lbOk
.head 6 +  Actions
.head 7 -  ! Primero se ve si hay mas de un row marcado para borrar
.head 7 -  Set nRow1 = TBL_MinRow
.head 7 -  ! Buscamos el primer row marcado
.head 7 +  If SalTblFindNextRow( tblSelCuentas, nRow1, ROW_Selected,
ROW_MarkDeleted | ROW_Hidden )
.head 8 -  Set nRow2 = nRow1
.head 8 -  ! Buscamos a ver si hay un segundo row marcado
.head 8 +  If SalTblFindNextRow( tblSelCuentas, nRow1, ROW_Selected,
ROW_MarkDeleted | ROW_Hidden )
.head 9 -  ! Ajustamos al bandera a si hay mas de un row
.head 9 +  If nRow1 != nRow2
.head 10 -  Set bMasDeUnRow = TRUE
.head 7 +  If bMasDeUnRow
.head 8 -  Call SPSMessageBox(
'Sólo puede eliminar una línea de la tabla a la vez.',
'Eliminación de Registros',
 MBF_IconHand, CONTINUAR )
.head 8 -  Return FALSE
.head 7 -  Set sMensaje = '¿Está seguro de que desea borrar esta línea?'
.head 7 +  If bMasDeUnRow
.head 8 -  Set sMensaje = '¿Está seguro de que desea borrar estas líneas?'
.head 7 +  If SPSMessageBox(
sMensaje,
'Advertencia',
MBF_IconQuestion,'&Borrar,&Cancelar' ) = MB_Button2
.head 8 -  Return FALSE
.head 7 -  !
.head 7 +  ! If NOT ..DeleteConfirm( )
.head 8 -  Return FALSE
.head 7 -  !
.head 7 -  !
.head 7 -  ! Borrar el row
.head 7 -  Set nRow1 = TBL_MinRow
.head 7 -  Set lbOk = SalTblFindNextRow( tblSelCuentas, nRow1, ROW_Selected,
ROW_MarkDeleted | ROW_Hidden )
.head 7 +  If lbOk
.head 8 -  Set lbOk = SalTblSetRowFlags( tblSelCuentas, nRow1,
ROW_MarkDeleted | ROW_Hidden, TRUE )
.head 8 -  !
.head 8 -  ! Si estaba marcada entonces se desmarca
.head 8 -  Set lbOk = SalTblSetRowFlags( tblSelCuentas, nRow1,
ROW_UnusedFlag1 , FALSE )
.head 7 -  !
.head 7 -  !
.head 7 -  ! Se limpia la tabla de entes auxiliar para que no quede con información de la cuenta recién borrada
.head 7 +  If lbOk
.head 8 -  !
.head 8 -  Call tblEntesAuxiliar.LimpiarTabla()
.head 7 -  !
.head 7 -  Return lbOk
.head 5 -  !
.head 4 -  Window Variables
.head 4 +  Message Actions
.head 5 +  On SAM_RowHeaderClick
.head 6 -  ! Solo se permite marcar el asiento si está activo el botón asociado
.head 6 -  Call MarcarCuenta( lParam )
.head 6 -  Call PoblarEnteAux(lParam)
.head 6 -  !
.head 5 +  On SAM_Click
.head 6 -  Call PoblarEnteAux(lParam)
.head 6 -  Call ProtegerColumnas(TRUE)
.head 5 +  On AM_ClassNewRow
.head 6 -  !
.head 6 -  Return InsertNewRow(TRUE)
.head 5 +  On AM_ClassDelRow
.head 6 -  !
.head 6 +  If nTotRows
.head 7 -  Call HacerDelRow()
.head 3 -  Group Separator
.head 4 -  Resource Id: 8829
.head 3 -  !
.head 3 -  Group Separator
.head 4 -  Resource Id: 8827
.head 3 +  Child Table: tblEntesAuxiliar
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6531000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsChldTblBusqueda
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 8.08"
.head 6 -  Top: 2.238"
.head 6 -  Width:  7.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 4.083"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  View: Class Default
.head 5 -  Allow Row Sizing? Class Default
.head 5 -  Lines Per Row: Class Default
.head 4 -  Memory Settings
.head 5 -  Maximum Rows in Memory: Class Default
.head 5 -  Discardable? Class Default
.head 4 +  Contents
.head 5 +  Column: colEnteAux
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: COLUMNA
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  2.62"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_SortCol
.head 8 -  ! Indica si se puede hacer ordenamiento sobre ella
.head 8 -  Return FALSE
.head 5 +  Column: colEnteAuxDesc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Descripción
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  4.08"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_SortCol
.head 8 -  ! Indica si se puede hacer ordenamiento sobre ella
.head 8 -  Return FALSE
.head 4 +  Functions
.head 5 -  !
.head 5 -  ! Redefinibles Obligatorias
.head 5 +  Function: InitTable
.head 6 -  Description: Función que debe ser redefinida por las clases u objetos derivados
para establecer los valores necesarios para el manejo de la tabla.

La función debe retornar los valores necesarios en los parámetros
que se detallan.

Las clases u objetos derivados deben retornar TRUE en esta función
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Receive String: sTabla		! Nombre de la tabla (en la BD) sobre la cual se realiza la búsqueda
.head 7 -  Receive String: sColumnas		! Nombre de las columnas (en la BD) para las columnas del table-window
.head 7 -  Receive String: sIntoVars		! Into-variables para popular la tabla.  Deben  ser los nombres de la columnas en el table-window
.head 7 -  Receive Window Handle: hwndDF	! Data-field de donde se toma el valor inicial y donde se pone el valor elegido  hWndNULL en caso de no ser para help
.head 7 -  Receive Boolean: bRestrict		! Indica si se debe popular la tabla de forma tal que incluya solamente los rows que inicien con el valor inicial de búsqueda
.head 7 -  Receive Boolean: bBusquedaExacta	! Indica que solo busca rows que cumplan exactamente con lo digitado
.head 7 -  Receive Boolean: bManejarVentana	! Indica si la clase se encarga de manejar la ventana cuando se realiza la selección de un row
.head 7 -  Receive Number: nFlags1
.head 7 -  Receive Number: nFlags2
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  !
.head 7 -  !
.head 7 -  !
.head 7 +  If isEnteAuxTabla
.head 8 -  Set sTabla = ConcatCompany( isEnteAuxTabla )
.head 7 +  Else
.head 8 -  Set sTabla = ConcatCompany( 'cuenta_contable' )
.head 7 -  !
.head 7 +  If isEnteAuxColumnas
.head 8 -  Set sColumnas = isEnteAuxColumnas
.head 7 +  Else
.head 8 -  Set sColumnas = 'cuenta_contable, descripcion'
.head 7 -  !
.head 7 -  Set sIntoVars = ' :colEnteAux, :colEnteAuxDesc '
.head 7 -  !
.head 7 -  Set hwndDF = hWndNULL
.head 7 -  Set bRestrict = FALSE
.head 7 -  Set bBusquedaExacta = TRUE
.head 7 -  Set bManejarVentana = FALSE
.head 7 -  !
.head 7 -  Set bPopulateOnCreate = FALSE
.head 7 -  !
.head 7 -  Return TRUE
.head 5 +  Function: GetOpcion
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar la
opción utilizada para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return 'Seleccción de Cuentas'
.head 5 +  Function: GetOrigen
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar el
origen utilizado para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return CG_ORIGEN || "tblEntesAuxiliar"
.head 5 +  Function: GetStatements
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  Function: GetVariables
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  ! Function: GetStatementsAndVars
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Long String: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Long String: ls1
.head 7 -  Long String: ls2
.head 7 -  Long String: lsTotal
.head 7 -  !
.head 7 -  Number: nPosMax
.head 6 +  Actions 
.head 7 -  !
.head 7 -  ! laar
.head 7 -  ! Set ls1 = ..GetStatements()
.head 7 -  Set ls1 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETSTATEMENTS ) )
.head 7 -  !
.head 7 -  ! Set ls2 = ..GetVariables()
.head 7 -  Set ls2 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETVARIABLES ) )
.head 7 -  !
.head 7 -  Set lsTotal = ls2 || ls1
.head 7 -  !
.head 7 -  ! Recortar el string al maximo permitido
.head 7 -  !
.head 7 -  Set nPosMax = SalStrLength( lsTotal ) - 1
.head 7 +  If nPosMax >  MAX_PREFERENCIA_LONG_SIZE
.head 8 -  Set nPosMax = VisStrScanReverse( lsTotal, MAX_PREFERENCIA_LONG_SIZE, LIST_SEPARATOR )
.head 8 -  Set lsTotal = SalStrLeftX( lsTotal, nPosMax )
.head 7 -  !
.head 7 -  Return lsTotal
.head 5 +  Function: CreateWHERE
.head 6 -  Description: Función para crear la porción where del comando sql para cargar la
tabla.
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  String: lsWhere
.head 7 -  Number: lnNumCols
.head 7 -  String: StringArray[*]
.head 6 +  Actions
.head 7 -  !
.head 7 -  !
.head 7 -  Set lnNumCols = SalStrTokenize ( isEnteAuxNombreCol, "", ",", StringArray )
.head 7 -  !
.head 7 +  While lnNumCols > 0
.head 8 -  !
.head 8 +  If lsWhere
.head 9 -  Set lsWhere = lsWhere || " OR " || StringArray[lnNumCols-1] || " = '" || tblSelCuentas.colCuentaCG || "'"
.head 8 +  Else
.head 9 -  Set lsWhere = " WHERE " || StringArray[lnNumCols-1] || " = '" || tblSelCuentas.colCuentaCG || "'"
.head 8 -  !
.head 8 -  Set lnNumCols = lnNumCols - 1
.head 7 -  !
.head 7 -  !
.head 7 -  Return lsWhere
.head 5 +  Function: RowPictures
.head 6 -  Description: Debe ser redefinido para asignar a los parámetros los valores
necesarios para manejar row-pictures.  Debe retornar TRUE en
la redefinición
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Receive Number: nRowFlag1
.head 7 -  Receive Number: nRowFlag2
.head 7 -  Receive Number: nRowFlag3
.head 7 -  Receive String: sResourceList
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set nRowFlag1 = ROW_UserFlag1
.head 7 -  Set nRowFlag2 = 0
.head 7 -  Set nRowFlag3 = 0
.head 7 -  Set sResourceList = 'picAsientoMarcado'
.head 7 -  Return TRUE
.head 5 +  Function: AfterInitTable
.head 6 -  Description: Función que es llamada después de inicializar la tabla, leer las
preferencias de la base de datos y popularla
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: GetWindowSizeAndLoc
.head 6 -  Description: Retorna el tamaño y la localización del top-level window
para guardarlo en la base de datos y después restaurar al entrar.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Receive Number: nWidth
.head 7 -  Receive Number: nHeight
.head 7 -  Receive Number: nX
.head 7 -  Receive Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalGetWindowSize( hWndTable, nWidth, nHeight )
.head 7 -  Call SalGetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: SetWindowSizeAndLoc
.head 6 -  Description: Cambia el tamaño y la localización del top-level window
después de leerlo de la base de datos.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Number: nWidth
.head 7 -  Number: nHeight
.head 7 -  Number: nX
.head 7 -  Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalSetWindowSize( hWndTable, nWidth,  nHeight )
.head 7 -  !
.head 7 -  ! Se comentan las llamadas para que compile
.head 7 -  Call SetWindowInVisiblePos( hWndTable,  nWidth,  nHeight, nX, nY )
.head 7 -  !
.head 7 -  Call SalSetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: AfterPopulate
.head 6 -  Description: Función que es llamada después de poblar el table-window
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: UsarDistinct
.head 6 -  Description: Se redefine para retornar TRUE indicando que se utilice la cláusula
DISTINCT para poblar la tabla eliminando registros duplicados.
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return FALSE
.head 5 +  Function: HacerBusquedaInicial
.head 6 -  Description: Hacer la búsqueda binaria inicial si se especifica un "string-digitado"
a la hora de creación de la tabla
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return TRUE
.head 5 +  Function: DevolverSeparador
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ','
.head 5 +  Function: UsarResultCount
.head 6 -  Description: Indica si se debe utilizar GetResultSetCount( ) en lugar de ejecutar un
COUNT(*) en la base de datos
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return FALSE
.head 5 +  Function: InicializarPreferencias
.head 6 -  Description: Se llama luego de leer y ejecutar las preferencias.
Se puede redefinir para establecer los valores iniciales y
poder restringir el result-set o configurar el ambiente inicial.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Boolean: bPrmExistenPreferencias
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: CambiarOrderBy
.head 6 -  Description: Permite incluir campos en el ordenamiento default que tiene la
tabla. Es muy útil en tablas que son hijas de otra y que siempre
deben ordenar por el código del maestro. Esto mejora la
eficiencia al popular la tabla, siempre que se tengan los índices
bien definidos.
Recibe la hilera de campos en el order by y para que se le
inserten los campos en el orden que se desee ( inicio o final )
Recordar que la variable nFirstColumn indica el ID de la columna
por la cual se ordena.
.head 6 +  Returns
.head 7 -  String:
.head 6 +  Parameters
.head 7 -  String: sPrmOrderBy
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return sPrmOrderBy
.head 5 +  Function: ColumnaDeRestriccion
.head 6 -  Description: Define la columna por la cual se ha de restringir el result-set de la tabla F1.
Redefinible a nivel de la instancia; basicamente para campos F1 que no se
han de restringir la columna de codigo (#1 siempre!) sino por descripcion o
alguna otra columna.
.head 6 +  Returns
.head 7 +  Number:
.head 8 -  ! valor numerico de la columna por la cual se restringe;
siendo 1 por default.
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
.head 7 -  Return 1
.head 5 +  Function: ModificaWhere
.head 6 -  Description: Agregada 05/06/2000 JCHAVES
Utilizada para la funcionalidad de códigos de barras.
Permite agregar al sWhereRestrict cláusulas adicionales antes de
concatenarle el sWhereClause
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  String: psStringDesde
.head 7 -  String: psStringHasta
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 -  !
.head 5 -  !
.head 4 -  Window Variables
.head 4 -  Message Actions
.head 3 -  Group Separator
.head 4 -  Resource Id: 8828
.head 3 -  !
.head 3 -  !
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  ! PASO 3 - Resumen del Cuadre entre CG y el Auxiliar
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  !
.head 3 -  Group Separator
.head 4 -  Resource Id: 8813
.head 3 +  Option Button: obMonedaLoc
.data CLASSPROPSSIZE
0000: 1F00
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000C00 4E616D6532094E61 6D653400000000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsOBMonedaLoc
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 14.76"
.head 5 -  Top: 1.69"
.head 5 -  Width:  0.38"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name: Moneda.bmp
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Button Style: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Call CambiarTipoMoneda()
.head 6 -  Call tblBalanceCtas.LoadTable(REG_NINGUNO, STRING_Null)
.head 3 +  Option Button: obMonedaDol
.data CLASSPROPSSIZE
0000: 1F00
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000C00 4E616D6532094E61 6D653400000000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsOBMonedaDol
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 15.16"
.head 5 -  Top: 1.69"
.head 5 -  Width:  0.38"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name: Money.bmp
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Button Style: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Call CambiarTipoMoneda()
.head 6 -  Call tblBalanceCtas.LoadTable(REG_NINGUNO, STRING_Null)
.head 5 -  On AM_CreateComplete
.head 3 -  Group Separator
.head 4 -  Resource Id: 8814
.head 3 -  !
.head 3 -  Background Text: Débitos
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 41385
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 3.82"
.head 5 -  Top: 2.071"
.head 5 -  Width:  3.66"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Diferencia:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 7327
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 2.38"
.head 5 -  Top: 2.929"
.head 5 -  Width:  1.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Registrados en CG producto
 del auxiliar:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 7330
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.68"
.head 5 -  Top: 2.238"
.head 5 -  Width:  2.9"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.31"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Registrados en el auxiliar
 y contabilizados:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 7329
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.68"
.head 5 -  Top: 2.56"
.head 5 -  Width:  2.9"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.31"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Directamente en CG:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 7328
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.28"
.head 5 -  Top: 3.762"
.head 5 -  Width:  3.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Producto de otro auxiliar:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 32112
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.58"
.head 5 -  Top: 4.012"
.head 5 -  Width:  3.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.177"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Total:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 8820
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 1.28"
.head 5 -  Top: 4.345"
.head 5 -  Width:  2.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.208"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Total:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 8819
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 1.28"
.head 5 -  Top: 5.726"
.head 5 -  Width:  2.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.208"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Créditos
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 41387
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 7.78"
.head 5 -  Top: 2.071"
.head 5 -  Width:  3.6"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Neto
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 41386
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 11.56"
.head 5 -  Top: 2.071"
.head 5 -  Width:  3.62"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  !
.head 3 -  !
.head 3 -  !
.head 3 -  ! clsStdGroupBox: (class default)
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65300000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.winattr class Group Box:
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 2.983"
.head 5 -  Top: 0.243"
.head 5 -  Width:  6.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.247"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Font Name: Tahoma
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  ! clsStdGroupBox: (class default)
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6535000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.winattr class Group Box:
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 2.95"
.head 5 -  Top: 0.243"
.head 5 -  Width:  6.133"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.163"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Font Name: Tahoma
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  Background Text: Resumen del Cuadre
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 25975
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: -0.02"
.head 5 -  Top: 0.238"
.head 5 -  Width:  16.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.31"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Bold-Underline
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Balance de las Cuentas
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6534000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 41003
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.08"
.head 5 -  Top: 0.488"
.head 5 -  Width:  15.9"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Bold-Underline
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Detalle de Movimientos para Análisis
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6533000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 8825
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: -0.02"
.head 5 -  Top: 0.238"
.head 5 -  Width:  16.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.31"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Bold-Underline
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  !
.head 3 -  Group Box:
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 7324
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.28"
.head 5 -  Top: 1.905"
.head 5 -  Width:  15.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.5"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Group Box:
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 8818
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.28"
.head 5 -  Top: 3.321"
.head 5 -  Width:  15.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.333"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Group Box:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 8824
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.28"
.head 5 -  Top: 4.571"
.head 5 -  Width:  15.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.417"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 3 -  !
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  ! Primer Cuadro!
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 +  ! clsdfDecimalCGNoEdit: dfResContaDebLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 +  Message Actions 
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else 
.head 7 -  !
.head 7 -  Set vsItemResumen = 'dfResContaDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResContaDebLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.88"
.head 6 -  Top: 2.274"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResContaDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 5 -  ! On AM_Click
.head 3 +  Data Field: dfResContaCredLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.78"
.head 6 -  Top: 2.274"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 -  !
.head 5 -  !
.head 5 -  ! Para manejo del Click Derecho
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResContaCredLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResContaNeto
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 11.58"
.head 6 -  Top: 2.274"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResContaNeto'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 -  !
.head 3 +  Data Field: dfResAuxDebLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.88"
.head 6 -  Top: 2.583"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResAuxDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResAuxCredLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.78"
.head 6 -  Top: 2.583"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResAuxCredLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResAuxNeto
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 11.58"
.head 6 -  Top: 2.583"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResAuxNeto'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 -  !
.head 3 +  Data Field: dfResDifDebLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.88"
.head 6 -  Top: 2.905"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResDifDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResDifCredLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.78"
.head 6 -  Top: 2.905"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResDifCredLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResDifNeto
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 11.58"
.head 6 -  Top: 2.905"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResDifNeto'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 -  !
.head 3 -  !
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  ! Segundo Cuadro!
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  !
.head 3 +  Data Field: dfResCGDebLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.88"
.head 6 -  Top: 3.679"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResCGDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResCGCredLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.78"
.head 6 -  Top: 3.679"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResCGCredLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResCGNetoLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 11.58"
.head 6 -  Top: 3.679"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResCGNetoLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 -  !
.head 3 +  Data Field: dfResOtrosDebLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.88"
.head 6 -  Top: 3.964"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResOtrosDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResOtrosCredLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.78"
.head 6 -  Top: 3.964"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResOtrosCredLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResOtrosNetoLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 11.58"
.head 6 -  Top: 3.964"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = TRUE
.head 7 -  Set vsItemResumen = 'dfResOtrosNetoLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 -  !
.head 3 +  Data Field: dfResTotCGDebLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.88"
.head 6 -  Top: 4.31"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResTotCGDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResTotCGCredLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.78"
.head 6 -  Top: 4.31"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResTotCGCredLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResTotCGNetoLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 11.58"
.head 6 -  Top: 4.321"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResTotCGNetoLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 -  !
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  ! Tercer Cuadro!
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  !
.head 3 -  Background Text: No contabilizados:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 32111
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 1.18"
.head 5 -  Top: 5.179"
.head 5 -  Width:  2.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Movimientos Registrados en el Auxiliar
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 45764
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.46"
.head 5 -  Top: 4.75"
.head 5 -  Width:  4.42"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Left
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Bold-Underline
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Movimientos Registrados en CG
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 45763
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.46"
.head 5 -  Top: 3.5"
.head 5 -  Width:  3.72"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Left
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Bold-Underline
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  Background Text: Movimientos Asociados
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 45765
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.46"
.head 5 -  Top: 2.071"
.head 5 -  Width:  3.8"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Left
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Bold-Underline
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 +  Data Field: dfResAuxNCDebLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.88"
.head 6 -  Top: 5.095"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResAuxNCDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResAuxNCCredLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.78"
.head 6 -  Top: 5.095"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResAuxNCCredLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResAuxNCNetoLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 11.58"
.head 6 -  Top: 5.095"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResAuxNCNetoLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 -  !
.head 3 -  Background Text: Contabilizados fuera del período:
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 8815
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.28"
.head 5 -  Top: 5.429"
.head 5 -  Width:  3.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 +  Data Field: dfResAuxFPDebLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.88"
.head 6 -  Top: 5.369"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResAuxFPDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResAuxFPCredLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.78"
.head 6 -  Top: 5.369"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResAuxFPCredLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResAuxFPNetoLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 11.58"
.head 6 -  Top: 5.369"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResAuxFPNetoLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 5 +  On AM_Create
.head 6 -  Call SalFmtFormatNumber( dfResAuxFPNetoLoc, FormatoDecimales(  ) )
.head 3 -  !
.head 3 +  Data Field: dfResAuxTotalDebLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.88"
.head 6 -  Top: 5.702"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResAuxTotalDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResAuxTotalCredLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.78"
.head 6 -  Top: 5.702"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResAuxTotalCredLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Data Field: dfResAuxTotalNetoLoc
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 11.58"
.head 6 -  Top: 5.702"
.head 6 -  Width:  3.6"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Border? Class Default
.head 5 -  Justify: Right
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set bMostrarDetalleCuentas = FALSE
.head 7 -  Set vsItemResumen = 'dfResAuxTotalNetoLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 -  !
.head 3 -  !
.head 3 -  !
.head 3 -  !
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  ! PASO 5 - Detalle de Movimientos para Análisis
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  !
.head 3 -  ! Child Window - Cuadre Conta
.head 3 -  Background Text: Detalle de Movimientos de la Contabilidad
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6533000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 42043
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.18"
.head 5 -  Top: 1.821"
.head 5 -  Width:  7.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: None
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 +  Pushbutton: pbExcelCuadreConta
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6533000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbuttonExcel
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.4"
.head 5 -  Top: 2.107"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: White
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  !
.head 6 -  Call SalSendMsg( tblCuadreConta, AM_SendTableDataToExcel, 0, 0 )
.head 3 +  Child Table: tblCuadreConta
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6533000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsChldTblBusqueda
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 0.18"
.head 6 -  Top: 2.429"
.head 6 -  Width:  7.3"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 3.976"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  View: Class Default
.head 5 -  Allow Row Sizing? Class Default
.head 5 -  Lines Per Row: Class Default
.head 4 -  Memory Settings
.head 5 -  Maximum Rows in Memory: Class Default
.head 5 -  Discardable? Class Default
.head 4 +  Contents
.head 5 +  Column: colContaAsiento
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Transacción Contable
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaLinea
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Linea
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaUbicacion
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Ubicacion
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_ColFetchRowDone
.head 8 -  !
.head 8 +  If colContaUbicacion = DIARIO
.head 9 -  Set colContaUbicacion = _DIARIO
.head 8 +  Else If colContaUbicacion = MAYOR
.head 9 -  Set colContaUbicacion = _MAYOR
.head 8 +  Else
.head 9 -  Set colContaUbicacion = NINGUNO
.head 7 +  On AM_CanChange
.head 8 -  Return TRUE
.head 5 +  Column: colContaOrigen
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Origen
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaContabilidad
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Contabilidad
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_CanChange
.head 8 -  Return TRUE
.head 7 +  On AM_ColFetchRowDone
.head 8 -  !
.head 8 +  If colContaContabilidad = CONTA_CORP
.head 9 -  Set colContaContabilidad = NOMBRE_CONTA_CORP
.head 8 +  Else If colContaContabilidad = CONTA_FISCAL
.head 9 -  Set colContaContabilidad = NOMBRE_CONTA_FISCAL
.head 9 -  !
.head 8 +  Else If colContaContabilidad = CONTA_AMBAS
.head 9 -  Set colContaContabilidad = NOMBRE_CONTA_AMBAS
.head 8 +  Else
.head 9 -  Set colContaContabilidad = NINGUNO
.head 8 -  !
.head 8 -  !
.head 5 +  Column: colContaFecha
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Fecha
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Date/Time
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: dd-MM-yyyy
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaCuenta
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Cuenta Contable
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaCuentaDesc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Descripción Cuenta
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaCentro
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Centro de Costo
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaCentroDesc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Descripción Centro
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaNIT
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: NIT
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaNITDesc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Razón Social
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaFuente
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Fuente
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaReferencia
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Referencia
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colContaDebitoLoc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Débito Local
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Right
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( colContaDebitoLoc, FormatoDecimales(  ) )
.head 5 +  Column: colContaDebitoDol
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Débito Dólar
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Right
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( colContaDebitoDol, FormatoDecimales(  ) )
.head 5 +  Column: colContaCreditoLoc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Crédito Local
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Right
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( colContaCreditoLoc, FormatoDecimales(  ) )
.head 5 +  Column: colContaCreditoDol
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Crédito Dólar
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Right
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( colContaCreditoDol, FormatoDecimales(  ) )
.head 5 +  Column: colContaRowPointer
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolInvisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: RowPointer
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colContaGUIDConta
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolInvisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Cuadre_Conta_Aux.GUIDConta
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: String
.head 6 -  Justify: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_CanChange
.head 8 -  Return TRUE
.head 7 +  On AM_ColFetchRowDone
.head 8 -  !
.head 8 +  If NOT (colContaGUIDConta = STRING_Null)
.head 9 -  !
.head 9 -  Call SalTblSetRowFlags( tblCuadreConta, lParam, ROW_UnusedFlag1, TRUE )
.head 9 -  !
.head 8 -  !
.head 8 -  !
.head 5 -  !
.head 4 +  Functions
.head 5 -  !
.head 5 -  ! Redefinibles Obligatorias
.head 5 +  Function: InitTable
.head 6 -  Description: Función que debe ser redefinida por las clases u objetos derivados
para establecer los valores necesarios para el manejo de la tabla.

La función debe retornar los valores necesarios en los parámetros
que se detallan.

Las clases u objetos derivados deben retornar TRUE en esta función
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Receive String: sTabla		! Nombre de la tabla (en la BD) sobre la cual se realiza la búsqueda
.head 7 -  Receive String: sColumnas		! Nombre de las columnas (en la BD) para las columnas del table-window
.head 7 -  Receive String: sIntoVars		! Into-variables para popular la tabla.  Deben  ser los nombres de la columnas en el table-window
.head 7 -  Receive Window Handle: hwndDF	! Data-field de donde se toma el valor inicial y donde se pone el valor elegido  hWndNULL en caso de no ser para help
.head 7 -  Receive Boolean: bRestrict		! Indica si se debe popular la tabla de forma tal que incluya solamente los rows que inicien con el valor inicial de búsqueda
.head 7 -  Receive Boolean: bBusquedaExacta	! Indica que solo busca rows que cumplan exactamente con lo digitado
.head 7 -  Receive Boolean: bManejarVentana	! Indica si la clase se encarga de manejar la ventana cuando se realiza la selección de un row
.head 7 -  Receive Number: nFlags1
.head 7 -  Receive Number: nFlags2
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalTblSetColumnTitle( colContaAsiento, fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ) )
.head 7 -  !
.head 7 -  !
.head 7 +  ! MRL CR2-14074-75M0-1 -->
.head 8 +  ! MRL S2B31523 -->
.head 9 -  ! Set sTabla = ConcatCompany( 'CUADRE_CONTA CC ' )
.head 8 -  ! Set sTabla = ConcatCompany( 'CUADRE_CONTA CC, ' ) || ConcatCompany( 'CUADRE_AUX CA ' ) 
.head 7 -  Set sTabla = ConcatCompany( 'CUADRE_AUX CA, ' )  || ConcatCompany( 'CUADRE_CONTA CC ' )
.head 7 -  ! MRL CR2-14074-75M0-1 <--
.head 7 -  !
.head 7 -  Set sColumnas = ' CC.ASIENTO, CC.LINEA, CC.UBICACION, CC.ORIGEN, CC.CONTABILIDAD, CC.FECHA, 
		CC.CUENTA, CC.CUENTA_DESC, CC.CENTRO, CC.CENTRO_DESC, CC.NIT, CC.NIT_DESC, 
		CC.FUENTE, CC.REFERENCIA, CC.DEBITO_LOC, CC.DEBITO_DOL, CC.CREDITO_LOC, CC.CREDITO_DOL, 
		CC.ROWPOINTER, CCA.GUID_CONTA '
.head 7 -  Set sIntoVars = ':colContaAsiento, :colContaLinea, :colContaUbicacion, :colContaOrigen, :colContaContabilidad, :colContaFecha,
	:colContaCuenta, :colContaCuentaDesc, :colContaCentro, :colContaCentroDesc, :colContaNIT, :colContaNITDesc,
	:colContaFuente, :colContaReferencia, :colContaDebitoLoc, :colContaDebitoDol,  :colContaCreditoLoc, :colContaCreditoDol,
	 :colContaRowPointer, :colContaGUIDConta '
.head 7 -  !
.head 7 -  Set hwndDF = hWndNULL
.head 7 -  Set bRestrict = FALSE
.head 7 -  Set bBusquedaExacta = TRUE
.head 7 -  Set bManejarVentana = FALSE
.head 7 -  !
.head 7 -  Set bPopulateOnCreate = FALSE
.head 7 -  !
.head 7 -  !
.head 7 -  Return TRUE
.head 5 +  Function: GetOpcion
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar la
opción utilizada para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return 'Cuadre Conta'
.head 5 +  Function: GetOrigen
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar el
origen utilizado para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return CG_ORIGEN || "tblCuadreConta"
.head 5 +  Function: GetStatements
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  Function: GetVariables
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  ! Function: GetStatementsAndVars
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Long String: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Long String: ls1
.head 7 -  Long String: ls2
.head 7 -  Long String: lsTotal
.head 7 -  !
.head 7 -  Number: nPosMax
.head 6 +  Actions 
.head 7 -  !
.head 7 -  ! laar
.head 7 -  ! Set ls1 = ..GetStatements()
.head 7 -  Set ls1 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETSTATEMENTS ) )
.head 7 -  !
.head 7 -  ! Set ls2 = ..GetVariables()
.head 7 -  Set ls2 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETVARIABLES ) )
.head 7 -  !
.head 7 -  Set lsTotal = ls2 || ls1
.head 7 -  !
.head 7 -  ! Recortar el string al maximo permitido
.head 7 -  !
.head 7 -  Set nPosMax = SalStrLength( lsTotal ) - 1
.head 7 +  If nPosMax >  MAX_PREFERENCIA_LONG_SIZE
.head 8 -  Set nPosMax = VisStrScanReverse( lsTotal, MAX_PREFERENCIA_LONG_SIZE, LIST_SEPARATOR )
.head 8 -  Set lsTotal = SalStrLeftX( lsTotal, nPosMax )
.head 7 -  !
.head 7 -  Return lsTotal
.head 5 +  Function: CreateWHERE
.head 6 -  Description: Función para crear la porción where del comando sql para cargar la
tabla.
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 +  String: lsWhere
.head 8 -  ! Cláusula WHERE
.head 7 -  String: lsFiltroConta
.head 7 -  !
.head 7 -  String: lsValoresEvaluados
.head 7 -  ! Filtro 
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! JOIN entre Tablas
.head 7 -  Set lsWhere = " LEFT OUTER JOIN " || ConcatCompany( 'CUADRE_CONTA_AUX CCA' ) || 
	" ON CC.ROWPOINTER = CCA.GUID_CONTA  WHERE 1=1 "
.head 7 -  !
.head 7 +  If NOT vnCodigoCuadre = NUMBER_Null
.head 8 -  !
.head 8 -  Set lsWhere = lsWhere || " AND CC.CUADRES_CG	= :vnCodigoCuadre "
.head 7 -  !
.head 7 -  ! Se Asigna el Filtro Correspondiente según las variables de la tabla
.head 7 +  If TRUE
.head 8 -  !
.head 8 -  ! TAQ > CR4-17604-QSWF
.head 8 -  Set lsFiltroConta = GetStringWhere( 'CC.ASIENTO' , isAsientoIni, isAsientoFin )
.head 8 -  ! TAQ < CR4-17604-QSWF
.head 8 -  !
.head 8 -  ! MRL #31523 -->
.head 8 -  ! Se agrega alias de la tabla a la columna FECHA
.head 8 -  Set lsFiltroConta = lsFiltroConta ||  GetDateTimeWhere( 'CC.FECHA' , idtFechaIni,
	                idtFechaFin, 'tblCuadreConta.idtFechaIni',  'tblCuadreConta.idtFechaFin' )
.head 8 -  ! MRL #31523 <--
.head 8 -  !
.head 8 +  If isOrigen
.head 9 -  Set lsFiltroConta = lsFiltroConta ||
     " AND CC.ORIGEN IN ( " || isOrigen || " ) "
.head 8 -  !
.head 8 +  If isNOTOrigen
.head 9 -  Set lsFiltroConta = lsFiltroConta ||
     " AND CC.ORIGEN NOT IN ( " || isNOTOrigen || " ) "
.head 8 -  !
.head 8 +  If isMovimientos
.head 9 -  !
.head 9 +  If isMovimientos = CG_TODOS
.head 10 -  ! No se debe hacer filtro, por omisión van todos
.head 9 +  Else If isMovimientos = CG_ASOCIADOS
.head 10 -  !
.head 10 -  Set lsFiltroConta = lsFiltroConta || " AND CCA.GUID_CONTA IS NOT NULL "

.head 9 +  Else If isMovimientos = CG_NO_ASOCIADOS
.head 10 -  !
.head 10 -  Set lsFiltroConta = lsFiltroConta || " AND CCA.GUID_CONTA IS NULL "

.head 9 +  Else If isMovimientos = CG_ASOCIADOS_DIF
.head 10 -  !
.head 10 -  ! Set lsFiltroConta = lsFiltroConta || " AND SQLDecode('CC.DEBITO_LOC', 'NUM', 'NULL',  )
.head 10 -  ! MRL S2B31523 -->
.head 10 -  Set lsFiltroConta = lsFiltroConta || " AND CCA.GUID_CONTA IS NOT NULL 
AND CC.CUADRES_CG = CA.CUADRES_CG AND CC.ASIENTO = CA.ASIENTO
AND ((CC.DEBITO_LOC != CA.DEBITO_LOC) OR (CC.DEBITO_DOL != CA.DEBITO_DOL) 
OR (CC.CREDITO_LOC != CA.CREDITO_LOC) OR (CC.CREDITO_DOL != CA.CREDITO_DOL))"
.head 10 -  ! MRL S2B31523 <--
.head 10 -  !
.head 10 -  !
.head 8 -  !
.head 8 +  If isDebitosCreditos = AMBAS
.head 9 -  ! No hay que hacer nada, se muestran tanto débitos como créditos
.head 8 +  Else If isDebitosCreditos = DEBITO
.head 9 -  ! Se muestran solo Débitos
.head 9 -  ! MRL #31523 -->
.head 9 -  ! Se coloca el alias de la tabla a las columnas
.head 9 -  Set lsFiltroConta = lsFiltroConta ||
     " AND (CC.DEBITO_LOC IS NOT NULL OR CC.DEBITO_DOL IS NOT NULL  )"
.head 9 -  !
.head 8 +  Else If isDebitosCreditos = CREDITO
.head 9 -  ! Se muestran solo Créditos
.head 9 -  Set lsFiltroConta = lsFiltroConta ||
     " AND (CC.CREDITO_LOC IS NOT NULL OR CC.CREDITO_DOL IS NOT NULL  )"
.head 9 -  ! MRL #31523 <--
.head 8 -  !
.head 8 +  If isDiarioMayor = AMBAS
.head 9 -  ! No hay que hacer nada, se muestran tanto los asientos en el DIARIO como los del MAYOR
.head 8 +  Else If isDiarioMayor = DIARIO
.head 9 -  ! Se muestran solo los asientos en el DIARIO
.head 9 -  ! MRL #31523 -->
.head 9 -  ! Se coloca el alias de la tabla a la columna UBICACION
.head 9 -  Set lsFiltroConta = lsFiltroConta ||
     " AND CC.UBICACION = '" || DIARIO || "' "
.head 9 -  ! MRL #31523 <--
.head 8 +  Else If isDiarioMayor = MAYOR
.head 9 -  !
.head 9 -  ! Se muestran solo los asientos en el MAYOR
.head 9 -  ! MRL #31523 -->
.head 9 -  ! Se coloca el alias de la tabla a la columna UBICACION
.head 9 -  Set lsFiltroConta = lsFiltroConta ||
     " AND CC.UBICACION = '" || MAYOR || "' "
.head 9 -  ! MRL #31523 <--
.head 7 -  !
.head 7 -  !
.head 7 +  If lsFiltroConta
.head 8 +  If lsWhere
.head 9 -  !
.head 9 -  Set lsWhere = lsWhere || lsFiltroConta
.head 8 +  Else
.head 9 -  !
.head 9 -  Set lsWhere = " WHERE 1=1 " || lsFiltroConta
.head 7 -  !
.head 7 -  Return lsWhere
.head 5 +  ! Function: RowPictures
.head 6 -  Description: Debe ser redefinido para asignar a los parámetros los valores
necesarios para manejar row-pictures.  Debe retornar TRUE en
la redefinición
.head 6 +  Returns 
.head 7 -  Boolean: 
.head 6 +  Parameters 
.head 7 -  Receive Number: nRowFlag1
.head 7 -  Receive Number: nRowFlag2
.head 7 -  Receive Number: nRowFlag3
.head 7 -  Receive String: sResourceList
.head 6 -  Static Variables 
.head 6 -  Local variables 
.head 6 +  Actions 
.head 7 -  Set nRowFlag1 = ROW_UserFlag1
.head 7 -  Set nRowFlag2 = 0
.head 7 -  Set nRowFlag3 = 0
.head 7 -  Set sResourceList = 'picAsientoMarcado'
.head 7 -  Return TRUE
.head 5 +  Function: AfterInitTable
.head 6 -  Description: Función que es llamada después de inicializar la tabla, leer las
preferencias de la base de datos y popularla
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: GetWindowSizeAndLoc
.head 6 -  Description: Retorna el tamaño y la localización del top-level window
para guardarlo en la base de datos y después restaurar al entrar.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Receive Number: nWidth
.head 7 -  Receive Number: nHeight
.head 7 -  Receive Number: nX
.head 7 -  Receive Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalGetWindowSize( hWndTable, nWidth, nHeight )
.head 7 -  Call SalGetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: SetWindowSizeAndLoc
.head 6 -  Description: Cambia el tamaño y la localización del top-level window
después de leerlo de la base de datos.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Number: nWidth
.head 7 -  Number: nHeight
.head 7 -  Number: nX
.head 7 -  Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalSetWindowSize( hWndTable, nWidth,  nHeight )
.head 7 -  !
.head 7 -  ! Se comentan las llamadas para que compile
.head 7 -  Call SetWindowInVisiblePos( hWndTable,  nWidth,  nHeight, nX, nY )
.head 7 -  !
.head 7 -  Call SalSetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: AfterPopulate
.head 6 -  Description: Función que es llamada después de poblar el table-window
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: UsarDistinct
.head 6 -  Description: Se redefine para retornar TRUE indicando que se utilice la cláusula
DISTINCT para poblar la tabla eliminando registros duplicados.
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return TRUE
.head 5 +  Function: HacerBusquedaInicial
.head 6 -  Description: Hacer la búsqueda binaria inicial si se especifica un "string-digitado"
a la hora de creación de la tabla
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return TRUE
.head 5 +  Function: DevolverSeparador
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ','
.head 5 +  Function: UsarResultCount
.head 6 -  Description: Indica si se debe utilizar GetResultSetCount( ) en lugar de ejecutar un
COUNT(*) en la base de datos
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return FALSE
.head 5 +  Function: InicializarPreferencias
.head 6 -  Description: Se llama luego de leer y ejecutar las preferencias.
Se puede redefinir para establecer los valores iniciales y
poder restringir el result-set o configurar el ambiente inicial.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Boolean: bPrmExistenPreferencias
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: CambiarOrderBy
.head 6 -  Description: Permite incluir campos en el ordenamiento default que tiene la
tabla. Es muy útil en tablas que son hijas de otra y que siempre
deben ordenar por el código del maestro. Esto mejora la
eficiencia al popular la tabla, siempre que se tengan los índices
bien definidos.
Recibe la hilera de campos en el order by y para que se le
inserten los campos en el orden que se desee ( inicio o final )
Recordar que la variable nFirstColumn indica el ID de la columna
por la cual se ordena.
.head 6 +  Returns
.head 7 -  String:
.head 6 +  Parameters
.head 7 -  String: sPrmOrderBy
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return sPrmOrderBy
.head 5 +  Function: ColumnaDeRestriccion
.head 6 -  Description: Define la columna por la cual se ha de restringir el result-set de la tabla F1.
Redefinible a nivel de la instancia; basicamente para campos F1 que no se
han de restringir la columna de codigo (#1 siempre!) sino por descripcion o
alguna otra columna.
.head 6 +  Returns
.head 7 +  Number:
.head 8 -  ! valor numerico de la columna por la cual se restringe;
siendo 1 por default.
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
.head 7 -  Return 1
.head 5 +  Function: ModificaWhere
.head 6 -  Description: Agregada 05/06/2000 JCHAVES
Utilizada para la funcionalidad de códigos de barras.
Permite agregar al sWhereRestrict cláusulas adicionales antes de
concatenarle el sWhereClause
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  String: psStringDesde
.head 7 -  String: psStringHasta
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 -  !
.head 5 -  !
.head 5 -  ! Otras Funciones
.head 5 -  !
.head 5 +  Function: SelectRows
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! Llama al Filtro
.head 7 -  !
.head 7 +  If SalModalDialog( dlgFiltroCuadreConta, hWndForm, 
	isAsientoIni, isAsientoFin, 
	isCuentaIni, isCuentaFin, 
	idtFechaIni, idtFechaFin, 
	isOrigen, isNOTOrigen, 
	isContabilidad, isMovimientos, isDebitosCreditos, isDiarioMayor )
.head 8 -  !
.head 8 -  ! Vuelve a poblar la tabla con el filtro seleccionado (Nótese que en el CreateWHERE() se debe ajustar el Filtro)
.head 8 -  Call LimiteSeleccion( CreateWHERE() )
.head 8 -  !
.head 8 -  Call SalSendMsg( hWndForm, AM_ResultSetRestricted, 1, 0 )
.head 7 +  Else
.head 8 -  Call SalSendMsg( hWndForm, AM_ResultSetRestricted, 0, 0 )
.head 7 -  !
.head 5 -  !
.head 5 +  Function: RowPictures
.head 6 -  Description: Debe ser redefinido para asignar a los parámetros los valores
necesarios para manejar row-pictures.  Debe retornar TRUE en
la redefinición
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Receive Number: nRowFlag1
.head 7 -  Receive Number: nRowFlag2
.head 7 -  Receive Number: nRowFlag3
.head 7 -  Receive String: sResourceList
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set nRowFlag1 = ROW_UserFlag1
.head 7 -  Set nRowFlag2 = 0
.head 7 -  Set nRowFlag3 = 0
.head 7 -  Set sResourceList = 'picLink'
.head 7 -  Return TRUE
.head 5 -  !
.head 5 +  Function: ClearFiltro
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  Set isAsientoIni = STRING_Null
.head 7 -  Set isAsientoFin = STRING_Null
.head 7 -  !
.head 7 -  Set isCuentaIni = STRING_Null
.head 7 -  Set isCuentaFin = STRING_Null
.head 7 -  !
.head 7 -  Set isOrigen = STRING_Null
.head 7 -  Set isNOTOrigen = STRING_Null
.head 7 -  !
.head 7 -  Set isContabilidad = STRING_Null
.head 7 -  Set isMovimientos = STRING_Null
.head 7 -  !
.head 7 -  Set idtFechaIni = DATETIME_Null
.head 7 -  Set idtFechaFin = DATETIME_Null
.head 7 -  !
.head 7 -  Set isDiarioMayor = STRING_Null
.head 7 -  !
.head 4 +  Window Variables
.head 5 -  !
.head 5 -  ! Variables para Filtros
.head 5 -  String: isAsientoIni
.head 5 -  String: isAsientoFin
.head 5 -  !
.head 5 -  String: isCuentaIni
.head 5 -  String: isCuentaFin
.head 5 -  !
.head 5 -  Date/Time: idtFechaIni
.head 5 -  Date/Time: idtFechaFin
.head 5 -  !
.head 5 -  String: isOrigen
.head 5 -  String: isNOTOrigen
.head 5 -  String: isContabilidad
.head 5 -  String: isMovimientos
.head 5 -  String: isDebitosCreditos
.head 5 -  String: isDiarioMayor
.head 5 -  !
.head 4 +  Message Actions
.head 5 +  On AM_ClassDoQuery
.head 6 -  !
.head 6 -  Return tblCuadreConta.SelectRows()
.head 5 +  On AM_ResultSetRestricted
.head 6 -  ! Indicación de que el result-set fue restringuido
.head 6 -  ! Cambiar el botón de "buscar" para indicar esto
.head 6 +  If wParam
.head 7 -  Call SalPicSet( pbFiltroCuadreConta, BuscarX, PIC_FormatBitmap )
.head 6 +  Else
.head 7 -  Call SalPicSet( pbFiltroCuadreConta, Buscar, PIC_FormatBitmap )
.head 5 -  !
.head 5 +  On AM_ClassSelectColumns
.head 6 -  !
.head 6 -  ! Call SalModalDialog( dlgSelectColumnas, hWndForm, tblCuadreConta, '' )
.head 6 -  ! ! 600R1: INI: Mejora de dialogo de selección
.head 6 -  Call MostrarSeleccionColumnas( tblCuadreConta, '' )
.head 6 -  ! ! 600R1: FIN
.head 5 +  On AM_MostrarAsociados
.head 6 -  !
.head 6 -  Call MostarDocumentoAsociado(
			tblCuadreConta.colContaRowPointer,
			fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ) || ": " || tblCuadreConta.colContaAsiento || " - Linea: " ||  tblCuadreConta.colContaLinea,
			tblCuadreConta.colContaDebitoLoc,
			tblCuadreConta.colContaDebitoDol,
			tblCuadreConta.colContaCreditoLoc,
			tblCuadreConta.colContaCreditoDol,
			CONTA )
.head 5 +  On AM_AsociarMovimiento
.head 6 -  !
.head 6 -  Call AsociarMovimiento()
.head 5 +  On AM_DesAsociarMovimiento
.head 6 -  !
.head 6 -  Call DesAsociarMovimiento(TRUE)
.head 5 -  !
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGCuadreAux',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Pushbutton: pbExcelBalCtas
.data CLASSPROPSSIZE
0000: 1F00
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000C00 4E616D6532094E61 6D653400000000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbuttonExcel
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 14.26"
.head 5 -  Top: 1.69"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set sStatusText = 'Reporte de Balance de Cuentas en Excel'
.head 6 -  !
.head 6 -  Call InitTip( 'Reporte en Excel' )
.head 5 +  On SAM_Click
.head 6 -  !
.head 6 +  If dlgCGAuxWiz.nCurrentTab = nTABPaso5
.head 7 -  Call SalSendMsg( tblBalanceCtas, AM_SendTableDataToExcel, 0, 0 )
.head 6 +  Else If dlgCGAuxWiz.nCurrentTab = nTABPaso3
.head 7 -  Call SalSendMsg( tblResumenCuadre, AM_SendTableDataToExcel, 0, 0 )
.head 6 +  Else
.head 7 -  !
.head 6 -  !
.head 3 +  Pushbutton: pbColumnsCuadreConta
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: PushbuttonColumns
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.9"
.head 5 -  Top: 2.107"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: 3D Highlight Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 -  !
.head 5 +  On AM_Click
.head 6 +  ! EFECTOS
.head 7 -   Envía a la ventana padre el AM_ClassSelectColumns
.head 6 -  !
.head 6 -  Call SalSendMsg( tblCuadreConta, AM_ClassSelectColumns, 0, 0 )
.head 6 -  !
.head 6 -  ! Call SalModalDialog( dlgSelectColumnas, hWndForm, tblCuadreConta, '' )
.head 3 +  Pushbutton: pbVerAsientoCuadreConta
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbuttonBase
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.9"
.head 5 -  Top: 2.107"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name: Select.bmp
.head 4 -  Picture Transparent Color: White
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set sStatusText = 'Visualizar la información de la transacción contable del documento seleccionado'
.head 6 -  Call InitTip( 'Ver '  || fciGlobalesCG.NombreAsiento( FALSE, FALSE, FALSE ) || ' contable' )
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  ! Llamado a  la funcion que toma la informacion del de documento
.head 6 -  !
.head 6 +  If tblCuadreConta.colContaAsiento
.head 7 -  Call DesplegarAsiento(tblCuadreConta.colContaAsiento)
.head 6 +  Else
.head 7 -  Call SPSMessageBox(
'Hubo un error al tratar de visualizar '  || fciGlobalesCG.NombreAsiento( FALSE, FALSE, TRUE ) || ' contable.',
'Ver '  || fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ) || ' Contable - Movimientos de la Contabilidad',
MBF_IconHand, CONTINUAR )
.head 3 +  Pushbutton: pbFiltroCuadreConta
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: PushbuttonBuscar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.4"
.head 5 -  Top: 2.107"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Click
.head 6 +  ! EFECTOS
.head 7 -   Envía a la ventana padre el AM_ClassDoQuery
.head 6 -  !
.head 6 -  Call SalSendMsg( tblCuadreConta, AM_ClassDoQuery, 0, 0 )
.head 3 +  Pushbutton: pbCambiarVista
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbuttonBase
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 15.06"
.head 5 -  Top: 1.774"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name: devolver.BMP
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: 3D Face Color
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set sStatusText = 'Cambiar el modo de visualización de la ventana'
.head 6 -  Call InitTip( 'Cambiar la vista' )
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Set vbVertical = NOT vbVertical
.head 6 -  Call AcomodaCuadros()
.head 3 +  ! PushbuttonRefrescar: pbRefrescarCuadreConta
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 +  Message Actions 
.head 5 +  On AM_Click
.head 6 +  ! EFECTOS
.head 7 -   Envía a la ventana padre el AM_PopulateTable
.head 6 -  !
.head 6 -  Call SalSendMsg( tblCuadreConta, AM_PopulateTable, 0, 0 )
.head 6 -  !
.head 6 -  Call SalTimerKill ( pbRefrescarCuadreConta, TIMER_REFRESH)
.head 3 -  !
.head 3 -  !
.head 3 -  !
.head 3 -  ! Child Window - Cuadre Auxiliar
.head 3 +  Pushbutton: pbColumnsCuadreAux
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: PushbuttonColumns
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 8.2"
.head 5 -  Top: 2.107"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Multiple
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 -  !
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  ! Call SalModalDialog( dlgSelectColumnas, hWndForm, tblCuadreAux, '' )
.head 6 -  ! ! 600R1: INI: Mejora de dialogo de selección
.head 6 -  Call MostrarSeleccionColumnas( tblCuadreAux, '' )
.head 6 -  ! ! 600R1: FIN
.head 6 -  !
.head 3 +  Pushbutton: pbExcelCuadreAux
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6533000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsPushbuttonExcel
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 8.7"
.head 5 -  Top: 2.107"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Multiple
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  !
.head 6 -  Call SalSendMsg( tblCuadreAux, AM_SendTableDataToExcel, 0, 0 )
.head 3 +  Pushbutton: pbVerAsientoCuadreAux
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: PushbuttonNuevo
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 9.2"
.head 5 -  Top: 2.107"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name: Select.bmp
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Multiple
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set sStatusText = 'Visualizar la información de la transacción contable del documento seleccionado'
.head 6 -  Call InitTip( 'Ver '  || fciGlobalesCG.NombreAsiento( FALSE, FALSE, FALSE ) || ' contable' )
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  ! Llamado a  la funcion que toma la informacion del de documento
.head 6 -  !
.head 6 +  If tblCuadreAux.colAuxAsiento
.head 7 -  Call DesplegarAsiento(tblCuadreAux.colAuxAsiento)
.head 6 +  Else
.head 7 -  Call SPSMessageBox(
'El documento seleccionado no tiene '  || fciGlobalesCG.NombreAsiento( FALSE, FALSE, FALSE ) || ' por lo tanto no se podrá visualizar.',
'Ver '  || fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ) || ' Contable - Movimientos de la Contabilidad',
MBF_IconHand, CONTINUAR )
.head 3 +  Pushbutton: pbFiltroCuadreAux
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: PushbuttonBuscar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 7.7"
.head 5 -  Top: 2.107"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Multiple
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Click
.head 6 +  ! EFECTOS
.head 7 -   Envía a la ventana padre el AM_ClassDoQuery
.head 6 -  !
.head 6 -  Call SalSendMsg( tblCuadreAux, AM_ClassDoQuery, 0, 0 )
.head 3 +  Pushbutton: pbRefrescarCuadres
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: PushbuttonRefrescar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 14.58"
.head 5 -  Top: 1.774"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: System Window Color
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Click
.head 6 +  ! EFECTOS
.head 7 -   Envía a la ventana padre el AM_PopulateTable
.head 6 -  !
.head 6 -  Call SalSendMsg( tblCuadreAux, AM_PopulateTable, 0, 0 )
.head 6 -  Call SalSendMsg( tblCuadreConta, AM_PopulateTable, 0, 0 )
.head 6 -  !
.head 6 -  Call SalTimerKill ( pbRefrescarCuadres, TIMER_REFRESH)
.head 3 -  !
.head 3 -  Background Text: Detalle de Movimientos del Auxiliar
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6533000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 42044
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 9.28"
.head 5 -  Top: 1.821"
.head 5 -  Width:  5.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: None
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 +  Child Table: tblCuadreAux
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6533000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsChldTblBusqueda
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 7.58"
.head 6 -  Top: 2.405"
.head 6 -  Width:  8.1"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 4.0"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  View: Class Default
.head 5 -  Allow Row Sizing? Class Default
.head 5 -  Lines Per Row: Class Default
.head 4 -  Memory Settings
.head 5 -  Maximum Rows in Memory: Class Default
.head 5 -  Discardable? Class Default
.head 4 +  Contents
.head 5 +  Column: colAuxReferencia
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Referencia
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxOrigen
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Origen
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxFecha
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Fecha
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Date/Time
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: dd-MM-yyyy
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxConcepto
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Concepto
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxAsiento
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Transacción Contable
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxDebitoLoc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Débito Local
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Right
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( colAuxDebitoLoc, FormatoDecimales(  ) )
.head 5 +  Column: colAuxDebitoDol
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Débito Dólar
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Right
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( colAuxDebitoDol, FormatoDecimales(  ) )
.head 5 +  Column: colAuxCreditoLoc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Crédito Local
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Right
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( colAuxCreditoLoc, FormatoDecimales(  ) )
.head 5 +  Column: colAuxCreditoDol
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Crédito Dólar
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Right
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( colAuxCreditoDol, FormatoDecimales(  ) )
.head 5 +  Column: colAuxRowPointer
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolInvisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: RowPointer
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colAuxGUIDAux
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolInvisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: CUADRE_CONTA_AUX.GUID_Aux
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_CanChange
.head 8 -  Return TRUE
.head 7 +  On AM_ColFetchRowDone
.head 8 -  !
.head 8 +  If NOT (colAuxGUIDAux = STRING_Null)
.head 9 -  !
.head 9 -  Call SalTblSetRowFlags( tblCuadreAux, lParam, ROW_UnusedFlag1, TRUE )
.head 9 -  !
.head 8 -  !
.head 8 -  !
.head 4 +  Functions
.head 5 -  !
.head 5 -  ! Redefinibles Obligatorias
.head 5 +  Function: InitTable
.head 6 -  Description: Función que debe ser redefinida por las clases u objetos derivados
para establecer los valores necesarios para el manejo de la tabla.

La función debe retornar los valores necesarios en los parámetros
que se detallan.

Las clases u objetos derivados deben retornar TRUE en esta función
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Receive String: sTabla		! Nombre de la tabla (en la BD) sobre la cual se realiza la búsqueda
.head 7 -  Receive String: sColumnas		! Nombre de las columnas (en la BD) para las columnas del table-window
.head 7 -  Receive String: sIntoVars		! Into-variables para popular la tabla.  Deben  ser los nombres de la columnas en el table-window
.head 7 -  Receive Window Handle: hwndDF	! Data-field de donde se toma el valor inicial y donde se pone el valor elegido  hWndNULL en caso de no ser para help
.head 7 -  Receive Boolean: bRestrict		! Indica si se debe popular la tabla de forma tal que incluya solamente los rows que inicien con el valor inicial de búsqueda
.head 7 -  Receive Boolean: bBusquedaExacta	! Indica que solo busca rows que cumplan exactamente con lo digitado
.head 7 -  Receive Boolean: bManejarVentana	! Indica si la clase se encarga de manejar la ventana cuando se realiza la selección de un row
.head 7 -  Receive Number: nFlags1
.head 7 -  Receive Number: nFlags2
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalTblSetColumnTitle( colAuxAsiento, fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ) )
.head 7 +  ! ! CASO S2B22009A ----------->
.head 8 +  ! Cuando no se usa ODBC se debe concatenar la tabla de cuadre de auxiliares
.head 9 -  ! Set sTabla = ConcatCompany( 'CUADRE_AUX CA ' )
.head 7 +  ! MRL CR2-14074-75M0-1 -->
.head 8 +  ! MRL S2B31523 -->
.head 9 -  ! Set sTabla = ConcatCompany( 'CUADRE_AUX CA ' )
.head 8 -  ! Set sTabla = ConcatCompany( 'CUADRE_AUX CA, ' ) || ConcatCompany( 'CUADRE_CONTA CC' ) 
.head 7 -  Set sTabla = ConcatCompany( 'CUADRE_CONTA CC, ' )  || ConcatCompany( 'CUADRE_AUX CA ' )
.head 7 -  ! MRL CR2-14074-75M0-1 <--
.head 7 -  ! ! <----------- CASO S2B22009A
.head 7 -  Set sColumnas = ' CA.REFERENCIA, CA.ORIGEN, CA.FECHA, CA.CONCEPTO, CA.ASIENTO,
		CA.DEBITO_LOC, CA.DEBITO_DOL, CA.CREDITO_LOC, CA.CREDITO_DOL, 
		CA.ROWPOINTER, CCA.GUID_AUX '
.head 7 -  Set sIntoVars = ':colAuxReferencia, :colAuxOrigen, :colAuxFecha, :colAuxConcepto, :colAuxAsiento,
	 :colAuxDebitoLoc, :colAuxDebitoDol,  :colAuxCreditoLoc, :colAuxCreditoDol, 
	:colAuxRowPointer, :colAuxGUIDAux '
.head 7 -  !
.head 7 -  Set hwndDF = hWndNULL
.head 7 -  Set bRestrict = FALSE
.head 7 -  Set bBusquedaExacta = TRUE
.head 7 -  Set bManejarVentana = FALSE
.head 7 -  !
.head 7 -  Set bPopulateOnCreate = FALSE
.head 7 -  !
.head 7 -  !
.head 7 -  Return TRUE
.head 5 +  Function: GetOpcion
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar la
opción utilizada para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return 'Cuadre Auxiliar'
.head 5 +  Function: GetOrigen
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar el
origen utilizado para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return CG_ORIGEN || "tblCuadreAux"
.head 5 +  Function: GetStatements
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  Function: GetVariables
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  ! Function: GetStatementsAndVars
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Long String: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Long String: ls1
.head 7 -  Long String: ls2
.head 7 -  Long String: lsTotal
.head 7 -  !
.head 7 -  Number: nPosMax
.head 6 +  Actions 
.head 7 -  !
.head 7 -  ! laar
.head 7 -  ! Set ls1 = ..GetStatements()
.head 7 -  Set ls1 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETSTATEMENTS ) )
.head 7 -  !
.head 7 -  ! Set ls2 = ..GetVariables()
.head 7 -  Set ls2 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETVARIABLES ) )
.head 7 -  !
.head 7 -  Set lsTotal = ls2 || ls1
.head 7 -  !
.head 7 -  ! Recortar el string al maximo permitido
.head 7 -  !
.head 7 -  Set nPosMax = SalStrLength( lsTotal ) - 1
.head 7 +  If nPosMax >  MAX_PREFERENCIA_LONG_SIZE
.head 8 -  Set nPosMax = VisStrScanReverse( lsTotal, MAX_PREFERENCIA_LONG_SIZE, LIST_SEPARATOR )
.head 8 -  Set lsTotal = SalStrLeftX( lsTotal, nPosMax )
.head 7 -  !
.head 7 -  Return lsTotal
.head 5 +  Function: CreateWHERE
.head 6 -  Description: Función para crear la porción where del comando sql para cargar la
tabla.
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  String: lsWhere
.head 7 -  String: lsFiltroAux
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! JOIN entre tablas
.head 7 -  ! Set lsWhere = "WHERE CA.ROWPOINTER " || SQLOuterJoin('CCA.GUID_AUX')
.head 7 -  Set lsWhere = " LEFT OUTER JOIN " || ConcatCompany( 'CUADRE_CONTA_AUX CCA' ) || 
	" ON CA.ROWPOINTER = CCA.GUID_AUX  WHERE 1=1 "
.head 7 -  !
.head 7 +  If NOT vnCodigoCuadre = NUMBER_Null
.head 8 -  !
.head 8 -  Set lsWhere = lsWhere || " AND CA.CUADRES_CG	= :vnCodigoCuadre "
.head 7 -  !
.head 7 +  If TRUE
.head 8 -  !
.head 8 -  !
.head 8 -  ! MRL #31523 -->
.head 8 -  ! Se agrega alias de la tabla a la columna FECHA
.head 8 -  Set lsFiltroAux = lsFiltroAux ||  GetDateTimeWhere( 'CA.FECHA' , idtFechaIni,
	                idtFechaFin, 'tblCuadreAux.idtFechaIni',  'tblCuadreAux.idtFechaFin' )
.head 8 -  ! MRL #31523 <--
.head 8 -  !
.head 8 +  If isMovimientos
.head 9 -  !
.head 9 +  If isMovimientos = AUX_TODOS
.head 10 -  ! No se debe hacer filtro, por omisión van todos
.head 9 +  Else If isMovimientos = AUX_ASOCIADOS
.head 10 -  !
.head 10 -  ! MRL #31523 -->
.head 10 -  ! Se agrega alias de la tabla a la columna GUID_AUX
.head 10 -  Set lsFiltroAux = lsFiltroAux || " AND CCA.GUID_AUX IS NOT NULL "
.head 10 -  ! MRL #31523 <--
.head 10 -  !
.head 10 +  ! If isAsociados
.head 11 -  !
.head 11 -  ! Mostrar movimientos asociados con diferencia
.head 10 -  !
.head 9 +  Else If isMovimientos = AUX_ASOC_CONDIF
.head 10 -  !
.head 10 -  ! MRL S2B31523 -->
.head 10 -  Set lsFiltroAux = lsFiltroAux || " AND CCA.GUID_AUX IS NOT NULL 
AND CC.CUADRES_CG = CA.CUADRES_CG AND CC.ASIENTO = CA.ASIENTO
AND ((CC.DEBITO_LOC != CA.DEBITO_LOC) OR (CC.DEBITO_DOL != CA.DEBITO_DOL) 
OR (CC.CREDITO_LOC != CA.CREDITO_LOC) OR (CC.CREDITO_DOL != CA.CREDITO_DOL))"
.head 10 -  ! MRL S2B31523 <--
.head 10 -  !
.head 9 +  Else If isMovimientos = AUX_NO_ASOCIADOS
.head 10 -  !
.head 10 -  ! MRL #31523 -->
.head 10 -  ! Se agrega alias de la tabla a la columna GUID_AUX
.head 10 -  Set lsFiltroAux = lsFiltroAux || " AND CCA.GUID_AUX IS NULL "
.head 10 -  ! MRL #31523 <--
.head 10 -  !
.head 10 +  If isNoAsociados = AUX_CONTABILIZADO
.head 11 -  !
.head 11 -  ! MRL #31523 -->
.head 11 -  ! Se agrega alias de la tabla a la columna ASIENTO
.head 11 -  Set lsFiltroAux = lsFiltroAux || " AND CA.ASIENTO IS NOT NULL "
.head 11 -  ! MRL #31523 <--
.head 10 +  Else If isNoAsociados = AUX_NO_CONTABILIZADO
.head 11 -  !
.head 11 -  ! MRL #31523 -->
.head 11 -  ! Se agrega alias de la tabla a la columna ASIENTO
.head 11 -  Set lsFiltroAux = lsFiltroAux || " AND CA.ASIENTO IS NULL "
.head 11 -  ! MRL #31523 <--
.head 8 -  !
.head 8 +  If isDebitosCreditos = AMBAS
.head 9 -  ! No hay que hacer nada, se muestran tanto débitos como créditos
.head 8 +  Else If isDebitosCreditos = DEBITO
.head 9 -  ! Se muestran solo Débitos
.head 9 -  ! MRL #31523 -->
.head 9 -  ! Se agrega alias de la tabla a las columnas
.head 9 -  Set lsFiltroAux = lsFiltroAux ||
     " AND (CA.DEBITO_LOC IS NOT NULL OR CA.DEBITO_DOL IS NOT NULL  )"
.head 9 -  !
.head 9 -  Set lsFiltroAux = lsFiltroAux ||
     " AND (CA.DEBITO_LOC <> 0 OR CA.DEBITO_DOL <> 0  )"
.head 9 -  ! MRL #31523 <--
.head 9 -  !
.head 8 +  Else If isDebitosCreditos = CREDITO
.head 9 -  ! Se muestran solo Créditos
.head 9 -  ! MRL #31523 -->
.head 9 -  ! Se agrega alias de la tabla a las columnas
.head 9 -  Set lsFiltroAux = lsFiltroAux ||
     " AND (CA.CREDITO_LOC IS NOT NULL OR CA.CREDITO_DOL IS NOT NULL )"
.head 9 -  !
.head 9 -  Set lsFiltroAux = lsFiltroAux ||
     " AND ( CA.CREDITO_LOC <> 0  OR CA.CREDITO_DOL <> 0   )"
.head 9 -  ! MRL #31523 <--
.head 9 -  !
.head 7 -  !
.head 7 -  !
.head 7 +  If lsFiltroAux
.head 8 +  If lsWhere
.head 9 -  !
.head 9 -  Set lsWhere = lsWhere || lsFiltroAux
.head 8 +  Else
.head 9 -  !
.head 9 -  Set lsWhere = " WHERE 1=1 " || lsFiltroAux
.head 7 -  !
.head 7 -  Return lsWhere
.head 5 +  Function: AfterInitTable
.head 6 -  Description: Función que es llamada después de inicializar la tabla, leer las
preferencias de la base de datos y popularla
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: GetWindowSizeAndLoc
.head 6 -  Description: Retorna el tamaño y la localización del top-level window
para guardarlo en la base de datos y después restaurar al entrar.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Receive Number: nWidth
.head 7 -  Receive Number: nHeight
.head 7 -  Receive Number: nX
.head 7 -  Receive Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalGetWindowSize( hWndTable, nWidth, nHeight )
.head 7 -  Call SalGetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: SetWindowSizeAndLoc
.head 6 -  Description: Cambia el tamaño y la localización del top-level window
después de leerlo de la base de datos.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Number: nWidth
.head 7 -  Number: nHeight
.head 7 -  Number: nX
.head 7 -  Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalSetWindowSize( hWndTable, nWidth,  nHeight )
.head 7 -  !
.head 7 -  ! Se comentan las llamadas para que compile
.head 7 -  Call SetWindowInVisiblePos( hWndTable,  nWidth,  nHeight, nX, nY )
.head 7 -  !
.head 7 -  Call SalSetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: AfterPopulate
.head 6 -  Description: Función que es llamada después de poblar el table-window
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: UsarDistinct
.head 6 -  Description: Se redefine para retornar TRUE indicando que se utilice la cláusula
DISTINCT para poblar la tabla eliminando registros duplicados.
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return TRUE
.head 5 +  Function: HacerBusquedaInicial
.head 6 -  Description: Hacer la búsqueda binaria inicial si se especifica un "string-digitado"
a la hora de creación de la tabla
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return TRUE
.head 5 +  Function: DevolverSeparador
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ','
.head 5 +  Function: UsarResultCount
.head 6 -  Description: Indica si se debe utilizar GetResultSetCount( ) en lugar de ejecutar un
COUNT(*) en la base de datos
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return FALSE
.head 5 +  Function: InicializarPreferencias
.head 6 -  Description: Se llama luego de leer y ejecutar las preferencias.
Se puede redefinir para establecer los valores iniciales y
poder restringir el result-set o configurar el ambiente inicial.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Boolean: bPrmExistenPreferencias
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: CambiarOrderBy
.head 6 -  Description: Permite incluir campos en el ordenamiento default que tiene la
tabla. Es muy útil en tablas que son hijas de otra y que siempre
deben ordenar por el código del maestro. Esto mejora la
eficiencia al popular la tabla, siempre que se tengan los índices
bien definidos.
Recibe la hilera de campos en el order by y para que se le
inserten los campos en el orden que se desee ( inicio o final )
Recordar que la variable nFirstColumn indica el ID de la columna
por la cual se ordena.
.head 6 +  Returns
.head 7 -  String:
.head 6 +  Parameters
.head 7 -  String: sPrmOrderBy
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return sPrmOrderBy
.head 5 +  Function: ColumnaDeRestriccion
.head 6 -  Description: Define la columna por la cual se ha de restringir el result-set de la tabla F1.
Redefinible a nivel de la instancia; basicamente para campos F1 que no se
han de restringir la columna de codigo (#1 siempre!) sino por descripcion o
alguna otra columna.
.head 6 +  Returns
.head 7 +  Number:
.head 8 -  ! valor numerico de la columna por la cual se restringe;
siendo 1 por default.
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
.head 7 -  Return 1
.head 5 +  Function: ModificaWhere
.head 6 -  Description: Agregada 05/06/2000 JCHAVES
Utilizada para la funcionalidad de códigos de barras.
Permite agregar al sWhereRestrict cláusulas adicionales antes de
concatenarle el sWhereClause
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  String: psStringDesde
.head 7 -  String: psStringHasta
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: RowPictures
.head 6 -  Description: Debe ser redefinido para asignar a los parámetros los valores
necesarios para manejar row-pictures.  Debe retornar TRUE en
la redefinición
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Receive Number: nRowFlag1
.head 7 -  Receive Number: nRowFlag2
.head 7 -  Receive Number: nRowFlag3
.head 7 -  Receive String: sResourceList
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Set nRowFlag1 = ROW_UserFlag1
.head 7 -  Set nRowFlag2 = 0
.head 7 -  Set nRowFlag3 = 0
.head 7 -  Set sResourceList = 'picLink'
.head 7 -  Return TRUE
.head 5 -  !
.head 5 -  !
.head 5 -  ! Otras Funciones
.head 5 +  Function: SelectRows
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! Llama al Filtro
.head 7 -  !
.head 7 +  ! MRL S2B31523 -->
.head 8 -  ! Se elimina el parámetro de Asociados
.head 7 +  If SalModalDialog( dlgFiltroCuadreAux, hWndForm, 
	idtFechaIni, idtFechaFin, isMovimientos, isDebitosCreditos, isNoAsociados )
.head 8 -  ! Vuelve a poblar la tabla con el filtro seleccionado (Nótese que en el CreateWHERE() se debe ajustar el Filtro)
.head 8 -  Call LimiteSeleccion( CreateWHERE() )
.head 8 -  Call SalSendMsg( hWndForm, AM_ResultSetRestricted, 1, 0 )
.head 7 -  ! MRL S2B31523 <--
.head 7 +  Else
.head 8 -  Call SalSendMsg( hWndForm, AM_ResultSetRestricted, 0, 0 )
.head 7 -  !
.head 7 -  !
.head 5 -  !
.head 5 +  Function: ClearFiltro
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! Set isAsientoIni = STRING_Null
.head 7 -  ! Set isAsientoFin = STRING_Null
.head 7 -  ! Set isOrigen = STRING_Null
.head 7 -  ! Set isContabilidad = STRING_Null
.head 7 -  ! Set isMovimientos = STRING_Null
.head 7 -  !
.head 7 -  ! Set idtFechaIni = DATETIME_Null
.head 7 -  ! Set idtFechaFin = DATETIME_Null
.head 7 -  !
.head 7 -  Set isMovimientos = STRING_Null
.head 7 -  Set isDebitosCreditos = STRING_Null
.head 7 -  Set isNoAsociados = STRING_Null
.head 7 -  !
.head 5 -  !
.head 4 +  Window Variables
.head 5 -  Date/Time: idtFechaIni
.head 5 -  Date/Time: idtFechaFin
.head 5 -  String: isMovimientos
.head 5 -  String: isDebitosCreditos
.head 5 -  ! String: isAsociados
.head 5 -  String: isNoAsociados
.head 4 +  Message Actions
.head 5 +  On AM_ClassDoQuery
.head 6 -  !
.head 6 -  Return tblCuadreAux.SelectRows()
.head 5 +  On AM_ResultSetRestricted
.head 6 -  ! Indicación de que el result-set fue restringuido
.head 6 -  ! Cambiar el botón de "buscar" para indicar esto
.head 6 +  If wParam
.head 7 -  Call SalPicSet( pbFiltroCuadreAux, BuscarX, PIC_FormatBitmap )
.head 6 +  Else
.head 7 -  Call SalPicSet( pbFiltroCuadreAux, Buscar, PIC_FormatBitmap )
.head 5 +  On AM_ClassSelectColumns
.head 6 -  !
.head 6 -  ! Call SalModalDialog( dlgSelectColumnas, hWndForm, tblCuadreAux, '' )
.head 6 -  ! ! 600R1: INI: Mejora de dialogo de selección
.head 6 -  Call MostrarSeleccionColumnas( tblCuadreAux, '' )
.head 6 -  ! ! 600R1: FIN
.head 5 +  On AM_MostrarAsociados
.head 6 -  !
.head 6 -  Call MostarDocumentoAsociado(
			tblCuadreAux.colAuxRowPointer,
			"Documento: " || tblCuadreAux.colAuxReferencia,
			tblCuadreAux.colAuxDebitoLoc,
			tblCuadreAux.colAuxDebitoDol,
			tblCuadreAux.colAuxCreditoLoc,
			tblCuadreAux.colAuxCreditoDol,
			AUX )
.head 5 +  On AM_AsociarMovimiento
.head 6 -  !
.head 6 -  Call AsociarMovimiento()
.head 5 +  On AM_DesAsociarMovimiento
.head 6 -  !
.head 6 -  Call DesAsociarMovimiento(FALSE)
.head 5 -  !
.head 5 +  On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  Return FALSE
.head 5 +  On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGCuadreAux',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 -  !
.head 3 -  !
.head 3 -  !
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  ! PASO 4 - Balance de Cuentas Cuadre de Auxiliar
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  ! clsStdGroupBox: (class default)
.data INHERITPROPS
0000: 0100
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6531000000 00
.enddata
.data CLASSPROPSSIZE
0000: 1900
.enddata
.winattr class Group Box:
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 0.826"
.head 5 -  Width:  4.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.497"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Font Name: Tahoma
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  Background Text: Cuadre de Auxiliares con la Contabilidad
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65350000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 29158
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: -0.02"
.head 5 -  Top: 0.095"
.head 5 -  Width:  16.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.229"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Bold-Underline
.head 4 -  Text Color: Default
.head 4 -  Background Color: System Window Color
.head 3 -  !
.head 3 -  Group Separator
.head 4 -  Resource Id: 65354
.head 3 -  Group Separator
.head 4 -  Resource Id: 65355
.head 3 -  !
.head 3 +  Child Table: tblBalanceCtas
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65340000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsChildTblNoDB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 0.38"
.head 6 -  Top: 2.214"
.head 6 -  Width:  15.38"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 4.107"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: System Window Color
.head 5 -  View: Class Default
.head 5 -  Allow Row Sizing? Class Default
.head 5 -  Lines Per Row: Class Default
.head 4 -  Memory Settings
.head 5 -  Maximum Rows in Memory: Class Default
.head 5 -  Discardable? Class Default
.head 4 +  Contents
.head 5 +  Column: colBalDetalle
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: .
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  0.58"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colBalCuenta
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Cuenta
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  3.9"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colBalCuentaDesc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Descripcion
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  4.84"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colBalDebito
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Débitos
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Right
.head 6 -  Width:  2.42"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( colBalDebito, FormatoDecimales(  ) )
.head 5 +  Column: colBalCredito
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Créditos
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Right
.head 6 -  Width:  2.66"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( colBalCredito, FormatoDecimales(  ) )
.head 4 +  Functions
.head 5 +  Function: LoadTable
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Number: pnOpcion
.head 7 -  String: psDebitosCreditos
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: lbOk
.head 7 -  Number: lnLinea
.head 7 -  !
.head 7 -  Boolean: lbContinuar
.head 7 -  !
.head 7 -  ! Variables utilizadas para totalizar la sección 
.head 7 -  Number: lnTotalDebito
.head 7 -  Number: lnTotalCredito
.head 7 -  ! TAQ >> 29086
.head 7 -  Number: lnTotalMovAsociadosCreditos
.head 7 -  Number: lnTotalRegistradosCGCreditos
.head 7 -  Number: lnTotalMovAsociadosDebitos
.head 7 -  Number: lnTotalRegistradosCGDebitos
.head 7 -  Number: lnTotalGeneral
.head 7 -  ! TAQ << 29086
.head 6 +  Actions
.head 7 -  Set lbOk = TRUE
.head 7 -  Set lnLinea = 0
.head 7 -  Set lnTotalDebito = 0
.head 7 -  Set lnTotalCredito = 0
.head 7 -  !
.head 7 -  ! Se pasan los parámetros a las variables de ventana
.head 7 +  If NOT (pnOpcion = REG_NINGUNO)
.head 8 -  Set vnOpcion = pnOpcion
.head 7 +  If psDebitosCreditos
.head 8 -  Set vsDebitosCreditos = psDebitosCreditos
.head 7 -  !
.head 7 -  !
.head 7 -  Set lbOk = SalTblReset ( tblBalanceCtas )
.head 7 -  !
.head 7 -  !
.head 7 -  Set vfciCGAuxWiz.ifciBalCtas.inIndice = 0
.head 7 -  Set lbContinuar = TRUE
.head 7 -  !
.head 7 -  !
.head 7 -  ! Se ponen los títulos del Reporte, estas líneas solo se van a mostrar luego de pasar a Excel el Reporte
.head 7 -  !
.head 7 +  If TRUE
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 8 -  Set tblBalanceCtas.colBalDetalle= 'Balance de Cuentas Contables'
.head 8 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited | ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 8 -  Set tblBalanceCtas.colBalDetalle= 'Módulo de ' || isNombreModulo
.head 8 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited | ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 8 -  Set tblBalanceCtas.colBalDetalle= 'Del: ' ||    SalFmtFormatDateTime( dfFechaIni, 'dd/MMM/yyyy' )  || ' al: ' || SalFmtFormatDateTime( dfFechaFin, 'dd/MMM/yyyy' )
.head 8 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited | ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 8 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited | ROW_New, FALSE )
.head 8 -  !
.head 8 -  !
.head 8 +  If vnOpcion = REG_CONTA
.head 9 -  !
.head 9 -  Set lnLinea = lnLinea + 1
.head 9 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 9 -  Set tblBalanceCtas.colBalDetalle= 'Registrados en CG producto del auxiliar'
.head 9 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Blue )
.head 9 -  Call SalColorSet( SalTblGetColumnWindow ( tblBalanceCtas, 2, COL_GetID  ), COLOR_IndexWindow, COLOR_Magenta )
.head 9 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 8 +  If vnOpcion = REG_AUX
.head 9 -  !
.head 9 -  Set lnLinea = lnLinea + 1
.head 9 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 9 -  Set tblBalanceCtas.colBalDetalle= 'Registrados en el auxiliar y contabilizados'
.head 9 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Blue )
.head 9 -  Call SalColorSet( SalTblGetColumnWindow ( tblBalanceCtas, 2, COL_GetID  ), COLOR_IndexWindow, COLOR_Magenta )
.head 9 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 8 +  If vnOpcion = REG_CG
.head 9 -  !
.head 9 -  Set lnLinea = lnLinea + 1
.head 9 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 9 -  Set tblBalanceCtas.colBalDetalle= 'Directamente en CG'
.head 9 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Blue )
.head 9 -  Call SalColorSet( SalTblGetColumnWindow ( tblBalanceCtas, 2, COL_GetID  ), COLOR_IndexWindow, COLOR_Magenta )
.head 9 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 8 +  If vnOpcion = REG_OTROS
.head 9 -  !
.head 9 -  Set lnLinea = lnLinea + 1
.head 9 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 9 -  Set tblBalanceCtas.colBalDetalle= 'Producto de otro auxiliar'
.head 9 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Blue )
.head 9 -  Call SalColorSet( SalTblGetColumnWindow ( tblBalanceCtas, 2, COL_GetID  ), COLOR_IndexWindow, COLOR_Magenta )
.head 9 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 7 -  !
.head 7 -  ! Se recorre el arreglo con los datos y se cargan en el WindowTable según la moneda seleccionada
.head 7 +  While lbContinuar
.head 8 -  !
.head 8 -  !
.head 8 +  If obMonedaLoc
.head 9 -  !
.head 9 +  If vnOpcion = REG_TODOS
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= 'Cuenta Contable'
.head 10 -  Set tblBalanceCtas.colBalCuenta = vfciCGAuxWiz.ifciBalCtas.isCuenta[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCuentaDesc = vfciCGAuxWiz.ifciBalCtas.isCuentaDesc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Blue )
.head 10 -  Call SalColorSet( SalTblGetColumnWindow ( tblBalanceCtas, 2, COL_GetID  ), COLOR_IndexWindow, COLOR_Magenta )
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= 'Movimientos Asociados'
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= '    Registrados en CG producto del auxiliar'
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inCGDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inCGCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= '    Registrados en el auxiliar y contabilizados'
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inAuxDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inAuxCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  ! TAQ >> 29086
.head 10 -  Set tblBalanceCtas.colBalDetalle = '    Diferencia Movimientos Asociados'
.head 10 -  ! TAQ << 29086
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inCGDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice] - vfciCGAuxWiz.ifciBalCtas.inAuxDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inCGCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice] - vfciCGAuxWiz.ifciBalCtas.inAuxCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Red )
.head 10 -  ! TAQ >> 29086
.head 10 -  ! MRL CR2-14074-75M0 -->
Se quitan los valores absolutos de los montos
.head 10 -  Set lnTotalMovAsociadosCreditos = lnTotalMovAsociadosCreditos +  tblBalanceCtas.colBalCredito
.head 10 -  Set lnTotalMovAsociadosDebitos = lnTotalMovAsociadosDebitos +   tblBalanceCtas.colBalDebito
.head 10 -  ! MRL CR2-14074-75M0 <--
.head 10 -  ! TAQ << 29086
.head 10 -  !
.head 10 -  ! Inserta línea en blanco
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= 'Movimientos registrados en CG'
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= '    Directamente en CG'
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= '    Producto de otro auxiliar'
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  ! TAQ >> 29086
.head 10 -  Set tblBalanceCtas.colBalDetalle = '    Diferencia Movimientos registrados en CG'
.head 10 -  ! TAQ << 29086
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice] + vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito =  vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice] + vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Red )
.head 10 -  ! TAQ >> 29086
.head 10 -  ! MRL CR2-14074-75M0 -->
Se quitan los valores absolutos de los montos
.head 10 -  Set lnTotalRegistradosCGCreditos = lnTotalRegistradosCGCreditos + tblBalanceCtas.colBalCredito
.head 10 -  Set lnTotalRegistradosCGDebitos = lnTotalRegistradosCGDebitos +  tblBalanceCtas.colBalDebito
.head 10 -  ! MRL CR2-14074-75M0 <--
.head 10 -  ! TAQ << 29086
.head 10 -  !
.head 9 +  Else
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= '          Cuenta Contable'
.head 10 -  Set tblBalanceCtas.colBalCuenta = vfciCGAuxWiz.ifciBalCtas.isCuenta[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCuentaDesc = vfciCGAuxWiz.ifciBalCtas.isCuentaDesc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  !
.head 10 +  If vnOpcion = REG_CONTA
.head 11 -  !
.head 11 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inCGDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 11 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inCGCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 +  If vnOpcion = REG_AUX
.head 11 -  !
.head 11 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inAuxDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 11 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inAuxCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 +  If vnOpcion = REG_CG
.head 11 -  !
.head 11 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 11 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 +  If vnOpcion = REG_OTROS
.head 11 -  !
.head 11 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 11 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoLoc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  !
.head 10 -  Set lnTotalDebito = lnTotalDebito + tblBalanceCtas.colBalDebito
.head 10 -  Set lnTotalCredito = lnTotalCredito + tblBalanceCtas.colBalCredito
.head 10 -  !
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 8 +  Else If obMonedaDol
.head 9 -  !
.head 9 -  !
.head 9 +  If vnOpcion = REG_TODOS
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= 'Cuenta Contable'
.head 10 -  Set tblBalanceCtas.colBalCuenta = vfciCGAuxWiz.ifciBalCtas.isCuenta[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCuentaDesc = vfciCGAuxWiz.ifciBalCtas.isCuentaDesc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), 0x90000000 )
.head 10 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Blue )
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= 'Movimientos Asociados'
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= '    Registrados en CG producto del auxiliar'
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inCGDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inCGCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= '    Registrados en el auxiliar y contabilizados'
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inAuxDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inAuxCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  ! TAQ >> 29086
.head 10 -  Set tblBalanceCtas.colBalDetalle = '    Diferencia Movimientos Asociados'
.head 10 -  ! TAQ << 29086
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inCGDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice] - vfciCGAuxWiz.ifciBalCtas.inAuxDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inCGCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice] - vfciCGAuxWiz.ifciBalCtas.inAuxCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Red )
.head 10 -  ! TAQ >> 29086
.head 10 -  ! MRL CR2-14074-75M0 -->
Se quitan los valores absolutos de los montos
.head 10 -  Set lnTotalMovAsociadosCreditos = lnTotalMovAsociadosCreditos +  tblBalanceCtas.colBalCredito
.head 10 -  Set lnTotalMovAsociadosDebitos = lnTotalMovAsociadosDebitos +   tblBalanceCtas.colBalDebito
.head 10 -  ! MRL CR2-14074-75M0 <--
.head 10 -  ! TAQ << 29086
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= 'Movimientos NO Asociados'
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= '    Movimientos Contables en CG'
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= '    Movimientos Contables en Otros Módulos'
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  ! TAQ >> 29086
.head 10 -  Set tblBalanceCtas.colBalDetalle = '    Diferencia Movimientos registrados en CG'
.head 10 -  ! TAQ << 29086
.head 10 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice] + vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCredito =  vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice] + vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 10 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Red )
.head 10 -  ! TAQ >> 29086
.head 10 -  ! MRL CR2-14074-75M0 -->
Se quitan los valores absolutos de los montos
.head 10 -  Set lnTotalRegistradosCGCreditos = lnTotalRegistradosCGCreditos +  tblBalanceCtas.colBalCredito
.head 10 -  Set lnTotalRegistradosCGDebitos = lnTotalRegistradosCGDebitos +  tblBalanceCtas.colBalDebito
.head 10 -  ! MRL CR2-14074-75M0 <--
.head 10 -  ! TAQ << 29086
.head 9 +  Else
.head 10 -  !
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Set tblBalanceCtas.colBalDetalle= '          Cuenta Contable'
.head 10 -  Set tblBalanceCtas.colBalCuenta = vfciCGAuxWiz.ifciBalCtas.isCuenta[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  Set tblBalanceCtas.colBalCuentaDesc = vfciCGAuxWiz.ifciBalCtas.isCuentaDesc[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  !
.head 10 +  If vnOpcion = REG_CONTA
.head 11 -  !
.head 11 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inCGDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 11 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inCGCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 +  If vnOpcion = REG_AUX
.head 11 -  !
.head 11 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inAuxDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 11 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inAuxCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 +  If vnOpcion = REG_CG
.head 11 -  !
.head 11 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inMovCGDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 11 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inMovCGCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 +  If vnOpcion = REG_OTROS
.head 11 -  !
.head 11 -  Set tblBalanceCtas.colBalDebito = vfciCGAuxWiz.ifciBalCtas.inMovOtrosDebitoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 11 -  Set tblBalanceCtas.colBalCredito = vfciCGAuxWiz.ifciBalCtas.inMovOtrosCreditoDol[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 10 -  !
.head 10 -  Set lnTotalDebito = lnTotalDebito + tblBalanceCtas.colBalDebito
.head 10 -  Set lnTotalCredito = lnTotalCredito + tblBalanceCtas.colBalCredito
.head 10 -  !
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set vfciCGAuxWiz.ifciBalCtas.inIndice = vfciCGAuxWiz.ifciBalCtas.inIndice + 1
.head 8 -  !
.head 8 +  If NOT vfciCGAuxWiz.ifciBalCtas.isCuenta[vfciCGAuxWiz.ifciBalCtas.inIndice]
.head 9 -  !
.head 9 -  Set lbContinuar = FALSE
.head 8 +  Else
.head 9 -  !
.head 9 +  If vnOpcion = REG_TODOS
.head 10 -  ! Una línea en blanco separando las cuentas
.head 10 -  Set lnLinea = lnLinea + 1
.head 10 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 10 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  !
.head 7 -  !
.head 7 -  !
.head 7 -  ! Mostrar los totales
.head 7 +  If vnOpcion = REG_CONTA OR vnOpcion = REG_AUX OR vnOpcion = REG_CG OR vnOpcion = REG_OTROS
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 8 -  Set tblBalanceCtas.colBalDetalle= 'Total'
.head 8 -  Set tblBalanceCtas.colBalDebito = lnTotalDebito
.head 8 -  Set tblBalanceCtas.colBalCredito = lnTotalCredito
.head 8 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Blue )
.head 8 -  Call SalColorSet( SalTblGetColumnWindow ( tblBalanceCtas, 2, COL_GetID  ), COLOR_IndexWindow, COLOR_Magenta )
.head 8 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited | ROW_New, FALSE )
.head 7 -  !
.head 7 -  !
.head 7 -  ! TAQ >> 29086
.head 7 -  ! Linea en Blanco.
.head 7 -  Set lnLinea = lnLinea + 1
.head 7 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 7 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited|ROW_New, FALSE )
.head 7 -  !
.head 7 -  ! Muestra Total.
.head 7 -  Set lnLinea = lnLinea + 1
.head 7 -  Call SalTblInsertRow( tblBalanceCtas, lnLinea )
.head 7 -  Set tblBalanceCtas.colBalDetalle= 'Total General del Cuadre'
.head 7 -  ! MRL CR2-14074-75M0 -->
Se agrega valor absoluto a la primer opción y se quitan los valores absolutos de los montos dentro de las restas
.head 7 -  Set lnTotalGeneral = ( SalNumberAbs  (  lnTotalMovAsociadosDebitos -  lnTotalRegistradosCGDebitos ) )
		 - ( SalNumberAbs  ( lnTotalMovAsociadosCreditos  -  lnTotalRegistradosCGCreditos ) )
.head 7 -  ! MRL CR2-14074-75M0 <--
.head 7 +  If lnTotalGeneral > 0
.head 8 -  Set tblBalanceCtas.colBalDebito = lnTotalGeneral
.head 8 -  Set tblBalanceCtas.colBalCredito = 0
.head 7 +  Else If lnTotalGeneral < 0
.head 8 -  Set tblBalanceCtas.colBalDebito = 0
.head 8 -  Set tblBalanceCtas.colBalCredito = SalNumberAbs( lnTotalGeneral )
.head 7 +  Else
.head 8 -  Set tblBalanceCtas.colBalDebito = 0
.head 8 -  Set tblBalanceCtas.colBalCredito = 0
.head 7 -  Call VisTblSetRowColor( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), COLOR_Blue )
.head 7 -  Call SalColorSet( SalTblGetColumnWindow ( tblBalanceCtas, 2, COL_GetID  ), COLOR_IndexWindow, COLOR_Magenta )
.head 7 -  Call SalTblSetRowFlags( tblBalanceCtas, SalTblQueryContext( tblBalanceCtas ), ROW_Edited | ROW_New, FALSE )
.head 7 -  ! TAQ << 29086
.head 7 -  !
.head 7 -  Return lbOk
.head 5 -  !
.head 5 +  Function: Create
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  Call SalTblDefineRowHeader( tblBalanceCtas, '.', 220, TBL_RowHdr_ShareColor|TBL_RowHdr_Visible, tblBalanceCtas.colBalDetalle )
.head 7 -  Call SalHideWindow( tblBalanceCtas.colBalDetalle )
.head 5 +  Function: Destroy
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: lbOk
.head 6 +  Actions
.head 7 -  Set lbOk = TRUE
.head 7 -  !
.head 7 -  !
.head 7 -  Return TRUE
.head 5 -  !
.head 5 -  !
.head 4 +  Window Variables
.head 5 -  !
.head 5 -  String: vsDebitosCreditos
.head 5 -  Number: vnOpcion
.head 5 -  !
.head 4 +  Message Actions
.head 5 +  On AM_SendTableDataToExcel
.head 6 -  Call SalShowWindow( tblBalanceCtas.colBalDetalle )
.head 6 -  Call SalTblSetFlagsAnyRows ( tblBalanceCtas, ROW_Selected, TRUE, 0, 0)
.head 6 -  Call SalSendClassMessage( AM_SendTableDataToExcel, wParam, lParam )
.head 6 -  Call SalHideWindow( tblBalanceCtas.colBalDetalle )
.head 5 -  !
.head 5 +  ! On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  !
.head 6 -  ! Set vsItemResumen = 'dfResContaDebLoc'
.head 6 -  ! Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 6 -  Return FALSE
.head 5 +  ! On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else 
.head 7 -  !
.head 7 -  Set vsItemResumen = 'dfResContaDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 -  !
.head 3 +  Custom Control: ccMSTabCtrl
.head 4 -  Class Child Ref Key: 20
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdlgWizard
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  DLL Name:
.head 5 -  MS Windows Class Name:
.head 5 -  Style:  Class Default
.head 5 -  ExStyle:  Class Default
.head 5 -  Title:
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Etched Border? Class Default
.head 5 -  Hollow? Class Default
.head 5 -  Vertical Scroll? Class Default
.head 5 -  Horizontal Scroll? Class Default
.head 5 -  Tab Stop? Class Default
.head 5 -  Tile To Parent? Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  DLL Settings
.head 4 -  Message Actions
.head 3 +  Picture: picBackTab
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000100 00000000
.enddata
.data CLASSPROPSSIZE
0000: 1400
.enddata
.head 4 -  Class Child Ref Key: 21
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdlgWizard
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: Class Default
.head 5 -  Top: Class Default
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Editable? Class Default
.head 4 -  File Name:
.head 4 -  Storage: Class Default
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Fit: Class Default
.head 4 -  Scaling
.head 5 -  Width:  Class Default
.head 5 -  Height:  Class Default
.head 4 -  Corners: Class Default
.head 4 -  Border Style: Class Default
.head 4 -  Border Thickness: Class Default
.head 4 -  Tile To Parent? Class Default
.head 4 -  Border Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 +  Child Table: tblResumenCuadre
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6532000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsChildTblNoDB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 9.98"
.head 6 -  Top: 6.988"
.head 6 -  Width:  9.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 3.333"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? No
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  View: Class Default
.head 5 -  Allow Row Sizing? Class Default
.head 5 -  Lines Per Row: Class Default
.head 4 -  Memory Settings
.head 5 -  Maximum Rows in Memory: Class Default
.head 5 -  Discardable? Class Default
.head 4 +  Contents
.head 5 +  Column: colResDetalle
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: .
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 -  Message Actions
.head 5 +  Column: colResDebito
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Débitos
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.367"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( tblResumenCuadre.colResDebito, FormatoDecimales(  ) )
.head 5 +  Column: colResCredito
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Créditos
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.4"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( tblResumenCuadre.colResCredito, FormatoDecimales(  ) )
.head 5 +  Column: colResNeto
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Neto
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.4"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_Create
.head 8 -  Call SalFmtSetPicture( tblResumenCuadre.colResNeto, FormatoDecimales(  ) )
.head 4 +  Functions
.head 5 +  Function: LoadTable
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: lbOk
.head 7 -  Number: lnLinea
.head 7 -  !
.head 6 +  Actions
.head 7 -  Set lbOk = TRUE
.head 7 -  Set lnLinea = 0
.head 7 -  !
.head 7 -  Set lbOk = SalTblReset ( tblResumenCuadre )
.head 7 -  !
.head 7 -  !
.head 7 -  ! Se ponen los títulos del Reporte, estas líneas solo se van a mostrar luego de pasar a Excel el Reporte
.head 7 +  If TRUE
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= 'Resumen de Cuadre'
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited | ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= 'Módulo de ' || isNombreModulo
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited | ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= 'Del: ' ||    SalFmtFormatDateTime( dfFechaIni, 'dd/MMM/yyyy' )  || ' al: ' || SalFmtFormatDateTime( dfFechaFin, 'dd/MMM/yyyy' )
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited | ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited | ROW_New, FALSE )
.head 7 -  !
.head 7 -  ! Se pasan los Datos a la Tabla
.head 7 +  If TRUE
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= 'Movimientos Asociados'
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= '    Registrados en CG producto del auxiliar'
.head 8 -  Set tblResumenCuadre.colResDebito = dfResContaDebLoc
.head 8 -  Set tblResumenCuadre.colResCredito = dfResContaCredLoc
.head 8 -  Set tblResumenCuadre.colResNeto = dfResContaNeto
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= '    Registrados en el auxiliar y contabilizados'
.head 8 -  Set tblResumenCuadre.colResDebito = dfResAuxDebLoc
.head 8 -  Set tblResumenCuadre.colResCredito = dfResAuxCredLoc
.head 8 -  Set tblResumenCuadre.colResNeto = dfResAuxNeto
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= '    Diferencia'
.head 8 -  Set tblResumenCuadre.colResDebito = dfResDifDebLoc
.head 8 -  Set tblResumenCuadre.colResCredito = dfResDifCredLoc
.head 8 -  Set tblResumenCuadre.colResNeto = dfResDifNeto
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= 'Movimientos Registrados en CG'
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= '    Directamente en CG'
.head 8 -  Set tblResumenCuadre.colResDebito = dfResCGDebLoc
.head 8 -  Set tblResumenCuadre.colResCredito = dfResCGCredLoc
.head 8 -  Set tblResumenCuadre.colResNeto = dfResCGNetoLoc
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= '    Producto de otro auxiliar'
.head 8 -  Set tblResumenCuadre.colResDebito = dfResOtrosDebLoc
.head 8 -  Set tblResumenCuadre.colResCredito = dfResOtrosCredLoc
.head 8 -  Set tblResumenCuadre.colResNeto = dfResOtrosNetoLoc
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= '    Total:'
.head 8 -  Set tblResumenCuadre.colResDebito = dfResTotCGDebLoc
.head 8 -  Set tblResumenCuadre.colResCredito = dfResTotCGCredLoc
.head 8 -  Set tblResumenCuadre.colResNeto = dfResTotCGNetoLoc
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= 'Movimientos registrados en el Auxiliar'
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= '    No contabilizados'
.head 8 -  Set tblResumenCuadre.colResDebito = dfResAuxNCDebLoc
.head 8 -  Set tblResumenCuadre.colResCredito = dfResAuxNCCredLoc
.head 8 -  Set tblResumenCuadre.colResNeto = dfResAuxNCNetoLoc
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= '    Contabilizados fuera del período seleccionado'
.head 8 -  Set tblResumenCuadre.colResDebito = dfResAuxFPDebLoc
.head 8 -  Set tblResumenCuadre.colResCredito = dfResAuxFPCredLoc
.head 8 -  Set tblResumenCuadre.colResNeto = dfResAuxFPNetoLoc
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  Set lnLinea = lnLinea + 1
.head 8 -  Call SalTblInsertRow( tblResumenCuadre, lnLinea )
.head 8 -  Set tblResumenCuadre.colResDetalle= '    Total:'
.head 8 -  Set tblResumenCuadre.colResDebito = dfResAuxTotalDebLoc
.head 8 -  Set tblResumenCuadre.colResCredito = dfResAuxTotalCredLoc
.head 8 -  Set tblResumenCuadre.colResNeto = dfResAuxTotalNetoLoc
.head 8 -  Call SalTblSetRowFlags( tblResumenCuadre, SalTblQueryContext( tblResumenCuadre ), ROW_Edited|ROW_New, FALSE )
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 8 -  !
.head 7 -  !
.head 7 -  Return lbOk
.head 5 +  Function: Create
.head 6 -  Description:
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! Call SalTblDefineRowHeader( tblResumenCuadre, '.', 165, TBL_RowHdr_ShareColor|TBL_RowHdr_Visible, tblResumenCuadre.colResDetalle )
.head 7 -  ! Call SalHideWindow( tblResumenCuadre.colResDetalle )
.head 5 +  Function: Destroy
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  Boolean: lbOk
.head 6 +  Actions
.head 7 -  Set lbOk = TRUE
.head 7 -  !
.head 7 -  !
.head 7 -  Return TRUE
.head 5 +  ! Function: FormatoDecimales
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  String: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  String: sMascara
.head 7 -  Number: nDecimales
.head 6 +  Actions 
.head 7 -  Set nDecimales = 0
.head 7 -  Set sMascara = "#,##0."
.head 7 +  While nDecimales < fciGlobalesCG.nCantDecimales
.head 8 -  Set sMascara = sMascara || "0"
.head 8 -  Set nDecimales = nDecimales + 1
.head 7 -  Return sMascara
.head 4 -  Window Variables
.head 4 +  Message Actions
.head 5 +  On AM_SendTableDataToExcel
.head 6 -  Call LoadTable()
.head 6 -  Call SalTblSetFlagsAnyRows ( tblResumenCuadre, ROW_Selected, TRUE, 0, 0)
.head 6 -  Call SalShowWindow( tblResumenCuadre )
.head 6 -  Call SalSendClassMessage( AM_SendTableDataToExcel, wParam, lParam )
.head 6 -  Call SalHideWindow( tblResumenCuadre )
.head 5 -  !
.head 5 +  ! On WM_RBUTTONDOWN
.head 6 -  ! Evita que SQLWindows intercepte este mensaje y reaccione igual que si se hubiera
.head 6 -  ! presionado el botón izquierdo
.head 6 -  !
.head 6 -  ! Set vsItemResumen = 'dfResContaDebLoc'
.head 6 -  ! Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 6 -  Return FALSE
.head 5 +  ! On WM_RBUTTONUP
.head 6 -  ! Desplegar la versión de los tools
.head 6 +  If wParam = MK_CONTROL
.head 7 -  Call DisplayToolsVersion()
.head 6 -  ! Crea el menú de despliegue como un menú flotante en la ventana
.head 6 +  Else
.head 7 -  !
.head 7 -  Set vsItemResumen = 'dfResContaDebLoc'
.head 7 -  Call SalTrackPopupMenu( hWndForm, 'menuCGAuxWizResumen',
TPM_CursorX | TPM_CursorY | TPM_RightButton, 0, 0 )
.head 3 +  Picture: picTabPaso0
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65350000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsToolbar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.58"
.head 5 -  Top: 1.821"
.head 5 -  Width:  1.7"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Yes
.head 4 -  Editable? Class Default
.head 4 -  File Name:
.head 4 -  Storage: Class Default
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Fit: Class Default
.head 4 -  Scaling
.head 5 -  Width:  Class Default
.head 5 -  Height:  Class Default
.head 4 -  Corners: Class Default
.head 4 -  Border Style: Class Default
.head 4 -  Border Thickness: Class Default
.head 4 -  Tile To Parent? Class Default
.head 4 -  Border Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 +  Picture: picTabPaso1
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6531000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsToolbar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.28"
.head 5 -  Top: 1.917"
.head 5 -  Width:  2.7"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Editable? Class Default
.head 4 -  File Name:
.head 4 -  Storage: Class Default
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Fit: Class Default
.head 4 -  Scaling
.head 5 -  Width:  Class Default
.head 5 -  Height:  Class Default
.head 4 -  Corners: Class Default
.head 4 -  Border Style: Class Default
.head 4 -  Border Thickness: Class Default
.head 4 -  Tile To Parent? Class Default
.head 4 -  Border Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 -  Line
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 45410
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Coordinates
.head 5 -  Begin X:  3.9"
.head 5 -  Begin Y:  5.667"
.head 5 -  End X:  15.153"
.head 5 -  End Y:  5.667"
.head 4 -  Visible? No
.head 4 -  Line Style: Solid
.head 4 -  Line Thickness: 1
.head 4 -  Line Color: Default
.head 3 +  Picture: picTabPaso3
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65320000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsToolbar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 14.08"
.head 5 -  Top: 1.655"
.head 5 -  Width:  1.6"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Editable? Class Default
.head 4 -  File Name:
.head 4 -  Storage: Class Default
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Fit: Class Default
.head 4 -  Scaling
.head 5 -  Width:  Class Default
.head 5 -  Height:  Class Default
.head 4 -  Corners: Class Default
.head 4 -  Border Style: Class Default
.head 4 -  Border Thickness: Class Default
.head 4 -  Tile To Parent? Class Default
.head 4 -  Border Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 +  Picture: picTabPaso5
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65340000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsToolbar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 14.08"
.head 5 -  Top: 1.655"
.head 5 -  Width:  1.6"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Editable? Class Default
.head 4 -  File Name:
.head 4 -  Storage: Class Default
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Fit: Class Default
.head 4 -  Scaling
.head 5 -  Width:  Class Default
.head 5 -  Height:  Class Default
.head 4 -  Corners: Class Default
.head 4 -  Border Style: Class Default
.head 4 -  Border Thickness: Class Default
.head 4 -  Tile To Parent? Class Default
.head 4 -  Border Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 +  Picture: picTabPaso4
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsToolbar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 14.48"
.head 5 -  Top: 1.738"
.head 5 -  Width:  1.2"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Editable? Class Default
.head 4 -  File Name:
.head 4 -  Storage: Class Default
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Fit: Class Default
.head 4 -  Scaling
.head 5 -  Width:  Class Default
.head 5 -  Height:  Class Default
.head 4 -  Corners: Class Default
.head 4 -  Border Style: Class Default
.head 4 -  Border Thickness: Class Default
.head 4 -  Tile To Parent? Class Default
.head 4 -  Border Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 +  Picture: picTabPaso40
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsToolbar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.28"
.head 5 -  Top: 2.071"
.head 5 -  Width:  2.2"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Editable? Class Default
.head 4 -  File Name:
.head 4 -  Storage: Class Default
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Fit: Class Default
.head 4 -  Scaling
.head 5 -  Width:  Class Default
.head 5 -  Height:  Class Default
.head 4 -  Corners: Class Default
.head 4 -  Border Style: Class Default
.head 4 -  Border Thickness: Class Default
.head 4 -  Tile To Parent? Class Default
.head 4 -  Border Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 +  Picture: picTabPaso41
.data CLASSPROPSSIZE
0000: 1700
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D65330000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsToolbar
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 7.58"
.head 5 -  Top: 2.071"
.head 5 -  Width:  2.2"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? No
.head 4 -  Editable? Class Default
.head 4 -  File Name:
.head 4 -  Storage: Class Default
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Fit: Class Default
.head 4 -  Scaling
.head 5 -  Width:  Class Default
.head 5 -  Height:  Class Default
.head 4 -  Corners: Class Default
.head 4 -  Border Style: Class Default
.head 4 -  Border Thickness: Class Default
.head 4 -  Tile To Parent? Class Default
.head 4 -  Border Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Message Actions
.head 2 +  Functions
.head 3 -  !
.head 3 -  ! Funciones de Inicialización
.head 3 +  Function: InitProcess
.head 4 -  Description: Funcion Redefinible que es llamada antes de
desplegar la ventana del Asistente. Debe utilizarse
para inicializar valores y/o parametros generales.
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  !
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  ! Se inicializan las clases funcionales utilizadas
.head 5 +  If lbOk
.head 6 -  Set lbOk = vfciCGAuxWiz.InitInstance()
.head 5 -  !
.head 5 -  !
.head 5 -  ! Se inicializan las variables del Wizard
.head 5 +  If lbOk
.head 6 -  Set lbOk = InicializarDatosWizard()
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: CargarDatos
.head 4 -  Description: Funcion que permite ejecutar acciones
una vez creados todos los objetos
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  !
.head 5 -  !
.head 5 -  Set lbOk = CargarModulos('')
.head 5 -  !
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: InicializarDatosWizard
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Set nTABPaso0 = 0
.head 5 -  Set nTABPaso1 = 1
.head 5 -  Set nTABPaso2 = 2
.head 5 -  Set nTABPaso3 = 3
.head 5 -  Set nTABPaso4 = 4
.head 5 -  Set nTABPaso5 = 5
.head 5 -  Set nTABPaso6 = 6
.head 5 -  Set nTABPaso7 = 7
.head 5 -  Set nTABPaso8 = 8
.head 5 -  Set nTABPaso9 = 9
.head 5 -  !
.head 5 -  Set vbCuadreNuevo = TRUE
.head 5 -  ! Set vnCodigoCuadre = -1
.head 5 -  ! Por el momento se asume que siempre se va a cuadrar el mismo
.head 5 -  Set vnCodigoCuadre = 1
.head 5 -  !
.head 5 -  Set isFiltroCuentas = "'ND'"
.head 5 -  !
.head 5 -  !
.head 5 -  Set vsItemResumen = STRING_Null
.head 5 -  !
.head 5 -  Set vnPrevTab = 4
.head 5 -  !
.head 5 -  !
.head 5 -  Return TRUE
.head 3 -  !
.head 3 -  !
.head 3 -  ! Funciones de Validacion
.head 3 +  Function: ValidateTabInfo
.head 4 -  Description: REDEFINIDA - Permite validar si se permite
avanzar al siguiente Tab.
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  !
.head 5 +  If dlgCGAuxWiz.nCurrentTab = nTABPaso0
.head 6 -  Set lbOk = Valida_Paso0()
.head 5 +  Else If dlgCGAuxWiz.nCurrentTab = nTABPaso1
.head 6 -  Set lbOk = Valida_Paso1()
.head 5 +  Else If dlgCGAuxWiz.nCurrentTab = nTABPaso2
.head 6 -  Set lbOk = Valida_Paso2()
.head 5 +  Else If dlgCGAuxWiz.nCurrentTab = nTABPaso3
.head 6 -  Set lbOk = Valida_Paso3()
.head 5 +  Else If dlgCGAuxWiz.nCurrentTab = nTABPaso4
.head 6 -  Set lbOk = Valida_Paso4()
.head 5 +  Else If dlgCGAuxWiz.nCurrentTab = nTABPaso5
.head 6 -  Set lbOk = Valida_Paso5()
.head 5 +  Else
.head 6 -  Set lbOk = FALSE
.head 6 -  Call SPSMessageBox(
'Error, validación del TAB no definida',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  !
.head 5 -  !
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: Valida_Paso0
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  Boolean: lbRowSeleccionado
.head 5 -  !
.head 5 -  Number: lnIndice
.head 5 -  Window Handle: hwndColumna
.head 5 -  !
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  Set lbRowSeleccionado = SalTblAnyRows( tblCuadresCG, ROW_Selected, 0 )
.head 5 -  !
.head 5 +  If lbRowSeleccionado
.head 6 +  Select Case SPSMessageBox(
'¿ Desea hacer un nuevo cuadre o abrir el cuadre seleccionado?',
'Advertencia',
MBF_IconQuestion, '&Nuevo,&Abrir' )
.head 7 +  Case MB_Button1
.head 8 -  !
.head 8 -  ! Si el usuario le da siguiente, se asume que desea hacer un cuadre nuevo
.head 8 -  Set lbOk = NewCuadres()
.head 8 -  !
.head 8 -  Break
.head 7 -  ! Caer al return en cualquiera de los casos IDYES o IDNO
.head 7 +  Case MB_Button2
.head 8 -  !
.head 8 -  Set lbOk = OpenCuadres()
.head 8 -  Break
.head 5 +  Else
.head 6 -  Call SPSMessageBox(
'Se realizará un nuevo cuadre, la siguiente ventana le solicitará los datos generales para iniciar el proceso',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 6 -  Set lbOk = NewCuadres()
.head 5 -  !
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: Valida_Paso1
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  !
.head 5 -  Number: lnIndice
.head 5 -  !
.head 5 -  String: lsNombreModulo
.head 5 -  !
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  ! Validaciones de datos de la ventana
.head 5 +  If TRUE
.head 6 -  ! Valida Fecha Inicial
.head 6 +  If lbOk
.head 7 +  If NOT dfFechaIni
.head 8 -  Call SPSMessageBox(
'Debe seleccionar una fecha inicial para el cuadre.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 8 -  Call picTabs.BringToTop( nTABPaso1, TRUE )
.head 8 -  Set dlgCGAuxWiz.nCurrentTab = nTABPaso1
.head 8 -  Call SalSetFocus( dfFechaIni )
.head 8 -  Set lbOk = FALSE
.head 6 -  !
.head 6 -  ! Valida Fecha Final
.head 6 +  If lbOk
.head 7 +  If NOT dfFechaFin
.head 8 -  Call SPSMessageBox(
'Debe seleccionar una fecha final para el cuadre.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 8 -  Call picTabs.BringToTop( nTABPaso1, TRUE )
.head 8 -  Set dlgCGAuxWiz.nCurrentTab = nTABPaso1
.head 8 -  Call SalSetFocus( dfFechaFin )
.head 8 -  Set lbOk = FALSE
.head 6 -  !
.head 6 -  ! Valida Descripcion
.head 6 +  If lbOk
.head 7 +  If NOT dfDescripcion
.head 8 -  Call SPSMessageBox(
'Debe digitar una breve descripción o identificación para el cuadre que va a realizar.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 8 -  Call picTabs.BringToTop( nTABPaso1, TRUE )
.head 8 -  Set dlgCGAuxWiz.nCurrentTab = nTABPaso1
.head 8 -  Call SalSetFocus( dfDescripcion )
.head 8 -  Set lbOk = FALSE
.head 6 -  !
.head 6 -  ! Valida que el usuario haya escogido un modulo para cuadre 
.head 6 +  If lbOk
.head 7 -  Set lnIndice = SalListQuerySelection ( lbModOrigen )
.head 7 +  If lnIndice = LB_Err
.head 8 -  Call SPSMessageBox(
'Debe seleccionar algún módulo para realizar el cuadre.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 8 -  Call picTabs.BringToTop( nTABPaso1, TRUE )
.head 8 -  Set dlgCGAuxWiz.nCurrentTab = nTABPaso1
.head 8 -  Call SalSetFocus( lbModOrigen )
.head 8 -  Set lbOk = FALSE
.head 7 +  Else
.head 8 -  !
.head 8 -  Set lbOk = TRUE
.head 8 -  Call SalListQueryText ( lbModOrigen, lnIndice, lsNombreModulo )
.head 8 -  Call SPSMessageBox(
'Se ha seleccionado el módulo de: ' || lsNombreModulo || ' para el cuadre.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 8 -  !
.head 8 -  Set isNombreModulo = lsNombreModulo
.head 8 -  !
.head 8 -  Set isModuloCuadre = lbModOrigen.GetModulo()
.head 8 -  !
.head 8 -  If isModuloCuadre = CC_ORIGEN
.head 8 -  Else If isModuloCuadre = CP_ORIGEN
.head 8 -  Else If isModuloCuadre = CB_ORIGEN
.head 8 -  Else If isModuloCuadre = CI_ORIGEN
.head 8 -  Else If isModuloCuadre = AF_ORIGEN
.head 8 +  Else
.head 9 -  Call SPSMessageBox(
'El cuadre con el módulo de ' || lsNombreModulo  || ' todavía no está soportado, por favor seleccione un módulo diferente.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 9 -  Call picTabs.BringToTop( nTABPaso1, TRUE )
.head 9 -  Call SalSetFocus( lbModOrigen )
.head 9 -  Set lbOk = FALSE
.head 5 -  !
.head 5 -  ! Se carga la información del módulo
.head 5 +  If lbOk
.head 6 -  Set lbOk = CargaInfoModulo(isModuloCuadre)
.head 6 -  !
.head 5 -  !
.head 5 -  !
.head 5 +  If lbOk
.head 6 -  !
.head 6 +  If NOT (vfciCGAuxWiz.idtFechaDesde = dfFechaIni) OR NOT (vfciCGAuxWiz.idtFechaHasta = dfFechaFin)
.head 7 -  !
.head 7 -  Set vbRefrescarDatos = TRUE
.head 7 -  !
.head 7 +  If vbRefrescarDatos AND NOT vbCuadreNuevo
.head 8 -  Call SPSMessageBox(
'Dado que se han cambiado las fechas, se deberán refrescar los datos para el cuadre de auxiliares.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 6 -  !
.head 6 -  !
.head 6 -  ! Se actuallizan las variables de instancia de la clase
.head 6 -  Set vfciCGAuxWiz.idtFechaDesde = dfFechaIni
.head 6 -  Set vfciCGAuxWiz.idtFechaHasta = dfFechaFin
.head 6 -  !
.head 5 -  !
.head 5 -  ! Se graba la información del cuadre
.head 5 -  Set lbOk = lbOk AND SaveCuadres(vbCuadreNuevo)
.head 5 +  If lbOk 
.head 6 -  Set vbCuadreNuevo = FALSE
.head 5 -  !
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: Valida_Paso2
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  String: lsFiltroNuevoCuentas
.head 5 -  ! Bug 137566 lgonzalez ini --->
.head 5 -  Number: lnCantCuentasSeleccionadas
.head 5 -  ! Bug 137566 lgonzalez fin <---
.head 5 -  !
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 5 -  ! Cargar los Datos a las tablas Temporales y cálculo del cuadro resumen
.head 5 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 5 -  !
.head 5 -  ! Obtiene las cuentas marcadas de la tabla tblSelCuentas
.head 5 +  ! Bug 137566 lgonzalez ini --->
.head 6 -  ! Set lbOk = ObtenerCuentasMarcadas(lsFiltroNuevoCuentas)
.head 5 -  Set lbOk = ObtenerCuentasMarcadas(lsFiltroNuevoCuentas, lnCantCuentasSeleccionadas)
.head 5 -  ! Bug 137566 lgonzalez fin <---
.head 5 -  !
.head 5 +  If lsFiltroNuevoCuentas
.head 6 -  !
.head 6 -  ! Se compara el filtro nuevo de cuentas con el filtro que anteriormente se había seleccionado para determinar si hubo algún cambio.
.head 6 +  If isFiltroCuentas AND NOT vbRefrescarDatos
.head 7 -  !
.head 7 +  If (NOT isFiltroCuentas = lsFiltroNuevoCuentas)
.head 8 -  !
.head 8 +  Select Case SPSMessageBox(
'La selección de cuentas o rangos de fechas ha cambiado, desea refrescar los datos con las nuevas cuentas seleccionadas o desea continuar con la selección que había hecho anteriormente?',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconQuestion, '&Refrescar,&Mantener selección anterior' )
.head 9 +  Case MB_Button1
.head 10 -  !
.head 10 -  Set vbRefrescarDatos = TRUE
.head 10 -  !
.head 10 -  Break
.head 9 -  ! caer al return en cualquiera de los casos IDYES o IDNO
.head 9 +  Case MB_Button2
.head 10 -  !
.head 10 -  Break
.head 7 +  Else
.head 8 -  ! El Filtro es el mismo, no se debe volver a cargar
.head 8 -  Set vbRefrescarDatos = FALSE
.head 6 -  !
.head 6 -  !
.head 6 +  If lbOk AND vbRefrescarDatos
.head 7 -  !
.head 7 -  Call VisWaitCursor( TRUE )
.head 7 -  !
.head 7 -  ! Se almacena el filtro de cuentas a utilizar
.head 7 -  Set isFiltroCuentas = lsFiltroNuevoCuentas
.head 7 -  ! Bug 137566 lgonzalez ini --->
.head 7 -  Set vfciCGAuxWiz.ibExisteFiltroCuentas = (tblSelCuentas.nTotRows != lnCantCuentasSeleccionadas)
.head 7 -  ! Bug 137566 lgonzalez fin <---
.head 7 -  !
.head 7 -  ! Si se trata de un cuadre nuevo entonces se deben cargar los datos en las tablas
.head 7 -  Set lbOk = vfciCGAuxWiz.CargaDatosCGAux( isFiltroCuentas, vnCodigoCuadre, dfFechaIni, dfFechaFin )
.head 7 -  !
.head 7 -  Call VisWaitCursor( FALSE )
.head 7 -  !
.head 7 +  If lbOk AND bDebugging
.head 8 -  !
.head 8 -  Call SPSMessageBox(
'Carga de Datos Exitosa!',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 6 -  !
.head 5 +  Else
.head 6 -  Call SPSMessageBox(
'No hay cuentas seleccionadas para el cuadre contable, debe seleccionar al menos una cuenta contable.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 6 -  Set lbOk = FALSE
.head 5 -  !
.head 5 -  ! Se calculan los datos del cuadro resumen
.head 5 +  If lbOk AND vbRefrescarDatos
.head 6 -  !
.head 6 -  ! ! INICIO GHA -CASO #24327-
.head 6 -  Set bLiberaRecursos = TRUE
.head 6 -  Set lbOk = CalcularResumen()
.head 6 -  Set bLiberaRecursos = FALSE
.head 6 -  ! FIN GHA -CASO #24327-
.head 6 -  !
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: Valida_Paso3
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  !
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  ! Se limpian los Filtros que pueden estar activos
.head 5 -  Call LimpiarFiltros()
.head 5 -  !
.head 5 -  ! dvargas Caso => 36040
.head 5 -  !
.head 5 -  Call AcomodaCuadros()
.head 5 -  !
.head 5 -  ! dvargas Caso <= 36040
.head 5 -  !
.head 5 -  ! Se popula la tabla de Cuadre Conta
.head 5 +  If lbOk
.head 6 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 5 -  !
.head 5 -  ! Se popula la tabla de Cuadre Aux
.head 5 +  If lbOk
.head 6 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: Valida_Paso4
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  !
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  Set lbOk = CalcularBalanceCuentas(REG_TODOS, AMBAS)
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: Valida_Paso5
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  !
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 +  Select Case SPSMessageBox(
'¿ Desea finalizar el proceso ?',
'Advertencia',
MBF_IconQuestion, '&Sí,&No' )
.head 6 +  Case MB_Button1
.head 7 -  !
.head 7 -  Set lbOk = TRUE
.head 7 -  !
.head 7 +  If dlgCGAuxWiz.nCurrentTab > 1
.head 8 -  !
.head 8 +  Select Case SPSMessageBox(
'¿ Desea almacenar los datos del proceso actual ?',
'Advertencia',
MBF_IconQuestion, '&Sí,&No' )
.head 9 +  Case MB_Button1
.head 10 -  !
.head 10 -  Set lbOk = SaveCuadres(FALSE)
.head 10 -  !
.head 10 -  Break
.head 9 -  ! Caer al return en cualquiera de los casos IDYES o IDNO
.head 9 +  Case MB_Button2
.head 10 -  !
.head 10 +  If vbCuadreNuevo
.head 11 -  Set lbOk = vfciCGAuxWiz.DeleteCuadre(vnCodigoCuadre)
.head 10 -  !
.head 10 -  Break
.head 8 -  !
.head 7 -  Call SalEndDialog(hWndForm,0)
.head 7 -  Break
.head 6 -  ! Caer al return en cualquiera de los casos IDYES o IDNO
.head 6 +  Case MB_Button2
.head 7 -  Set lbOk = FALSE
.head 7 -  Break
.head 5 -  !
.head 5 -  Return lbOk
.head 3 -  !
.head 3 -  ! Funciones Redefinidas
.head 3 +  Function: CreateComplete
.head 4 -  Description: Funcion que permite ejecutar acciones
una vez creados todos los objetos
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Call picTabs.BringToTop( nTABPaso0, TRUE )
.head 5 -  Set dlgCGAuxWiz.nCurrentTab = nTABPaso0
.head 5 -  !
.head 5 -  ! Por problemas aún no identificados, se hace necesario reasignar el tamaño de algunos objetos
.head 5 -  Call SalSetWindowSize( pbRefrescarCuadres, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbCambiarVista, 0.5, 0.29 )
.head 5 -  !
.head 5 -  Call SalSetWindowSize( pbFiltroCuadreConta, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbExcelCuadreConta, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbVerAsientoCuadreConta, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbColumnsCuadreConta, 0.5, 0.29 )
.head 5 -  !
.head 5 -  Call SalSetWindowSize( pbFiltroCuadreAux, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbExcelCuadreAux, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbVerAsientoCuadreAux, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbColumnsCuadreAux, 0.5, 0.29 )
.head 5 -  !
.head 5 -  Call SalSetWindowSize( pbNewCtas, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbCargaCtas, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbExcelCtas, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbEliminarCtas, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbSelecAllCtas, 0.5, 0.29 )
.head 5 -  !
.head 5 -  Call SalSetWindowSize( dfFechaIni, 1.7, 0.25 )
.head 5 -  Call SalSetWindowSize( dfFechaFin, 1.7, 0.25 )
.head 5 -  !
.head 5 -  Call SalSetWindowSize( pbNewCuadres, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbDelCuadres, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbOpenCuadres, 0.5, 0.29 )
.head 5 -  !
.head 5 -  ! Botones del Balance de Cuentas
.head 5 -  Call SalSetWindowSize( pbExcelBalCtas, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( pbExcelBalCtas, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( obMonedaLoc, 0.5, 0.29 )
.head 5 -  Call SalSetWindowSize( obMonedaDol, 0.5, 0.29 )
.head 5 -  !
.head 5 -  ! Habilita o deshabilita los campos de doble moneda
.head 5 +  If not fciGlobalesSPS.sDobleMonedaCompania = CG_SI
.head 6 -  Call SalHideWindow(tblCuadreConta.colContaDebitoDol)
.head 6 -  Call SalHideWindow(tblCuadreConta.colContaCreditoDol)
.head 6 -  Call SalHideWindow(tblCuadreAux.colAuxCreditoDol)
.head 6 -  Call SalHideWindow(tblCuadreAux.colAuxDebitoDol)
.head 5 -  !
.head 5 -  ! dvargas => Caso 36040 12/01/10
.head 5 -  !
.head 5 -  Call SalHideWindow ( picLogo )												
.head 5 -  Call SalShowWindow ( picLogo2 )												
.head 5 -  !
.head 5 -  ! ! dvargas => Caso 36040 12/01/10
.head 5 -  Return TRUE
.head 3 +  Function: CancelProcess
.head 4 -  Description: Funcion redefinible que permite personalizar
la cancelacion del proceso.
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: bOk
.head 4 +  Actions
.head 5 +  Select Case SPSMessageBox(
'¿ Desea cancelar este proceso ?',
'Advertencia',
MBF_IconQuestion, '&Sí,&No' )
.head 6 +  Case MB_Button1
.head 7 -  !
.head 7 -  Set bOk = TRUE
.head 7 -  !
.head 7 +  If dlgCGAuxWiz.nCurrentTab > 1
.head 8 -  !
.head 8 +  Select Case SPSMessageBox(
'¿ Desea almacenar los datos del proceso actual ?',
'Advertencia',
MBF_IconQuestion, '&Sí,&No' )
.head 9 +  Case MB_Button1
.head 10 -  !
.head 10 -  Set bOk = SaveCuadres(FALSE)
.head 10 -  !
.head 10 -  Break
.head 9 -  ! Caer al return en cualquiera de los casos IDYES o IDNO
.head 9 +  Case MB_Button2
.head 10 -  !
.head 10 +  If vbCuadreNuevo
.head 11 -  Set bOk = vfciCGAuxWiz.DeleteCuadre(vnCodigoCuadre)
.head 10 -  !
.head 10 -  Break
.head 8 -  !
.head 7 -  Break
.head 6 -  ! Caer al return en cualquiera de los casos IDYES o IDNO
.head 6 +  Case MB_Button2
.head 7 -  Set bOk = FALSE
.head 7 -  Break
.head 5 -  Return bOk
.head 3 -  !
.head 3 +  Function: TabActivateFinish
.head 4 -  Description:
.head 4 -  Returns
.head 4 +  Parameters
.head 5 -  Window Handle: pwndHandle
.head 5 -  Number: pnTab
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 +  ! If (pnTab = nTABPaso1) OR (pnTab = nTABPaso0) 
.head 6 -  !
.head 6 -  Call SalShowWindow ( picLogo )												
.head 6 -  Call SalHideWindow ( picLogo2 )												
.head 6 -  !
.head 6 -  Call SalDisableWindow( pbAnterior )
.head 6 -  !
.head 5 +  ! Else
.head 6 -  !
.head 6 -  Call SalHideWindow ( picLogo )												
.head 6 -  Call SalShowWindow ( picLogo2 )												
.head 6 -  !
.head 5 -  !
.head 5 -  ! dvargas => Caso 36040 12/01/10
.head 5 -  !
.head 5 +  If (pnTab = nTABPaso1)
.head 6 -  !
.head 6 -  Call SalShowWindow ( picLogo )												
.head 6 -  Call SalShowWindow ( picLogo2 )												
.head 6 -  !
.head 6 -  Call SalDisableWindow( pbAnterior )
.head 6 -  !
.head 5 +  Else
.head 6 -  !
.head 6 -  Call SalHideWindow ( picLogo )												
.head 6 -  Call SalShowWindow ( picLogo2 )												
.head 6 -  !
.head 5 -  !
.head 5 -  ! dvargas => Caso 36040 12/01/10
.head 5 -  !
.head 5 -  ! Oculta los botones de moneda si 
.head 5 +  If (pnTab = nTABPaso3) OR (pnTab = nTABPaso5) 
.head 6 +  If not fciGlobalesSPS.sDobleMonedaCompania = CG_SI
.head 7 -  Call SalHideWindow(obMonedaDol)
.head 7 -  Call SalHideWindow(obMonedaLoc)
.head 3 -  !
.head 3 -  !
.head 3 -  ! Otras funciones 
.head 3 +  Function: CargarModulos
.head 4 -  Description: Esta función carga los módulos que pueden salir en la lista
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 +  String: psModulo
.head 6 -  ! Módulo que debe aparecer seleccionado
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  String: lsListaModulosTmp
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  !
.head 5 -  ! Truco para engañar a la clase para indicarle que solo CC se debe desplegar en la lista
.head 5 -  Set lsListaModulosTmp = ModulosInstalados
.head 5 -  Set ModulosInstalados = 'CC,CP,CB,CI,AF'
.head 5 -  !
.head 5 -  Call SalListClear ( lbModOrigen )
.head 5 +  If psModulo
.head 6 -  Set lbOk =  lbModOrigen.DesplegarModulos( psModulo )
.head 5 +  Else
.head 6 -  Set lbOk =  lbModOrigen.DesplegarModulos( 'CC' )
.head 5 -  !
.head 5 -  Call SalListSelectString ( lbModOrigen, 0, NombreModuloExactus(psModulo) )
.head 5 -  !
.head 5 -  !
.head 5 -  ! Se restaura el valor de la variable ModulosInstalados
.head 5 -  Set ModulosInstalados = lsListaModulosTmp
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: CargarCuentas
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 +  String: psListaCuentas
.head 6 -  ! Recibe la lista de cuentas a cargar en pantalla, si este parámetro viene vacío 
entonces se realiza la carga desde la base de datos
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  !
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 +  If psListaCuentas
.head 6 -  !
.head 6 -  Set isListaCuentasCuadre = psListaCuentas
.head 6 -  Set isFiltroCuentas = psListaCuentas
.head 6 -  !
.head 6 -  Set lbOk =  tblSelCuentas.LimiteSeleccion(tblSelCuentas.CreateWHERE())
.head 5 +  Else
.head 6 -  !
.head 6 -  ! Pregunta si desea hacer la carga nuevamente
( solo pregunta si ya hay cuentas cargadas)
.head 6 +  If lbOk AND tblSelCuentas.nTotRows > 0
.head 7 -  !
.head 7 +  Select Case SPSMessageBox(
'Si vuelve a realizar la carga perderá los datos de la tabla ¿Está seguro que desea volver a cargar las cuentas?',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconQuestion, '&Cargar,&Cancelar' )
.head 8 +  Case MB_Button1
.head 9 -  Set lbOk = TRUE
.head 9 -  Break
.head 8 -  ! caer al return en cualquiera de los casos IDYES o IDNO
.head 8 +  Case MB_Button2
.head 9 -  Set lbOk = FALSE
.head 9 -  Break
.head 6 -  !
.head 6 -  !
.head 6 -  ! Realiza la carga de cuentas
.head 6 +  If lbOk
.head 7 -  Set lbOk = vfciCGAuxWiz.CargarCtasContables(isModuloCuadre, isListaCuentasCuadre)
.head 7 +  If isListaCuentasCuadre
.head 8 -  !
.head 8 -  ! Call SalSendMsg( tblSelCuentas, AM_PopulateTable, 0, 0 )
.head 8 -  Call tblSelCuentas.LimiteSeleccion(tblSelCuentas.CreateWHERE())
.head 7 +  Else
.head 8 -  !
.head 8 -  Call SPSMessageBox(
'No hay Cuentas Contables para cargar',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: CargaInfoModulo
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  String: psModulo
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  Window Handle: hwndColumna
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 +  If NOT vfciCGAuxWiz.CargaInfoModulo(psModulo, isEnteAuxTabla, isEnteAuxColumnas, isEnteAuxNombreCol, isEnteAuxNombre )
.head 6 -  !
.head 6 -  !
.head 6 -  !
.head 6 -  Call SPSMessageBox(
'No se pudo cargar la información del módulo seleccionado',
'dlgCGAuxWiz - CargaInfoModulo()',
MBF_IconExclamation, CONTINUAR )
.head 6 -  Set lbOk = FALSE
.head 5 -  !
.head 5 -  ! Se ponen los nombres de acuerdo con el módulo seleccionado
.head 5 +  If lbOk AND isEnteAuxNombre
.head 6 -  !
.head 6 -  Set hwndColumna = SalTblGetColumnWindow( dlgCGAuxWiz.tblEntesAuxiliar, 1, COL_GetID )
.head 6 -  Set lbOk = SalTblSetColumnTitle ( hwndColumna, isEnteAuxNombre )
.head 6 -  !
.head 5 +  Else
.head 6 -  !
.head 6 -  Call SPSMessageBox(
'No se ha definido el nombre del ente auxiliar!',
'dlgCGAuxWiz - CargaInfoModulo()',
MBF_IconExclamation, CONTINUAR )
.head 6 -  !
.head 6 -  Set lbOk = FALSE
.head 6 -  !
.head 5 -  !
.head 5 -  Set isNombreModulo = NombreModuloExactus(psModulo)
.head 5 -  !
.head 5 -  Return lbOk
.head 3 -  !
.head 3 +  Function: PoblarEnteAux
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: lnRow
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  !
.head 5 -  !
.head 5 -  ! Se llama a OnCreate() para que se inicialicen las variables sDBName, etc.. ya que estas son dinámicas
.head 5 -  Call dlgCGAuxWiz.tblEntesAuxiliar.OnCreate()
.head 5 -  !
.head 5 -  Call dlgCGAuxWiz.tblEntesAuxiliar.LimiteSeleccion(dlgCGAuxWiz.tblEntesAuxiliar.CreateWHERE ())
.head 5 -  !
.head 5 -  ! Se llama a OnDestroy() para desconectar cursor
.head 5 -  ! Call dlgCGAuxWiz.tblEntesAuxiliar.OnDestroy()
.head 3 -  !
.head 3 +  Function: ObtenerCuentasMarcadas
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Receive String: psCuentasMarcadas
.head 5 -  ! Bug 137566 lgonzalez ini --->
.head 5 -  Receive Number: pnCantCuentasMarcadas
.head 5 -  ! Bug 137566 lgonzalez fin <---
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  Number: lnCurRow
.head 4 +  Actions
.head 5 -  !
.head 5 -  Set lbOk = TRUE
.head 5 -  ! Bug 137566 lgonzalez ini --->
.head 5 -  Set pnCantCuentasMarcadas = 0
.head 5 -  ! Bug 137566 lgonzalez fin <---
.head 5 -  !
.head 5 -  ! Temporalmente se le pasa la misma lista
.head 5 -  ! Set psCuentasMarcadas = isListaCuentasCuadre
.head 5 -  !
.head 5 -  Set lnCurRow = TBL_MinRow
.head 5 -  !
.head 5 +  While SalTblFindNextRow( tblSelCuentas, lnCurRow, ROW_UnusedFlag1, ROW_Hidden | ROW_MarkDeleted )
.head 6 -  Call SalTblFetchRow( tblSelCuentas, lnCurRow )
.head 6 -  !
.head 6 -  ! Se agrega la cuenta a la lista
.head 6 +  If tblSelCuentas.colCuentaCG
.head 7 +  If psCuentasMarcadas
.head 8 -  Set psCuentasMarcadas = psCuentasMarcadas || ", '" || tblSelCuentas.colCuentaCG || "'"
.head 7 +  Else
.head 8 -  Set psCuentasMarcadas = "'" || tblSelCuentas.colCuentaCG || "'"
.head 6 -  !
.head 6 -  ! Bug 137566 lgonzalez ini --->
.head 6 -  Set pnCantCuentasMarcadas = pnCantCuentasMarcadas + 1
.head 6 -  ! Bug 137566 lgonzalez fin <---
.head 5 -  !
.head 5 -  !
.head 5 -  Return lbOk
.head 3 -  !
.head 3 +  Function: MostarDocumentoAsociado
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  String: psGUID
.head 5 -  String: psDocOrigen
.head 5 -  Number: pnDebitoLoc
.head 5 -  Number: pnDebitoDol
.head 5 -  Number: pnCreditoLoc
.head 5 -  Number: pnCreditoDol
.head 5 +  String: psDesde
.head 6 +  ! Indica desde donde se está llamando el documento
.head 7 -  ! 'A' - Auxiliar
.head 7 -  ! 'C' - Contabilidad
.head 5 -  !
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  Set lbOk = SalModalDialog( dlgCGAuxDocAsociado, hWndForm, 
			psGUID,
			psDocOrigen,
			pnDebitoLoc,
			pnDebitoDol,
			pnCreditoLoc,
			pnCreditoDol,
			psDesde
			 )
.head 5 -  !
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: DesAsociarMovimiento
.head 4 -  Description: DesAsocia el documento de la conta o auxiliar 
que está seleccionado.

Utiliza como base el de la contabilidad o el del auxiliar dependiendo del parámetro
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Boolean: pbCuadreConta
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  Number: lnRow
.head 5 -  !
.head 5 -  String: lsSqlCmd
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  !
.head 5 +  If pbCuadreConta
.head 6 -  ! Verifica que haya una línea seleccionada en la tabla CuadreConta
.head 6 +  If lbOk
.head 7 -  Set lnRow = TBL_MinRow
.head 7 -  Set lbOk = SalTblFindNextRow( tblCuadreConta, lnRow, ROW_Selected, 0 )
.head 7 +  If lbOk
.head 8 -  !
.head 8 +  If SalTblFindNextRow( tblCuadreConta, lnRow, ROW_Selected, 0 )
.head 9 -  !
.head 9 -  Call SPSMessageBox(
'Existe más de un movimiento seleccionado en la contabilidad para ligar.  Debe seleccionar solamente un movimiento.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 9 -  Set lbOk = FALSE
.head 8 +  Else
.head 9 -  !
.head 9 +  If tblCuadreConta.colContaGUIDConta = STRING_Null
.head 10 -  !
.head 10 -  Call SPSMessageBox(
'Este registro no está asociado a otro.  No se puede ejecutar el proceso solicitado.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 10 -  Set lbOk = FALSE
.head 8 -  !
.head 7 +  Else
.head 8 -  Call SPSMessageBox(
'Debe seleccionar un movimiento a ligar en la contabilidad.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 7 -  !
.head 6 -  !
.head 6 -  ! Una vez identificados los movimientos se procede a desligarlos (esto implica eliminar la entrada en la tabla CG_AUX)
.head 6 +  If lbOk
.head 7 -  !
.head 7 -  Set lbOk = vfciCGAuxWiz.DelCuadreContaAux( vnCodigoCuadre, STRING_Null, tblCuadreConta.colContaRowPointer )
.head 6 -  !
.head 5 +  Else
.head 6 -  !
.head 6 -  ! Verifica que haya una línea seleccionada en la tabla CuadreAux
.head 6 +  If lbOk
.head 7 -  Set lnRow = TBL_MinRow
.head 7 -  Set lbOk = SalTblFindNextRow( tblCuadreAux, lnRow, ROW_Selected, 0 )
.head 7 +  If lbOk
.head 8 -  !
.head 8 +  If SalTblFindNextRow( tblCuadreAux, lnRow, ROW_Selected, 0 )
.head 9 -  !
.head 9 -  Call SPSMessageBox(
'Existe más de un movimiento seleccionado en el auxiliar para ligar.  Debe seleccionar solamente un movimiento.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 9 -  Set lbOk = FALSE
.head 8 +  Else
.head 9 -  !
.head 9 +  If tblCuadreAux.colAuxGUIDAux = STRING_Null
.head 10 -  !
.head 10 -  Call SPSMessageBox(
'Este registro no está asociado a otro.  No se puede ejecutar el proceso solicitado.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 10 -  Set lbOk = FALSE
.head 8 -  !
.head 7 +  Else
.head 8 -  Call SPSMessageBox(
'Debe seleccionar un movimiento a ligar en el auxiliar.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 6 -  !
.head 6 -  ! Una vez identificados los movimientos se procede a desligarlos (esto implica eliminar la entrada en la tabla CG_AUX)
.head 6 +  If lbOk
.head 7 -  !
.head 7 -  Set lbOk = vfciCGAuxWiz.DelCuadreContaAux( vnCodigoCuadre, tblCuadreAux.colAuxRowPointer, STRING_Null )
.head 5 -  !
.head 5 +  If lbOk
.head 6 -  Call SPSMessageBox(
'Se desasociaron los movimientos exitosamente.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 6 -  !
.head 6 -  Set pbRefrescarCuadres.bBackgroundColor =TRUE
.head 6 -  Set pbRefrescarCuadres.bEstaParpadeando = TRUE
.head 6 -  Call SalTimerSet( pbRefrescarCuadres, TIMER_REFRESH, 500 )
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: AsociarMovimiento
.head 4 -  Description: Asocia el documento de la conta que está seleccionado con el documento del auxiliar que está seleccionado.
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  Number: lnRow
.head 5 -  !
.head 5 -  String: lsSqlCmd
.head 5 -  !
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  !
.head 5 -  ! Verifica que haya una línea seleccionada en la tabla CuadreConta
.head 5 +  If lbOk
.head 6 -  Set lnRow = TBL_MinRow
.head 6 -  Set lbOk = SalTblFindNextRow( tblCuadreConta, lnRow, ROW_Selected, 0 )
.head 6 +  If lbOk
.head 7 -  !
.head 7 +  If SalTblFindNextRow( tblCuadreConta, lnRow, ROW_Selected, 0 )
.head 8 -  !
.head 8 -  Call SPSMessageBox(
'Existe más de un movimiento seleccionado en la contabilidad para ligar.  Debe seleccionar solamente un movimiento.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 8 -  Set lbOk = FALSE
.head 7 -  !
.head 6 +  Else
.head 7 -  Call SPSMessageBox(
'Debe seleccionar un movimiento a ligar en la contabilidad.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  !
.head 5 -  !
.head 5 -  ! Verifica que haya una línea seleccionada en la tabla CuadreAux
.head 5 +  If lbOk
.head 6 -  Set lnRow = TBL_MinRow
.head 6 -  Set lbOk = SalTblFindNextRow( tblCuadreAux, lnRow, ROW_Selected, 0 )
.head 6 +  If lbOk
.head 7 -  !
.head 7 +  If SalTblFindNextRow( tblCuadreAux, lnRow, ROW_Selected, 0 )
.head 8 -  !
.head 8 -  Call SPSMessageBox(
'Existe más de un movimiento seleccionado en el auxiliar para ligar.  Debe seleccionar solamente un movimiento.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 8 -  Set lbOk = FALSE
.head 7 -  !
.head 6 +  Else
.head 7 -  Call SPSMessageBox(
'Debe seleccionar un movimiento a ligar en el auxiliar.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  !
.head 5 -  ! Una vez identificados los movimientos se procede a realizar la liga de movimientos
.head 5 +  If lbOk
.head 6 -  !
.head 6 -  Set lbOk = vfciCGAuxWiz.InsertaCuadreContaAux( vnCodigoCuadre, tblCuadreAux.colAuxRowPointer, tblCuadreConta.colContaRowPointer, 'N' )
.head 5 -  !
.head 5 +  If lbOk
.head 6 -  Call SPSMessageBox(
'La liga entre movimientos se realizó con éxito.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 6 -  !
.head 6 -  Set pbRefrescarCuadres.bBackgroundColor =TRUE
.head 6 -  Set pbRefrescarCuadres.bEstaParpadeando = TRUE
.head 6 -  Call SalTimerSet( pbRefrescarCuadres, TIMER_REFRESH, 500 )
.head 6 -  !
.head 6 -  ! Set pbRefrescarCuadreAux.bBackgroundColor =TRUE
.head 6 -  ! Set pbRefrescarCuadreAux.bEstaParpadeando = TRUE
.head 6 -  ! Call SalTimerSet( pbRefrescarCuadreAux, TIMER_REFRESH, 500 )
.head 6 -  !
.head 5 -  !
.head 5 -  !
.head 5 -  !
.head 5 -  Return lbOk
.head 3 -  !
.head 3 -  !
.head 3 +  Function: CalcularResumen
.head 4 -  Description: Calcula los datos del Cuadre Resumen y el Balance de Cuentas
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  !
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  Call VisWaitCursor( TRUE )
.head 5 -  !
.head 5 -  Set lbOk = vfciCGAuxWiz.DatosResumenCuadre(
	vnCodigoCuadre, 
	vnContaDebitoLoc, vnContaDebitoDol, vnContaCreditoLoc, vnContaCreditoDol,
	vnAuxDebitoLoc, vnAuxDebitoDol, vnAuxCreditoLoc, vnAuxCreditoDol,
	vnCGDebitoLoc, vnCGDebitoDol, vnCGCreditoLoc, vnCGCreditoDol,
	vnOtrosDebitoLoc, vnOtrosDebitoDol, vnOtrosCreditoLoc, vnOtrosCreditoDol,
	vnAuxNCDebitoLoc, vnAuxNCDebitoDol, vnAuxNCCreditoLoc, vnAuxNCCreditoDol, 
	vnAuxFPDebitoLoc, vnAuxFPDebitoDol, vnAuxFPCreditoLoc, vnAuxFPCreditoDol)
.head 5 -  !
.head 5 -  Call CambiarTipoMoneda()
.head 5 -  !
.head 5 -  !
.head 5 -  !
.head 5 -  Set lbOk = lbOk AND vfciCGAuxWiz.DatosBalanceCuentas(vnCodigoCuadre)
.head 5 -  !
.head 5 -  Set lbOk = lbOk AND tblBalanceCtas.LoadTable(REG_NINGUNO, STRING_Null)
.head 5 -  !
.head 5 -  !
.head 5 -  Call VisWaitCursor( FALSE )
.head 5 -  !
.head 5 +  If lbOk AND bDebugging
.head 6 -  !
.head 6 -  Call SPSMessageBox(
'Cálculo de Cuadre Resumen y Balance de Ctas. Exitoso!',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: VerDetalleCuentas
.head 4 -  Description: Muestra el detalle según el cuadro resumen seleccionado.
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  Number: lnOpcion
.head 5 -  String: lsDebitosCreditos
.head 5 -  !
.head 4 +  Actions
.head 5 -  !
.head 5 -  Set lbOk = TRUE
.head 5 -  Set lnOpcion = REG_NINGUNO
.head 5 -  Set lsDebitosCreditos = STRING_Null
.head 5 -  !
.head 5 +  If vsItemResumen
.head 6 -  !
.head 6 -  ! Se pone el filtro según el componente seleccionado
.head 6 +  If vsItemResumen = 'dfResContaDebLoc'
.head 7 -  !
.head 7 -  Set lnOpcion = REG_CONTA
.head 7 -  Set lsDebitosCreditos = DEBITO
.head 7 -  !
.head 6 +  Else If vsItemResumen = 'dfResContaCredLoc'
.head 7 -  !
.head 7 -  Set lsDebitosCreditos = CREDITO
.head 7 -  Set lnOpcion = REG_CONTA
.head 7 -  !
.head 6 +  Else If vsItemResumen = 'dfResContaNeto'
.head 7 -  !
.head 7 -  Set lsDebitosCreditos = AMBAS
.head 7 -  Set lnOpcion = REG_CONTA
.head 7 -  !
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResAuxDebLoc'
.head 7 -  !
.head 7 -  Set lsDebitosCreditos = DEBITO
.head 7 -  Set lnOpcion = REG_AUX
.head 7 -  !
.head 6 +  Else If vsItemResumen = 'dfResAuxCredLoc'
.head 7 -  !
.head 7 -  Set lsDebitosCreditos = CREDITO
.head 7 -  Set lnOpcion = REG_AUX
.head 6 +  Else If vsItemResumen = 'dfResAuxNeto'
.head 7 -  !
.head 7 -  Set lsDebitosCreditos = AMBAS
.head 7 -  Set lnOpcion = REG_AUX
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResDifDebLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 +  Else If vsItemResumen = 'dfResDifCredLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 +  Else If vsItemResumen = 'dfResDifNeto'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResCGDebLoc'
.head 7 -  !
.head 7 -  Set lsDebitosCreditos = DEBITO
.head 7 -  Set lnOpcion = REG_CG
.head 6 +  Else If vsItemResumen = 'dfResCGCredLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set lsDebitosCreditos = CREDITO
.head 7 -  Set lnOpcion = REG_CG
.head 6 +  Else If vsItemResumen = 'dfResCGNetoLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set lsDebitosCreditos = AMBAS
.head 7 -  Set lnOpcion = REG_CG
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResOtrosDebLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set lsDebitosCreditos = DEBITO
.head 7 -  Set lnOpcion = REG_OTROS
.head 6 +  Else If vsItemResumen = 'dfResOtrosCredLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set lsDebitosCreditos = CREDITO
.head 7 -  Set lnOpcion = REG_OTROS
.head 6 +  Else If vsItemResumen = 'dfResOtrosNetoLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set lsDebitosCreditos = AMBAS
.head 7 -  Set lnOpcion = REG_OTROS
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResTotCGDebLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 +  Else If vsItemResumen = 'dfResTotCGCredLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 +  Else If vsItemResumen = 'dfResTotCGNetoLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 -  !
.head 6 -  ! !!!! ESTOS MOVIMIENTOS NO TIENEN DETALLE DE CUENTAS
.head 6 -  ! Movimientos No Contabilizados o Fuera de Período
.head 6 +  Else If vsItemResumen = 'dfResAuxNCDebLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 +  Else If vsItemResumen = 'dfResAuxNCCredLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 +  Else If vsItemResumen = 'dfResAuxNCNetoLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 -  !
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResAuxFPDebLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 +  Else If vsItemResumen = 'dfResAuxFPCredLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 +  Else If vsItemResumen = 'dfResAuxFPNetoLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResAuxTotalDebLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 +  Else If vsItemResumen = 'dfResAuxTotalCredLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 +  Else If vsItemResumen = 'dfResAuxTotalNetoLoc'
.head 7 -  !
.head 7 -  Set lbOk = FALSE
.head 6 -  !
.head 6 +  Else
.head 7 -  !
.head 7 -  Call SPSMessageBox(
'Error - No se pudo obtener el detalle de cuentas del rubro seleccionado.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 7 -  Set lbOk = FALSE
.head 6 -  !
.head 6 -  Set vsItemResumen = STRING_Null
.head 6 -  !
.head 6 +  If NOT (lnOpcion = REG_NINGUNO)
.head 7 -  !
.head 7 -  Call CalcularBalanceCuentas(lnOpcion, lsDebitosCreditos)
.head 6 -  !
.head 5 +  Else
.head 6 -  ! Hay un error no se recibió el componente que solicita el detalle de movimientos
.head 6 -  Call SPSMessageBox(
'Error - No se pudo obtener el detalle de cuentas del rubro seleccionado.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 6 -  Set lbOk = FALSE
.head 5 -  !
.head 5 +  If lbOk
.head 6 -  Set vnPrevTab = 3
.head 5 +  Else
.head 6 -  Set vnPrevTab = 4
.head 5 -  !
.head 3 +  Function: VerDetalleResumen
.head 4 -  Description: Muestra el detalle según el cuadro resumen seleccionado.
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  !
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  !
.head 5 +  If vsItemResumen
.head 6 -  ! Se limpian los filtros de las tabla Cuadre Conta y Cuadre Aux
.head 6 -  Call LimpiarFiltros()
.head 6 -  !
.head 6 -  ! Se pasa al TAB del Paso 4 - Detalle de Movimientos para Análisis
.head 6 -  Call picTabs.BringToTop( nTABPaso4, TRUE )
.head 6 -  Set dlgCGAuxWiz.nCurrentTab = nTABPaso4
.head 6 -  !
.head 6 -  ! Se pone el filtro según el componente seleccionado
.head 6 +  If vsItemResumen = 'dfResContaDebLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = DEBITO
.head 7 -  Set tblCuadreConta.isMovimientos = CG_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResContaCredLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = CREDITO
.head 7 -  Set tblCuadreConta.isMovimientos = CG_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResContaNeto'
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = AMBAS
.head 7 -  Set tblCuadreConta.isMovimientos = CG_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 7 -  !
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResAuxDebLoc'
.head 7 -  !
.head 7 -  Set tblCuadreAux.isDebitosCreditos = DEBITO
.head 7 -  Set tblCuadreAux.isMovimientos = CG_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResAuxCredLoc'
.head 7 -  !
.head 7 -  Set tblCuadreAux.isDebitosCreditos = CREDITO
.head 7 -  Set tblCuadreAux.isMovimientos = CG_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResAuxNeto'
.head 7 -  !
.head 7 -  Set tblCuadreAux.isDebitosCreditos = AMBAS
.head 7 -  Set tblCuadreAux.isMovimientos = CG_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResDifDebLoc'
.head 7 -  !
.head 7 -  Set tblCuadreConta.isDebitosCreditos = DEBITO
.head 7 -  Set tblCuadreConta.isMovimientos = CG_ASOCIADOS
.head 7 -  Set tblCuadreAux.isDebitosCreditos = DEBITO
.head 7 -  Set tblCuadreAux.isMovimientos = CG_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar y Conta
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResDifCredLoc'
.head 7 -  !
.head 7 -  Set tblCuadreConta.isDebitosCreditos = CREDITO
.head 7 -  Set tblCuadreConta.isMovimientos = CG_ASOCIADOS
.head 7 -  Set tblCuadreAux.isDebitosCreditos = CREDITO
.head 7 -  Set tblCuadreAux.isMovimientos = CG_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar y Conta
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResDifNeto'
.head 7 -  !
.head 7 -  Set tblCuadreConta.isDebitosCreditos = AMBAS
.head 7 -  Set tblCuadreConta.isMovimientos = CG_ASOCIADOS
.head 7 -  Set tblCuadreAux.isDebitosCreditos = AMBAS
.head 7 -  Set tblCuadreAux.isMovimientos = CG_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar y Conta
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResCGDebLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = DEBITO
.head 7 -  Set tblCuadreConta.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreConta.isOrigen = "'CG'"
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResCGCredLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = CREDITO
.head 7 -  Set tblCuadreConta.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreConta.isOrigen = "'CG'"
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResCGNetoLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = AMBAS
.head 7 -  Set tblCuadreConta.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreConta.isOrigen = "'CG'"
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResOtrosDebLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = DEBITO
.head 7 -  Set tblCuadreConta.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreConta.isNOTOrigen = "'CG'"
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResOtrosCredLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = CREDITO
.head 7 -  Set tblCuadreConta.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreConta.isNOTOrigen = "'CG'"
.head 7 -  !
.head 7 -  !
.head 7 -  !
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResOtrosNetoLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = AMBAS
.head 7 -  Set tblCuadreConta.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreConta.isNOTOrigen = "'CG'"
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResTotCGDebLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = DEBITO
.head 7 -  Set tblCuadreConta.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResTotCGCredLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = CREDITO
.head 7 -  Set tblCuadreConta.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResTotCGNetoLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreConta.isDebitosCreditos = AMBAS
.head 7 -  Set tblCuadreConta.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Contabilidad
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreConta.LimiteSeleccion(dlgCGAuxWiz.tblCuadreConta.CreateWHERE())
.head 6 -  !
.head 6 -  ! Movimientos No Contabilizados o Fuera de Período
.head 6 +  Else If vsItemResumen = 'dfResAuxNCDebLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreAux.isDebitosCreditos = DEBITO
.head 7 -  Set tblCuadreAux.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreAux.isNoAsociados = AUX_NO_CONTABILIZADO
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResAuxNCCredLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreAux.isDebitosCreditos = CREDITO
.head 7 -  Set tblCuadreAux.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreAux.isNoAsociados = AUX_NO_CONTABILIZADO
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResAuxNCNetoLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreAux.isDebitosCreditos = AMBAS
.head 7 -  Set tblCuadreAux.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreAux.isNoAsociados = AUX_NO_CONTABILIZADO
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 -  !
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResAuxFPDebLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreAux.isDebitosCreditos = DEBITO
.head 7 -  Set tblCuadreAux.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreAux.isNoAsociados = AUX_CONTABILIZADO
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResAuxFPCredLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreAux.isDebitosCreditos = CREDITO
.head 7 -  Set tblCuadreAux.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreAux.isNoAsociados = AUX_CONTABILIZADO
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResAuxFPNetoLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreAux.isDebitosCreditos = AMBAS
.head 7 -  Set tblCuadreAux.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  Set tblCuadreAux.isNoAsociados = AUX_CONTABILIZADO
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 -  !
.head 6 +  Else If vsItemResumen = 'dfResAuxTotalDebLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreAux.isDebitosCreditos = DEBITO
.head 7 -  Set tblCuadreAux.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResAuxTotalCredLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreAux.isDebitosCreditos = CREDITO
.head 7 -  Set tblCuadreAux.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 +  Else If vsItemResumen = 'dfResAuxTotalNetoLoc'
.head 7 -  !
.head 7 -  ! Se setea el FILTRO de acuerdo con el campo seleccionado
.head 7 -  Set tblCuadreAux.isDebitosCreditos = AMBAS
.head 7 -  Set tblCuadreAux.isMovimientos = CG_NO_ASOCIADOS
.head 7 -  !
.head 7 -  ! Se popula la tabla de Auxiliar
.head 7 +  If lbOk
.head 8 -  Set lbOk  =  dlgCGAuxWiz.tblCuadreAux.LimiteSeleccion(dlgCGAuxWiz.tblCuadreAux.CreateWHERE())
.head 6 -  !
.head 6 +  Else
.head 7 -  !
.head 7 -  Call SPSMessageBox(
'Error - No se pudo obtener el detalle de movimientos del rubro seleccionado.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 7 -  Set lbOk = FALSE
.head 6 -  !
.head 6 -  !
.head 6 -  Set vsItemResumen = STRING_Null
.head 5 +  Else
.head 6 -  ! Hay un error no se recibió el componente que solicita el detalle de movimientos
.head 6 -  Call SPSMessageBox(
'Error - No se pudo obtener el detalle de movimientos del rubro seleccionado.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 6 -  Set lbOk = FALSE
.head 3 +  Function: CambiarTipoMoneda
.head 4 -  Description: Cambia el tipo de moneda de local a dólar  y viceversa
dependiendo del valor de nMonedaLocal
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 +  ! If nMonedaLocal		! Cambiar a moneda dólar
.head 6 -  ! Esconder las columnas de moneda local
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colSaldoInicialFL )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colCreditosFL )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colDebitosFL )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colSaldoFinalFL )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colSaldoInicialCL )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colCreditosCL )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colDebitosCL )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colSaldoFinalCL )
.head 6 +  If nContaFiscal
.head 7 -  !
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colSaldoInicialFD )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colCreditosFD )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colDebitosFD )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colSaldoFinalFD )
.head 6 +  Else 
.head 7 -  !
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colSaldoInicialCD )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colCreditosCD )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colDebitosCD )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colSaldoFinalCD )
.head 5 +  ! Else ! Cambiar a moneda local
.head 6 -  ! Esconder columnas de moneda dólar
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colSaldoInicialFD )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colCreditosFD )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colDebitosFD )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colSaldoFinalFD )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colSaldoInicialCD )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colCreditosCD )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colDebitosCD )
.head 6 -  Call SalHideWindow( tblDetalleDeSaldos.colSaldoFinalCD )
.head 6 +  If nContaFiscal
.head 7 -  !
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colSaldoInicialFL )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colCreditosFL )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colDebitosFL )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colSaldoFinalFL )
.head 6 +  Else 
.head 7 -  !
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colSaldoInicialCL )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colCreditosCL )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colDebitosCL )
.head 7 -  Call SalShowWindow( tblDetalleDeSaldos.colSaldoFinalCL )
.head 5 -  ! Set nMonedaLocal = NOT nMonedaLocal
.head 5 -  ! Call CambiarFmts()
.head 5 -  ! Call DesplegarSaldosTotales()
.head 5 -  !
.head 5 -  !
.head 5 -  !
.head 5 +  If obMonedaLoc
.head 6 -  !
.head 6 -  ! Set dfResContaDebLoc.sSimboloMoneda = fciGlobalesAS.sSimboloMonFunc
.head 6 -  !
.head 6 -  Set dfResContaDebLoc = vnContaDebitoLoc
.head 6 -  Set dfResContaCredLoc = vnContaCreditoLoc
.head 6 -  Set dfResContaNeto = vnContaDebitoLoc - vnContaCreditoLoc
.head 6 -  !
.head 6 -  Set dfResAuxDebLoc = vnAuxDebitoLoc
.head 6 -  Set dfResAuxCredLoc = vnAuxCreditoLoc
.head 6 -  Set dfResAuxNeto = vnAuxDebitoLoc - vnAuxCreditoLoc
.head 6 -  !
.head 6 -  Set dfResDifDebLoc = vnContaDebitoLoc - vnAuxDebitoLoc
.head 6 -  Set dfResDifCredLoc = vnContaCreditoLoc - vnAuxCreditoLoc
.head 6 -  Set dfResDifNeto = (vnContaDebitoLoc - vnAuxDebitoLoc) - ( vnContaCreditoLoc - vnAuxCreditoLoc )
.head 6 -  !
.head 6 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1
.head 6 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1 CG !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 6 -  !
.head 6 -  ! Movimientos Registrados directamente en CG
.head 6 -  Set dfResCGDebLoc = vnCGDebitoLoc
.head 6 -  Set dfResCGCredLoc = vnCGCreditoLoc
.head 6 -  Set dfResCGNetoLoc = vnCGDebitoLoc - vnCGCreditoLoc
.head 6 -  !
.head 6 -  ! Movimientos Registrados en otros módulos
.head 6 -  Set dfResOtrosDebLoc = vnOtrosDebitoLoc
.head 6 -  Set dfResOtrosCredLoc = vnOtrosCreditoLoc
.head 6 -  Set dfResOtrosNetoLoc = vnOtrosDebitoLoc - vnOtrosCreditoLoc
.head 6 -  !
.head 6 -  Set dfResTotCGDebLoc = vnCGDebitoLoc + vnOtrosDebitoLoc
.head 6 -  Set dfResTotCGCredLoc = vnCGCreditoLoc + vnOtrosCreditoLoc
.head 6 -  Set dfResTotCGNetoLoc = (vnCGDebitoLoc - vnCGCreditoLoc) + (vnOtrosDebitoLoc - vnOtrosCreditoLoc)
.head 6 -  !
.head 6 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 6 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! AUXILIAR !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
.head 6 -  !
.head 6 -  ! Movimientos del auxiliar no contabilizados
.head 6 -  Set dfResAuxNCDebLoc = vnAuxNCDebitoLoc
.head 6 -  Set dfResAuxNCCredLoc = vnAuxNCCreditoLoc
.head 6 -  Set dfResAuxNCNetoLoc = vnAuxNCDebitoLoc - vnAuxNCCreditoLoc
.head 6 -  !
.head 6 -  ! Movimientos del auxiliar fuera de período
.head 6 -  Set dfResAuxFPDebLoc = vnAuxFPDebitoLoc
.head 6 -  Set dfResAuxFPCredLoc = vnAuxFPCreditoLoc
.head 6 -  Set dfResAuxFPNetoLoc = vnAuxFPDebitoLoc - vnAuxFPCreditoLoc
.head 6 -  !
.head 6 -  Set dfResAuxTotalDebLoc = vnAuxNCDebitoLoc + vnAuxFPDebitoLoc
.head 6 -  Set dfResAuxTotalCredLoc = vnAuxNCCreditoLoc + vnAuxFPCreditoLoc
.head 6 -  Set dfResAuxTotalNetoLoc = (vnAuxNCDebitoLoc + vnAuxFPDebitoLoc) - (vnAuxNCCreditoLoc + vnAuxFPCreditoLoc)
.head 6 -  !
.head 5 +  Else If obMonedaDol
.head 6 -  !
.head 6 -  ! Set dfResContaDebLoc.sSimboloMoneda = fciGlobalesAS.sSimboloMonRep
.head 6 -  !
.head 6 -  Set dfResContaDebLoc = vnContaDebitoDol
.head 6 -  Set dfResContaCredLoc = vnContaCreditoDol
.head 6 -  Set dfResContaNeto = vnContaDebitoDol - vnContaCreditoDol
.head 6 -  !
.head 6 -  Set dfResAuxDebLoc = vnAuxDebitoDol
.head 6 -  Set dfResAuxCredLoc = vnAuxCreditoDol
.head 6 -  Set dfResAuxNeto = vnAuxDebitoDol - vnAuxCreditoDol
.head 6 -  !
.head 6 -  Set dfResDifDebLoc = vnContaDebitoDol - vnAuxDebitoDol
.head 6 -  Set dfResDifCredLoc = vnContaCreditoDol - vnAuxCreditoDol
.head 6 -  Set dfResDifNeto = (vnContaDebitoDol - vnAuxDebitoDol) - ( vnContaCreditoDol - vnAuxCreditoDol )
.head 6 -  !
.head 6 -  ! Movimientos Registrados directamente en CG
.head 6 -  Set dfResCGDebLoc = vnCGDebitoDol
.head 6 -  Set dfResCGCredLoc = vnCGCreditoDol
.head 6 -  Set dfResCGNetoLoc = vnCGDebitoDol - vnCGCreditoDol
.head 6 -  !
.head 6 -  ! Movimientos Registrados en otros módulos
.head 6 -  Set dfResOtrosDebLoc = vnOtrosDebitoDol
.head 6 -  Set dfResOtrosCredLoc = vnOtrosCreditoDol
.head 6 -  Set dfResOtrosNetoLoc = vnOtrosDebitoDol - vnOtrosCreditoDol
.head 6 -  !
.head 6 -  Set dfResTotCGDebLoc = vnCGDebitoDol + vnOtrosDebitoDol
.head 6 -  Set dfResTotCGCredLoc = vnCGCreditoDol + vnOtrosCreditoDol
.head 6 -  Set dfResTotCGNetoLoc = (vnCGDebitoDol - vnCGCreditoDol) + (vnOtrosDebitoDol - vnOtrosCreditoDol)
.head 6 -  !
.head 6 -  ! Movimientos del auxiliar no contabilizados
.head 6 -  Set dfResAuxNCDebLoc = vnAuxNCDebitoDol
.head 6 -  Set dfResAuxNCCredLoc = vnAuxNCCreditoDol
.head 6 -  Set dfResAuxNCNetoLoc = vnAuxNCDebitoDol - vnAuxNCCreditoDol
.head 6 -  !
.head 6 -  ! Movimientos del auxiliar fuera de período
.head 6 -  Set dfResAuxFPDebLoc = vnAuxFPDebitoDol
.head 6 -  Set dfResAuxFPCredLoc = vnAuxFPCreditoDol
.head 6 -  Set dfResAuxFPNetoLoc = vnAuxFPDebitoDol - vnAuxFPCreditoDol
.head 6 -  !
.head 6 -  Set dfResAuxTotalDebLoc = vnAuxNCDebitoDol + vnAuxFPDebitoDol
.head 6 -  Set dfResAuxTotalCredLoc = vnAuxNCCreditoDol + vnAuxFPCreditoDol
.head 6 -  Set dfResAuxTotalNetoLoc = (vnAuxNCDebitoDol + vnAuxFPDebitoDol) - (vnAuxNCCreditoDol + vnAuxFPCreditoDol)
.head 6 -  !
.head 5 +  Else If obMonedaDol
.head 6 -  !
.head 6 -  ! Set dfResContaDebLoc.sSimboloMoneda = ''
.head 6 -  !
.head 6 -  Set dfResContaDebLoc = 0
.head 6 -  Set dfResContaCredLoc = 0
.head 6 -  Set dfResContaNeto = 0
.head 6 -  !
.head 6 -  Set dfResAuxDebLoc = 0
.head 6 -  Set dfResAuxCredLoc = 0
.head 6 -  Set dfResAuxNeto = 0
.head 6 -  !
.head 6 -  Set dfResDifDebLoc = 0
.head 6 -  Set dfResDifCredLoc = 0
.head 6 -  Set dfResDifNeto = 0
.head 6 -  !
.head 6 -  ! Movimientos Registrados directamente en CG
.head 6 -  Set dfResCGDebLoc = 0
.head 6 -  Set dfResCGCredLoc = 0
.head 6 -  Set dfResCGNetoLoc = 0
.head 6 -  !
.head 6 -  ! Movimientos Registrados en otros módulos
.head 6 -  Set dfResOtrosDebLoc = 0
.head 6 -  Set dfResOtrosCredLoc = 0
.head 6 -  Set dfResOtrosNetoLoc = 0
.head 6 -  !
.head 6 -  ! Movimientos del auxiliar no contabilizados
.head 6 -  Set dfResAuxNCDebLoc = 0
.head 6 -  Set dfResAuxNCCredLoc = 0
.head 6 -  Set dfResAuxNCNetoLoc = 0
.head 6 -  !
.head 6 -  ! Movimientos del auxiliar fuera de período
.head 6 -  Set dfResAuxFPDebLoc = 0
.head 6 -  Set dfResAuxFPCredLoc = 0
.head 6 -  Set dfResAuxFPNetoLoc = 0
.head 6 -  !
.head 6 -  Set dfResTotCGDebLoc = 0
.head 6 -  Set dfResTotCGCredLoc = 0
.head 6 -  Set dfResTotCGNetoLoc = 0
.head 6 -  !
.head 6 -  Set dfResAuxTotalDebLoc = 0
.head 6 -  Set dfResAuxTotalCredLoc = 0
.head 6 -  Set dfResAuxTotalNetoLoc = 0
.head 6 -  !
.head 5 -  !
.head 5 -  ! Se inicializa el despliegue de los símbolos de monedas
.head 5 -  ! Call dfResContaDebLoc.IniDespliegue()
.head 3 -  !
.head 3 +  Function: LimpiarFiltros
.head 4 -  Description: Se limpian los filtros de las tablas Cuadre Conta y Cuadre Aux
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  !
.head 5 -  Call tblCuadreConta.ClearFiltro()
.head 5 -  Call tblCuadreConta.LimpiarTabla()
.head 5 -  !
.head 5 -  Call tblCuadreAux.ClearFiltro()
.head 5 -  Call tblCuadreAux.LimpiarTabla()
.head 5 -  !
.head 3 -  !
.head 3 -  !
.head 3 -  !
.head 3 +  Function: NewCuadres
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 +  ! If bDebugging
.head 6 -  !
.head 6 -  Call SPSMessageBox(
'Se ha seleccionado hacer un cuadre nuevo.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  !
.head 5 -  ! Se llama a hacer un nuevo cuadre
.head 5 -  Set lbOk = lbOk AND vfciCGAuxWiz.ClearInstanceCuadre()
.head 5 -  ! Set lbOk = lbOk AND vfciCGAuxWiz.AddModCuadre(TRUE)
.head 5 -  !
.head 5 -  !
.head 5 -  ! Se sigue por el wizard como normalmente...
.head 5 -  Set vbCuadreNuevo = TRUE
.head 5 -  ! Set vnCodigoCuadre = vfciCGAuxWiz.inCuadre
.head 5 -  !
.head 5 -  !
.head 5 -  ! Call picTabs.BringToTop( nTABPaso1, TRUE )
.head 5 -  ! Set dlgCGAuxWiz.nCurrentTab = nTABPaso1
.head 5 -  Call SalDisableWindow( pbAnterior )
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: DelCuadres
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  Boolean: lbBorrar
.head 4 +  Actions
.head 5 +  ! If bDebugging
.head 6 -  !
.head 6 -  Call SPSMessageBox(
'Se ha seleccionado borrar un cuadre existente',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  ! Verifica que se haya seleccionado una l'inea en la tabla
.head 5 +  If lbOk
.head 6 -  !
.head 6 -  Set lbOk = SalTblAnyRows( tblCuadresCG, ROW_Selected, 0 )
.head 6 -  !
.head 6 +  If NOT lbOk
.head 7 -  !
.head 7 -  Call SPSMessageBox(
'No hay líneas marcadas para eliminar, por favor seleccione un cuadre a eliminar.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 7 -  Return lbOk
.head 5 -  !
.head 5 -  ! Se Pregunta al usuario si realmente desea borrar el cuadre
.head 5 +  If lbOk
.head 6 -  !
.head 6 +  Select Case SPSMessageBox(
'¿ Está seguro que desea borrar el cuadre # '|| SalNumberToStrX( tblCuadresCG.colNumCuadre, 0 ) || ' ?',
'Advertencia',
MBF_IconQuestion, '&Sí,&No' )
.head 7 +  Case MB_Button1
.head 8 -  Set lbBorrar = TRUE
.head 8 -  Break
.head 7 +  Case MB_Button2
.head 8 -  Set lbBorrar = FALSE
.head 8 -  Break
.head 5 -  !
.head 5 -  Call SalWaitCursor( TRUE )
.head 5 -  !
.head 5 -  ! Se llama a la funcion que borra el cuadre
.head 5 +  If lbOk
.head 6 -  !
.head 6 +  If lbBorrar
.head 7 -  !
.head 7 -  Set lbOk = vfciCGAuxWiz.DeleteCuadre(tblCuadresCG.colNumCuadre)
.head 5 -  !
.head 5 -  !
.head 5 -  ! Se repopula la tabla de CuadresCG
.head 5 +  If lbOk
.head 6 -  !
.head 6 -  Set lbOk =  tblCuadresCG.PopulateTable(TRUE, TRUE)
.head 5 -  !
.head 5 -  !
.head 5 -  Call SalWaitCursor( FALSE )
.head 5 -  !
.head 5 -  ! Se muestra mensaje de error si hubo algún problema
.head 5 +  If NOT lbOk 
.head 6 -  Call SPSMessageBox(
'Hubo problemas borrando el cuadre seleccionado',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: OpenCuadres
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  !
.head 5 +  If bDebugging
.head 6 -  !
.head 6 -  Call SPSMessageBox(
'Se ha seleccionado abrir un cuadre existente',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  !
.head 5 -  ! Verifica que se haya seleccionado una l'inea en la tabla
.head 5 +  If lbOk
.head 6 -  !
.head 6 -  Set lbOk = SalTblAnyRows( tblCuadresCG, ROW_Selected, 0 )
.head 6 -  !
.head 6 +  If NOT lbOk
.head 7 -  !
.head 7 -  Call SPSMessageBox(
'No se ha seleccionado ningún cuadre para abrir, por favor seleccione un cuadre.',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 7 -  Return lbOk
.head 5 -  !
.head 5 -  !
.head 5 -  ! Se realiza la carga del cuadre
.head 5 -  Set lbOk = vfciCGAuxWiz.ReadCuadre(tblCuadresCG.colNumCuadre)
.head 5 -  !
.head 5 -  ! Se inicializan las variables
.head 5 -  Set vbCuadreNuevo = FALSE
.head 5 -  Set vnCodigoCuadre = vfciCGAuxWiz.inCuadre
.head 5 -  Set dfFechaIni = vfciCGAuxWiz.idtFechaDesde
.head 5 -  Set dfFechaFin = vfciCGAuxWiz.idtFechaHasta
.head 5 -  Set dfDescripcion =  vfciCGAuxWiz.isDescripcion
.head 5 -  Set isModuloCuadre = vfciCGAuxWiz.isModulo
.head 5 -  ! Se carga la lista de módulos visualmente con el módulo indicado marcado.
.head 5 -  Call CargarModulos(isModuloCuadre)
.head 5 -  !
.head 5 -  Set vbRefrescarDatos = FALSE
.head 5 -  !
.head 5 -  !
.head 5 -  ! Se carga la información del módulo
.head 5 +  If lbOk
.head 6 -  Set lbOk = CargaInfoModulo(isModuloCuadre)
.head 5 -  !
.head 5 -  ! Se cargan las cuentas contables
.head 5 -  Set lbOk = lbOk AND CargarCuentas(vfciCGAuxWiz.isCuentas)
.head 5 -  Call tblSelCuentas.SeleccionarTodasCtas(1)
.head 5 -  !
.head 5 -  !
.head 5 -  ! Se calcula el cuadro resumen
.head 5 -  Set lbOk = lbOk AND CalcularResumen()
.head 5 -  !
.head 5 -  ! Se populan las tablas de datos de detalle
.head 5 -  Set lbOk = lbOk AND Valida_Paso3()
.head 5 -  !
.head 5 -  ! Se carga el TAB que quedó activo
.head 5 +  If lbOk
.head 6 -  !
.head 6 +  If NOT vfciCGAuxWiz.inTabActivo
.head 7 -  Set vfciCGAuxWiz.inTabActivo = 1
.head 6 -  !
.head 6 -  Call picTabs.BringToTop( vfciCGAuxWiz.inTabActivo, TRUE )
.head 6 -  Set dlgCGAuxWiz.nCurrentTab = vfciCGAuxWiz.inTabActivo
.head 6 -  Call SalEnableWindow( pbAnterior )
.head 6 -  !
.head 6 +  If vfciCGAuxWiz.inTabActivo = nTABPaso5
.head 7 -  Set lbOk = lbOk AND Valida_Paso4()
.head 5 -  !
.head 5 -  ! Se muestra mensaje de error si hubo algún problema
.head 5 +  If NOT lbOk 
.head 6 -  Call SPSMessageBox(
'Hubo problemas cargando el cuadre seleccionado',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  !
.head 5 -  Call FormatearDf(  )
.head 5 -  !
.head 5 -  Return lbOk
.head 3 +  Function: SaveCuadres
.head 4 -  Description: Almacena el cuadre actual en la base de datos
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Boolean: pbNuevo
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  !
.head 5 -  Set lbOk = lbOk AND vfciCGAuxWiz.FillInstanceCuadre(	vnCodigoCuadre,
					dfDescripcion,
					isModuloCuadre,
					GetDateAndTime(),
					dfFechaIni,
					dfFechaFin,
					'Filtros',
					isFiltroCuentas,
					'Otros',
					dlgCGAuxWiz.nCurrentTab)
.head 5 -  !
.head 5 -  !
.head 5 -  ! Se hace la inserción o actualización
.head 5 +  If lbOk
.head 6 -  !
.head 6 -  Set lbOk = vfciCGAuxWiz.AddModCuadre(pbNuevo)
.head 5 -  !
.head 5 +  If lbOk AND pbNuevo
.head 6 -  !
.head 6 -  ! Se inicializan las variables
.head 6 -  Set vbCuadreNuevo = FALSE
.head 6 -  Set vnCodigoCuadre = vfciCGAuxWiz.inCuadre
.head 6 -  Set dfFechaIni = vfciCGAuxWiz.idtFechaDesde
.head 6 -  Set dfFechaFin = vfciCGAuxWiz.idtFechaHasta
.head 6 -  Set dfDescripcion =  vfciCGAuxWiz.isDescripcion
.head 6 -  Set isModuloCuadre = vfciCGAuxWiz.isModulo
.head 5 -  !
.head 5 -  ! Se muestra mensaje de error si hubo algún problema
.head 5 +  If NOT lbOk 
.head 6 -  Call SPSMessageBox(
'Hubo problemas almacenando el cuadre actual',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  !
.head 5 +  If lbOk AND bDebugging
.head 6 -  !
.head 6 -  Call SPSMessageBox(
'Datos guardados exitosamente!',
'Wizard de Cuadre entre CG y Auxiliares',
MBF_IconExclamation, CONTINUAR )
.head 5 -  !
.head 5 -  Return lbOk
.head 3 -  !
.head 3 -  !
.head 3 +  Function: AcomodaCuadros
.head 4 -  Description:
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Window Handle: lhWnd
.head 5 -  String: lsString
.head 5 -  !
.head 5 -  Number: lnPosX
.head 5 -  Number: lnPosY
.head 4 +  Actions
.head 5 -  !
.head 5 -  ! MRL S2C28703  --->
.head 5 +  If vbVertical
.head 6 -  !
.head 6 -  Call SalSetWindowLoc( tblCuadreConta, 0.18, 2.429 )
.head 6 -  Call SalSetWindowSize( tblCuadreConta, 7.3, 3.976)
.head 6 -  !
.head 6 -  Call SalSetWindowLoc( tblCuadreAux, 7.58, 2.405 )
.head 6 -  Call SalSetWindowSize( tblCuadreAux, 8.1, 4.0 )
.head 6 -  !
.head 6 -  Set lsString = "Detalle de Movimientos de la Contabilidad"
.head 6 -  Set lhWnd = VisWinGetHandle (hWndForm, lsString, TYPE_BkgdText)
.head 6 +  If lhWnd
.head 7 -  !
.head 7 -  Call SalSetWindowLoc( lhWnd, 0.18, 1.821)
.head 7 -  Call SalSetWindowSize( lhWnd, 7.3, 0.25 )
.head 6 -  !
.head 6 -  Set lsString = "Detalle de Movimientos del Auxiliar"
.head 6 -  Set lhWnd = VisWinGetHandle (hWndForm, lsString, TYPE_BkgdText)
.head 6 +  If lhWnd
.head 7 -  !
.head 7 -  Call SalSetWindowLoc( lhWnd, 9.28, 1.821)
.head 7 -  Call SalSetWindowSize( lhWnd, 5.2, 0.25 )
.head 6 -  !
.head 6 -  ! Acomodo de los botones
.head 6 -  Set lnPosX = 0.4
.head 6 -  Set lnPosY = 2.107
.head 6 -  !
.head 6 -  Call SalSetWindowLoc( pbFiltroCuadreConta, lnPosX, lnPosY )
.head 6 -  Set lnPosX = lnPosX + 0.5
.head 6 -  Call SalSetWindowLoc( pbColumnsCuadreConta, lnPosX, lnPosY)
.head 6 -  Set lnPosX = lnPosX + 0.5
.head 6 -  Call SalSetWindowLoc( pbExcelCuadreConta, lnPosX, lnPosY)
.head 6 -  Set lnPosX = lnPosX + 0.5
.head 6 -  Call SalSetWindowLoc( pbVerAsientoCuadreConta, lnPosX, lnPosY)
.head 6 -  !
.head 6 -  !
.head 6 -  Set lnPosX = 7.7 
.head 6 -  !
.head 6 -  Call SalSetWindowLoc( pbFiltroCuadreAux, lnPosX, lnPosY)
.head 6 -  Set lnPosX = lnPosX + 0.5
.head 6 -  Call SalSetWindowLoc( pbColumnsCuadreAux, lnPosX, lnPosY)
.head 6 -  Set lnPosX = lnPosX + 0.5
.head 6 -  Call SalSetWindowLoc( pbExcelCuadreAux, lnPosX, lnPosY)
.head 6 -  Set lnPosX = lnPosX + 0.5
.head 6 -  Call SalSetWindowLoc( pbVerAsientoCuadreAux, lnPosX, lnPosY)
.head 6 -  !
.head 6 -  ! Acomodo de pictabs
.head 6 -  Call SalSetWindowLoc( picTabPaso40, 0.28, 2.071)
.head 6 -  Call SalSetWindowLoc( picTabPaso41, 7.58, 2.071)
.head 6 -  !
.head 6 -  !
.head 5 -  ! MRL S2C28703  <---
.head 5 -  !
.head 5 +  Else
.head 6 -  !
.head 6 -  Set lnPosX = 2.08
.head 6 -  !
.head 6 -  Call SalSetWindowLoc( tblCuadreConta, lnPosX, 2.095)
.head 6 -  Call SalSetWindowSize( tblCuadreConta, 13.7, 1.976 )
.head 6 -  !
.head 6 -  Call SalSetWindowLoc( tblCuadreAux, lnPosX, 4.571 )
.head 6 -  Call SalSetWindowSize( tblCuadreAux, 13.7, 1.833 )
.head 6 -  !
.head 6 -  Set lsString = "Detalle de Movimientos de la Contabilidad"
.head 6 -  Set lhWnd = VisWinGetHandle (hWndForm, lsString, TYPE_BkgdText)
.head 6 +  If lhWnd
.head 7 -  !
.head 7 -  Call SalSetWindowLoc( lhWnd, 0.28, 2.405 )
.head 7 -  Call SalSetWindowSize( lhWnd, 1.7, 0.75 )
.head 6 -  !
.head 6 -  Set lsString = "Detalle de Movimientos del Auxiliar"
.head 6 -  Set lhWnd = VisWinGetHandle (hWndForm, lsString, TYPE_BkgdText)
.head 6 +  If lhWnd
.head 7 -  !
.head 7 -  Call SalSetWindowLoc( lhWnd, 0.28,5.071)
.head 7 -  Call SalSetWindowSize( lhWnd, 1.7, 0.667 )
.head 6 -  !
.head 6 -  ! Acomodo de los botones
.head 6 -  Set lnPosX = 2.2
.head 6 -  Set lnPosY = 1.774
.head 6 -  !
.head 6 -  Call SalSetWindowLoc( pbFiltroCuadreConta, lnPosX, lnPosY )
.head 6 -  Set lnPosX = lnPosX + 0.5
.head 6 -  Call SalSetWindowLoc( pbColumnsCuadreConta, lnPosX, lnPosY )
.head 6 -  Set lnPosX = lnPosX+ 0.5
.head 6 -  Call SalSetWindowLoc( pbExcelCuadreConta, lnPosX, lnPosY )
.head 6 -  Set lnPosX = lnPosX+ 0.5
.head 6 -  Call SalSetWindowLoc( pbVerAsientoCuadreConta, lnPosX, lnPosY )
.head 6 -  ! Set lnPosY = lnPosY + 0.29
.head 6 -  ! Call SalSetWindowLoc( pbRefrescarCuadreConta, lnPosX, lnPosY )
.head 6 -  !
.head 6 -  Set lnPosY = 4.274
.head 6 -  Set lnPosX = 2.2
.head 6 -  Call SalSetWindowLoc( pbFiltroCuadreAux, lnPosX, lnPosY )
.head 6 -  Set lnPosX= lnPosX + 0.5
.head 6 -  Call SalSetWindowLoc( pbColumnsCuadreAux, lnPosX, lnPosY )
.head 6 -  Set lnPosX = lnPosX + 0.5
.head 6 -  Call SalSetWindowLoc( pbExcelCuadreAux, lnPosX, lnPosY )
.head 6 -  Set lnPosX = lnPosX + 0.5
.head 6 -  Call SalSetWindowLoc( pbVerAsientoCuadreAux, lnPosX, lnPosY )
.head 6 -  Set lnPosX = lnPosX + 0.5
.head 6 -  ! Call SalSetWindowLoc( pbRefrescarCuadreAux, lnPosX, lnPosY )
.head 6 -  ! Set lnPosY = lnPosY + 0.29
.head 6 -  !
.head 6 -  ! MRL S2C28703  --->
.head 6 -  ! Acomodo de pictabs
.head 6 -  Call SalSetWindowLoc( picTabPaso40, 2.08, 1.738)
.head 6 -  Call SalSetWindowLoc( picTabPaso41, 2.08, 4.238)
.head 6 -  ! MRL S2C28703  <---
.head 6 -  !
.head 5 -  !
.head 5 -  !
.head 5 -  Call SalInvalidateWindow ( hWndForm )
.head 3 -  !
.head 3 +  Function: CalcularBalanceCuentas
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Number: pnOpcion
.head 5 -  String: psDebitosCreditos
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  ! Se pasa al TAB del Paso 5 - Balance de Cuentas
.head 5 -  Call picTabs.BringToTop( nTABPaso5, TRUE )
.head 5 -  Set dlgCGAuxWiz.nCurrentTab = nTABPaso5
.head 5 -  !
.head 5 -  Set lbOk = lbOk AND vfciCGAuxWiz.DatosBalanceCuentas(vnCodigoCuadre)
.head 5 -  !
.head 5 -  Set lbOk = lbOk AND tblBalanceCtas.LoadTable(pnOpcion, psDebitosCreditos)
.head 5 -  !
.head 5 -  Return lbOk
.head 3 -  !
.head 3 +  Function: PostPrevTab
.head 4 -  Description:
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  !
.head 5 +  If dlgCGAuxWiz.nCurrentTab = nTABPaso4
.head 6 -  !
.head 6 -  Call picTabs.BringToTop( vnPrevTab, TRUE )
.head 6 -  Set dlgCGAuxWiz.nCurrentTab = vnPrevTab
.head 6 -  !
.head 6 -  Set vnPrevTab = 4
.head 3 +  Function: Help
.head 4 -  Description: Permite definir la ayuda referente al contexto
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Call DesplegarAyuda2( hWndForm, CG_HELP, HELP_Context, CGHLP_CUADREAUXILIAR, '' )
.head 3 +  Function: FormatoDecimales
.head 4 -  Description:
.head 4 +  Returns
.head 5 -  String:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sMascara
.head 5 -  Number: nDecimales
.head 4 +  Actions
.head 5 -  Set nDecimales = 0
.head 5 -  Set sMascara = "#,##0."
.head 5 +  While nDecimales < fciGlobalesCG.nCantDecimales
.head 6 -  Set sMascara = sMascara || "0"
.head 6 -  Set nDecimales = nDecimales + 1
.head 5 -  Return sMascara
.head 3 +  Function: FormatearDf
.head 4 -  Description:
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  !
.head 5 -  Call SalFmtSetPicture( dfResContaDebLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResContaCredLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResContaNeto, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxDebLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxCredLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxNeto, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResDifDebLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResDifCredLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResDifNeto, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResCGDebLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResCGCredLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResCGNetoLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResOtrosDebLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResOtrosCredLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResOtrosNetoLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResTotCGDebLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResTotCGCredLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResTotCGNetoLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxNCDebLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxNCCredLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxNCNetoLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxFPDebLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxFPCredLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxFPNetoLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxTotalDebLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxTotalCredLoc, FormatoDecimales(  ) )
.head 5 -  Call SalFmtSetPicture( dfResAuxTotalNetoLoc, FormatoDecimales(  ) )
.head 2 -  Window Parameters
.head 2 +  Window Variables
.head 3 -  !
.head 3 -  ! Variables que manejan el consecutivo de cada TAB
.head 3 -  Number: nTABPaso0
.head 3 -  Number: nTABPaso1
.head 3 -  Number: nTABPaso2
.head 3 -  Number: nTABPaso3
.head 3 -  Number: nTABPaso4
.head 3 -  Number: nTABPaso5
.head 3 -  Number: nTABPaso6
.head 3 -  Number: nTABPaso7
.head 3 -  Number: nTABPaso8
.head 3 -  Number: nTABPaso9
.head 3 -  !
.head 3 -  ! Clases Funcionales
.head 3 -  !
.head 3 -  FunctionalVar: vfciCGAuxWiz
.head 4 -  Class: fclsUtilCGAuxWiz
.head 3 -  !
.head 3 -  ! Variables Generales con Datos
.head 3 -  String: isModuloCuadre
.head 3 -  String: isNombreModulo
.head 3 -  String: isListaCuentasCuadre
.head 3 -  !
.head 3 -  String: isEnteAuxNombre
.head 3 -  String: isEnteAuxTabla
.head 3 -  String: isEnteAuxColumnas
.head 3 -  String: isEnteAuxNombreCol
.head 3 -  !
.head 3 -  !
.head 3 -  ! Filtros de Datos del Auxiliar y la Contabilidad
.head 3 -  String: isFiltroCuentas
.head 3 -  String: isFiltroAuxiliar
.head 3 -  !
.head 3 -  !
.head 3 -  !
.head 3 -  ! Variables para manejo de los distintos cuadres
.head 3 +  Boolean: vbCuadreNuevo
.head 4 -  ! Indica si se trata de un cuadre nuevo o no
.head 3 +  Number: vnCodigoCuadre
.head 4 -  ! Contiene el número de cuadre que se está haciendo (identificador ID)
! -1 :  Si no se ha especificado cuadre alguno
.head 3 +  ! String: vsDescripcionCuadre
.head 4 -  ! Descripción del Cuadre Seleccionado
.head 3 -  !
.head 3 -  !
.head 3 -  ! Variables de datos del Cuadro Resumen
.head 3 -  Number: vnContaDebitoLoc
.head 3 -  Number: vnContaDebitoDol
.head 3 -  Number: vnContaCreditoLoc
.head 3 -  Number: vnContaCreditoDol
.head 3 -  !
.head 3 -  Number: vnAuxDebitoLoc
.head 3 -  Number: vnAuxDebitoDol
.head 3 -  Number: vnAuxCreditoLoc
.head 3 -  Number: vnAuxCreditoDol
.head 3 -  !
.head 3 -  Number: vnCGDebitoLoc
.head 3 -  Number: vnCGDebitoDol
.head 3 -  Number: vnCGCreditoLoc
.head 3 -  Number: vnCGCreditoDol
.head 3 -  !
.head 3 -  Number: vnOtrosDebitoLoc
.head 3 -  Number: vnOtrosDebitoDol
.head 3 -  Number: vnOtrosCreditoLoc
.head 3 -  Number: vnOtrosCreditoDol
.head 3 -  !
.head 3 -  Number: vnAuxNCDebitoLoc
.head 3 -  Number: vnAuxNCDebitoDol
.head 3 -  Number: vnAuxNCCreditoLoc
.head 3 -  Number: vnAuxNCCreditoDol
.head 3 -  !
.head 3 -  Number: vnAuxFPDebitoLoc
.head 3 -  Number: vnAuxFPDebitoDol
.head 3 -  Number: vnAuxFPCreditoLoc
.head 3 -  Number: vnAuxFPCreditoDol
.head 3 -  !
.head 3 -  !
.head 3 -  ! !!!!!!!!!!!!!!!!!!!!!!!!!
.head 3 -  !
.head 3 +  String: vsItemResumen
.head 4 -  ! Indica el ítem que está solicitando el detalle del resumen
.head 3 -  !
.head 3 -  !
.head 3 +  Boolean: vbRefrescarDatos
.head 4 -  ! Indica si es necesario el refrescamiento de los datos de las tablas temporales
.head 3 -  !
.head 3 +  Boolean: vbVertical
.head 4 -  ! Indica el acomodo de los cuadros en el TAB Paso4
.head 3 -  !
.head 3 +  Number: vnPrevTab
.head 4 -  ! Indica cuál es el TAB Previo (para el caso de acceder el tab de Balance de Cuentas)
.head 2 +  Message Actions
.head 3 +  On SAM_CreateComplete
.head 4 -  Set nTabsCount = picTabs.GetCount( )
.head 4 -  Set nLastTab = nTabsCount - 1
.head 4 -  Call CreateComplete( )
.head 4 -  Return CargarModulos('')
.head 3 +  On AM_VerDetalleResumen
.head 4 -  Call VerDetalleResumen()
.head 3 +  On AM_VerDetalleCuentas
.head 4 -  Call VerDetalleCuentas()
.head 3 +  On SAM_Help
.head 4 -  Call Help()
.head 1 +  Dialog Box: dlgFiltroCuadreConta
.head 2 -  Class: clsDialogBase
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Selección de Movimientos de la Contabilidad
.head 2 -  Accessories Enabled? Yes
.head 2 -  Visible? Yes
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? No
.head 3 -  Type of Dialog: Class Default
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 0.35"
.head 4 -  Top: 0.083"
.head 4 -  Width:  7.733"
.head 4 -  Width Editable? Yes
.head 4 -  Height: 5.655"
.head 4 -  Height Editable? Yes
.head 3 -  Absolute Screen Location? Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description: Filtro para la selección de asientos del diario y del mayor
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? No
.head 4 -  Size: Class Default
.head 4 -  Size Editable? Yes
.head 4 -  Docking Toolbar? No
.head 4 -  Toolbar Docking Orientation: Top | Bottom
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Resizable? No
.head 3 -  Contents
.head 2 +  Contents
.head 3 -  Group Separator
.head 4 -  Resource Id: 53997
.head 3 -  Group Box: Movimientos de la Contabilidad
.head 4 -  Resource Id: 53996
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 1.35"
.head 5 -  Top: 0.071"
.head 5 -  Width:  4.833"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.083"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Radio Button: rbVerTodos
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ver Todos los Movimientos
.head 4 -  Window Location and Size
.head 5 -  Left: 1.783"
.head 5 -  Top: 0.238"
.head 5 -  Width:  2.5"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbVerTodos.sStatusText = "Ver todos los movimientos independientemente si están asociados o no"
.head 3 +  Radio Button: rbVerAsociados
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ver solo movimientos Asociados
.head 4 -  Window Location and Size
.head 5 -  Left: 1.783"
.head 5 -  Top: 0.439"
.head 5 -  Width:  3.833"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbVerAsociados.sStatusText = "Ver solo los movimientos asociados con alguno del auxiliar"
.head 3 +  Radio Button: rbVerNoAsociados
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ver solo movimientos NO Asociados
.head 4 -  Window Location and Size
.head 5 -  Left: 1.783"
.head 5 -  Top: 0.869"
.head 5 -  Width:  3.833"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbVerAsociados.sStatusText = "Ver solo los movimientos que no están asociados al auxiliar seleccionado"
.head 3 +  Radio Button: rbVerAsociadosDif
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ver solo movimientos Asociados con diferencia
.head 4 -  Window Location and Size
.head 5 -  Left: 1.783"
.head 5 -  Top: 0.653"
.head 5 -  Width:  4.3"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbVerAsociadosDif.sStatusText = "Ver solo los movimientos asociados que tienen alguna diferencia con relación al monto del auxiliar"
.head 3 -  Group Separator
.head 4 -  Resource Id: 53999
.head 3 -  !
.head 3 -  Group Box: Códi&go de 1234567890
.head 4 -  Resource Id: 53978
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 1.35"
.head 5 -  Top: 1.298"
.head 5 -  Width:  2.075"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.958"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  Background Text: Desde:
.head 4 -  Resource Id: 53979
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 1.383"
.head 5 -  Top: 1.619"
.head 5 -  Width:  0.6"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfAsientoIni
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDF
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: 10
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 2.083"
.head 6 -  Top: 1.571"
.head 6 -  Width:  1.013"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Uppercase
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set dfAsientoIni.sStatusText =
   'Código de ' || fciGlobalesCG.NombreAsiento( FALSE, FALSE, FALSE ) ||
   ' inicial'
.head 5 +  On AM_Validate
.head 6 +  If dfAsientoFin = STRING_Null
.head 7 -  Set dfAsientoFin = dfAsientoIni
.head 6 -  Return VALIDATE_OkClearFlag
.head 3 -  Background Text: Hasta:
.head 4 -  Resource Id: 53980
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 1.383"
.head 5 -  Top: 1.94"
.head 5 -  Width:  0.6"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfAsientoFin
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDF
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: 10
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 2.083"
.head 6 -  Top: 1.893"
.head 6 -  Width:  1.013"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Uppercase
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set dfAsientoFin.sStatusText =
   'Código de ' || fciGlobalesCG.NombreAsiento( FALSE, FALSE, FALSE ) ||
   ' final'
.head 3 -  Group Separator
.head 4 -  Resource Id: 54000
.head 3 -  !
.head 3 -  Group Box: &Fecha
.head 4 -  Resource Id: 53984
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 3.583"
.head 5 -  Top: 1.298"
.head 5 -  Width:  2.6"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.958"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  Background Text: Desde:
.head 4 -  Resource Id: 53985
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 3.967"
.head 5 -  Top: 1.619"
.head 5 -  Width:  0.625"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfFechaIni
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFExtDate
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 4.733"
.head 6 -  Top: 1.571"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set dfFechaIni.sStatusText =
    'Fecha inicial para la selección de ' ||
    fciGlobalesCG.NombreAsiento( TRUE, FALSE, TRUE )
.head 5 +  On AM_Validate
.head 6 +  If dfFechaFin = DATETIME_Null
.head 7 -  Set dfFechaFin = dfFechaIni
.head 6 -  Return VALIDATE_OkClearFlag
.head 3 -  Background Text: Hasta
.head 4 -  Resource Id: 53986
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 3.967"
.head 5 -  Top: 1.94"
.head 5 -  Width:  0.625"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfFechaFin
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFExtDate
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 4.733"
.head 6 -  Top: 1.893"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set dfFechaFin.sStatusText =
    'Fecha final para la selección de ' ||
    fciGlobalesCG.NombreAsiento( TRUE, FALSE, TRUE )
.head 3 -  Group Separator
.head 4 -  Resource Id: 54001
.head 3 -  !
.head 3 -  Group Separator
.head 4 -  Resource Id: 45941
.head 3 +  Pushbutton: pbOrigenNinguno
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6530000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.883"
.head 5 -  Top: 3.702"
.head 5 -  Width:  0.275"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.229"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name: NONE.BMP
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Multiple
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set pbOrigenNinguno.sStatusText =
    'Eliminar la selección de todos los módulos que originan ' ||
     fciGlobalesCG.NombreAsiento( TRUE, FALSE, TRUE )
.head 6 -  Call pbOrigenNinguno.InitTip( 'Ninguno' )
.head 5 +  On SAM_Click
.head 6 -  ! Dejar todos los tipos sin seleccionar
.head 6 -  Call SeleccionTodosModulos( FALSE )
.head 3 +  Pushbutton: pbOrigenTodos
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6530000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.883"
.head 5 -  Top: 3.929"
.head 5 -  Width:  0.275"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.229"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name: ALL.BMP
.head 4 -  Picture Transparent Color: Magenta
.head 4 -  Image Style: Multiple
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Flat Look
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set pbOrigenTodos.sStatusText =
    'Selección de todos los módulos que originan ' ||
     fciGlobalesCG.NombreAsiento( TRUE, FALSE, TRUE )
.head 6 -  Call pbOrigenTodos.InitTip( 'Todos' )
.head 5 +  On SAM_Click
.head 6 -  ! Seleccionar todos
.head 6 -  Call SeleccionTodosModulos( TRUE )
.head 3 +  List Box: lbOrigen
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsLstModSelecMultiple
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Window Location and Size
.head 5 -  Left: 1.233"
.head 5 -  Top: 3.583"
.head 5 -  Width:  2.35"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 1.155"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Multiple selection? Class Default
.head 4 -  Sorted? Class Default
.head 4 -  Vertical Scroll? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Horizontal Scroll? Class Default
.head 4 -  List Initialization
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set lbOrigen.sStatusText =
    'Módulos que originan ' ||
     fciGlobalesCG.NombreAsiento( TRUE, FALSE, TRUE )
.head 3 -  Group Separator
.head 4 -  Resource Id: 53992
.head 3 -  !
.head 3 -  Group Separator
.head 4 -  Resource Id: 11203
.head 3 -  Group Box: Origen de Movimientos
.head 4 -  Resource Id: 11202
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.517"
.head 5 -  Top: 3.321"
.head 5 -  Width:  6.667"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.5"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Radio Button: rbManual
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Seleccionar origen manualmente
.head 4 -  Window Location and Size
.head 5 -  Left: 3.783"
.head 5 -  Top: 3.655"
.head 5 -  Width:  3.3"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbSoloCG.sStatusText = "Ver movimientos originados desde el módulo de Contabilidad General"
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Call SalListClear ( lbOrigen )
.head 6 -  Call lbOrigen.DesplegarModulos( '' )
.head 6 -  !
.head 6 -  ! Call SalEnableWindow( lbOrigen )
.head 6 -  !
.head 3 +  Radio Button: rbSoloCG
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Solo movimientos de CG
.head 4 -  Window Location and Size
.head 5 -  Left: 3.783"
.head 5 -  Top: 3.905"
.head 5 -  Width:  3.233"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbSoloCG.sStatusText = "Ver movimientos originados desde el módulo de Contabilidad General"
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Call SalListClear ( lbOrigen )
.head 6 -  Call lbOrigen.DesplegarModulos( 'CG' )
.head 6 -  !
.head 6 -  ! Call SalDisableWindow( lbOrigen )
.head 6 -  !
.head 3 +  Radio Button: rbSoloAux
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Solo movimientos del Auxiliar
.head 4 -  Window Location and Size
.head 5 -  Left: 3.783"
.head 5 -  Top: 4.155"
.head 5 -  Width:  3.233"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbSoloAux.sStatusText = "Ver solo movimientos originados por el auxiliar"
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Call SalListClear ( lbOrigen )
.head 6 -  Call lbOrigen.DesplegarModulos( dlgCGAuxWiz.isModuloCuadre )
.head 6 -  !
.head 6 -  ! Call SalDisableWindow( lbOrigen )
.head 6 -  !
.head 3 +  Radio Button: rbOtros
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Movimientos de otros módulos
.head 4 -  Window Location and Size
.head 5 -  Left: 3.783"
.head 5 -  Top: 4.405"
.head 5 -  Width:  3.233"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbOtros.sStatusText = "Ver movimientos originados por otros módulos"
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Call SalListClear ( lbOrigen )
.head 6 -  Call lbOrigen.DesplegarModulosInv( dlgCGAuxWiz.isModuloCuadre || ',CG' )
.head 6 -  !
.head 6 -  ! Call SalDisableWindow( lbOrigen )
.head 6 -  !
.head 3 -  Group Separator
.head 4 -  Resource Id: 11204
.head 3 -  !
.head 3 -  Group Separator
.head 4 -  Resource Id: 45940
.head 3 -  Group Box: Débitos / Créditos
.head 4 -  Resource Id: 45942
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 3.583"
.head 5 -  Top: 2.321"
.head 5 -  Width:  2.6"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.952"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Check Box: cbDebitos
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Débitos
.head 4 -  Window Location and Size
.head 5 -  Left: 4.45"
.head 5 -  Top: 2.583"
.head 5 -  Width:  0.95"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set cbDebitos.sStatusText = "Mostrar débitos"
.head 6 -  Set cbDebitos.hwndCBAsociado = cbCreditos
.head 3 +  Check Box: cbCreditos
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Créditos
.head 4 -  Window Location and Size
.head 5 -  Left: 4.45"
.head 5 -  Top: 2.845"
.head 5 -  Width:  1.313"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set cbCreditos.sStatusText = "Mostrar créditos"
.head 6 -  Set cbCreditos.hwndCBAsociado = cbDebitos
.head 3 -  Group Separator
.head 4 -  Resource Id: 53998
.head 3 -  !
.head 3 -  Group Separator
.head 4 -  Resource Id: 53006
.head 3 -  Group Box: Origen / Ubicación
.head 4 -  Resource Id: 53005
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 1.383"
.head 5 -  Top: 2.321"
.head 5 -  Width:  2.083"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.952"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Check Box: cbDiario
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Diario
.head 4 -  Window Location and Size
.head 5 -  Left: 1.917"
.head 5 -  Top: 2.607"
.head 5 -  Width:  1.067"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set cbDiario.sStatusText = "Mostrar solo movimientos del diario"
.head 6 -  Set cbDiario.hwndCBAsociado = cbMayor
.head 3 +  Check Box: cbMayor
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Mayor
.head 4 -  Window Location and Size
.head 5 -  Left: 1.917"
.head 5 -  Top: 2.869"
.head 5 -  Width:  1.313"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set cbMayor.sStatusText = "Mostrar solo movimientos del mayor"
.head 6 -  Set cbMayor.hwndCBAsociado = cbDiario
.head 3 -  Group Separator
.head 4 -  Resource Id: 53007
.head 3 -  !
.head 3 -  !
.head 3 -  ! Botones
.head 3 +  Pushbutton: pbSeleccionar
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Seleccionar
.head 4 -  Window Location and Size
.head 5 -  Left: 1.517"
.head 5 -  Top: 4.952"
.head 5 -  Width:  1.225"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.292"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Call CrearFiltroAsientos()
.head 3 +  Pushbutton: pbTodos
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Todos
.head 4 -  Window Location and Size
.head 5 -  Left: 3.083"
.head 5 -  Top: 4.952"
.head 5 -  Width:  1.225"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.292"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  ! Inicializar los rangos a los valores maximos
.head 6 -  Call EliminarFiltroAsientos()
.head 3 +  Pushbutton: pbCancelar
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Cancelar
.head 4 -  Window Location and Size
.head 5 -  Left: 4.633"
.head 5 -  Top: 4.952"
.head 5 -  Width:  1.225"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.292"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Call SalEndDialog( hWndForm, FALSE )
.head 2 +  Functions
.head 3 +  Function: IniCampos
.head 4 -  Description: Inicializar campos de la pantalla
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  ! Inicializar los rangos con los valores que trae del result set de la tabla
.head 5 -  Set dfAsientoIni = sPrmAsientoIni
.head 5 -  Set dfAsientoFin = sPrmAsientoFin
.head 5 -  Set dfFechaIni = dtPrmFechaIni
.head 5 -  Set dfFechaFin = dtPrmFechaFin
.head 5 -  !
.head 5 -  ! Movimientos
.head 5 +  If sPrmMovimientos = CG_TODOS
.head 6 -  Set rbVerTodos = TRUE
.head 5 +  Else If sPrmMovimientos = CG_ASOCIADOS
.head 6 -  Set rbVerAsociados = TRUE
.head 5 +  Else If sPrmMovimientos = CG_NO_ASOCIADOS
.head 6 -  Set rbVerNoAsociados = TRUE
.head 5 +  Else If sPrmMovimientos = CG_ASOCIADOS_DIF
.head 6 -  Set rbVerAsociadosDif = TRUE
.head 5 +  Else
.head 6 -  Set rbVerTodos = TRUE
.head 5 -  !
.head 5 +  If sPrmDebitosCreditos = DEBITO
.head 6 -  Set cbDebitos = TRUE
.head 6 -  Set cbCreditos = FALSE
.head 5 +  Else If sPrmDebitosCreditos = CREDITO
.head 6 -  Set cbCreditos = TRUE
.head 6 -  Set cbDebitos = FALSE
.head 5 +  Else
.head 6 -  Set cbCreditos = TRUE
.head 6 -  Set cbDebitos = TRUE
.head 5 -  !
.head 5 +  If sPrmDiarioMayor = DIARIO
.head 6 -  !
.head 6 -  Set cbDiario = TRUE
.head 6 -  Set cbMayor = FALSE
.head 5 +  Else If sPrmDiarioMayor = MAYOR
.head 6 -  !
.head 6 -  Set cbDiario = FALSE
.head 6 -  Set cbMayor = TRUE
.head 5 +  Else
.head 6 -  !
.head 6 -  Set cbDiario = TRUE
.head 6 -  Set cbMayor = TRUE
.head 5 -  !
.head 5 -  Call lbOrigen.DesplegarModulos( sPrmOrigen )
.head 3 +  Function: CrearFiltroAsientos
.head 4 -  Description:
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 +  If ValidParametros()
.head 6 -  Set sPrmAsientoIni = dfAsientoIni
.head 6 -  Set sPrmAsientoFin = dfAsientoFin
.head 6 -  Set dtPrmFechaIni = dfFechaIni
.head 6 -  Set dtPrmFechaFin = dfFechaFin
.head 6 -  !
.head 6 -  Set sPrmOrigen = ''
.head 6 -  Set sPrmNOTOrigen = ''
.head 6 -  !
.head 6 +  If SalListQueryMultiCount( lbOrigen ) != SalListQueryCount( lbOrigen )
.head 7 -  ! AEC Bug 77036 -->
.head 7 -  Set sPrmOrigen = lbOrigen.GetModulos()
.head 7 -  Call lbOrigen.ValidarGN ( sPrmOrigen )
.head 7 -  ! AEC Bug 77036 -->
.head 6 -  !
.head 6 +  ! If rbManual
.head 7 +  If SalListQueryMultiCount( lbOrigen ) != SalListQueryCount( lbOrigen )
.head 8 -  Set sPrmOrigen = lbOrigen.GetModulos()
.head 6 +  ! Else
.head 7 -  !
.head 7 +  If rbSoloCG
.head 8 -  Set sPrmOrigen = "'CG'"
.head 7 +  Else If rbSoloAux
.head 8 -  Set sPrmOrigen = "'" || dlgCGAuxWiz.isModuloCuadre || "'"
.head 7 +  Else If rbOtros
.head 8 -  Set sPrmOrigen = ''
.head 8 -  Set sPrmNOTOrigen = "'" || dlgCGAuxWiz.isModuloCuadre || "'" || ",'CG'"
.head 6 -  !
.head 6 -  ! Filtro de Movimientos
.head 6 +  If rbVerAsociados
.head 7 -  !
.head 7 -  Set sPrmMovimientos = CG_ASOCIADOS
.head 6 +  Else If rbVerNoAsociados
.head 7 -  !
.head 7 -  Set sPrmMovimientos = CG_NO_ASOCIADOS
.head 6 +  Else If rbVerTodos
.head 7 -  !
.head 7 -  Set sPrmMovimientos = CG_TODOS
.head 6 +  Else If rbVerAsociadosDif
.head 7 -  !
.head 7 -  Set sPrmMovimientos = CG_ASOCIADOS_DIF
.head 6 +  Else
.head 7 -  !
.head 7 -  Set sPrmMovimientos = STRING_Null
.head 6 -  !
.head 6 +  If cbDebitos AND cbCreditos
.head 7 -  Set sPrmDebitosCreditos = AMBAS
.head 6 +  Else If cbDebitos
.head 7 -  Set sPrmDebitosCreditos = DEBITO
.head 6 +  Else If cbCreditos
.head 7 -  Set sPrmDebitosCreditos = CREDITO
.head 6 -  !
.head 6 +  If cbDiario AND cbMayor
.head 7 -  Set sPrmDiarioMayor = AMBAS
.head 6 +  Else If cbDiario
.head 7 -  Set sPrmDiarioMayor = DIARIO
.head 6 +  Else If cbMayor
.head 7 -  Set sPrmDiarioMayor = MAYOR
.head 6 -  !
.head 6 -  !
.head 6 -  Call SalEndDialog( hWndForm, TRUE )
.head 3 +  Function: EliminarFiltroAsientos
.head 4 -  Description:
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Set sPrmAsientoIni = STRING_Null
.head 5 -  Set sPrmAsientoFin = STRING_Null
.head 5 -  Set dtPrmFechaIni = DATETIME_Null
.head 5 -  Set dtPrmFechaFin = DATETIME_Null
.head 5 -  Set sPrmOrigen = STRING_Null
.head 5 -  Set sPrmContabilidad = STRING_Null
.head 5 -  Set sPrmMovimientos = STRING_Null
.head 5 -  Set sPrmDebitosCreditos = STRING_Null
.head 5 -  Set sPrmDiarioMayor = STRING_Null
.head 5 -  !
.head 5 -  !
.head 5 -  Call SalEndDialog( hWndForm, FALSE )
.head 3 +  Function: ValidParametros
.head 4 -  Description: Valida que los rangos sean correctos
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 +  If dfAsientoIni > dfAsientoFin AND dfAsientoFin
.head 6 -  Call SPSMessageBox(
'El rango de código de ' ||
 fciGlobalesCG.NombreAsiento( TRUE, FALSE, FALSE ) ||
' debe ser ascendente.',
'Selección de ' || fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ),
MBF_IconHand, CONTINUAR )
.head 6 -  Call SalSetFocus( dfAsientoIni )
.head 6 -  Return FALSE
.head 5 +  If dfFechaIni > dfFechaFin AND dfFechaFin
.head 6 -  Call SPSMessageBox(
'El rango de fechas debe ser ascendente.',
'Selección de ' || fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ),
MBF_IconHand, CONTINUAR )
.head 6 -  Call SalSetFocus( dfFechaIni )
.head 6 -  Return FALSE
.head 5 +  If SalListQueryMultiCount( lbOrigen ) <= 0
.head 6 -  Call SPSMessageBox(
'Debe de escoger al menos un módulo origen.',
'Selección de ' || fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ),
MBF_IconHand, CONTINUAR )
.head 6 -  Call SalSetFocus( lbOrigen )
.head 6 -  Return FALSE
.head 5 -  Return TRUE
.head 3 +  Function: CrearDespliegue
.head 4 -  Description: Esconder campos para rangos de paquetes si es del mayor y
esconder conta si no se trabaja con doble conta
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Window Handle: hwndGrupo
.head 5 -  Window Handle: hwndGrupoConta
.head 5 -  Window Handle: hwndGrupoPaquete
.head 5 -  Window Handle: hwndGrupoExportados
.head 5 -  Number: nPosX
.head 5 -  Number: nPosY
.head 5 -  Number: nAncho
.head 5 -  Number: nAlto
.head 5 -  Number: nDesplazamiento
.head 4 +  Actions
.head 5 -  ! Cambiar títulos del asiento
.head 5 -  Call SalSetWindowText( hWndForm,
     'Selección de ' || fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ) )
.head 5 -  Set hwndGrupo = VisWinGetHandle( hWndForm,
     'Código de 1234567890', TYPE_GroupBox )
.head 5 -  Call SalSetWindowText( hwndGrupo,
    'Códi&go de ' || fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ) )
.head 5 -  Set hwndGrupo = VisWinGetHandle( hWndForm,
     'Tipo de 1234567890', TYPE_GroupBox )
.head 5 -  Call SalSetWindowText( hwndGrupo,
    'Ti&po de ' || fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ) )
.head 5 -  Call SalCenterWindow( hWndForm )
.head 3 +  Function: SeleccionTodosModulos
.head 4 -  Description: Selecciona o deselecciona todos los módulos del origen
.head 4 -  Returns
.head 4 +  Parameters
.head 5 -  Boolean: bPrmSeleccion
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Call SalListSetMultiSelect( lbOrigen, -1, bPrmSeleccion )
.head 5 +  If bPrmSeleccion
.head 6 -  ! Todos seleccionados
.head 6 -  Call SalEnableWindow( pbOrigenNinguno )
.head 6 -  Call SalDisableWindow( pbOrigenTodos )
.head 5 +  Else
.head 6 -  ! Ninguno seleccionado
.head 6 -  Call SalDisableWindow( pbOrigenNinguno )
.head 6 -  Call SalEnableWindow( pbOrigenTodos )
.head 5 -  Call VisListSetFocusIndex( lbOrigen, 0 )
.head 2 +  Window Parameters
.head 3 +  Receive String: sPrmAsientoIni
.head 4 -  ! Código del asiento inicial
.head 3 +  Receive String: sPrmAsientoFin
.head 4 -  ! Código del asiento final
.head 3 +  Receive String: sPrmCtaIni
.head 4 -  ! Código de la cuenta inicial
.head 3 +  Receive String: sPrmCtaFin
.head 4 -  ! Código de la cuenta final
.head 3 +  Receive Date/Time: dtPrmFechaIni
.head 4 -  ! Fecha del asiento inicial
.head 3 +  Receive Date/Time: dtPrmFechaFin
.head 4 -  ! Fecha del asiento final
.head 3 +  Receive String: sPrmOrigen
.head 4 -  ! Lista de módulos origen del asiento
.head 3 +  Receive String: sPrmNOTOrigen
.head 4 -  ! Lista de módulos origen del asiento
.head 3 +  Receive String: sPrmContabilidad
.head 4 -  ! Contabilidad
.head 3 +  Receive String: sPrmMovimientos
.head 4 +  ! Selección de Movimientos
.head 5 -  ! 'T' - Todos los movimientos
.head 5 -  ! 'A' - Solo movimientos Asociados
.head 5 -  ! 'N' - Solo movimientos NO Asociados
.head 5 -  ! 'D' - Solo movimientos Asociados con Diferencia
.head 3 +  Receive String: sPrmDebitosCreditos
.head 4 -  ! Indica si se deben mostrar débitos, créditos o ambos
.head 3 +  Receive String: sPrmDiarioMayor
.head 4 -  ! Indica si se deben asientos del DIARIO ó MAYOR
.head 3 -  !
.head 2 -  Window Variables
.head 2 +  Message Actions
.head 3 +  On AM_Create
.head 4 -  Call CrearDespliegue()
.head 3 +  On SAM_CreateComplete
.head 4 -  Call IniCampos()
.head 1 +  Dialog Box: dlgFiltroCuadreAux
.head 2 -  Class: clsDialogBase
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Selección de Movimientos del Auxiliar
.head 2 -  Accessories Enabled? Yes
.head 2 -  Visible? Yes
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? No
.head 3 -  Type of Dialog: Class Default
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 0.35"
.head 4 -  Top: 0.083"
.head 4 -  Width:  6.2"
.head 4 -  Width Editable? Yes
.head 4 -  Height: 3.929"
.head 4 -  Height Editable? Yes
.head 3 -  Absolute Screen Location? Yes
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description: Filtro para la selección de asientos del diario y del mayor
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? No
.head 4 -  Size: Class Default
.head 4 -  Size Editable? Yes
.head 4 -  Docking Toolbar? No
.head 4 -  Toolbar Docking Orientation: Top | Bottom
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Resizable? No
.head 3 -  Contents
.head 2 +  Contents
.head 3 -  Group Separator
.head 4 -  Resource Id: 8478
.head 3 -  Group Box: Movimientos del Auxiliar
.head 4 -  Resource Id: 8479
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.65"
.head 5 -  Top: 0.155"
.head 5 -  Width:  4.833"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.75"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Radio Button: rbVerTodos
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ver Todos los Movimientos
.head 4 -  Window Location and Size
.head 5 -  Left: 1.083"
.head 5 -  Top: 0.321"
.head 5 -  Width:  2.5"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbVerTodos.sStatusText = "Ver todos los movimientos independientemente si están asociados o no"
.head 5 +  On AM_Click
.head 6 -  !
.head 6 +  If rbVerTodos
.head 7 -  !
.head 7 -  ! Call SalDisableWindow( cbConDiferencia )
.head 7 -  Call SalDisableWindow( cbContabilizados )
.head 7 -  Call SalDisableWindow( cbNoContabilizados )
.head 3 +  Radio Button: rbVerAsociados
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ver solo movimientos Asociados
.head 4 -  Window Location and Size
.head 5 -  Left: 1.083"
.head 5 -  Top: 0.571"
.head 5 -  Width:  3.833"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbVerAsociados.sStatusText = "Ver solo los movimientos asociados con alguno del auxiliar"
.head 5 +  On AM_Click
.head 6 -  !
.head 6 +  If rbVerAsociados
.head 7 -  !
.head 7 -  ! Call SalEnableWindow( cbConDiferencia )
.head 7 -  Call SalDisableWindow( cbContabilizados )
.head 7 -  Call SalDisableWindow( cbNoContabilizados )
.head 3 -  ! MRL S2B31523 -->
.head 3 +  Radio Button: rbVerAsociadosDif
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ver solo movimientos Asociados con Diferencia
.head 4 -  Window Location and Size
.head 5 -  Left: 1.083"
.head 5 -  Top: 0.825"
.head 5 -  Width:  4.1"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbVerAsociadosDif.sStatusText = "Ver solo los movimientos asociados que tienen alguna diferencia con relación al monto de contabilidad"
.head 5 +  On AM_Click
.head 6 -  !
.head 6 +  If rbVerAsociadosDif
.head 7 -  !
.head 7 -  ! Call SalEnableWindow( cbConDiferencia )
.head 7 -  ! Call SalDisableWindow( cbConDiferencia )
.head 7 -  Call SalDisableWindow( cbContabilizados )
.head 7 -  Call SalDisableWindow( cbNoContabilizados )
.head 3 -  ! MRL S2B31523 -->
.head 3 +  Radio Button: rbVerNoAsociados
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ver solo movimientos NO Asociados
.head 4 -  Window Location and Size
.head 5 -  Left: 1.083"
.head 5 -  Top: 1.071"
.head 5 -  Width:  3.833"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  !
.head 6 -  Set rbVerAsociados.sStatusText = "Ver solo los movimientos que no están asociados al auxiliar seleccionado"
.head 5 +  On AM_Click
.head 6 -  !
.head 6 +  If rbVerNoAsociados
.head 7 -  !
.head 7 -  ! Call SalDisableWindow( cbConDiferencia )
.head 7 -  Call SalEnableWindow( cbContabilizados )
.head 7 -  Call SalEnableWindow( cbNoContabilizados )
.head 3 -  !
.head 3 +  ! clsStdCB: cbConDiferencia
.winattr class Check Box:
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ver solo movimientos con Difefencia
.head 4 -  Window Location and Size
.head 5 -  Left: 6.283"
.head 5 -  Top: 0.405"
.head 5 -  Width:  3.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? No
.head 4 -  Font Name: Tahoma
.head 4 -  Font Size: 8
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set cbConDiferencia.sStatusText = "Mostrar movimientos asociados con diferencia"
.head 6 -  ! Set cbConDiferencia.hwndCBAsociado = hWndNULL
.head 3 -  !
.head 3 +  Check Box: cbContabilizados
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ver movimientos contabilizados
.head 4 -  Window Location and Size
.head 5 -  Left: 1.583"
.head 5 -  Top: 1.345"
.head 5 -  Width:  3.3"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set cbContabilizados.sStatusText = "Mostrar movimientos contabilizados"
.head 6 -  Set cbContabilizados.hwndCBAsociado = cbNoContabilizados
.head 3 +  Check Box: cbNoContabilizados
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ver movimientos NO contabilizados
.head 4 -  Window Location and Size
.head 5 -  Left: 1.583"
.head 5 -  Top: 1.536"
.head 5 -  Width:  3.3"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set cbNoContabilizados.sStatusText = "Mostrar movimientos NO contabilizados"
.head 6 -  Set cbNoContabilizados.hwndCBAsociado = cbContabilizados
.head 3 -  Group Separator
.head 4 -  Resource Id: 8480
.head 3 -  !
.head 3 -  !
.head 3 -  Group Separator
.head 4 -  Resource Id: 8484
.head 3 -  Group Box: &Fecha
.head 4 -  Resource Id: 8485
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.683"
.head 5 -  Top: 2.048"
.head 5 -  Width:  2.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.958"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  Background Text: Desde:
.head 4 -  Resource Id: 8486
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.867"
.head 5 -  Top: 2.369"
.head 5 -  Width:  0.625"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfFechaIni
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFExtDate
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.533"
.head 6 -  Top: 2.321"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set dfFechaIni.sStatusText =
    'Fecha inicial para la selección de ' ||
    fciGlobalesCG.NombreAsiento( TRUE, FALSE, TRUE )
.head 5 +  On AM_Validate
.head 6 +  If dfFechaFin = DATETIME_Null
.head 7 -  Set dfFechaFin = dfFechaIni
.head 6 -  Return VALIDATE_OkClearFlag
.head 3 -  Background Text: Hasta:
.head 4 -  Resource Id: 8487
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.767"
.head 5 -  Top: 2.69"
.head 5 -  Width:  0.717"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfFechaFin
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFExtDate
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.533"
.head 6 -  Top: 2.643"
.head 6 -  Width:  Class Default
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set dfFechaFin.sStatusText =
    'Fecha final para la selección de ' ||
    fciGlobalesCG.NombreAsiento( TRUE, FALSE, TRUE )
.head 3 -  Group Separator
.head 4 -  Resource Id: 8488
.head 3 -  !
.head 3 -  !
.head 3 -  Group Separator
.head 4 -  Resource Id: 8494
.head 3 -  Group Box: Débitos / Créditos
.head 4 -  Resource Id: 8495
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 3.283"
.head 5 -  Top: 2.048"
.head 5 -  Width:  2.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.952"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Check Box: cbDebitos
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Débitos
.head 4 -  Window Location and Size
.head 5 -  Left: 3.45"
.head 5 -  Top: 2.333"
.head 5 -  Width:  0.95"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set cbDebitos.sStatusText = "Mostrar débitos"
.head 6 -  Set cbDebitos.hwndCBAsociado = cbCreditos
.head 3 +  Check Box: cbCreditos
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Créditos
.head 4 -  Window Location and Size
.head 5 -  Left: 3.45"
.head 5 -  Top: 2.679"
.head 5 -  Width:  1.313"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set cbCreditos.sStatusText = "Mostrar créditos"
.head 6 -  Set cbCreditos.hwndCBAsociado = cbDebitos
.head 3 -  Group Separator
.head 4 -  Resource Id: 8496
.head 3 -  !
.head 3 -  ! Botones
.head 3 +  Pushbutton: pbSeleccionar
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Seleccionar
.head 4 -  Window Location and Size
.head 5 -  Left: 0.917"
.head 5 -  Top: 3.202"
.head 5 -  Width:  1.225"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.292"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Call CrearFiltroAsientos()
.head 3 +  Pushbutton: pbTodos
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Todos
.head 4 -  Window Location and Size
.head 5 -  Left: 2.483"
.head 5 -  Top: 3.202"
.head 5 -  Width:  1.225"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.292"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  ! Inicializar los rangos a los valores maximos
.head 6 -  Call EliminarFiltroAsientos()
.head 3 +  Pushbutton: pbCancelar
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Cancelar
.head 4 -  Window Location and Size
.head 5 -  Left: 4.033"
.head 5 -  Top: 3.202"
.head 5 -  Width:  1.225"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: 0.292"
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 +  Message Actions
.head 5 +  On SAM_Click
.head 6 -  Call SalEndDialog( hWndForm, FALSE )
.head 2 +  Functions
.head 3 +  Function: IniCampos
.head 4 -  Description: Inicializar campos de la pantalla
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  ! Inicializar los rangos con los valores que trae del result set de la tabla
.head 5 -  Set dfFechaIni = dtPrmFechaIni
.head 5 -  Set dfFechaFin = dtPrmFechaFin
.head 5 -  !
.head 5 -  ! Movimientos
.head 5 +  If sPrmMovimientos = AUX_TODOS
.head 6 -  Set rbVerTodos = TRUE
.head 6 -  !
.head 6 -  ! Call SalDisableWindow( cbConDiferencia )
.head 6 -  Call SalDisableWindow( cbContabilizados )
.head 6 -  Call SalDisableWindow( cbNoContabilizados )
.head 5 +  Else If sPrmMovimientos = AUX_ASOCIADOS
.head 6 -  Set rbVerAsociados = TRUE
.head 6 -  !
.head 6 -  ! MRL -->  
.head 6 -  ! Call SalEnableWindow( cbConDiferencia )
.head 6 -  ! Call SalDisableWindow( cbConDiferencia )
.head 6 -  ! MRL <--
.head 6 -  Call SalDisableWindow( cbContabilizados )
.head 6 -  Call SalDisableWindow( cbNoContabilizados )
.head 5 -  ! MRL S2B31523 -->
.head 5 +  Else If sPrmMovimientos = AUX_ASOC_CONDIF
.head 6 -  Set rbVerAsociadosDif = TRUE
.head 6 -  !
.head 6 -  ! Call SalDisableWindow( cbConDiferencia )
.head 6 -  Call SalDisableWindow( cbContabilizados )
.head 6 -  Call SalDisableWindow( cbNoContabilizados )
.head 5 -  ! MRL S2B31523 <--
.head 5 +  Else If sPrmMovimientos = AUX_NO_ASOCIADOS
.head 6 -  Set rbVerNoAsociados = TRUE
.head 6 -  !
.head 6 -  ! Call SalDisableWindow( cbConDiferencia )
.head 6 -  Call SalEnableWindow( cbContabilizados )
.head 6 -  Call SalEnableWindow( cbNoContabilizados )
.head 5 +  Else
.head 6 -  Set rbVerTodos = TRUE
.head 6 -  !
.head 6 -  ! Call SalDisableWindow( cbConDiferencia )
.head 6 -  Call SalDisableWindow( cbContabilizados )
.head 6 -  Call SalDisableWindow( cbNoContabilizados )
.head 5 -  !
.head 5 +  If sPrmDebitosCreditos = DEBITO
.head 6 -  Set cbDebitos = TRUE
.head 5 +  Else If sPrmDebitosCreditos = CREDITO
.head 6 -  Set cbCreditos = TRUE
.head 5 +  Else If sPrmDebitosCreditos = AMBAS
.head 6 -  Set cbCreditos = TRUE
.head 6 -  Set cbDebitos = TRUE
.head 5 +  Else
.head 6 -  Set cbCreditos = TRUE
.head 6 -  Set cbDebitos = TRUE
.head 5 -  !
.head 5 -  ! MRL -->
.head 5 +  ! If sPrmAsociados = AUX_ASOC_CONDIF
.head 6 -  !
.head 6 -  Set cbConDiferencia = TRUE
.head 5 +  ! Else
.head 6 -  !
.head 6 -  Set cbConDiferencia = FALSE
.head 5 -  ! MRL <--
.head 5 -  !
.head 5 +  If sPrmNoAsociados = AUX_CONTABILIZADO
.head 6 -  !
.head 6 -  Set cbContabilizados = TRUE
.head 6 -  Set cbNoContabilizados = FALSE
.head 5 +  Else If sPrmNoAsociados = AUX_NO_CONTABILIZADO
.head 6 -  !
.head 6 -  Set cbContabilizados = FALSE
.head 6 -  Set cbNoContabilizados = TRUE
.head 5 +  Else
.head 6 -  !
.head 6 -  Set cbContabilizados = TRUE
.head 6 -  Set cbNoContabilizados = TRUE
.head 5 -  !
.head 3 +  Function: CrearFiltroAsientos
.head 4 -  Description:
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 +  If ValidParametros()
.head 6 -  Set dtPrmFechaIni = dfFechaIni
.head 6 -  Set dtPrmFechaFin = dfFechaFin
.head 6 -  !
.head 6 -  ! Filtro de Movimientos
.head 6 +  If rbVerAsociados
.head 7 -  !
.head 7 -  Set sPrmMovimientos = AUX_ASOCIADOS
.head 6 -  ! MRL S2B31523 -->
.head 6 +  Else If rbVerAsociadosDif
.head 7 -  !
.head 7 -  Set sPrmMovimientos = AUX_ASOC_CONDIF
.head 6 -  ! MRL S2B31523 <--
.head 6 +  Else If rbVerNoAsociados
.head 7 -  !
.head 7 -  Set sPrmMovimientos = AUX_NO_ASOCIADOS
.head 6 +  Else If rbVerTodos
.head 7 -  !
.head 7 -  Set sPrmMovimientos = AUX_TODOS
.head 6 +  Else
.head 7 -  !
.head 7 -  Set sPrmMovimientos = STRING_Null
.head 6 -  !
.head 6 +  If cbDebitos AND cbCreditos
.head 7 -  Set sPrmDebitosCreditos = AMBAS
.head 6 +  Else If cbDebitos
.head 7 -  Set sPrmDebitosCreditos = DEBITO
.head 6 +  Else If cbCreditos
.head 7 -  Set sPrmDebitosCreditos = CREDITO
.head 6 -  !
.head 6 -  ! MRL -->
.head 6 +  ! If cbConDiferencia
.head 7 -  !
.head 7 -  Set sPrmAsociados = AUX_ASOC_CONDIF
.head 6 -  ! MRL <--
.head 6 -  !
.head 6 +  If cbContabilizados AND cbNoContabilizados
.head 7 -  Set sPrmNoAsociados = AMBAS
.head 6 +  Else If cbContabilizados
.head 7 -  Set sPrmNoAsociados = AUX_CONTABILIZADO
.head 6 +  Else If cbNoContabilizados
.head 7 -  Set sPrmNoAsociados = AUX_NO_CONTABILIZADO
.head 6 +  Else
.head 7 -  Set sPrmNoAsociados = ''
.head 6 -  !
.head 6 -  !
.head 6 -  Call SalEndDialog( hWndForm, TRUE )
.head 3 +  Function: EliminarFiltroAsientos
.head 4 -  Description:
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Set dtPrmFechaIni = DATETIME_Null
.head 5 -  Set dtPrmFechaFin = DATETIME_Null
.head 5 -  Set sPrmMovimientos = STRING_Null
.head 5 -  Set sPrmDebitosCreditos = STRING_Null
.head 5 -  ! Set sPrmAsociados = STRING_Null
.head 5 -  Set sPrmNoAsociados = STRING_Null
.head 5 -  !
.head 5 -  !
.head 5 -  Call SalEndDialog( hWndForm, FALSE )
.head 3 +  Function: ValidParametros
.head 4 -  Description: Valida que los rangos sean correctos
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 +  If dfFechaIni > dfFechaFin AND dfFechaFin
.head 6 -  Call SPSMessageBox(
'El rango de fechas debe ser ascendente.',
'Selección de ' || fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ),
MBF_IconHand, CONTINUAR )
.head 6 -  Call SalSetFocus( dfFechaIni )
.head 6 -  Return FALSE
.head 5 -  Return TRUE
.head 3 +  Function: CrearDespliegue
.head 4 -  Description: Esconder campos para rangos de paquetes si es del mayor y
esconder conta si no se trabaja con doble conta
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Window Handle: hwndGrupo
.head 5 -  Window Handle: hwndGrupoConta
.head 5 -  Window Handle: hwndGrupoPaquete
.head 5 -  Window Handle: hwndGrupoExportados
.head 5 -  Number: nPosX
.head 5 -  Number: nPosY
.head 5 -  Number: nAncho
.head 5 -  Number: nAlto
.head 5 -  Number: nDesplazamiento
.head 4 +  Actions
.head 5 -  ! Cambiar títulos del asiento
.head 5 -  Call SalCenterWindow( hWndForm )
.head 2 +  Window Parameters
.head 3 +  Receive Date/Time: dtPrmFechaIni
.head 4 -  ! Fecha del asiento inicial
.head 3 +  Receive Date/Time: dtPrmFechaFin
.head 4 -  ! Fecha del asiento final
.head 3 +  Receive String: sPrmMovimientos
.head 4 +  ! Selección de Movimientos
.head 5 -  ! 'T' - Todos los movimientos
.head 5 -  ! 'A' - Solo movimientos Asociados
.head 5 -  ! 'N' - Solo movimientos NO Asociados
.head 5 -  ! 'D' - Solo movimientos Asociados con Diferencia
.head 3 +  Receive String: sPrmDebitosCreditos
.head 4 -  ! Indica si se deben mostrar débitos, créditos o ambos
.head 3 -  ! Receive String: sPrmAsociados
.head 3 -  Receive String: sPrmNoAsociados
.head 3 -  !
.head 2 -  Window Variables
.head 2 +  Message Actions
.head 3 +  On AM_Create
.head 4 -  Call CrearDespliegue()
.head 3 +  On SAM_CreateComplete
.head 4 -  Call IniCampos()
.head 1 +  Dialog Box: dlgCGAuxDocAsociado
.head 2 -  Class: clsDialogBase
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Movimientos Asociados
.head 2 -  Accessories Enabled? No
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? Yes
.head 3 -  Type of Dialog: Class Default
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: Default
.head 4 -  Top: Default
.head 4 -  Width:  10.6"
.head 4 -  Width Editable? Class Default
.head 4 -  Height: 4.571"
.head 4 -  Height Editable? Class Default
.head 3 -  Absolute Screen Location? Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: None
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description:
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Size: 0.274"
.head 4 -  Size Editable? Class Default
.head 4 -  Docking Toolbar? Class Default
.head 4 -  Toolbar Docking Orientation: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Resizable? Class Default
.head 3 -  Contents
.head 2 +  Contents
.head 3 -  Background Text: Movimiento en la Contabilidad:
.head 4 -  Resource Id: 41236
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 0.179"
.head 5 -  Width:  2.5"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfMovimientoReferencia
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.183"
.head 6 -  Top: 0.155"
.head 6 -  Width:  4.2"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: Class Default
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 -  Background Text: Movimientos Asociados
.head 4 -  Resource Id: 60596
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 0.619"
.head 5 -  Width:  9.9"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Child Table: tblAsocCuadreAux
.data CLASSPROPSSIZE
0000: 1900
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000600 4E616D6533000000 00
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsChldTblBusqueda
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 0.283"
.head 6 -  Top: 0.786"
.head 6 -  Width:  9.9"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 1.619"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  View: Class Default
.head 5 -  Allow Row Sizing? Class Default
.head 5 -  Lines Per Row: Class Default
.head 4 -  Memory Settings
.head 5 -  Maximum Rows in Memory: Class Default
.head 5 -  Discardable? Class Default
.head 4 +  Contents
.head 5 +  Column: colAuxReferencia
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Referencia
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxFecha
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Fecha
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Date/Time
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: dd-MM-yyyy
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxConcepto
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Concepto
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxAsiento
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Transacción Contable
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Class Default
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxDebitoLoc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Débito Local
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxDebitoDol
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Débito Dólar
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxCreditoLoc
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Crédito Local
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 5 +  Column: colAuxCreditoDol
.head 6 -  Class Child Ref Key: 0
.head 6 -  Class ChildKey: 0
.head 6 -  Class: clscolVisible
.head 6 -  Property Template:
.head 6 -  Class DLL Name:
.head 6 -  Title: Crédito Dólar
.head 6 -  Visible? Class Default
.head 6 -  Editable? Class Default
.head 6 -  Maximum Data Length: Class Default
.head 6 -  Data Type: Number
.head 6 -  Justify: Class Default
.head 6 -  Width:  1.267"
.head 6 -  Width Editable? Class Default
.head 6 -  Format: Class Default
.head 6 -  Country: Class Default
.head 6 -  Input Mask: Class Default
.head 6 -  Cell Options
.head 7 -  Cell Type? Class Default
.head 7 -  Multiline Cell? Class Default
.head 7 -  Cell DropDownList
.head 8 -  Sorted? Class Default
.head 8 -  Vertical Scroll? Class Default
.head 8 -  Auto Drop Down? Class Default
.head 8 -  Allow Text Editing? Class Default
.head 7 -  Cell CheckBox
.head 8 -  Check Value:
.head 8 -  Uncheck Value:
.head 8 -  Ignore Case? Class Default
.head 6 -  List Values
.head 6 +  Message Actions
.head 7 +  On AM_ForcePopulate
.head 8 -  Return TRUE
.head 4 +  Functions
.head 5 -  !
.head 5 -  ! Redefinibles Obligatorias
.head 5 +  Function: InitTable
.head 6 -  Description: Función que debe ser redefinida por las clases u objetos derivados
para establecer los valores necesarios para el manejo de la tabla.

La función debe retornar los valores necesarios en los parámetros
que se detallan.

Las clases u objetos derivados deben retornar TRUE en esta función
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 +  Parameters
.head 7 -  Receive String: sTabla		! Nombre de la tabla (en la BD) sobre la cual se realiza la búsqueda
.head 7 -  Receive String: sColumnas		! Nombre de las columnas (en la BD) para las columnas del table-window
.head 7 -  Receive String: sIntoVars		! Into-variables para popular la tabla.  Deben  ser los nombres de la columnas en el table-window
.head 7 -  Receive Window Handle: hwndDF	! Data-field de donde se toma el valor inicial y donde se pone el valor elegido  hWndNULL en caso de no ser para help
.head 7 -  Receive Boolean: bRestrict		! Indica si se debe popular la tabla de forma tal que incluya solamente los rows que inicien con el valor inicial de búsqueda
.head 7 -  Receive Boolean: bBusquedaExacta	! Indica que solo busca rows que cumplan exactamente con lo digitado
.head 7 -  Receive Boolean: bManejarVentana	! Indica si la clase se encarga de manejar la ventana cuando se realiza la selección de un row
.head 7 -  Receive Number: nFlags1
.head 7 -  Receive Number: nFlags2
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalTblSetColumnTitle( colAuxAsiento, fciGlobalesCG.NombreAsiento( FALSE, TRUE, FALSE ) )
.head 7 -  !
.head 7 +  If psDesde = CONTA
.head 8 -  Set sTabla = ConcatCompany( 'CUADRE_AUX ' )
.head 8 -  Set sColumnas = ' REFERENCIA, FECHA, CONCEPTO, ASIENTO,
		DEBITO_LOC, DEBITO_DOL, CREDITO_LOC, CREDITO_DOL '
.head 7 +  Else
.head 8 -  Set sTabla = ConcatCompany( 'CUADRE_CONTA ' )
.head 8 -  Set sColumnas = ' FUENTE, FECHA, REFERENCIA, ASIENTO,
		DEBITO_LOC, DEBITO_DOL, CREDITO_LOC, CREDITO_DOL '
.head 7 -  Set sIntoVars = ':colAuxReferencia, :colAuxFecha, :colAuxConcepto, :colAuxAsiento,
	 :colAuxDebitoLoc, :colAuxDebitoDol,  :colAuxCreditoLoc, :colAuxCreditoDol '
.head 7 -  !
.head 7 -  Set hwndDF = hWndNULL
.head 7 -  Set bRestrict = FALSE
.head 7 -  Set bBusquedaExacta = TRUE
.head 7 -  Set bManejarVentana = FALSE
.head 7 -  !
.head 7 -  Set bPopulateOnCreate = TRUE
.head 7 -  !
.head 7 -  !
.head 7 -  Return TRUE
.head 5 +  Function: GetOpcion
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar la
opción utilizada para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return 'Cuadre Auxiliar'
.head 5 +  Function: GetOrigen
.head 6 -  Description: Esta función debe ser redefinida en las instancias para retornar el
origen utilizado para almacenar y obtener las preferencias
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return CG_ORIGEN
.head 5 +  Function: GetStatements
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  Function: GetVariables
.head 6 -  Description: Retorna los estatutos a ejecutar antes de llamar a CreateWHERE.
Sirve para dar valor a variables que se van a utilizar en el
CreateWHERE, cuyos valores se almacenan en la base de datos
.head 6 +  Returns
.head 7 -  Long String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ''
.head 5 +  ! Function: GetStatementsAndVars
.head 6 -  Description: 
.head 6 +  Returns 
.head 7 -  Long String: 
.head 6 -  Parameters 
.head 6 -  Static Variables 
.head 6 +  Local variables 
.head 7 -  Long String: ls1
.head 7 -  Long String: ls2
.head 7 -  Long String: lsTotal
.head 7 -  !
.head 7 -  Number: nPosMax
.head 6 +  Actions 
.head 7 -  !
.head 7 -  ! laar
.head 7 -  ! Set ls1 = ..GetStatements()
.head 7 -  Set ls1 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETSTATEMENTS ) )
.head 7 -  !
.head 7 -  ! Set ls2 = ..GetVariables()
.head 7 -  Set ls2 = SalNumberToHString( SalSendMsg( hWndForm, AM_LateBoundCall, 0, GETVARIABLES ) )
.head 7 -  !
.head 7 -  Set lsTotal = ls2 || ls1
.head 7 -  !
.head 7 -  ! Recortar el string al maximo permitido
.head 7 -  !
.head 7 -  Set nPosMax = SalStrLength( lsTotal ) - 1
.head 7 +  If nPosMax >  MAX_PREFERENCIA_LONG_SIZE
.head 8 -  Set nPosMax = VisStrScanReverse( lsTotal, MAX_PREFERENCIA_LONG_SIZE, LIST_SEPARATOR )
.head 8 -  Set lsTotal = SalStrLeftX( lsTotal, nPosMax )
.head 7 -  !
.head 7 -  Return lsTotal
.head 5 +  Function: CreateWHERE
.head 6 -  Description: Función para crear la porción where del comando sql para cargar la
tabla.
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 +  Local variables
.head 7 -  String: lsWhere
.head 6 +  Actions
.head 7 -  !
.head 7 +  If psDesde = CONTA
.head 8 -  Set lsWhere = " WHERE ROWPOINTER IN ( " ||
	"SELECT CCA.GUID_AUX FROM " ||
	ConcatCompany('CUADRE_CONTA_AUX CCA ') ||
	"WHERE GUID_CONTA = :psGUID "  || " ) "	
.head 7 +  Else
.head 8 -  Set lsWhere = " WHERE ROWPOINTER IN ( " ||
	"SELECT CCA.GUID_CONTA FROM " ||
	ConcatCompany('CUADRE_CONTA_AUX CCA ') ||
	"WHERE GUID_AUX = :psGUID "  || " ) "	
.head 7 -  !
.head 7 -  Return lsWhere
.head 5 +  ! Function: RowPictures
.head 6 -  Description: Debe ser redefinido para asignar a los parámetros los valores
necesarios para manejar row-pictures.  Debe retornar TRUE en
la redefinición
.head 6 +  Returns 
.head 7 -  Boolean: 
.head 6 +  Parameters 
.head 7 -  Receive Number: nRowFlag1
.head 7 -  Receive Number: nRowFlag2
.head 7 -  Receive Number: nRowFlag3
.head 7 -  Receive String: sResourceList
.head 6 -  Static Variables 
.head 6 -  Local variables 
.head 6 +  Actions 
.head 7 -  Set nRowFlag1 = ROW_UserFlag1
.head 7 -  Set nRowFlag2 = 0
.head 7 -  Set nRowFlag3 = 0
.head 7 -  Set sResourceList = 'picAsientoMarcado'
.head 7 -  Return TRUE
.head 5 +  Function: AfterInitTable
.head 6 -  Description: Función que es llamada después de inicializar la tabla, leer las
preferencias de la base de datos y popularla
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: GetWindowSizeAndLoc
.head 6 -  Description: Retorna el tamaño y la localización del top-level window
para guardarlo en la base de datos y después restaurar al entrar.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Receive Number: nWidth
.head 7 -  Receive Number: nHeight
.head 7 -  Receive Number: nX
.head 7 -  Receive Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalGetWindowSize( hWndTable, nWidth, nHeight )
.head 7 -  Call SalGetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: SetWindowSizeAndLoc
.head 6 -  Description: Cambia el tamaño y la localización del top-level window
después de leerlo de la base de datos.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Number: nWidth
.head 7 -  Number: nHeight
.head 7 -  Number: nX
.head 7 -  Number: nY
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Call SalSetWindowSize( hWndTable, nWidth,  nHeight )
.head 7 -  !
.head 7 -  ! Se comentan las llamadas para que compile
.head 7 -  Call SetWindowInVisiblePos( hWndTable,  nWidth,  nHeight, nX, nY )
.head 7 -  !
.head 7 -  Call SalSetWindowLoc( hWndTable, nX, nY )
.head 5 +  Function: AfterPopulate
.head 6 -  Description: Función que es llamada después de poblar el table-window
.head 6 -  Returns
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: UsarDistinct
.head 6 -  Description: Se redefine para retornar TRUE indicando que se utilice la cláusula
DISTINCT para poblar la tabla eliminando registros duplicados.
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return TRUE
.head 5 +  Function: HacerBusquedaInicial
.head 6 -  Description: Hacer la búsqueda binaria inicial si se especifica un "string-digitado"
a la hora de creación de la tabla
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return TRUE
.head 5 +  Function: DevolverSeparador
.head 6 -  Description:
.head 6 +  Returns
.head 7 -  String:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return ','
.head 5 +  Function: UsarResultCount
.head 6 -  Description: Indica si se debe utilizar GetResultSetCount( ) en lugar de ejecutar un
COUNT(*) en la base de datos
.head 6 +  Returns
.head 7 -  Boolean:
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return FALSE
.head 5 +  Function: InicializarPreferencias
.head 6 -  Description: Se llama luego de leer y ejecutar las preferencias.
Se puede redefinir para establecer los valores iniciales y
poder restringir el result-set o configurar el ambiente inicial.
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  Boolean: bPrmExistenPreferencias
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 +  Function: CambiarOrderBy
.head 6 -  Description: Permite incluir campos en el ordenamiento default que tiene la
tabla. Es muy útil en tablas que son hijas de otra y que siempre
deben ordenar por el código del maestro. Esto mejora la
eficiencia al popular la tabla, siempre que se tengan los índices
bien definidos.
Recibe la hilera de campos en el order by y para que se le
inserten los campos en el orden que se desee ( inicio o final )
Recordar que la variable nFirstColumn indica el ID de la columna
por la cual se ordena.
.head 6 +  Returns
.head 7 -  String:
.head 6 +  Parameters
.head 7 -  String: sPrmOrderBy
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  Return sPrmOrderBy
.head 5 +  Function: ColumnaDeRestriccion
.head 6 -  Description: Define la columna por la cual se ha de restringir el result-set de la tabla F1.
Redefinible a nivel de la instancia; basicamente para campos F1 que no se
han de restringir la columna de codigo (#1 siempre!) sino por descripcion o
alguna otra columna.
.head 6 +  Returns
.head 7 +  Number:
.head 8 -  ! valor numerico de la columna por la cual se restringe;
siendo 1 por default.
.head 6 -  Parameters
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 +  Actions
.head 7 -  !
.head 7 -  ! se ha de ordenar por la 1ra columna de la tabla; usualmente el codigo
.head 7 -  Return 1
.head 5 +  Function: ModificaWhere
.head 6 -  Description: Agregada 05/06/2000 JCHAVES
Utilizada para la funcionalidad de códigos de barras.
Permite agregar al sWhereRestrict cláusulas adicionales antes de
concatenarle el sWhereClause
.head 6 -  Returns
.head 6 +  Parameters
.head 7 -  String: psStringDesde
.head 7 -  String: psStringHasta
.head 6 -  Static Variables
.head 6 -  Local variables
.head 6 -  Actions
.head 5 -  !
.head 5 -  !
.head 5 -  ! Otras Funciones
.head 5 -  !
.head 5 -  !
.head 4 -  Window Variables
.head 4 -  Message Actions
.head 3 -  !
.head 3 -  Background Text: Débitos
.head 4 -  Resource Id: 41239
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 1.583"
.head 5 -  Top: 2.476"
.head 5 -  Width:  4.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Underline
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  Background Text: Créditos
.head 4 -  Resource Id: 41238
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 5.983"
.head 5 -  Top: 2.476"
.head 5 -  Width:  4.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Underline
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  !
.head 3 -  Background Text: Contabilidad:
.head 4 -  Resource Id: 41241
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 2.929"
.head 5 -  Width:  1.133"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: None
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  Background Text: Auxiliar:
.head 4 -  Resource Id: 41242
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 3.262"
.head 5 -  Width:  1.133"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: None
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  Background Text: Local
.head 4 -  Resource Id: 41240
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 1.583"
.head 5 -  Top: 2.667"
.head 5 -  Width:  2.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: None
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfContaDebitoLoc
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.583"
.head 6 -  Top: 2.905"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfContaCreditoLoc
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 5.983"
.head 6 -  Top: 2.905"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfAuxDebitoLoc
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.583"
.head 6 -  Top: 3.238"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfAuxCreditoLoc
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 5.983"
.head 6 -  Top: 3.238"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 -  Background Text: Dólar
.head 4 -  Resource Id: 41244
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 3.683"
.head 5 -  Top: 2.69"
.head 5 -  Width:  2.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: None
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfContaDebitoDol
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.683"
.head 6 -  Top: 2.905"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfContaCreditoDol
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 8.183"
.head 6 -  Top: 2.905"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfAuxDebitoDol
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.683"
.head 6 -  Top: 3.238"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfAuxCreditoDol
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 8.183"
.head 6 -  Top: 3.238"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 -  !
.head 3 -  Background Text: Diferencia:
.head 4 -  Resource Id: 41243
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 3.595"
.head 5 -  Width:  1.133"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Right
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: None
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  Background Text: Local
.head 4 -  Resource Id: 41245
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 5.983"
.head 5 -  Top: 2.69"
.head 5 -  Width:  2.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: None
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfDifDebitoLoc
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.583"
.head 6 -  Top: 3.571"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfDifCreditoLoc
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 5.983"
.head 6 -  Top: 3.571"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 -  Background Text: Dólar
.head 4 -  Resource Id: 41246
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 8.183"
.head 5 -  Top: 2.69"
.head 5 -  Width:  2.0"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Center
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: None
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Data Field: dfDifDebitoDol
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.683"
.head 6 -  Top: 3.571"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Data Field: dfDifCreditoDol
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? No
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 8.183"
.head 6 -  Top: 3.571"
.head 6 -  Width:  2.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: Class Default
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Class Default
.head 5 -  Border? Class Default
.head 5 -  Justify: Class Default
.head 5 -  Format: ###000
.head 5 -  Country: Class Default
.head 5 -  Font Name: Class Default
.head 5 -  Font Size: Class Default
.head 5 -  Font Enhancement: Class Default
.head 5 -  Text Color: Class Default
.head 5 -  Background Color: Class Default
.head 5 -  Input Mask: Class Default
.head 4 -  Message Actions
.head 3 +  Pushbutton: pbSalir
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Salir
.head 4 -  Window Location and Size
.head 5 -  Left: 4.883"
.head 5 -  Top: 4.071"
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Keyboard Accelerator: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Class Default
.head 4 -  Image Style: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Button Appearance: Class Default
.head 4 +  Message Actions
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Call SalEndDialog( dlgCGAuxDocAsociado, 1 )
.head 2 +  Functions
.head 3 +  Function: MostrarDatos
.head 4 -  Description: Muestra los datos en el dialogo
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  Window Handle: hwndColumna
.head 5 -  Number: lnSum
.head 5 -  !
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 -  Set dfAuxDebitoLoc = SalTblColumnSum ( tblAsocCuadreAux, 5, 0, 0 )
.head 5 -  Set dfAuxDebitoDol = SalTblColumnSum ( tblAsocCuadreAux, 6, 0, 0 )
.head 5 -  Set dfAuxCreditoLoc = SalTblColumnSum ( tblAsocCuadreAux, 7, 0, 0 )
.head 5 -  Set dfAuxCreditoDol = SalTblColumnSum ( tblAsocCuadreAux, 8, 0, 0 )
.head 5 -  !
.head 5 -  Set dfContaDebitoLoc = pnDebitoLoc
.head 5 -  Set dfContaDebitoDol = pnDebitoDol
.head 5 -  Set dfContaCreditoLoc = pnCreditoLoc
.head 5 -  Set dfContaCreditoDol = pnCreditoDol
.head 5 -  !
.head 5 -  Set dfDifDebitoLoc = dfContaDebitoLoc - dfAuxDebitoLoc
.head 5 -  Set dfDifDebitoDol = dfContaDebitoDol - dfAuxDebitoDol
.head 5 -  Set dfDifCreditoLoc = dfContaCreditoLoc - dfAuxCreditoLoc
.head 5 -  Set dfDifCreditoDol = dfContaCreditoDol - dfAuxCreditoDol
.head 5 -  !
.head 5 -  Set dfMovimientoReferencia = psDocOrigen
.head 5 -  !
.head 5 -  !
.head 5 +  If psDesde = CONTA
.head 6 -  !
.head 6 -  Call SalSetWindowLabelText ( dfMovimientoReferencia, 'Movimiento en la Contabilidad:' )
.head 5 +  Else
.head 6 -  !
.head 6 -  Call SalSetWindowLabelText ( dfMovimientoReferencia, 'Movimiento en el Auxiliar:' )
.head 5 -  !
.head 5 -  !
.head 5 -  !
.head 5 -  Return lbOk
.head 2 +  Window Parameters
.head 3 -  String: psGUID
.head 3 -  String: psDocOrigen
.head 3 -  Number: pnDebitoLoc
.head 3 -  Number: pnDebitoDol
.head 3 -  Number: pnCreditoLoc
.head 3 -  Number: pnCreditoDol
.head 3 -  String: psDesde
.head 2 -  Window Variables
.head 2 +  Message Actions
.head 3 +  On SAM_CreateComplete
.head 4 -  !
.head 4 -  Call MostrarDatos()
.head 1 +  ! clsDlgProceso: dlgCargaCuentasAF
.head 2 -  Description: 
.head 2 +  Tool Bar 
.head 3 -  Contents 
.head 2 +  Contents 
.head 3 -  Background Text: Seleccione las cuentas a cargar:
.head 3 +  Pushbutton: pbCargar
.head 4 -  Message Actions 
.head 3 +  Pushbutton: pbCancelar
.head 4 -  Message Actions 
.head 3 +  Check Box: cbActivo
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set cbActivo.sStatusText = 'Carga las cuentas de Activo'
.head 3 +  Check Box: cbDepNormal
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set cbDepNormal.sStatusText = 'Carga las cuentas de Depreciación Normal'
.head 3 +  Check Box: cbReval
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set cbReval.sStatusText = 'Carga las cuentas de Revaluación'
.head 3 +  Check Box: cbDepReval
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set cbReval.sStatusText = 'Carga las cuentas de Depreciación de la Revaluación'
.head 3 +  Check Box: cbRevalDepAcum
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set cbReval.sStatusText = 'Carga las cuentas de Revaluación de la Depreciación Acumulada'
.head 2 -  Functions 
.head 2 -  Window Parameters 
.head 2 -  Window Variables 
.head 2 -  Message Actions 
