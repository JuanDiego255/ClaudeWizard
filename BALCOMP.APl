.head 0 +  Application Description: BALCOMP.APL
Balances de Comprobación por Cuentas

Módulo: Contabilidad General (CG)
Versión: 6.0x.xx
Analista:  Sergio Chan


.data CLASSPROPSSIZE
0000: 5700
.enddata
.data CLASSPROPS
0000: 4170705061746800 1F00493A5C546F6F 6C733B493A5C426D 705F69636F3B493A
0020: 5C56657273696F6E 7300417070506174 684C656E0004001F 0000000055736547
0040: 6C6F62616C506174 6800040001000000 00000000000000
.enddata
.head 1 -  Outline Version - 4.0.35
.head 1 +  Design-time Settings
.data VIEWINFO
0000: 6F00000001000000 FFFF01000D004347 5458566965775374 6174650400010000
0020: 00000000008A0100 002C000000020000 0003000000FFFFFF FFFFFFFFFFF8FFFF
0040: FFE1FFFFFF000000 0000000000B20400 0012020000010000 0000000000010000
0060: 000F4170706C6963 6174696F6E497465 6D00000000
.enddata
.data DT_MAKERUNDLG
0000: 03000000000B4241 4C434F4D502E4558 4500000000000000 0000000000000000
0020: 0B42414C434F4D50 2E41504400000000 0000000B42414C43 4F4D502E41504C00
0040: 000001010101
.enddata
.head 2 -  Outline Window State: Normal
.head 2 +  Outline Window Location and Size
.data VIEWINFO
0000: 6600010003001B00 0200000000000000 0000401F270D0500 1D00FFFF4D61696E
0020: 00
.enddata
.data VIEWSIZE
0000: 2100
.enddata
.head 3 -  Left: -0.025"
.head 3 -  Top: 0.01"
.head 3 -  Width:  7.788"
.head 3 -  Height: 4.969"
.head 2 +  Options Box Location
.data VIEWINFO
0000: 1018B80BB80B2500
.enddata
.data VIEWSIZE
0000: 0800
.enddata
.head 3 -  Visible? Yes
.head 3 -  Left: 2.388"
.head 3 -  Top: 0.49"
.head 3 -  Width:  4.85"
.head 3 -  Height: 3.292"
.head 2 +  Class Editor Location
.head 3 -  Visible? No
.head 3 -  Left: Default
.head 3 -  Top: Default
.head 3 -  Width:  Default
.head 3 -  Height: Default
.head 2 +  Tool Palette Location
.head 3 -  Visible? No
.head 3 -  Left: 3.7"
.head 3 -  Top: 2.646"
.head 2 -  Fully Qualified External References? No
.head 2 -  Reject Multiple Window Instances? Yes
.head 2 -  Enable Runtime Checks Of External References? No
.head 2 -  Use Release 4.0 Scope Rules? Yes
.head 2 -  Edit Fields Read Only On Disable? No
.head 2 +  ! Outline Browser Location
.head 3 -   Visible? No
.head 3 -   Left:   Default
.head 3 -   Top:    Default
.head 3 -   Width:  Default
.head 3 -   Height: Default
.head 1 +  Libraries
.head 2 -  ! File Include: bascgglo.apl 
.head 2 +  ! Select From: cgglobal.apl
.head 3 -  Constants 
.head 3 -  Class Definitions 
.head 3 -  Variables 
.head 2 -  ! File Include: f1cuenta.apl
.head 2 -  ! File Include: f1ccosto.apl
.head 2 -  File Include: ESTANDAR.APL
.head 2 -  File Include: odometro.apl
.head 2 -  File Include: ABOUT.APL
.head 2 -  File Include: BUTTONS.APL
.head 2 -  File Include: FRMTBLM.APL
.head 2 -  File Include: MANTOBJS.APL
.head 2 -  File Include: REPORTS.APL
.head 2 -  File Include: STDOBJS.APL
.head 2 -  File Include: STDTBLS.APL
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
.head 4 -  Background Color: Use Parent
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
.head 3 -  Input: 9999-99-99
.head 3 -  Date/Time: dd/MM/yy
.head 3 -  Input: 99/99/99
.head 2 +  External Functions
.head 2 +  Constants
.head 3 +  System
.head 3 +  User
.head 3 -  Enumerations
.head 2 +  Resources
.head 2 +  Variables
.data RESOURCE 0 0 1 3858343888
0000: C0000000C0000000 0000000000000000 0000130035000200 0D00000000003900
0020: 02000D0000000000 3D0001000D000000 00004A0003000D00 000000004C000300
0040: 0D00000000004E00 01000D0000000000 5B0001000D000000 0000680002000D00
0060: 000000006C000100 0D00000000007900 01006C0000000000 8600012F86000000
0080: 0000930002008600 0000000097000200 8600000000009B00 0200860000000000
00A0: 9F00020086000000 0000A30002018600 00000000A7000101 860000000000B400
00C0: 0201860000000000 B800030186000000 0000
.enddata
.head 2 +  Internal Functions
.head 2 +  Named Menus
.head 3 +  Menu: menuEdit
.head 4 -  Resource Id: 55465
.head 4 -  Title: &Edit
.head 4 -  Description: Simple Edit menu with Undo, Cut, Copy, Paste, Clear.
.head 4 -  Enabled when:
.head 4 -  Status Text: Undo, Cut, Copy, Paste, Clear 
.head 4 -  Menu Item Name:
.head 4 +  Menu Item: &Undo
.head 5 -  Resource Id: 55466
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Reverses the last action
.head 5 -  Keyboard Accelerator: Alt+BkSp
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanUndo()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditUndo()
.head 4 -  Menu Separator
.head 4 +  Menu Item: Cu&t
.head 5 -  Resource Id: 55467
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Cuts the selection and puts it on the clipboard
.head 5 -  Keyboard Accelerator: Shift+Del
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanCut()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditCut()
.head 4 +  Menu Item: &Copy
.head 5 -  Resource Id: 55468
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Copies the selection and puts it on the clipboard
.head 5 -  Keyboard Accelerator: Ctrl+Ins
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanCut()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditCopy()
.head 4 +  Menu Item: &Paste
.head 5 -  Resource Id: 55469
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Inserts the Clipboard contents at the insertion point
.head 5 -  Keyboard Accelerator: Shift+Ins
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanPaste()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditPaste()
.head 4 +  Menu Item: C&lear
.head 5 -  Resource Id: 55470
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Clears the selection
.head 5 -  Keyboard Accelerator: Del
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanCut()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditClear()
.head 3 +  Menu: menuOLEEdit
.head 4 -  Resource Id: 55471
.head 4 -  Title: &Edit
.head 4 -  Description: Edit menu with OLE commands.
.head 4 -  Enabled when:
.head 4 -  Status Text: Undo, Cut, Copy, Paste, Clear and Object Editing
.head 4 -  Menu Item Name:
.head 4 +  Menu Item: &Undo
.head 5 -  Resource Id: 55472
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Reverses the last action
.head 5 -  Keyboard Accelerator: Alt+BkSp
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanUndo()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditUndo()
.head 4 -  Menu Separator
.head 4 +  Menu Item: Cu&t
.head 5 -  Resource Id: 55473
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Cuts the selection and puts it on the clipboard
.head 5 -  Keyboard Accelerator: Shift+Del
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanCut()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditCut()
.head 4 +  Menu Item: &Copy
.head 5 -  Resource Id: 55474
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Copies the selection and puts it on the clipboard
.head 5 -  Keyboard Accelerator: Ctrl+Ins
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanCut()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditCopy()
.head 4 +  Menu Item: Copy &To...
.head 5 -  Resource Id: 55475
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Copies the selection to a file
.head 5 -  Keyboard Accelerator: (none)
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanCopyTo()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditCopyTo()
.head 4 +  Menu Item: &Paste
.head 5 -  Resource Id: 55476
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Inserts the Clipboard contents at the insertion point
.head 5 -  Keyboard Accelerator: Shift+Ins
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanPaste()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditPaste()
.head 4 +  Menu Item: Paste Link
.head 5 -  Resource Id: 55477
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Inserts a Link at the current insertion point
.head 5 -  Keyboard Accelerator: (none)
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanPasteLink()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditPasteLink()
.head 4 +  Menu Item: Paste &Special...
.head 5 -  Resource Id: 55478
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Allows paste link or paste as an object
.head 5 -  Keyboard Accelerator: (none)
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanPasteSpecial()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditPasteSpecial()
.head 4 +  Menu Item: Paste From...
.head 5 -  Resource Id: 55479
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Copies from a file to the current insertion point
.head 5 -  Keyboard Accelerator: (none)
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanPasteFrom()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditPasteFrom()
.head 4 +  Menu Item: Insert Object...
.head 5 -  Resource Id: 55480
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Inserts an OLE Object at the insertion point
.head 5 -  Keyboard Accelerator: (none)
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanInsertObject()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditInsertObject()
.head 4 +  Menu Item: C&lear
.head 5 -  Resource Id: 55481
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Clears the current selection
.head 5 -  Keyboard Accelerator: Del
.head 5 +  Menu Settings
.head 6 -  Enabled when: SalEditCanCut()
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalEditClear()
.head 4 +  Object Menu
.head 5 -  Status Text: Edit the selected object
.head 3 +  Windows Menu: menuMDIWindows
.head 4 -  Resource Id: 55482
.head 4 -  Menu Item Name:
.head 4 -  Title: &Window
.head 4 -  Description: Menu to manage MDI child windows.
.head 4 -  Enabled when:
.head 4 -  Status Text: Manage MDI child windows
.head 4 +  Menu Item: &Tile Vertical
.head 5 -  Resource Id: 55483
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Arrange MDI child windows in a vertical tiled format
.head 5 -  Keyboard Accelerator: (none)
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalMDITile( hWndMDI, TRUE )
.head 4 +  Menu Item: &Tile Horizontal
.head 5 -  Resource Id: 55484
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Arrange MDI child windows in a horizontal tiled format
.head 5 -  Keyboard Accelerator: (none)
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalMDITile( hWndMDI, FALSE )
.head 4 +  Menu Item: &Cascade
.head 5 -  Resource Id: 55485
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Arrange MDI child windows in a cascaded format
.head 5 -  Keyboard Accelerator: (none)
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalMDICascade( hWndMDI )
.head 4 +  Menu Item: &Arrange Icons
.head 5 -  Resource Id: 55486
.head 5 -  Menu Item Name:
.head 5 -  Status Text: Arrange minimized MDI child windows
.head 5 -  Keyboard Accelerator: (none)
.head 5 +  Menu Settings
.head 6 -  Enabled when:
.head 6 -  Checked when:
.head 5 +  Menu Actions
.head 6 -  Call SalMDIArrangeIcons( hWndMDI )
.head 2 +  Class Definitions
.head 2 +  Default Classes
.head 3 -  MDI Window:
.head 3 -  Form Window:
.head 3 -  Dialog Box:
.head 3 -  Table Window:
.head 3 -  Quest Window:
.head 3 -  Data Field: clsdfDescripcion
.head 3 -  Spin Field:
.head 3 -  Multiline Field:
.head 3 -  Pushbutton:
.head 3 -  Radio Button:
.head 3 -  Option Button:
.head 3 -  ActiveX:
.head 3 -  Check Box: clsStdCB
.head 3 -  Child Table:
.head 3 -  Quest Child Window:
.head 3 -  List Box:
.head 3 -  Combo Box:
.head 3 -  Picture:
.head 3 -  Vertical Scroll Bar:
.head 3 -  Horizontal Scroll Bar:
.head 3 -  Column:
.head 3 -  Background Text:
.head 3 -  Group Box:
.head 3 -  Line:
.head 3 -  Frame:
.head 3 -  Custom Control:
.head 2 -  Application Actions
.head 1 +  Dialog Box: dlgBalanceComprobacion
.head 2 -  Class: clsDlgReportStdTabsNew
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Balance de Comprobación
.head 2 -  Accessories Enabled? Class Default
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? No
.head 3 -  Type of Dialog: Class Default
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 0.113"
.head 4 -  Top: Default
.head 4 -  Width:  7.883"
.head 4 -  Width Editable? Class Default
.head 4 -  Height: 5.381"
.head 4 -  Height Editable? Class Default
.head 3 -  Absolute Screen Location? Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.head 2 -  Description: Diálogo para la generación de Balances de Comprobación
.head 2 +  Tool Bar
.head 3 -  Display Settings
.head 4 -  Display Style? Class Default
.head 4 -  Location? Class Default
.head 4 -  Visible? No
.head 4 -  Size: Class Default
.head 4 -  Size Editable? Yes
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
.head 3 -  !
.head 3 -  Group Box:
.head 4 -  Resource Id: 12356
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: -0.017"
.head 5 -  Width:  7.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.601"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  Background Text: Imprime un balance de comprobación para un rango de cuentas, y para un centro de costo específico o consolidando todos los centros de costo.
.head 4 -  Resource Id: 12357
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 0.156"
.head 5 -  Width:  6.833"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.344"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  !
.head 3 -  Background Text: C&entro de Costo:
.head 4 -  Resource Id: 12358
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 0.76"
.head 5 -  Width:  1.383"
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
.head 3 +  Data Field: dfCentroCosto
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfCentroCostoF1
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.767"
.head 6 -  Top: 0.719"
.head 6 -  Width:  2.525"
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
.head 4 +  Message Actions
.head 5 +  On AM_InitDFHelp
.head 6 -  Set dfCentroCosto.bVerificarExistencia = FALSE
.head 6 -  Set dfCentroCosto.bDebeAceptarMovim = FALSE
.head 6 -  Set dfCentroCosto.bDescripcionSiError = TRUE
.head 6 -  Set dfCentroCosto.hwndDescripcion = dfDescCentroCosto
.head 6 -  Set clsdfHelp.sStatusText =  'Centro de costo para el cual se genera el balance (F1 o doble click para ayuda).  En blanco para todos los centros de costo'
.head 6 +  If bUsarCentrosCosto
.head 7 -  Set dfDescCentroCosto = 'Todos los centros de costo'
.head 5 +  On SAM_Validate
.head 6 +  If NOT SalSendClassMessage( SAM_Validate, wParam, lParam )
.head 7 -  Return FALSE
.head 6 +  Else If SalIsNull( hWndItem )
.head 7 +  If bUsarCentrosCosto
.head 8 -  Set dfDescCentroCosto = 'Todos los centros de costo'
.head 7 -  Return VALIDATE_OkClearFlag
.head 5 +  On AM_Create  
.head 6 -  Call SalSendClassMessageNamed( clsdfCentroCostoF1, AM_Create, wParam, lParam )
.head 6 -  Set clsdfHelp.bPermiteBlancos = FALSE
.head 3 +  Data Field: dfDescCentroCosto
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
.head 6 -  Left: 1.767"
.head 6 -  Top: 1.05"
.head 6 -  Width:  5.517"
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
.head 3 -  Group Box: Cuen&tas
.head 4 -  Resource Id: 12359
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 1.321"
.head 5 -  Width:  7.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.833"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  !
.head 3 -  Background Text: Desde:
.head 4 -  Resource Id: 12360
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.483"
.head 5 -  Top: 1.512"
.head 5 -  Width:  0.8"
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
.head 3 +  Data Field: dfCuentaInicial
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfCuentaContableF1
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.567"
.head 6 -  Top: 1.464"
.head 6 -  Width:  0.825"
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
.head 4 +  Message Actions
.head 5 +  On AM_InitDFHelp
.head 6 -  Set dfCuentaInicial.bVerificarExistencia = FALSE
.head 6 -  Set dfCuentaInicial.bSoloConMovimiento = FALSE
.head 6 -  Set dfCuentaInicial.hwndDescripcion = dfDescCuentaInicial
.head 6 -  Set clsdfHelp.sStatusText =  'Código de la cuenta contable inicial ( F1 o doble-click para ayuda )'
.head 5 +  On AM_ExtraValidate
.head 6 +  If dfCuentaFinal = fciGlobalesCG.GetPatronRangoFinal()
.head 7 -  Set dfCuentaFinal = dfCuentaInicial
.head 7 -  Call dfCuentaFinal.Validacion( FALSE )
.head 6 -  Return VALIDATE_OkClearFlag
.head 3 +  Data Field: dfDescCuentaInicial
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
.head 6 -  Left: 4.383"
.head 6 -  Top: 1.464"
.head 6 -  Width:  2.933"
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
.head 3 -  Background Text: Hasta:
.head 4 -  Resource Id: 12361
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.517"
.head 5 -  Top: 1.845"
.head 5 -  Width:  0.8"
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
.head 3 +  Data Field: dfCuentaFinal
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfCuentaContableF1
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.567"
.head 6 -  Top: 1.798"
.head 6 -  Width:  0.825"
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
.head 4 +  Message Actions
.head 5 +  On AM_InitDFHelp
.head 6 -  Set dfCuentaFinal.hwndDescripcion = dfDescCuentaFinal
.head 6 -  Set dfCuentaFinal.bVerificarExistencia = FALSE
.head 6 -  Set dfCuentaFinal.bSoloConMovimiento = FALSE
.head 6 -  ! inicializar el patron con 9
.head 6 -  Set dfCuentaFinal = fciGlobalesCG.GetPatronRangoFinal()
.head 6 -  Set clsdfHelp.sStatusText =  'Código de la cuenta contable final (F1 o doble click para ayuda)'
.head 3 +  Data Field: dfDescCuentaFinal
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
.head 6 -  Left: 4.383"
.head 6 -  Top: 1.798"
.head 6 -  Width:  2.933"
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
.head 3 -  !
.head 3 +  Check Box: cbSaldosAlCierre
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Saldos antes del cierre
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 2.298"
.head 5 -  Width:  2.15"
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 4 -  Message Actions
.head 3 +  Check Box: cbAsientosDiario
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Incluir los &Asientos del diario
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 2.5"
.head 5 -  Width:  2.6"
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
.head 6 -  Set cbAsientosDiario.sStatusText =
      'Incluye ' || fciGlobalesCG.NombreAsiento( TRUE, FALSE, TRUE )  || ' del diario.'
.head 6 -  Call SalSetWindowText( cbAsientosDiario, 'Incluir los &' || fciGlobalesCG.NombreAsiento( TRUE, FALSE, FALSE )  || ' del diario' )
.head 3 +  Check Box: cbSoloCtaMayor
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Solo Cuentas de Ma&yor
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 2.702"
.head 5 -  Width:  2.2"
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
.head 6 -  Set cbSoloCtaMayor.sStatusText = 
    'Imprimir únicamente las cuentas del mayor' 
.head 5 +  On AM_Click
.head 6 +  If cbSoloCtaMayor 
.head 7 -  Call SalDisableWindow( cbDetalleMov )
.head 7 -  Set cbDetalleMov = FALSE
.head 7 -  Call DisableItem( dfCantNiveles )
.head 7 -  Set dfCantNiveles = 1
.head 7 -  ! Call DisableSinMov()
.head 6 +  Else
.head 7 -  Call SalEnableWindow( cbDetalleMov )
.head 7 -  Call EnableItem( dfCantNiveles )
.head 7 -  Set dfCantNiveles = fciGlobalesCG.GetCantNivelesCuenta()
.head 7 -  ! Call EnableSinMov()
.head 3 +  Check Box: cbDetalleMov
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Detalle de Mo&vimiento
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 2.905"
.head 5 -  Width:  2.1"
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
.head 6 -  Set cbDetalleMov.sStatusText = 'Imprimir el detalle de los movimientos'
.head 3 +  Check Box: cbImpCambioNeto
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Imprimir Cambio &Neto
.head 4 -  Window Location and Size
.head 5 -  Left: 2.983"
.head 5 -  Top: 2.298"
.head 5 -  Width:  2.1"
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
.head 6 -  Set cbImpCambioNeto.sStatusText = 
    'Imprimir el cambio neto del período' 
.head 3 +  Check Box: cbImpUnidades
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Imprimir &Unidades
.head 4 -  Window Location and Size
.head 5 -  Left: 2.983"
.head 5 -  Top: 2.512"
.head 5 -  Width:  1.9"
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
.head 6 -  Set cbImpUnidades.sStatusText =
      'Si desea que aparezcan en los reportes los débitos y créditos relativos a Unidades'
.head 3 +  Check Box: cbIndentar	
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: In&dentar Cuentas
.head 4 -  Window Location and Size
.head 5 -  Left: 2.983"
.head 5 -  Top: 2.714"
.head 5 -  Width:  1.8"
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
.head 6 -  Set cbIndentar.sStatusText =
      'Indenta las cuentas por niveles según el patrón de cuentas contables.'
.head 3 -  Background Text: Máximo nivel &para las cuentas:
.head 4 -  Resource Id: 12362
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 3.345"
.head 5 -  Width:  2.588"
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
.head 3 +  Data Field: dfCantNiveles
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 2.983"
.head 6 -  Top: 3.345"
.head 6 -  Width:  0.438"
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
.head 4 +  Message Actions
.head 5 +  On AM_Create
.head 6 -  Set dfCantNiveles.sStatusText = 'Cantidad de niveles de las cuentas que desea incluir en el reporte, comenzando a partir de 1 para el primer nivel.'
.head 6 -  Set dfCantNiveles.nValueRange = VALUE_GT
.head 5 +  On AM_Validate
.head 6 +  If dfCantNiveles = NUMBER_Null
.head 7 -  Call SPSMessageBox(  
        'La cantidad de niveles debe ser a partir del número 1. Revise el código de las cuentas contables.',
        'Error', MBF_IconHand, CONTINUAR )
.head 7 -  Return VALIDATE_Cancel
.head 6 -  ! La cantidad de niveles esta definida de acuerdo al codigo de las cuentas
.head 6 +  If dfCantNiveles > fciGlobalesCG.GetCantNivelesCuenta()
.head 7 -  Call SPSMessageBox(  
        'La cantidad de niveles de las cuentas a imprimir debe se menor o igual a ' || 
         SalNumberToStrX( fciGlobalesCG.GetCantNivelesCuenta(), 0 ) || '. Revise el código de las cuentas contables.',
        'Error', MBF_IconHand, CONTINUAR )
.head 7 -  Return VALIDATE_Cancel
.head 6 -  Return VALIDATE_OkClearFlag
.head 3 -  !
.head 3 -  Group Box: Conta&bilidad
.head 4 -  Resource Id: 12363
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 5.283"
.head 5 -  Top: 2.238"
.head 5 -  Width:  2.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.75"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  ! MRL IFRS -->
Se cambia la clase base por la clase de contabilidad y se asigna etiqueta a status test
.head 3 +  Radio Button: rbContaFiscal
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRBConta1
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 5.433"
.head 5 -  Top: 2.417"
.head 5 -  Width:  1.55"
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
.head 6 -  Set rbContaFiscal = TRUE
.head 6 +  ! NBH >> Nombre de la etiqueta para la Contabilidad "Fiscal"
.head 7 -  ! Set rbContaFiscal.sStatusText = 'Imprimir el balance para la contabilidad fiscal'
.head 6 -  Set rbContaFiscal.sStatusText = 'Imprimir el balance para la contabilidad ' || SalStrLowerX ( fciGlobalesCG.NombreContabilidadFiscal(  ) )
.head 3 +  Radio Button: rbContaCorporativo
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRBConta2
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: 5.433"
.head 5 -  Top: 2.702"
.head 5 -  Width:  1.25"
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
.head 6 -  Set rbContaCorporativo.sStatusText = 'Imprimir el balance para la contabilidad ' || SalStrLowerX ( fciGlobalesCG.NombreContabilidadCorp(  ) )
.head 3 -  ! MRL IFRS <--
.head 3 -  !
.head 3 -  !
.head 3 -  ! MRL GT_Folio Estados Financieros -->
.head 3 -  Group Box: &Folio
.data CLASSPROPSSIZE
0000: 1B00
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000800 47656E6572616C00 000000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 62315
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 3.483"
.head 5 -  Top: 2.988"
.head 5 -  Width:  1.9"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.5"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  Background Text: Inicial:
.data CLASSPROPSSIZE
0000: 1B00
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000800 47656E6572616C00 000000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Resource Id: 62316
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 3.65"
.head 5 -  Top: 3.202"
.head 5 -  Width:  0.533"
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
.head 3 +  Data Field: dfFolioInicial
.data CLASSPROPSSIZE
0000: 1B00
.enddata
.data CLASSPROPS
0000: 5461624368696C64 4E616D6573000800 47656E6572616C00 000000
.enddata
.data INHERITPROPS
0000: 0100
.enddata
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 4.217"
.head 6 -  Top: 3.167"
.head 6 -  Width:  1.0"
.head 6 -  Width Editable? Class Default
.head 6 -  Height: 0.238"
.head 6 -  Height Editable? Class Default
.head 5 -  Visible? Yes
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
.head 6 -  Set dfFolioInicial.sStatusText = 'Número de Folio Inicial a imprimir en el reporte'
.head 6 -  Set dfFolioInicial.nValueRange = VALUE_GT
.head 3 -  !
.head 3 -  ! MRL GT_Folio Estados Financieros <--
.head 3 -  !
.head 3 -  Group Box: &Fechas
.head 4 -  Resource Id: 12364
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 3.571"
.head 5 -  Width:  2.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.0"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 -  Background Text: Desde:
.head 4 -  Resource Id: 12365
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 3.845"
.head 5 -  Width:  0.6"
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
.head 3 +  Data Field: dfFechaInicial
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
.head 6 -  Left: 0.967"
.head 6 -  Top: 3.81"
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
.head 6 -  ! Set dfFechaInicial = SalDateMonthBegin( GetDateAndTime(  ) )
.head 6 -  Set dfFechaInicial = GetNextDayLastPerCon (GetDateAndTime ())
.head 6 -  Set dfFechaInicial.sStatusText = 'Fecha inicial para el balance de comprobación'
.head 6 -  Set bPermiteBlancos = FALSE
.head 3 -  Background Text: Hasta:
.head 4 -  Resource Id: 12366
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdBackground
.head 4 -  Window Location and Size
.head 5 -  Left: 0.383"
.head 5 -  Top: 4.179"
.head 5 -  Width:  0.6"
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
.head 3 +  Data Field: dfFechaFinal
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
.head 6 -  Left: 0.967"
.head 6 -  Top: 4.143"
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
.head 6 -  ! Set dfFechaFinal = GetDateAndTime(  ) 
.head 6 -  Set dfFechaFinal = GetEndCurrentPerCon (GetDateAndTime ())
.head 6 -  Set dfFechaFinal.sStatusText = 'Fecha final para el balance de comprobación'
.head 6 -  Set bPermiteBlancos = FALSE
.head 3 -  !
.head 3 +  Pushbutton: pbOk
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Aceptar
.head 4 -  Window Location and Size
.head 5 -  Left: 2.288"
.head 5 -  Top: 4.702"
.head 5 -  Width:  1.2"
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
.head 5 +  On AM_Create
.head 6 -  Set pbOk.sStatusText = 'Generar el reporte con los parámetros establecidos'
.head 5 +  On SAM_Click
.head 6 -  !
.head 6 -  ! Caso MX6-03198-THZ9 JEV ---------->
.head 6 -  Set sCuentaObtenerSaldos = STRING_Null
.head 6 -  ! <---------- Caso MX6-03198-THZ9 JEV
.head 6 -  !
.head 6 -  ! AEC-->CO5-02789-RB1F se inicializa el CGBridge y se guargan las imagenes de las firmas contables en la carpeta temporal del usuario.
.head 6 +  If (InicializarCGBridge(  ) )
.head 7 -  Call ComCGBridge.GuardarFirmasReportesContables()
.head 6 -  ! AEC<--CO5-02789-RB1F
.head 6 -  !
.head 6 +  If NOT dfFechaInicial
.head 7 -  Set dfFechaInicial = DATETIME_Null
.head 6 +  If NOT dfFechaFinal
.head 7 -  Set dfFechaFinal = DATETIME_Null
.head 6 -  !
.head 6 +  If ChkDateRange( dfFechaInicial, dfFechaFinal )
.head 7 -  ! MRL GT_Folio Estados Financieros -->
Se validan los datos ingresados en el reporte, en este caso el Folio
.head 7 +  If ValidarEntrada( )
.head 8 +  ! If NOT RepBalanceComprob()
.head 9 -  ! Call Destroy ( )
.head 9 -  ! Call SalEndDialog( dlgBalanceComprobacion, FALSE )
.head 8 -  Call ImprimirReporte( FALSE )
.head 7 -  ! MRL GT_Folio Estados Financieros <--
.head 6 +  Else
.head 7 -  Call SalSetFocus( dfFechaInicial )
.head 3 +  Pushbutton: pbCancelar
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Cancelar
.head 4 -  Window Location and Size
.head 5 -  Left: 3.85"
.head 5 -  Top: 4.702"
.head 5 -  Width:  1.2"
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
.head 5 +  On AM_Create
.head 6 -  Set pbCancelar.sStatusText = 'Retornar a la ventana anterior sin generar el reporte'
.head 5 +  On SAM_Click
.head 6 -  Call Destroy ( )
.head 6 -  Call SalEndDialog( dlgBalanceComprobacion, FALSE )
.head 3 -  !
.head 3 -  Group Box: Cuentas &sin movimiento
.head 4 -  Resource Id: 12367
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 2.733"
.head 5 -  Top: 3.595"
.head 5 -  Width:  2.65"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.976"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Radio Button: rbSinMovTodas
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Incluir todas
.head 4 -  Window Location and Size
.head 5 -  Left: 2.883"
.head 5 -  Top: 3.798"
.head 5 -  Width:  1.4"
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
.head 6 -  Set rbSinMovTodas.sStatusText = 'Incluir todas las cuentas sin movimiento'
.head 3 +  Radio Button: rbSinMovSaldos
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Incluir cuentas con saldo
.head 4 -  Window Location and Size
.head 5 -  Left: 2.883"
.head 5 -  Top: 4.024"
.head 5 -  Width:  2.35"
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
.head 6 -  Set rbSinMovSaldos.sStatusText = 'Incluir aquellas cuentas que tengan saldo, aún cuando no tengan movimiento'
.head 3 +  Radio Button: rbSinMovNo
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Excluir
.head 4 -  Window Location and Size
.head 5 -  Left: 2.883"
.head 5 -  Top: 4.262"
.head 5 -  Width:  1.4"
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
.head 6 -  Set rbSinMovNo.sStatusText = 'Excluir las cuentas sin movimiento'
.head 3 -  !
.head 3 -  Group Box: &Moneda
.head 4 -  Resource Id: 12368
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdGroupBox
.head 4 -  Window Location and Size
.head 5 -  Left: 5.683"
.head 5 -  Top: 3.571"
.head 5 -  Width:  1.8"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.0"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 3 +  Radio Button: rbMonLocal
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: 1234567890
.head 4 -  Window Location and Size
.head 5 -  Left: 5.75"
.head 5 -  Top: 3.798"
.head 5 -  Width:  1.433"
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
.head 6 -  Set rbMonLocal = TRUE
.head 6 -  Set rbMonLocal.sStatusText = 'Imprimir el balance para la moneda local'
.head 6 -  Call SalSetWindowText( rbMonLocal, fciGlobalesAS.sNombreMonFunc )
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Call EnableItem( cbImpUnidades )
.head 3 +  Radio Button: rbMonDolares
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: 1234567890
.head 4 -  Window Location and Size
.head 5 -  Left: 5.75"
.head 5 -  Top: 4.024"
.head 5 -  Width:  1.533"
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
.head 6 -  Set rbMonDolares.sStatusText = 'Imprimir el balance para la moneda dólar'
.head 6 -  Call SalSetWindowText( rbMonDolares, fciGlobalesAS.sNombreMonRep )
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Call EnableItem( cbImpUnidades )
.head 3 +  Radio Button: rbMonAmbas
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ambas
.head 4 -  Window Location and Size
.head 5 -  Left: 5.75"
.head 5 -  Top: 4.262"
.head 5 -  Width:  1.263"
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
.head 6 -  Set rbMonAmbas.sStatusText = 'Imprimir el balance para ambas monedas'
.head 6 -  ! Call SalSetWindowText( rbMonDolares, fciGlobalesAS.sNombreMonRep )
.head 5 +  On AM_Click
.head 6 -  !
.head 6 +  If rbMonAmbas = TRUE
.head 7 -  Set cbImpUnidades = FALSE
.head 7 -  Call DisableItem( cbImpUnidades )
.head 3 -  !
.head 3 +  Picture: picTabs
.data CLASSPROPS
0000: 5461624C6566744D 617267696E000200 3000005461624375 7272656E74000600
0020: 4E616D6530000054 616252696768744D 617267696E000200 3000005461624E61
0040: 6D65730006004E61 6D65300000546162 4C6162656C730007 004C6162656C3000
0060: 0054616250616765 436F756E74000200 310000546162426F 74746F6D4D617267
0080: 696E000500302E34 3500005461624472 61775374796C6500 0B0057696E393553
00A0: 74796C6500005461 62466F726D506167 6573000100000054 6162546F704D6172
00C0: 67696E0002003000 0000000000000000 0000000000000000 0000000000
.enddata
.data CLASSPROPSSIZE
0000: DD00
.enddata
.head 4 -  Class Child Ref Key: 1
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDlgReportStdTabsNew
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
.head 3 +  Check Box: cbImpExcel
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
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Imprimir en Excel
.head 4 -  Window Location and Size
.head 5 -  Left: 0.283"
.head 5 -  Top: 3.095"
.head 5 -  Width:  2.1"
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
.head 6 -  Set cbImpExcel.sStatusText = 'Imprimir en reporte Excel'
.head 3 +  Custom Control: ccMSTabCtrl
.head 4 -  Class Child Ref Key: 2
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDlgReportStdTabsNew
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
.head 4 -  Class Child Ref Key: 3
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsDlgReportStdTabsNew
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
.head 2 +  Functions
.head 3 -  !
.head 3 +  ! SPEREZ: RVS98002
.head 4 +  ! Function: RepBalanceComprob
.head 5 -  Description: Reporte de balance de comprobacion
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 -  Parameters 
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  String: sFecha
.head 6 -  String: sFechaInicial
.head 6 -  String: sFechaFinal
.head 6 -  String: sCuentaInicial
.head 6 -  String: sCuentaFinal
.head 6 -  String: sCuentaPatronInicial
.head 6 -  String: sTitulo1
.head 6 -  String: sTitulo2
.head 6 -  String: sTitulo3
.head 6 -  String: sTitulo4
.head 6 -  Boolean: bOk
.head 6 -  Boolean: bCreacionAbortada
.head 6 -  Boolean: bListaOk
.head 6 -  String: sREP_BalanceVar
.head 6 -  String: sREP_BalanceInp
.head 6 -  String: sSqlCmd
.head 6 -  Number: nInd
.head 6 -  String: sCondicionDeCentros
.head 6 -  String: sCondicionCentrosLista
.head 5 +  Actions 
.head 6 -  ! Validar que el proceso de mayorizacion no este corriendo
.head 6 +  If fciBalanceMayorizar.IsRowLockedMsgLike( 
     fciBalanceMayorizar.GetLlavePrimaria(),
     'Balance de Comprobación', 
     'Desea continuar con el Balance de Comprobación?.', FALSE )
.head 7 -  Return FALSE
.head 6 -  ! Convertir las fechas a hileras para el llamado a CrearListaSaldos
.head 6 -  Set sFechaInicial = SalFmtFormatDateTime( dfFechaInicial, 'yyyy-MM-dd' )
.head 6 -  Set sFechaFinal = SalFmtFormatDateTime( dfFechaFinal, 'yyyy-MM-dd' )
.head 6 -  ! Obtener las hileras de las cuentas a buscar
.head 6 +  If GetCuentasBalance( sCuentaInicial, sCuentaFinal )
.head 7 -  Call VisWaitCursor( TRUE )
.head 7 -  ! Determinar la condición para los centros de costo
.head 7 +  If SalIsNull( dfCentroCosto )
.head 8 -  Set sCondicionDeCentros = ''
.head 7 +  Else 
.head 8 -  Call fciCentroCosto.InitPatron (fciGlobalesAS.PatronCentroCosto ())
.head 8 -  Set sCondicionDeCentros = 'centro_costo  LIKE  \''  || 
fciCentroCosto.ChildrenLIKE (dfCentroCosto) 
|| '\''
.head 8 -  Set sCentroCosto = dfCentroCosto
.head 8 -  Set sDescripcionCentro = dfDescCentroCosto
.head 7 -  ! Establecer los títulos del reporte
.head 7 +  If rbContaFiscal
.head 8 -  Set sTitulo4 = 'Contabilidad Fiscal. '
.head 8 -  Set sConta = CONTA_FISCAL
.head 7 +  Else 
.head 8 -  Set sTitulo4 = 'Contabilidad Corporativa. '
.head 8 -  Set sConta = CONTA_CORP
.head 7 +  If rbMonLocal 
.head 8 -  Set sTitulo4 = sTitulo4 || 'Moneda Local. '
.head 8 -  Set sMoneda = 'L'
.head 8 -  Set sMontoMayor = 'debito_local, credito_local '
.head 7 +  Else 
.head 8 -  Set sTitulo4 = sTitulo4 || 'Moneda Dólar. '
.head 8 -  Set sMoneda = 'D'
.head 8 -  Set sMontoMayor = 'debito_dolar, credito_dolar '
.head 7 -  Set bOk = TRUE
.head 7 -  ! Calcular la cuenta inicial
.head 7 +  If dfCuentaInicial = ''
.head 8 -  Set sCuentaPatronInicial = fciGlobalesCG.GetPatronRangoInicial()
.head 7 +  Else 
.head 8 -  Set sCuentaPatronInicial = dfCuentaInicial
.head 7 -  ! Contar la cantidad de cuentas a procesar
.head 7 -  Set sSqlCmd = "
SELECT 	count(*) 
INTO 	:dlgBalanceComprobacion.nTotalCuentas
FROM 	" || ConcatCompany( 'centro_cuenta' ) || " A 
WHERE 	A.estado <> '" || CENTROCUENTA_INACTIVO || "' 
AND 	0< (
		SELECT 	COUNT (*) 
		FROM	" || ConcatCompany ('cuenta_contable') || " B 
		WHERE	B.acepta_datos = 'S' 
		AND	B.cuenta_contable >= '" || sCuentaInicial || "' 
		AND	B.cuenta_contable <= '" ||  sCuentaFinal || "' 
		AND	A.cuenta_contable = B.cuenta_contable 
		)
AND	0< (
		SELECT 	COUNT (*) 
		FROM	" || ConcatCompany ('centro_costo') || " C 
		WHERE 	A.centro_costo = C.centro_costo 
		AND	C.acepta_datos = 'S' "
.head 7 +  If sCondicionDeCentros
.head 8 -  Set sSqlCmd = sSqlCmd || ' AND C.' || sCondicionDeCentros || " ) "
.head 7 +  Else 
.head 8 -  Set sSqlCmd = sSqlCmd || " ) "
.head 7 +  When SqlError
.head 8 -  Call SPSDisplayErrorMsg( 
'Problemas contando la cantidad de cuentas a procesar.',
'Balance de Comprobación' )
.head 8 +  If NOT bDebugging
.head 9 -  Return FALSE
.head 7 +  If SqlPrepareAndExecute( hsqlMain, sSqlCmd )
.head 8 +  When SqlError
.head 9 -  Call SPSDisplayErrorMsg( 
'Problemas contando la cantidad de cuentas a procesar.',
'Balance de Comprobación' )
.head 9 +  If NOT bDebugging
.head 10 -  Return FALSE
.head 8 +  If SqlFetchNext( hsqlMain, nInd )
.head 9 +  If nTotalCuentas = 0 OR nTotalCuentas = NUMBER_Null
.head 10 -  Call SPSMessageBox( 
'No existen cuentas que cumplan con las restricciones establecidas.',
'Balance de Comprobación', MBF_IconAsterisk, CONTINUAR )
.head 10 -  Call VisWaitCursor( FALSE )
.head 10 -  Return FALSE
.head 9 +  Else 
.head 10 -  ! Crear odómetro para la creación de la lista de saldos
.head 10 -  Call SalCreateWindow( frmBalanceOdometro, hWndForm )
.head 10 -  Call SalYieldStartMessages( frmBalanceOdometro.pbCancelarProceso )
.head 10 -  ! Construir la lista de saldos
.head 10 -  Call SalStrSetBufferLength( sCuentaProcesando, 50 )
.head 10 -  Set sCondicionCentrosLista = sCondicionDeCentros
.head 10 +  If sCondicionCentrosLista
.head 11 -  Set sCondicionCentrosLista = 'ab.' || sCondicionCentrosLista
.head 10 -  Set bListaOk = CreeListaSaldos( 
hsqlCuenta, 
hsqlSaldo,
sSPSCompania,
sCondicionCentrosLista,
'ab.cuenta_contable >= \'' || sCuentaInicial || '\' AND
ab.cuenta_contable <= \'' ||  sCuentaFinal || '\'',
sFechaInicial,
sFechaFinal,
sConta, FALSE,
hWndForm,
50, sCuentaProcesando,
AM_Procesing,
nLinkList,
bCreacionAbortada )
.head 10 -  ! Destruir odómetro
.head 10 -  Call SalYieldStopMessages(  )
.head 10 -  Call SalDestroyWindow( frmBalanceOdometro )
.head 10 -  Call VisWaitCursor( FALSE )
.head 9 -  ! Error creando lista ?
.head 9 +  If NOT bListaOk
.head 10 -  Set bOk = FALSE
.head 8 +  Else 
.head 9 -  Set bOk = FALSE
.head 7 +  Else 
.head 8 -  Set bOk = FALSE
.head 7 -  ! Desplegar el error al crear la lista después de destruir el odómetro y desactivar el 
.head 7 -  ! wait cursor
.head 7 +  If NOT bListaOk AND NOT bCreacionAbortada
.head 8 -  Call SPSMessageBox(  
        'Problemas creando la lista de saldos.',
        'Balance de Comprobación', MBF_IconHand, CONTINUAR )
.head 7 +  If NOT bOk
.head 8 -  Call VisWaitCursor( FALSE )
.head 8 -  Return FALSE
.head 7 -  ! Se pudieron contar las cuentas a procesar y se creó bien las lista de saldos...continuar
.head 7 -  !
.head 7 -  !
.head 7 -  !
.head 7 -  ! Preparar el comando SQL y títulos del reporte
.head 7 -  Set sSqlCmdReport = 'SELECT ' 
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || 
'A.cuenta_contable, A.descripcion, A.saldo_normal' 
.head 7 +  If cbDetalleMov
.head 8 -  ! Agregar las columnas del mayor y del centro de costo en caso de detalle
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ', C.centro_costo, C.descripcion'
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ', D.asiento, D.fecha, D.referencia, D.fuente, 
	D.tipo_asiento, D.origen, ' || sMontoMayor
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || "
FROM " || ConcatCompany( 'cuenta_contable' ) || " A" 
.head 7 +  If cbDetalleMov
.head 8 -  ! Agregar el centro de costo y el mayor, cuando hay detalle
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ', ' || ConcatCompany( 'centro_costo' ) || " C"
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ', ' || ConcatCompany( 'mayor' ) || ' D'
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
INTO
:dlgBalanceComprobacion.fciBalanceComp.sCuenta, 
:dlgBalanceComprobacion.fciBalanceComp.sDescripcion,
:dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal'
.head 7 +  If cbDetalleMov
.head 8 -  ! Agregar las into-variables de la parte del mayor y del centro de costo
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || 
', :dlgBalanceComprobacion.sCentroCosto, 
:dlgBalanceComprobacion.sDescripcionCentro'
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ', :dlgBalanceComprobacion.sAsiento,
:dlgBalanceComprobacion.dtFecha, :dlgBalanceComprobacion.sReferencia,
:dlgBalanceComprobacion.sFuente, :dlgBalanceComprobacion.sTipoAsiento,
:dlgBalanceComprobacion.sOrigen, 
:dlgBalanceComprobacion.nDebitos, :dlgBalanceComprobacion.nCreditos'
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || "
WHERE 	A.cuenta_contable >= '" || sCuentaPatronInicial || "' 
AND	A.cuenta_contable <= '" ||  dfCuentaFinal || "'"
.head 7 +  If cbSoloCtaMayor
.head 8 -  ! Agregar LIKE para seleccionar solo las cuentas del mayor
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ' 
AND 	A.cuenta_contable LIKE \'' || fciBalanceComp.SoloMayorLIKE() || '\' '
.head 8 -  Set sTitulo2 = 'Incluye solo cuentas de mayor' 
.head 7 +  Else If dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta()
.head 8 -  ! Se quiere imprimir solo hasta cuentas del nivel dfCantNiveles
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ' 
AND A.cuenta_contable LIKE \'' || fciBalanceComp.SoloHastaNivelLIKE( dfCantNiveles ) || '\' '
.head 8 -  Set sTitulo2 = 'Incluye solo cuentas hasta el nivel ' || 
    SalNumberToStrX( dfCantNiveles, 0 )
.head 7 +  Else 
.head 8 -  Set sTitulo2 = 'Incluye todas las cuentas del rango: ' || dfCuentaInicial || ' .. ' ||
dfCuentaFinal
.head 7 +  If cbDetalleMov
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || '
AND 	D.centro_costo = C.centro_costo '
.head 8 -  ! Si se trata de un reporte con detalle agregar el joint con el mayor
.head 8 -  ! y el rango de fechas
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
AND 	A.cuenta_contable = D.cuenta_contable 
AND	D.fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || ' 
AND 	D.fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE ) || ' 
AND 	D.contabilidad IN ( \'' || sConta || '\', \'' || CONTA_AMBAS || '\' ) '
.head 8 -  !
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
AND 	0< (
		SELECT 	COUNT (*)
		FROM	' || ConcatCompany( 'centro_cuenta' ) || " B 
		WHERE	B.estado <> '" || CENTROCUENTA_INACTIVO || "' 
		AND	B.cuenta_contable = D.cuenta_contable 
		AND 	B.centro_costo = D.centro_costo "
.head 8 +  If sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ' 
		AND 	B.' || sCondicionDeCentros || ')'
.head 8 +  Else 
.head 9 -  Set sSqlCmdReport = sSqlCmdReport ||  ')'
.head 8 -  !
.head 8 -  ! agregar la union con las cuentas que no poseen movimientos en el mayor
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || "
UNION 	ALL
SELECT A.cuenta_contable, A.descripcion, A.saldo_normal,"
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || " ' ', ' ',"
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || " ' ', " ||
SQLSystemDate( ) || ", ' ', ' ', ' ', ' ', 0, 0
FROM 	" || ConcatCompany( 'cuenta_contable A' ) || "
WHERE 	A.cuenta_contable >= '"  || sCuentaPatronInicial || "'  
AND 	A.cuenta_contable <= '"  || dfCuentaFinal || "' "
.head 8 +  If dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta()
.head 9 -  ! Se quiere imprimir solo hasta cuentas del nivel dfCantNiveles
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ' 
AND 	A.cuenta_contable LIKE \'' || fciBalanceComp.SoloHastaNivelLIKE( dfCantNiveles ) || '\' '
.head 8 -  !
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || "
AND 	0< (
		SELECT 	COUNT (*)
		FROM 	" || ConcatCompany( 'centro_cuenta B' ) || "
		WHERE 	A.cuenta_contable = B.cuenta_contable 
		AND 	B.estado <> '" || CENTROCUENTA_INACTIVO || "'" 
.head 8 +  If sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ' 
		AND 	B.' || sCondicionDeCentros || ')'
.head 8 +  Else 
.head 9 -  Set sSqlCmdReport = sSqlCmdReport ||  ')'
.head 8 -  !
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || "
AND 	0= (
	SELECT 	COUNT (*)
	FROM 	" || ConcatCompany( 'mayor C' ) || '
	WHERE 	A.cuenta_contable = C.cuenta_contable 
	AND	fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || ' 
	AND 	fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE ) || ' 
	AND 	contabilidad IN ( \'' || sConta || '\', \'' || CONTA_AMBAS || '\' )  ' 
.head 8 +  If sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ' 
		AND 	C.' || sCondicionDeCentros || ')'
.head 8 +  Else 
.head 9 -  Set sSqlCmdReport = sSqlCmdReport ||  ')'
.head 7 +  Else 
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
AND 	0< (
		SELECT 	COUNT (*)
		FROM	' || ConcatCompany( 'centro_cuenta' ) || " B 
		WHERE	B.estado <> '" || CENTROCUENTA_INACTIVO || "' 
		AND	A.cuenta_contable = B.cuenta_contable "
.head 8 +  If sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ' 
		AND 	B.' || sCondicionDeCentros || ')'
.head 8 +  Else 
.head 9 -  Set sSqlCmdReport = sSqlCmdReport ||  ')'
.head 7 -  ! Ordenar por cuenta_contable
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
ORDER BY 1'
.head 7 +  If cbDetalleMov
.head 8 -  ! Ordenar el detalle también por fecha
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ', 7'
.head 8 +  Else 
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ', 5'
.head 7 -  ! Finaliza creacion de SQL para el reporte
.head 7 -  !
.head 7 -  !
.head 7 -  !
.head 7 -  !
.head 7 +  If SalIsNull( dfCentroCosto ) 
.head 8 -  Set sTitulo3 = dfDescCentroCosto || '. '
.head 7 +  Else 
.head 8 -  Set sTitulo3 = 'Centro de Costo: ' || dfDescCentroCosto || '. '
.head 7 +  If rbSinMovTodas
.head 8 -  Set sTitulo3 = sTitulo3 || 'Cuentas con y sin movimientos.'
.head 7 +  Else If rbSinMovNo
.head 8 -  Set sTitulo3 = sTitulo3 || 'Cuentas con movimientos. '
.head 7 +  Else If rbSinMovSaldos
.head 8 -  Set sTitulo3 = sTitulo3 || 'Cuentas con movimientos o saldo diferente de cero.'
.head 7 -  Set sTitulo1 = 'Balance de Comprobación del ' || 
    SalFmtFormatDateTime( dfFechaInicial, 'dd/MM/yyyy' ) || ' al ' ||
    SalFmtFormatDateTime( dfFechaFinal, 'dd/MM/yyyy' )
.head 7 -  ! Inicializar items del reporte
.head 7 -  Set sREP_BalanceVar =  
':dlgBalanceComprobacion.sCentroCosto, 
:dlgBalanceComprobacion.sDescripcionCentro,
:dlgBalanceComprobacion.fciBalanceComp.sCuenta,
:dlgBalanceComprobacion.fciBalanceComp.sDescripcion,
:dlgBalanceComprobacion.nSaldoInicial,
:dlgBalanceComprobacion.nSaldoFinal, 
:dlgBalanceComprobacion.nTotalDebitos, 
:dlgBalanceComprobacion.nTotalCreditos, 
:dlgBalanceComprobacion.nCambioNeto,
:dlgBalanceComprobacion.sAsiento,
:dlgBalanceComprobacion.dtFecha, 
:dlgBalanceComprobacion.sReferencia, 
:dlgBalanceComprobacion.sFuente, 
:dlgBalanceComprobacion.sTipoAsiento, 
:dlgBalanceComprobacion.sOrigen, 
:dlgBalanceComprobacion.nDebitos,
:dlgBalanceComprobacion.nCreditos, 
:dlgBalanceComprobacion.sImprimirCuenta,
:dlgBalanceComprobacion.sImprimirDetalle'
.head 7 -  Set sREP_BalanceInp = 
'sCentroCosto, sDescripcionCentro, sCuentaContable, sDescripcionCuenta,
nSaldoInicial, nSaldoFinal, nTotalDebitos, nTotalCreditos, nCambioNeto, sAsiento,
dtFecha, sReferencia, sFuente, sTipoAsiento, sOrigen, nDebitos, nCreditos,
sImprimirCuenta, sImprimirDetalle'
.head 7 -  ! Crear el reporte 
.head 7 -  Return ReportStandart.CrearReporte( 
    '', 'BALCOMP.QRP', sREP_BalanceVar, sREP_BalanceInp, TRUE,
    sTitulo1, sTitulo2, sTitulo3, sTitulo4, hWndForm, hwndFormReporte  )
.head 6 +  Else 
.head 7 -  Return FALSE
.head 4 +  ! Function: GetCuentasBalance
.head 5 -  Description: Devuelve las cuentas inicial y final de acuerdo a lo digitado en
en los data fields
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 +  Parameters 
.head 6 -  Receive String: sParCuentaIni
.head 6 -  Receive String: sParCuentaFin
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  String: sCaracter
.head 6 -  String: sFmtIMask
.head 6 -  Number: nCuentaCodSize
.head 6 -  String: sCodigoConFormato
.head 6 -  String: sCuentaIni
.head 6 -  String: sCuentaFin
.head 6 -  Number: nIndice
.head 6 -  Number: nIniBloque
.head 5 +  Actions 
.head 6 +  If dfCuentaInicial > dfCuentaFinal
.head 7 -  Call SPSMessageBox(  
       'Error, el rango de cuentas debe ser ascendente',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 7 -  Return FALSE
.head 6 -  Set sFmtIMask = fciGlobalesCG.GetPatron()
.head 6 -  Set nCuentaCodSize = SalStrLength( sFmtIMask )
.head 6 -  ! Tomar las cuentas definidas en los data fields
.head 6 -  Set sParCuentaIni = dfCuentaInicial 
.head 6 -  Set sParCuentaFin = dfCuentaFinal
.head 6 +  If sParCuentaIni = ''
.head 7 -  ! Poner la cuenta inicial en cero y la final en el maximo
.head 7 -  Set sParCuentaIni = fciGlobalesCG.GetPatronRangoInicial()
.head 7 -  ! A partir del segundo nivel, llenar todo con el final del patrón
.head 7 -  Set nIndice = 0
.head 7 +  Loop 
.head 8 -  Set sCaracter = SalStrMidX( sParCuentaFin, nIndice, 1 )
.head 8 +  If NOT CaracterAlfanum( sCaracter )
.head 9 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIndice+1 )
.head 9 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX( 
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIndice-1 )
.head 9 -  Break 
.head 8 -  Set nIndice = nIndice + 1
.head 8 +  If nIndice >= nCuentaCodSize
.head 9 -  Break 
.head 6 +  Else 
.head 7 -  ! Buscar el primer bloque diferentes de las cuentas
.head 7 -  Set nIndice = 0
.head 7 -  Set nIniBloque = 0
.head 7 +  Loop 
.head 8 -  Set sCaracter = SalStrMidX( sParCuentaFin, nIndice, 1 )
.head 8 +  If NOT CaracterAlfanum( sCaracter )
.head 9 -  ! Termino el bloque, comparar
.head 9 -  Set sCuentaIni = SalStrMidX( sParCuentaIni, nIniBloque, 
                                               nIndice - nIniBloque )
.head 9 -  Set sCuentaFin = SalStrMidX( sParCuentaFin, nIniBloque, 
                                                 nIndice - nIniBloque )
.head 9 +  If ( sCuentaIni != sCuentaFin )
.head 10 -  ! Llenar de Zs a partir del mismo bloque
.head 10 +  If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni ) 
.head 11 -  ! Llenar de Zs a partir del siguiente bloque
.head 11 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 11 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX( 
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize - nIniBloque )
.head 10 +  Else 
.head 11 -  ! Llenar de Zs a partir del siguiente bloque diferente
.head 11 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIndice+1 )
.head 11 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX( 
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize - ( nIndice+1) )
.head 10 -  Break 
.head 9 +  Else If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni )    
.head 10 -  ! Llenar de Zs a partir del bloque analizado
.head 10 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 10 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX( 
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIniBloque )
.head 10 -  Break 
.head 9 +  Else 
.head 10 -  ! Guardar el inicio de bloque
.head 10 -  Set nIniBloque = nIndice + 1
.head 8 +  Else If nIndice = nCuentaCodSize-1
.head 9 -  ! Termino el bloque (es el último), comparar
.head 9 -  Set sCuentaIni = SalStrMidX( sParCuentaIni, nIniBloque, 
                                               nIndice - nIniBloque + 1 )
.head 9 +  If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni )    
.head 10 -  ! Llenar a partir del bloque analizado de Zs ( bloques desiguales o en cero ) 
.head 10 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 10 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX( 
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIniBloque )
.head 9 -  Break 
.head 8 -  Set nIndice = nIndice + 1
.head 6 -  Return TRUE
.head 3 -  !
.head 3 +  ! Function: RepBalanceComprob
.head 4 -  Description: Genera el Reporte de balance de comprobación
.head 4 +  Returns 
.head 5 -  Boolean: 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  String: sFecha
.head 5 -  String: sFechaInicial
.head 5 -  String: sFechaFinal
.head 5 -  String: sCuentaInicial
.head 5 -  String: sCuentaFinal
.head 5 -  ! Bug 104536 lgonzalez ini --->
.head 5 -  ! Se elimina cambio que no aplica y provoca datos erroneos en el reporte
.head 5 -  ! JAL Caso 100644 -->
.head 5 -  ! String: sCtroCostoIni
.head 5 -  ! String: sCtroCostoFin
.head 5 -  ! JAL Caso 100644 <--
.head 5 -  ! <--- fin Bug 104536 lgonzalez
.head 5 -  String: sTitulo1
.head 5 -  String: sTitulo2
.head 5 -  String: sTitulo3
.head 5 -  String: sTitulo4
.head 5 -  Boolean: bOk
.head 5 -  Boolean: bCreacionAbortada
.head 5 -  Boolean: bListaOk
.head 5 -  String: sREP_BalanceVar
.head 5 -  String: sREP_BalanceInp
.head 5 -  String: sSqlCmd
.head 5 -  Number: nInd
.head 5 -  String: sCondicionDeCentros
.head 5 -  String: sCondicionCentrosLista
.head 5 +  String: sCentroCostoLIKE
.head 6 -  ! Variable para almacenar el resultado de la función ChildrenLIKE
.head 5 -  ! CASO S2C21336A ----------->
.head 5 -  String: lsWhere
.head 5 -  String: lsWhereUnion
.head 5 -  ! <----------- CASO S2C21336A
.head 5 +  String: lsSqlCmdDiario
.head 6 -  ! TAQ - Mejoras RD R4
.head 5 +  String: lsWhereDiario
.head 6 -  ! TAQ - Mejoras RD R4
.head 5 -  ! AEC-->CO6-03218-9ZDS Consulta a diario
.head 5 -  Sql Handle: hsqlCoDiario
.head 5 -  String: lsSqlCmdCoDiario
.head 5 -  String: lsWhereCoDiario
.head 5 -  Number: lnLineasDiario
.head 5 -  Number: lnResultFetch
.head 5 -  FunctionalVar: fciCuentaDiario
.winattr class
.head 6 -  Class: fclsTablaCuentaContable
.end
.head 5 -  String: lsColumnaDescripcion
.head 5 -  String: lsColumnaDescripcionGroupBy
.head 5 -  !
.head 5 -  ! PBI 217437 lgonzalez --->
.head 5 -  Boolean: lbBienCOM
.head 5 -  String: lsCentroCostoCalculoSaldos
.head 5 -  String: lsIncluirDiario
.head 5 -  String: lsSaldosAlCierre
.head 5 -  String: lsError
.head 5 -  ! PBI 217437 lgonzalez <---
.head 4 +  Actions 
.head 5 -  !
.head 5 +  If rbContaCorporativo
.head 6 -  Set lsColumnaDescripcion = ' A.descripcion_ifrs as descripcion, '
.head 6 -  Set lsColumnaDescripcionGroupBy = ' A.descripcion_ifrs, '
.head 5 +  Else 
.head 6 -  Set lsColumnaDescripcion = ' A.descripcion, '
.head 6 -  Set lsColumnaDescripcionGroupBy = ' A.descripcion, '
.head 5 -  ! TAQ > Mejoras RD R4
.head 5 -  Set lsSqlCmdDiario = STRING_Null
.head 5 -  Set lnLineasDiario = 0
.head 5 -  Set lsSqlCmdCoDiario = STRING_Null
.head 5 -  Set lsWhereCoDiario = STRING_Null
.head 5 -  Call fciCuentaDiario.InitInstance(  )
.head 5 -  ! TAQ < Mejoras RD R4
.head 5 -  !
.head 5 -  ! PBI 217437 lgonzalez --->
.head 5 -  Set lsCentroCostoCalculoSaldos = STRING_Null
.head 5 -  Set lsIncluirDiario = STRING_Null
.head 5 -  Set lsSaldosAlCierre = STRING_Null
.head 5 -  Set lsError = STRING_Null
.head 5 -  ! PBI 217437 lgonzalez <---
.head 5 -  !
.head 5 -  ! Validar que el proceso de mayorizacion no este corriendo
.head 5 +  If fciBalanceMayorizar.IsRowLockedMsgLike(
     fciBalanceMayorizar.GetLlavePrimaria(),
     'Balance de Comprobación',
     'Desea continuar con el Balance de Comprobación?.', FALSE )
.head 6 -  Return FALSE
.head 5 -  !
.head 5 -  ! Convertir las fechas a hileras para el llamado a CrearListaSaldos
.head 5 -  Set sFechaInicial = SalFmtFormatDateTime( dfFechaInicial, 'yyyy-MM-dd' )
.head 5 -  Set sFechaFinal = SalFmtFormatDateTime( dfFechaFinal, 'yyyy-MM-dd' )
.head 5 -  !
.head 5 -  ! Obtener las hileras de las cuentas a buscar
.head 5 +  If GetCuentasBalance( sCuentaInicial, sCuentaFinal )
.head 6 -  Call VisWaitCursor( TRUE )
.head 6 -  !
.head 6 -  ! Determinar la condición para los centros de costo
.head 6 +  If SalIsNull( dfCentroCosto )
.head 7 +  ! Bug 104536 lgonzalez ini --->
.head 8 -  ! JAL Caso 100644 -->
.head 8 -  ! Set sCtroCostoIni = fciGlobalesAS.GetPatronRangoInicial()
.head 8 -  ! Set sCtroCostoFin = fciGlobalesAS.GetPatronRangoFinal()
.head 8 -  ! Set sCondicionDeCentros = 'centro_costo BETWEEN \'' || sCtroCostoIni || '\' AND \'' || sCtroCostoFin || '\''
.head 8 -  ! JAL Caso 100644 <--
.head 7 -  ! Se elimina cambio que no aplica y provoca datos erroneos en el reporte
.head 7 -  Set sCondicionDeCentros = ''
.head 7 -  ! <--- fin Bug 104536 lgonzalez
.head 7 -  ! PBI 217437 lgonzalez --->
.head 7 -  Set lsCentroCostoCalculoSaldos = STRING_Null
.head 7 -  ! PBI 217437 lgonzalez <---
.head 6 +  Else 
.head 7 -  !
.head 7 -  ! Set sCondicionDeCentros = 'centro_costo = \'' || dfCentroCosto || '\''
.head 7 -  Call fciCentroCosto.InitPatron (fciGlobalesAS.PatronCentroCosto ())
.head 7 -  Set sCentroCostoLIKE = fciCentroCosto.ChildrenLIKE ( dfCentroCosto )
.head 7 -  !
.head 7 +  If sCentroCostoLIKE = dfCentroCosto
.head 8 -  ! Significa que no hay patrón para el centro de costo, por lo tanto
  la condición del WHERE no se establece con un LIKE sino con
  un igual
.head 8 -  Set sCondicionDeCentros = 'centro_costo LIKE  \'' || dfCentroCosto || '\''
.head 8 -  ! PBI 217437 lgonzalez --->
.head 8 -  Set lsCentroCostoCalculoSaldos = dfCentroCosto
.head 8 -  ! PBI 217437 lgonzalez <---
.head 7 +  Else 
.head 8 -  ! Existe un patrón definido, por lo tanto la condición del WHERE se 
  establece con un LIKE
.head 8 -  Set sCondicionDeCentros = 'centro_costo LIKE  \'' ||
fciCentroCosto.ChildrenLIKE (dfCentroCosto)
|| '\''
.head 8 -  ! PBI 217437 lgonzalez --->
.head 8 -  Set lsCentroCostoCalculoSaldos = fciCentroCosto.ChildrenLIKE (dfCentroCosto)
.head 8 -  ! PBI 217437 lgonzalez <---
.head 7 -  !
.head 7 -  ! Se inicializan las input variables de Centros de Costo para el reporte
.head 7 -  Set sCentroCosto = dfCentroCosto
.head 7 -  Set sDescripcionCentro = dfDescCentroCosto
.head 6 -  !
.head 6 -  ! Establecer los títulos del reporte
.head 6 +  If rbContaFiscal
.head 7 +  ! NBH >> Nombre de la etiqueta para la Contabilidad "Fiscal"
.head 8 -  ! Set sTitulo4 = 'Contabilidad Fiscal. '
.head 7 -  Set sTitulo4 = 'Contabilidad ' || fciGlobalesCG.NombreContabilidadFiscal(  ) || '. '
.head 7 -  Set sConta = CONTA_FISCAL
.head 6 +  Else 
.head 7 +  Set sTitulo4 = 'Contabilidad ' || fciGlobalesCG.NombreContabilidadCorp(  ) || '. '
.head 8 -  ! MRL IFRS
.head 7 -  Set sConta = CONTA_CORP
.head 6 -  !
.head 6 +  If rbMonLocal
.head 7 -  Set sTitulo4 = sTitulo4 || 'Moneda Local. '
.head 7 -  Set sMoneda = 'L'
.head 6 +  Else If rbMonDolares
.head 7 -  Set sTitulo4 = sTitulo4 || 'Moneda Dólar. '
.head 7 -  Set sMoneda = 'D'
.head 6 +  Else 
.head 7 -  ! Set sTitulo4 = sTitulo4 || 'Moneda Dólar. '
.head 7 -  Set sMoneda = 'A'
.head 6 -  !
.head 6 -  ! Into Variables 
.head 6 -  ! TAQ > ES1-01381-QQCD
.head 6 -  Set sMontoMayor = 'SUM ( ' || SQLNullValue( 'debito_local', '0') || ' ), SUM ( ' ||  SQLNullValue( 'credito_local', '0' ) || ' ), SUM ( ' ||  SQLNullValue( 'debito_dolar', '0') || ' ), SUM ( ' || SQLNullValue( 'credito_dolar', '0') || ' )'
.head 6 -  !
.head 6 +  If bCompaniaUsaUnidades AND cbImpUnidades
.head 7 -  Set sMontoMayor = sMontoMayor || ', SUM ( ' ||  SQLNullValue( 'debito_unidades', '0' ) || ' ), SUM ( ' || SQLNullValue( 'credito_unidades', '0' ) || ' )'
.head 6 -  ! TAQ < ES1-01381-QQCD
.head 6 -  !
.head 6 -  Set bOk = TRUE
.head 6 -  !
.head 6 -  ! Crear odómetro para la creación de la lista de saldos
.head 6 -  Call SalCreateWindow( frmOdometroCG, hWndForm,"Balance de Comprobación" )
.head 6 -  Call SalYieldStartMessages( frmOdometroCG.pbCancelar )
.head 6 -  !
.head 6 -  ! Construir la lista de saldos
.head 6 -  Call SalStrSetBufferLength( sCuentaProcesando, 50 )
.head 6 -  Set sCondicionCentrosLista = sCondicionDeCentros
.head 6 -  !
.head 6 -  Set nTotalCuentas = 0
.head 6 -  !
.head 6 +  ! EHG CG 5.05
.head 7 -  ! Set bListaOk = CreeListaSaldos(
hsqlCuenta,
hsqlSaldo,
sSPSCompania,
sCondicionCentrosLista,
' cuenta_contable >= \'' || sCuentaInicial || '\' AND
 cuenta_contable <= \'' ||  sCuentaFinal || '\'',
sFechaInicial,
sFechaFinal,
sConta, FALSE,
hWndForm,
50, sCuentaProcesando,
AM_Procesing,
nLinkList,
bCreacionAbortada )
.head 6 -  !
.head 6 +  ! PBI 217437 lgonzalez --->
.head 7 -  ! Set bListaOk = CreeListaSaldos(
hsqlCuenta,
hsqlSaldo,
sSPSCompania,
sCondicionCentrosLista,
' cuenta_contable >= \'' || sCuentaInicial || '\' AND
 cuenta_contable <= \'' ||  sCuentaFinal || '\'',
sFechaInicial,
sFechaFinal,
sConta, FALSE, cbSaldosAlCierre,
hWndForm,
50, sCuentaProcesando,
AM_Procesing,
nLinkList,
bCreacionAbortada )
.head 6 +  If cbSaldosAlCierre
.head 7 -  Set lsSaldosAlCierre = "SI"
.head 6 +  Else 
.head 7 -  Set lsSaldosAlCierre = "NO"
.head 6 -  Set bListaOk = ComCGBridge.CreeListaSaldos(
sCondicionCentrosLista,
' cuenta_contable >= \'' || sCuentaInicial || '\' AND
 cuenta_contable <= \'' ||  sCuentaFinal || '\'',
sFechaInicial,
sFechaFinal,
sConta,
"NO",
lsSaldosAlCierre,
nTotalCuentas,
lsError,
lbBienCOM )
.head 6 -  ! PBI 217437 lgonzalez <---
.head 6 -  !
.head 6 -  ! Se indica que se creó una lista de saldos nueva
.head 6 -  ! CASO S2C16265B ----------->
.head 6 -  Call CGSALNuevoNumeroLista ()
.head 6 -  ! <----------- CASO S2C16265B
.head 6 -  !
.head 6 -  ! Destruir odómetro
.head 6 -  Call SalDestroyWindow( frmOdometroCG )
.head 6 -  Call SalYieldStopMessages(  )
.head 6 -  Call VisWaitCursor( FALSE )
.head 6 -  !
.head 6 -  ! Si hubo algun error creando la lista de saldos
.head 6 +  If NOT bListaOk
.head 7 -  Set bOk = FALSE
.head 6 +  If nTotalCuentas = 0 OR nTotalCuentas = NUMBER_Null
.head 7 -  ! AEC-->CO6-03218-9ZDS  se validaran movimientos en el diario solo cuando el listado inicial no devuelva valores.
.head 7 +  If cbAsientosDiario
.head 8 +  If SPSConnect( hsqlCoDiario )
.head 9 -  Set lsSqlCmdCoDiario = "SELECT COUNT( * ) 
		        FROM	" || ConcatCompany ('DIARIO d' ) || "
		        JOIN	" || ConcatCompany ('ASIENTO_DE_DIARIO ad' ) || "
		        ON		d.ASIENTO = ad.ASIENTO
		        INTO	:lnLineasDiario
		        WHERE	ad.fecha <= " || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE )                       
.head 9 +  If dfCuentaInicial
.head 10 -  Set lsWhereCoDiario = " AND d.CUENTA_CONTABLE >='" || dfCuentaInicial || "'"
.head 9 +  If dfCuentaFinal
.head 10 -  Set fciCuentaDiario.sCuenta = dfCuentaFinal
.head 10 -  Set lsWhereCoDiario =  lsWhereCoDiario || " AND d.CUENTA_CONTABLE <='" || fciCuentaDiario.UltimoHijo(dfCuentaFinal) || "'"
.head 9 +  If dfCentroCosto
.head 10 -  Set lsWhereCoDiario = lsWhereCoDiario ||  "AND d.CENTRO_COSTO LIKE '" || fciCentroCosto.ChildrenLIKE ( dfCentroCosto ) || "'"
.head 9 +  If rbContaCorporativo
.head 10 -  Set lsWhereCoDiario = lsWhereCoDiario || "AND ad.CONTABILIDAD IN ( '" || CONTA_CORP || "','"|| CONTA_AMBAS || "')"
.head 9 +  Else 
.head 10 -  Set lsWhereCoDiario = lsWhereCoDiario || "AND ad.CONTABILIDAD IN ( '" || CONTA_FISCAL || "','"|| CONTA_AMBAS || "')"
.head 9 +  If lsWhereCoDiario
.head 10 -  Set lsSqlCmdCoDiario = lsSqlCmdCoDiario|| " "|| lsWhereCoDiario
.head 9 -  Set bOk = SqlPrepareAndExecute (hsqlCoDiario,lsSqlCmdCoDiario )
.head 9 +  If SqlFetchNext( hsqlCoDiario, lnResultFetch )
.head 10 -  Set lnLineasDiario = lnLineasDiario
.head 9 -  Call SPSDisconnect( hsqlCoDiario )
.head 9 +  If (nTotalCuentas = 0 OR nTotalCuentas = NUMBER_Null ) AND lnLineasDiario<=0
.head 10 -  Call SPSMessageBox(
'No existen cuentas que cumplan con las restricciones establecidas.',
'Balance de Comprobación', MBF_IconAsterisk, CONTINUAR )
.head 10 -  Call VisWaitCursor( FALSE )
.head 10 -  Return FALSE
.head 7 +  If lnLineasDiario <= 0
.head 8 -  ! Si la cantidad de lineas de diario es cero entonces se mostrará el mensaje, el mismo se inicializa en cero por lo que aunque no se marque el check de
incluir asientos del diario el mismo se mostrará de forma correcta.
.head 8 -  Call SPSMessageBox(
'No existen cuentas que cumplan con las restricciones establecidas.',
'Balance de Comprobación', MBF_IconAsterisk, CONTINUAR )
.head 8 -  Call VisWaitCursor( FALSE )
.head 8 -  Return FALSE
.head 7 -  ! AEC<--CO6-03218-9ZDS
.head 6 -  !
.head 6 -  !
.head 6 -  ! Desplegar el error al crear la lista después de destruir el odómetro y desactivar el
.head 6 -  ! wait cursor
.head 6 +  If NOT bListaOk AND NOT bCreacionAbortada
.head 7 -  Call SPSMessageBox(
        'Problemas creando la lista de saldos.',
        'Balance de Comprobación', MBF_IconHand, CONTINUAR )
.head 6 -  !
.head 6 +  If NOT bOk
.head 7 -  Call VisWaitCursor( FALSE )
.head 7 -  Return FALSE
.head 6 -  !
.head 6 -  ! Se pudieron contar las cuentas a procesar y se creó bien las lista de saldos...continuar
.head 6 -  !
.head 6 -  ! Preparar el comando SQL y títulos del reporte
.head 6 -  !
.head 6 -  ! TAQ > CR2-12553-TJ15
.head 6 -  ! Si el reporte es detallado no se puede colocar el distinct debido a que las líneas pueden contener los mismos datos
.head 6 -  Set sSqlCmdReport = ' SELECT '
.head 6 +  If NOT cbDetalleMov
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || ' distinct '
.head 6 -  Set sSqlCmdReport = sSqlCmdReport || ' A.cuenta_contable, ' || lsColumnaDescripcion || ' A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado'
.head 6 -  ! TAQ < CR2-12553-TJ15
.head 6 -  !
.head 6 -  ! TAQ > Mejoras RD R4
.head 6 +  If cbAsientosDiario
.head 7 -  Set lsSqlCmdDiario = sSqlCmdReport
.head 6 -  ! TAQ < Mejoras RD R4
.head 6 -  !
.head 6 +  If cbDetalleMov
.head 7 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 8 -  ! Se agrega el campo de NITs.
.head 7 -  ! Agregar las columnas del mayor y del centro de costo en caso de detalle
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || ',
	C.centro_costo, C.descripcion,
	D.asiento, D.fecha, D.referencia, D.fuente,
	D.tipo_asiento, D.origen, D.nit, 
	' || sMontoMayor
.head 7 -  ! TAQ > Mejoras RD R4
.head 7 +  If cbAsientosDiario
.head 8 -  Set lsSqlCmdDiario = lsSqlCmdDiario || ',
	C.centro_costo, C.descripcion,
	D.asiento, asd.fecha, D.referencia, D.fuente,
	asd.tipo_asiento, asd.origen, D.nit, 
	' || sMontoMayor
.head 7 -  ! TAQ < Mejoras RD R4
.head 6 -  !
.head 6 -  Set sSqlCmdReport = sSqlCmdReport || "
FROM " || ConcatCompany( 'cuenta_contable A ' )
.head 6 -  !
.head 6 -  ! TAQ > Mejoras RD R4
.head 6 +  If cbAsientosDiario
.head 7 -  Set lsSqlCmdDiario = lsSqlCmdDiario || "
FROM " || ConcatCompany( 'cuenta_contable A ' )
.head 6 -  ! TAQ < Mejoras RD R4
.head 6 -  !
.head 6 +  If cbDetalleMov OR sCondicionDeCentros
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || ', ' || ConcatCompany( 'centro_cuenta B ')
.head 7 -  ! TAQ > Mejoras RD R4
.head 7 +  If cbAsientosDiario
.head 8 -  Set lsSqlCmdDiario = lsSqlCmdDiario || ', ' || ConcatCompany( 'centro_cuenta B ')
.head 7 -  ! TAQ < Mejoras RD R4
.head 6 -  !
.head 6 +  If cbDetalleMov
.head 7 -  ! Agregar el centro de costo y el mayor, cuando hay detalle
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || ', ' ||
	ConcatCompany( 'centro_costo C, ' ) ||
	ConcatCompany( 'mayor D ' )
.head 7 -  ! TAQ > Mejoras RD R4
.head 7 +  If cbAsientosDiario
.head 8 -  Set lsSqlCmdDiario = lsSqlCmdDiario || ', ' ||
	ConcatCompany( 'centro_costo C, ' ) ||
	ConcatCompany( 'diario D, ' ) ||
	ConcatCompany( 'asiento_de_diario asd ' )
.head 7 -  Set lsWhereDiario = STRING_Null
.head 7 -  ! TAQ < Mejoras RD R4
.head 6 -  Set lsWhere = ''
.head 6 +  If cbDetalleMov OR sCondicionDeCentros
.head 7 +  If lsWhere
.head 8 -  Set lsWhere = lsWhere || '
	AND'
.head 7 -  Set lsWhere = lsWhere || ' A.cuenta_contable = B.cuenta_contable '
.head 6 -  !
.head 6 +  If dfCuentaInicial
.head 7 +  If lsWhere
.head 8 -  Set lsWhere = lsWhere || '
	AND'
.head 7 -  Set lsWhere = lsWhere || ' A.cuenta_contable >= \'' || dfCuentaInicial || '\' '
.head 6 -  !
.head 6 +  If dfCuentaFinal
.head 7 +  If lsWhere
.head 8 -  Set lsWhere = lsWhere || '
	AND'
.head 7 -  Set lsWhere = lsWhere || ' A.cuenta_contable <= \'' ||  dfCuentaFinal || '\' '
.head 6 -  !
.head 6 +  If sCondicionDeCentros
.head 7 +  If lsWhere
.head 8 -  Set lsWhere = lsWhere || '
	AND'
.head 7 -  Set lsWhere = lsWhere || ' B.' || sCondicionDeCentros
.head 6 -  !
.head 6 +  If cbSoloCtaMayor
.head 7 -  ! Agregar LIKE para seleccionar solo las cuentas del mayor
.head 7 -  Set sTitulo2 = 'Incluye solo cuentas de mayor'
.head 7 +  If lsWhere
.head 8 -  Set lsWhere = lsWhere || '
	AND'
.head 7 -  Set lsWhere = lsWhere || ' A.cuenta_contable LIKE \'' || fciBalanceComp.SoloMayorLIKE() || '\' '
.head 7 -  !
.head 6 +  Else If dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta()
.head 7 -  ! Se quiere imprimir solo hasta cuentas del nivel dfCantNiveles
.head 7 -  Set sTitulo2 = 'Incluye solo cuentas hasta el nivel ' || SalNumberToStrX( dfCantNiveles, 0 )
.head 7 +  If lsWhere
.head 8 -  Set lsWhere = lsWhere || '
	AND'
.head 7 -  Set lsWhere = lsWhere || ' A.cuenta_contable LIKE \'' || fciBalanceComp.SoloHastaNivelLIKE( dfCantNiveles ) || '\' '
.head 6 +  Else 
.head 7 -  Set sTitulo2 = 'Incluye todas las cuentas del rango: ' || dfCuentaInicial || ' .. ' ||
dfCuentaFinal
.head 6 -  !
.head 6 -  ! EHG  CG BetaII
.head 6 +  If cbSaldosAlCierre
.head 7 -  Set sTitulo2 = sTitulo2 || 'con saldo antes de cierre'
.head 6 -  !
.head 6 +  If cbDetalleMov
.head 7 -  ! TAQ > Mejoras RD R4
.head 7 +  If cbAsientosDiario
.head 8 -  Set lsWhereDiario = lsWhere
.head 7 -  ! TAQ < Mejoras RD R4
.head 7 -  ! Si se trata de un reporte con detalle agregar el join con el mayor
.head 7 -  ! y el rango de fechas
.head 7 +  If lsWhere
.head 8 -  Set lsWhere = lsWhere || '
	AND'
.head 7 -  Set lsWhere = lsWhere || ' D.cuenta_contable = A.cuenta_contable
	AND	D.cuenta_contable = B.cuenta_contable
	AND	D.centro_costo = B.centro_costo
	AND 	D.centro_costo = C.centro_costo
	AND	D.fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || '
	AND 	D.fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE ) || '
	AND 	D.contabilidad IN ( \'' || sConta || '\', \'' || CONTA_AMBAS || '\' ) '
.head 7 -  !
.head 7 -  ! AEC Bug-->32629 Cuando se marca el check se indica que omita los asientos que están registrados en el cierre
.head 7 +  If cbSaldosAlCierre
.head 8 -  Set lsWhere = lsWhere || " AND D.ASIENTO NOT IN ( 
					        SELECT	ASIENTO 
					        FROM " 	|| ConcatCompany ('HIST_CIERRE_CG ' )  || ") "
.head 7 -  ! AEC Bug-->32629
.head 7 -  !
.head 7 -  ! TAQ > Mejoras RD R4
.head 7 +  If cbAsientosDiario
.head 8 +  If lsWhereDiario
.head 9 -  Set lsWhereDiario = lsWhereDiario || '
	AND'
.head 8 -  Set lsWhereDiario = lsWhereDiario || ' D.cuenta_contable = A.cuenta_contable
	AND	D.cuenta_contable = B.cuenta_contable
	AND	D.centro_costo = B.centro_costo
	AND 	D.centro_costo = C.centro_costo
	AND	asd.fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || '
	AND 	asd.fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE ) || '
	AND 	asd.contabilidad IN ( \'' || sConta || '\', \'' || CONTA_AMBAS || '\' ) 
	AND	asd.asiento = d.asiento'
.head 8 -  ! AEC Bug-->32629 Cuando se marca el check se indica que omita los asientos que están registrados en el cierre
.head 8 +  If cbSaldosAlCierre
.head 9 -  Set lsWhereDiario = lsWhereDiario || " AND D.ASIENTO NOT IN ( 
					        SELECT	ASIENTO 
					        FROM " 	|| ConcatCompany ('HIST_CIERRE_CG ' )  || ") "
.head 8 -  ! AEC Bug-->32629
.head 7 -  ! TAQ < Mejoras RD R4
.head 6 -  !
.head 6 +  If lsWhere
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || "
WHERE " || lsWhere
.head 6 -  !
.head 6 -  ! TAQ > Mejoras RD R4
.head 6 +  If cbAsientosDiario
.head 7 +  If lsWhereDiario
.head 8 -  Set lsSqlCmdDiario = lsSqlCmdDiario || '
WHERE ' || lsWhereDiario
.head 6 -  ! TAQ < Mejoras RD R4
.head 6 -  !
.head 6 +  If cbDetalleMov
.head 7 -  !
.head 7 -  ! TAQ > ES1-01381-QQCD
.head 7 -  ! ERG Correcciones 1era Entrega Alcanos R7-->
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
GROUP BY 	D.consecutivo, A.cuenta_contable, '  || lsColumnaDescripcionGroupBy || ' A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado, C.centro_costo, C.descripcion,	
		D.asiento, D.fecha, D.referencia, D.fuente, D.tipo_asiento, D.origen, D.nit '
.head 7 -  ! ERG Correcciones 1era Entrega Alcanos R7<--
.head 7 -  ! TAQ < ES1-01381-QQCD
.head 7 -  !
.head 7 -  ! TAQ > Mejoras RD R4
.head 7 +  If cbAsientosDiario
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
UNION 	ALL 
' || lsSqlCmdDiario
.head 8 -  ! TAQ > ES1-01381-QQCD
.head 8 -  ! ERG Correcciones 1era Entrega Alcanos R7-->
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
GROUP BY 	D.consecutivo, A.cuenta_contable, ' || lsColumnaDescripcionGroupBy || ' A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado, C.centro_costo, C.descripcion, 
		D.asiento, asd.fecha, D.referencia, D.fuente, asd.tipo_asiento, asd.origen, D.nit '
.head 8 -  ! ERG Correcciones 1era Entrega Alcanos R7<--
.head 8 -  ! TAQ < ES1-01381-QQCD
.head 7 -  ! TAQ < Mejoras RD R4
.head 7 -  !
.head 7 -  ! TAQ > CR2-12553-TJ15
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
UNION 	ALL 
SELECT '
.head 7 +  If NOT cbDetalleMov
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ' distinct '
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || ' A.cuenta_contable, ' || lsColumnaDescripcion || ' A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado,'
.head 7 -  ! Si el reporte es detallado no se puede colocar el distinct debido a que las líneas pueden contener los mismos datos
.head 7 -  ! TAQ < CR2-12553-TJ15
.head 7 -  !
.head 7 -  !
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || " ' ', ' ', ' ', " ||
SQLSystemDate( ) || ", ' ', ' ', ' ', ' ', '" || NIT_NO_DEFINIDO || "', 0, 0, 0, 0"
.head 7 -  !
.head 7 +  If bCompaniaUsaUnidades AND cbImpUnidades
.head 8 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 9 -  ! Se agrega el campo de NITs.
.head 9 -  ! En esta caso se coloca el NIT_NO_DEFINIDO.
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ", 0, 0"
.head 7 -  !
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || "
FROM " || ConcatCompany( 'cuenta_contable A' )
.head 7 -  !
.head 7 +  If sCondicionDeCentros
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ', ' ||
	ConcatCompany( 'centro_cuenta B ' )
.head 7 -  !
.head 7 -  Set lsWhereUnion = ''
.head 7 +  If sCondicionDeCentros
.head 8 +  If lsWhereUnion
.head 9 -  Set lsWhereUnion = lsWhereUnion || '
	AND'
.head 8 -  Set lsWhereUnion = lsWhereUnion || " A.cuenta_contable = B.cuenta_contable
	AND B." || sCondicionDeCentros
.head 7 -  !
.head 7 +  If dfCuentaInicial
.head 8 +  If lsWhereUnion
.head 9 -  Set lsWhereUnion = lsWhereUnion || '
	AND'
.head 8 -  Set lsWhereUnion = lsWhereUnion || ' A.cuenta_contable >= \'' || dfCuentaInicial || '\' '
.head 7 -  !
.head 7 +  If dfCuentaFinal
.head 8 +  If lsWhereUnion
.head 9 -  Set lsWhereUnion = lsWhereUnion || '
	AND'
.head 8 -  Set lsWhereUnion = lsWhereUnion || ' A.cuenta_contable <= \'' ||  dfCuentaFinal || '\' '
.head 7 -  !
.head 7 +  If dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta()
.head 8 -  ! Se quiere imprimir solo hasta cuentas del nivel dfCantNiveles
.head 8 +  If lsWhereUnion
.head 9 -  Set lsWhereUnion = lsWhereUnion || '
	AND'
.head 8 -  Set lsWhereUnion = lsWhereUnion || ' A.cuenta_contable LIKE \'' || fciBalanceComp.SoloHastaNivelLIKE( dfCantNiveles ) || '\' '
.head 7 -  !
.head 7 +  If lsWhereUnion
.head 8 -  Set lsWhereUnion = lsWhereUnion || '
	AND'
.head 7 -  !
.head 7 -  ! TAQ > Mejoras RD R4
.head 7 -  ! Se realiza el coun 
.head 7 -  Set lsWhereUnion = lsWhereUnion || " 0 = (
	SELECT 	COUNT(0)
	FROM 	" || ConcatCompany( 'mayor c' )
.head 7 -  !
.head 7 -  ! Se agrega la condición con cuenta contable
.head 7 -  Set lsWhereUnion = lsWhereUnion || "
	WHERE 	( A.cuenta_contable = C.cuenta_contable )"
.head 7 -  !
.head 7 -  ! Se agrega la condición de las fechas y contabilidad con el mayor
.head 7 -  Set lsWhereUnion = lsWhereUnion || '
	AND	( c.fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || '
	AND 	c.fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE ) || '
	AND 	c.contabilidad IN ( \'' || sConta || '\', \'' || CONTA_AMBAS || '\' )  '
.head 7 -  !
.head 7 -  ! Se agrega la condición de centros de costo del mayor
.head 7 +  If sCondicionDeCentros
.head 8 -  Set lsWhereUnion = lsWhereUnion || '
		AND 	C.' || sCondicionDeCentros || ')'
.head 7 +  Else 
.head 8 -  Set lsWhereUnion = lsWhereUnion || ')'
.head 7 -  !
.head 7 -  ! Se cierra el parentesis del where principal
.head 7 -  Set lsWhereUnion = lsWhereUnion || " ) "
.head 7 -  ! TAQ < Mejoras RD R4
.head 7 -  !
.head 7 +  If lsWhereUnion
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
WHERE ' || lsWhereUnion
.head 7 -  !
.head 7 -  ! TAQ > Mejoras Rendimiento
.head 7 -  !
.head 7 +  If cbAsientosDiario
.head 8 -  !
.head 8 +  ! Caso CR7-24964-QL1X JEV ---------->
.head 9 -  ! Set sSqlCmdReport = sSqlCmdReport || "
UNION 	ALL
SELECT A.cuenta_contable, ' || lsColumnaDescripcion || ' A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado,"
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || "
UNION 	ALL
SELECT A.cuenta_contable, " || lsColumnaDescripcion || " A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado,"
.head 8 -  ! <---------- Caso CR7-24964-QL1X JEV
.head 8 -  !
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || " ' ', ' ', ' ', " ||
SQLSystemDate( ) || ", ' ', ' ', ' ', ' ', '" || NIT_NO_DEFINIDO || "', 0, 0, 0, 0"
.head 8 -  !
.head 8 +  If bCompaniaUsaUnidades AND cbImpUnidades
.head 9 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 10 -  ! Se agrega el campo de NITs.
.head 10 -  ! En esta caso se coloca el NIT_NO_DEFINIDO.
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ", 0, 0"
.head 8 -  !
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || "
FROM " || ConcatCompany( 'cuenta_contable A' )
.head 8 -  !
.head 8 +  If sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ', ' ||
	ConcatCompany( 'centro_cuenta B ' )
.head 8 -  !
.head 8 -  Set lsWhereUnion = ''
.head 8 +  If sCondicionDeCentros
.head 9 +  If lsWhereUnion
.head 10 -  Set lsWhereUnion = lsWhereUnion || '
	AND'
.head 9 -  Set lsWhereUnion = lsWhereUnion || " A.cuenta_contable = B.cuenta_contable
	AND B." || sCondicionDeCentros
.head 8 -  !
.head 8 +  If dfCuentaInicial
.head 9 +  If lsWhereUnion
.head 10 -  Set lsWhereUnion = lsWhereUnion || '
	AND'
.head 9 -  Set lsWhereUnion = lsWhereUnion || ' A.cuenta_contable >= \'' || dfCuentaInicial || '\' '
.head 8 -  !
.head 8 +  If dfCuentaFinal
.head 9 +  If lsWhereUnion
.head 10 -  Set lsWhereUnion = lsWhereUnion || '
	AND'
.head 9 -  Set lsWhereUnion = lsWhereUnion || ' A.cuenta_contable <= \'' ||  dfCuentaFinal || '\' '
.head 8 -  !
.head 8 +  If dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta()
.head 9 -  ! Se quiere imprimir solo hasta cuentas del nivel dfCantNiveles
.head 9 +  If lsWhereUnion
.head 10 -  Set lsWhereUnion = lsWhereUnion || '
	AND'
.head 9 -  Set lsWhereUnion = lsWhereUnion || ' A.cuenta_contable LIKE \'' || fciBalanceComp.SoloHastaNivelLIKE( dfCantNiveles ) || '\' '
.head 8 -  !
.head 8 +  If lsWhereUnion
.head 9 -  Set lsWhereUnion = lsWhereUnion || '
	AND'
.head 8 -  !
.head 8 -  ! TAQ > Mejoras RD R4
.head 8 -  ! Se realiza el count
.head 8 -  ! Si se incluyen los asientos del diario entonces agregar las tablas del diario y asiento de diario
.head 8 -  Set lsWhereUnion = lsWhereUnion || " 0 = (
	SELECT 	COUNT(0)
	FROM 	" || ConcatCompany( 'diario f, ' ) || ConcatCompany( 'asiento_de_diario asd' )
.head 8 -  !
.head 8 -  ! Se agrega la condición con cuenta contable
.head 8 -  Set lsWhereUnion = lsWhereUnion || "
	WHERE 	( A.cuenta_contable = f.cuenta_contable )"
.head 8 -  !
.head 8 -  ! Se agrega la condición de las fechas y contabilidad con el diario
.head 8 -  Set lsWhereUnion = lsWhereUnion || '
	AND	( asd.fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || '
	AND 	asd.fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE ) || '
	AND 	asd.contabilidad IN ( \'' || sConta || '\', \'' || CONTA_AMBAS || '\' ) 
	AND 	f.asiento = asd.asiento '
.head 8 -  !
.head 8 -  ! Se agrega la condición de centros de costo del diario
.head 8 +  If sCondicionDeCentros
.head 9 -  Set lsWhereUnion = lsWhereUnion || '
		AND 	f.' || sCondicionDeCentros || ')'
.head 8 +  Else 
.head 9 -  Set lsWhereUnion = lsWhereUnion || ')'
.head 8 -  !
.head 8 -  ! Se cierra el parentesis del where principal
.head 8 -  Set lsWhereUnion = lsWhereUnion || " ) "
.head 8 -  ! TAQ < Mejoras RD R4
.head 8 -  !
.head 8 -  !
.head 8 +  If lsWhereUnion
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || '
WHERE ' || lsWhereUnion
.head 7 -  ! TAQ < Mejoras Rendimiento
.head 6 -  ! <----------- CASO S2C21336A
.head 6 -  !
.head 6 +  ! NBH >> INICIO CASO #26072
.head 7 -  ! Se traslada el INTO al final de toda la sentencia SQL, antes del ORDER BY
.head 6 -  Set sSqlCmdReport = sSqlCmdReport || '
INTO
:dlgBalanceComprobacion.fciBalanceComp.sCuenta,
:dlgBalanceComprobacion.fciBalanceComp.sDescripcion,
:dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal,
:sUsaUnidades,
:dlgBalanceComprobacion.sTipoCta,
:dlgBalanceComprobacion.sTipoDetalladoCta
'
.head 6 -  !
.head 6 +  If cbDetalleMov
.head 7 -  ! Agregar las into-variables de la parte del mayor y del centro de costo
.head 7 +  If bCompaniaUsaUnidades AND cbImpUnidades
.head 8 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 9 -  ! Se agrega el campo de NITs.
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ',
:dlgBalanceComprobacion.sCentroCosto, :dlgBalanceComprobacion.sDescripcionCentro,
:dlgBalanceComprobacion.sAsiento, :dlgBalanceComprobacion.dtFecha,
:dlgBalanceComprobacion.sReferencia, :dlgBalanceComprobacion.sFuente,
:dlgBalanceComprobacion.sTipoAsiento, :dlgBalanceComprobacion.sOrigen, :dlgBalanceComprobacion.vsNit,
:dlgBalanceComprobacion.nDebitosLoc, :dlgBalanceComprobacion.nCreditosLoc,
:dlgBalanceComprobacion.nDebitosDol, :dlgBalanceComprobacion.nCreditosDol,
:dlgBalanceComprobacion.nDebitosUnd, :dlgBalanceComprobacion.nCreditosUnd'
.head 7 +  Else 
.head 8 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 9 -  ! Se agrega el campo de NITs.
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ',
:dlgBalanceComprobacion.sCentroCosto, :dlgBalanceComprobacion.sDescripcionCentro,
:dlgBalanceComprobacion.sAsiento, :dlgBalanceComprobacion.dtFecha,
:dlgBalanceComprobacion.sReferencia, :dlgBalanceComprobacion.sFuente,
:dlgBalanceComprobacion.sTipoAsiento, :dlgBalanceComprobacion.sOrigen, :dlgBalanceComprobacion.vsNit,
:dlgBalanceComprobacion.nDebitosLoc, :dlgBalanceComprobacion.nCreditosLoc,
:dlgBalanceComprobacion.nDebitosDol, :dlgBalanceComprobacion.nCreditosDol
'
.head 6 -  ! NBH >> FIN CASO #26072
.head 6 -  ! Ordenar por cuenta_contable
.head 6 -  Set sSqlCmdReport = sSqlCmdReport || '
ORDER BY 1'
.head 6 -  ! CASO S2B18750 ----------->
.head 6 +  ! Se debe ordernar el detalle por la fecha, sin importar si se usan o no Unidades
.head 7 +  ! If bCompaniaUsaUnidades AND cbDetalleMov
.head 8 -  ! Ordenar el detalle también por fecha
.head 8 +  ! GCE 12-09-2003 S2C13712
.head 9 -  ! Set sSqlCmdReport = sSqlCmdReport || ', 7'
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ', 8'
.head 6 +  If cbDetalleMov
.head 7 -  ! Ordenar el detalle también por fecha
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || ', 10'
.head 6 -  ! <----------- CASO S2B18750
.head 6 -  ! Finaliza creacion de SQL para el reporte
.head 6 -  !
.head 6 -  !
.head 6 +  If SalIsNull( dfCentroCosto )
.head 7 -  Set sTitulo3 = dfDescCentroCosto || '. '
.head 6 +  Else 
.head 7 -  Set sTitulo3 = 'Centro de Costo: ' || dfDescCentroCosto || '. '
.head 6 -  !
.head 6 +  If rbSinMovTodas
.head 7 -  Set sTitulo3 = sTitulo3 || 'Cuentas con y sin movimientos.'
.head 6 +  Else If rbSinMovNo
.head 7 -  Set sTitulo3 = sTitulo3 || 'Cuentas con movimientos. '
.head 6 +  Else If rbSinMovSaldos
.head 7 -  Set sTitulo3 = sTitulo3 || 'Cuentas con movimientos o saldo diferente de cero.'
.head 6 -  !
.head 6 -  Set sTitulo1 = 'Balance de Comprobación del ' ||
    SalFmtFormatDateTime( dfFechaInicial, 'dd/MM/yyyy' ) || ' al ' ||
    SalFmtFormatDateTime( dfFechaFinal, 'dd/MM/yyyy' )
.head 6 -  !
.head 6 -  !
.head 6 -  ! Inicializar items del reporte
.head 6 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 7 -  ! Se agrega el campo de NITs.
.head 6 -  Set sREP_BalanceVar =
':dlgBalanceComprobacion.sCentroCosto,
:dlgBalanceComprobacion.sDescripcionCentro,
:dlgBalanceComprobacion.fciBalanceComp.sCuenta,
:dlgBalanceComprobacion.fciBalanceComp.sDescripcion,
:dlgBalanceComprobacion.nSaldoInicialLoc,
:dlgBalanceComprobacion.nSaldoInicialDol,
:dlgBalanceComprobacion.nSaldoInicialUnd,
:dlgBalanceComprobacion.nSaldoFinalLoc,
:dlgBalanceComprobacion.nSaldoFinalDol,
:dlgBalanceComprobacion.nSaldoFinalUnd,
:dlgBalanceComprobacion.nTotalDebitosLoc,
:dlgBalanceComprobacion.nTotalDebitosDol,
:dlgBalanceComprobacion.nTotalDebitosUnd,
:dlgBalanceComprobacion.nTotalCreditosLoc,
:dlgBalanceComprobacion.nTotalCreditosDol,
:dlgBalanceComprobacion.nTotalCreditosUnd,
:dlgBalanceComprobacion.nCambioNetoLoc,
:dlgBalanceComprobacion.nCambioNetoDol,
:dlgBalanceComprobacion.nCambioNetoUnd,
:dlgBalanceComprobacion.sAsiento,
:dlgBalanceComprobacion.dtFecha,
:dlgBalanceComprobacion.sReferencia,
:dlgBalanceComprobacion.sFuente,
:dlgBalanceComprobacion.sTipoAsiento,
:dlgBalanceComprobacion.sOrigen,
:dlgBalanceComprobacion.nDebitosLoc,
:dlgBalanceComprobacion.nDebitosDol,
:dlgBalanceComprobacion.nDebitosUnd,
:dlgBalanceComprobacion.nCreditosLoc,
:dlgBalanceComprobacion.nCreditosDol,
:dlgBalanceComprobacion.nCreditosUnd,
:dlgBalanceComprobacion.sImprimirCuenta,
:dlgBalanceComprobacion.sImprimirDetalle,
:dlgBalanceComprobacion.vsNit,
:dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal'
.head 6 -  !
.head 6 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 7 -  ! Se agrega el campo de NITs.
.head 6 -  Set sREP_BalanceInp =
'sCentroCosto, 
sDescripcionCentro, 
sCuentaContable, 
sDescripcionCuenta,
nSaldoInicialLoc, 
nSaldoInicialDol, 
nSaldoInicialUnd, 
nSaldoFinalLoc, 
nSaldoFinalDol, 
nSaldoFinalUnd, 
nTotalDebitosLoc, 
nTotalDebitosDol, 
nTotalDebitosUnd, 
nTotalCreditosLoc, 
nTotalCreditosDol, 
nTotalCreditosUnd, 
nCambioNetoLoc, 
nCambioNetoDol, 
nCambioNetoUnd, 
sAsiento,
dtFecha, 
sReferencia, 
sFuente, 
sTipoAsiento, 
sOrigen, 
nDebitosLoc, 
nDebitosDol, 
nDebitosUnd, 
nCreditosLoc, 
nCreditosDol, 
nCreditosUnd,
sImprimirCuenta, 
sImprimirDetalle,
vsNit,
sSaldoNormal'
.head 6 -  !
.head 6 -  ! Crear el reporte
.head 6 -  Return ShowReport (sREP_BalanceVar, sREP_BalanceInp, sTitulo1, sTitulo2, sTitulo3, sTitulo4 )
.head 6 -  !
.head 5 +  Else 
.head 6 -  Return FALSE
.head 3 +  Function: InitVariables
.head 4 -  Description: Inicializa variables del reporte
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  !
.head 5 -  ! Si no hay detalle, inicializar variables relacionadas con los items del detalle
.head 5 -  Set dtFecha = DATETIME_Null
.head 5 -  Set sReferencia = ''
.head 5 -  Set sFuente = ''
.head 5 -  Set sTipoAsiento = ''
.head 5 -  Set sOrigen = ''
.head 5 -  !
.head 5 -  ! Inicializar el total de cuentas
.head 5 -  Set nTotalCuentas = 0
.head 5 -  !
.head 5 -  ! Inicializar totales
.head 5 -  Set nTotalCreditosUnd = 0
.head 5 -  Set nTotalDebitosUnd = 0
.head 5 -  !
.head 5 -  Set nRepTotalCreditosLoc = 0
.head 5 -  Set nRepTotalCreditosDol = 0
.head 5 -  Set nRepTotalDebitosLoc = 0
.head 5 -  Set nRepTotalDebitosDol = 0
.head 5 -  Set nRepTotalSaldoInicialLoc = 0
.head 5 -  Set nRepTotalSaldoInicialDol = 0
.head 5 -  Set nRepTotalSaldoFinalLoc = 0
.head 5 -  Set nRepTotalSaldoFinalDol = 0
.head 5 -  !
.head 5 -  Set nRepTotalCreditosUnd = 0
.head 5 -  Set nRepTotalDebitosUnd = 0
.head 5 -  Set nRepTotalSaldoInicialUnd = 0
.head 5 -  Set nRepTotalSaldoFinalUnd = 0
.head 5 -  !
.head 5 -  Set sCurCuenta = ' '
.head 5 -  Set sCurCuentaPadre = ''
.head 5 -  !
.head 5 -  ! Inicializar totales relativos a unidades
.head 5 -  Set nSaldoInicialUnd = NUMBER_Null
.head 5 -  Set nTotalDebitosUnd = NUMBER_Null
.head 5 -  Set nTotalCreditosUnd = NUMBER_Null
.head 5 -  Set nSaldoFinalUnd = NUMBER_Null
.head 3 +  Function: GetCuentasBalance
.head 4 -  Description: Devuelve las cuentas inicial y final de acuerdo a lo digitado en
en los data fields
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Receive String: sParCuentaIni
.head 5 -  Receive String: sParCuentaFin
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sCaracter
.head 5 -  String: sFmtIMask
.head 5 -  Number: nCuentaCodSize
.head 5 -  String: sCodigoConFormato
.head 5 -  String: sCuentaIni
.head 5 -  String: sCuentaFin
.head 5 -  Number: nIndice
.head 5 -  Number: nIniBloque
.head 4 +  Actions
.head 5 +  If dfCuentaFinal AND ( dfCuentaInicial > dfCuentaFinal )
.head 6 -  Call SPSMessageBox(
       'Error, el rango de cuentas debe ser ascendente',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 6 -  Return FALSE
.head 5 -  Set sFmtIMask = fciGlobalesCG.GetPatron()
.head 5 -  Set nCuentaCodSize = SalStrLength( sFmtIMask )
.head 5 -  ! Tomar las cuentas definidas en los data fields
.head 5 -  Set sParCuentaIni = dfCuentaInicial
.head 5 -  Set sParCuentaFin = dfCuentaFinal
.head 5 -  !
.head 5 +  If sParCuentaIni = ''
.head 6 -  ! Poner la cuenta inicial en cero y la final en el maximo
.head 6 -  Set sParCuentaIni = fciGlobalesCG.GetPatronRangoInicial()
.head 6 +  If NOT sParCuentaFin
.head 7 -  ! NO hay límite superior poner el máximo
.head 7 -  Set sParCuentaFin = fciGlobalesCG.GetPatronRangoFinal()
.head 7 -  Return TRUE
.head 6 -  !
.head 6 -  ! A partir del segundo nivel, llenar todo con el final del patrón
.head 6 -  Set nIndice = 0
.head 6 +  Loop
.head 7 -  Set sCaracter = SalStrMidX( sParCuentaFin, nIndice, 1 )
.head 7 +  If NOT CaracterAlfanum( sCaracter )
.head 8 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIndice+1 )
.head 8 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX(
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIndice-1 )
.head 8 -  Break
.head 7 -  Set nIndice = nIndice + 1
.head 7 +  If nIndice >= nCuentaCodSize
.head 8 -  Break
.head 5 +  Else
.head 6 +  If NOT sParCuentaFin
.head 7 -  ! NO hay límite superior poner el máximo
.head 7 -  Set sParCuentaFin = fciGlobalesCG.GetPatronRangoFinal()
.head 7 -  Return TRUE
.head 6 -  !
.head 6 -  ! Buscar el primer bloque diferentes de las cuentas
.head 6 -  Set nIndice = 0
.head 6 -  Set nIniBloque = 0
.head 6 +  Loop
.head 7 -  Set sCaracter = SalStrMidX( sParCuentaFin, nIndice, 1 )
.head 7 +  If NOT CaracterAlfanum( sCaracter )
.head 8 -  ! Termino el bloque, comparar
.head 8 -  Set sCuentaIni = SalStrMidX( sParCuentaIni, nIniBloque,
                                               nIndice - nIniBloque )
.head 8 -  Set sCuentaFin = SalStrMidX( sParCuentaFin, nIniBloque,
                                                 nIndice - nIniBloque )
.head 8 +  If ( sCuentaIni != sCuentaFin )
.head 9 -  ! Llenar de Zs a partir del mismo bloque
.head 9 +  If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni )
.head 10 -  ! Llenar de Zs a partir del siguiente bloque
.head 10 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 10 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX(
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize - nIniBloque )
.head 9 +  Else
.head 10 -  ! Llenar de Zs a partir del siguiente bloque diferente
.head 10 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIndice+1 )
.head 10 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX(
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize - ( nIndice+1) )
.head 9 -  Break
.head 8 +  Else If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni )
.head 9 -  ! Llenar de Zs a partir del bloque analizado
.head 9 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 9 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX(
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIniBloque )
.head 9 -  Break
.head 8 +  Else
.head 9 -  ! Guardar el inicio de bloque
.head 9 -  Set nIniBloque = nIndice + 1
.head 7 +  Else If nIndice = nCuentaCodSize-1
.head 8 -  ! Termino el bloque (es el último), comparar
.head 8 -  Set sCuentaIni = SalStrMidX( sParCuentaIni, nIniBloque,
                                               nIndice - nIniBloque + 1 )
.head 8 +  If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni )
.head 9 -  ! Llenar a partir del bloque analizado de Zs ( bloques desiguales o en cero )
.head 9 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 9 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX(
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIniBloque )
.head 8 -  Break
.head 7 -  Set nIndice = nIndice + 1
.head 5 -  Return TRUE
.head 3 +  Function: ConstruyeLineaReporte
.head 4 -  Description: Construye la linea del reporte
.head 4 +  Returns
.head 5 -  Boolean: ! resultado de la funcion CalcularSaldos
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: sSqlCmd
.head 5 -  Boolean: bExiste
.head 5 -  Number: nSaldoIniLoc
.head 5 -  Number: nSaldoIniDol
.head 5 -  Number: nSaldoFinLoc
.head 5 -  Number: nSaldoFinDol
.head 5 -  Number: nSaldoIniUnd
.head 5 -  Number: nSaldoFinUnd
.head 5 -  Boolean: bCambiaContadorCuenta
.head 5 -  !
.head 5 -  Number: n
.head 5 -  Number: nNiveles
.head 5 -  !
.head 5 -  ! PBI 217437 lgonzalez --->
.head 5 -  String: lsCuenta
.head 5 -  String: lsError
.head 5 -  Boolean: lbBienCOM
.head 5 -  ! PBI 217437 lgonzalez <---
.head 4 +  Actions
.head 5 -  !
.head 5 -  Set lsCuenta = fciBalanceComp.sCuenta
.head 5 -  !
.head 5 -  Set sImprimirCuenta = 'SI'
.head 5 -  !
.head 5 -  Set sImprimirDetalle = ''
.head 5 -  !
.head 5 -  Set bCambiaContadorCuenta  = FALSE
.head 5 -  !
.head 5 +  If sMoneda = LOCAL
.head 6 +  ! PBI 217437 lgonzalez --->
.head 7 +  ! If NOT CalculeSaldos(
dfCentroCosto, 
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nLinkList, 
nSaldoIniLoc, 
nTotalDebitosLoc, 
nTotalCreditosLoc, 
nSaldoFinLoc )
.head 8 -  Call SPSMessageBox(  
       'Problemas calculando saldos',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 8 -  Return FALSE
.head 6 -  Call ComCGBridge.CalculeSaldos(
dfCentroCosto,
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nSaldoIniLoc, 
nTotalDebitosLoc, 
nTotalCreditosLoc, 
nSaldoFinLoc,
lsError,
lbBienCOM )
.head 6 -  ! PBI 217437 lgonzalez <---
.head 6 -  ! !
.head 6 -  ! ! Poner el monto en débitos o créditos según corresponda
.head 6 -  Set nSaldoIniLoc = NumberRound(nSaldoIniLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalDebitosLoc = NumberRound(nTotalDebitosLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalCreditosLoc = NumberRound(nTotalCreditosLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nSaldoFinLoc = NumberRound(nSaldoFinLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  !
.head 6 -  ! Poner el monto en débitos o créditos según corresponda
.head 6 +  If nCreditosLoc OR nDebitosLoc
.head 7 -  Set sImprimirDetalle = 'SI'
.head 6 -  ! MRL S2C30430A -->
.head 6 +  If dlgBalanceComprobacion.sAsiento != ' ' AND ((nCreditosLoc = 0 OR nCreditosLoc = NUMBER_Null) AND (nDebitosLoc = 0 OR nDebitosLoc = NUMBER_Null))
.head 7 -  Set sImprimirDetalle = 'SI'
.head 6 -  ! MRL S2C30430A <--
.head 5 +  Else If sMoneda = DOLAR
.head 6 +  ! PBI 217437 lgonzalez --->
.head 7 +  ! If NOT CalculeSaldos(
dfCentroCosto, 
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nLinkList, 
nSaldoIniDol, 
nTotalDebitosDol, 
nTotalCreditosDol, 
nSaldoFinDol )
.head 8 -  Call SPSMessageBox(  
       'Problemas calculando saldos',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 8 -  Return FALSE
.head 6 -  Call ComCGBridge.CalculeSaldos(
dfCentroCosto,
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nSaldoIniDol, 
nTotalDebitosDol, 
nTotalCreditosDol, 
nSaldoFinDol,
lsError,
lbBienCOM  )
.head 6 -  ! PBI 217437 lgonzalez <---
.head 6 -  ! !
.head 6 -  Set nSaldoIniDol = NumberRound(nSaldoIniDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalDebitosDol = NumberRound(nTotalDebitosDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalCreditosDol = NumberRound(nTotalCreditosDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nSaldoFinDol = NumberRound(nSaldoFinDol,fciGlobalesCG.nCantDecimales)
.head 6 -  !
.head 6 -  ! Poner el monto en débitos o créditos según corresponda
.head 6 +  If nCreditosDol OR nDebitosDol
.head 7 -  Set sImprimirDetalle = 'SI'
.head 6 -  ! MRL S2C30430A -->
.head 6 +  If dlgBalanceComprobacion.sAsiento != ' ' AND ((nCreditosDol = 0 OR nCreditosDol = NUMBER_Null) AND (nDebitosDol = 0 OR nDebitosDol = NUMBER_Null))
.head 7 -  Set sImprimirDetalle = 'SI'
.head 6 -  ! MRL S2C30430A <--
.head 5 +  Else
.head 6 -  !
.head 6 -  Set sMoneda = LOCAL
.head 6 +  ! PBI 217437 lgonzalez --->
.head 7 +  ! If NOT CalculeSaldos(
dfCentroCosto, 
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nLinkList, 
nSaldoIniLoc, 
nTotalDebitosLoc, 
nTotalCreditosLoc, 
nSaldoFinLoc )
.head 8 -  Call SPSMessageBox(  
       'Problemas calculando saldos',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 8 -  Return FALSE
.head 6 -  Call ComCGBridge.CalculeSaldos(
dfCentroCosto,
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nSaldoIniLoc, 
nTotalDebitosLoc, 
nTotalCreditosLoc, 
nSaldoFinLoc,
lsError,
lbBienCOM  )
.head 6 -  ! PBI 217437 lgonzalez <---
.head 6 -  !
.head 6 -  ! !
.head 6 -  Set nSaldoIniLoc = NumberRound(nSaldoIniLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalDebitosLoc = NumberRound(nTotalDebitosLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalCreditosLoc = NumberRound(nTotalCreditosLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nSaldoFinLoc = NumberRound(nSaldoFinLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set sMoneda = DOLAR
.head 6 +  ! PBI 217437 lgonzalez --->
.head 7 +  ! If NOT CalculeSaldos(
dfCentroCosto, 
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nLinkList, 
nSaldoIniDol, 
nTotalDebitosDol, 
nTotalCreditosDol, 
nSaldoFinDol )
.head 8 -  Call SPSMessageBox(  
       'Problemas calculando saldos',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 8 -  Return FALSE
.head 6 -  Call ComCGBridge.CalculeSaldos(
dfCentroCosto,
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nSaldoIniDol, 
nTotalDebitosDol, 
nTotalCreditosDol, 
nSaldoFinDol,
lsError,
lbBienCOM   )
.head 6 -  ! PBI 217437 lgonzalez <---
.head 6 -  !
.head 6 -  ! !
.head 6 -  Set nSaldoIniDol = NumberRound(nSaldoIniDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalDebitosDol = NumberRound(nTotalDebitosDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalCreditosDol = NumberRound(nTotalCreditosDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nSaldoFinDol = NumberRound(nSaldoFinDol,fciGlobalesCG.nCantDecimales)
.head 6 -  ! Poner el monto en débitos o créditos según corresponda
.head 6 +  If nCreditosLoc OR nDebitosLoc OR nDebitosDol OR nCreditosDol
.head 7 -  Set sImprimirDetalle = 'SI'
.head 6 -  ! MRL S2C30430A -->
.head 6 +  If dlgBalanceComprobacion.sAsiento != ' ' AND (((nCreditosLoc = 0 OR nCreditosLoc = NUMBER_Null) AND (nDebitosLoc = 0 OR nDebitosLoc = NUMBER_Null))
OR ((nCreditosDol = 0 OR nCreditosDol = NUMBER_Null) AND (nDebitosDol = 0 OR nDebitosDol = NUMBER_Null)))
.head 7 -  Set sImprimirDetalle = 'SI'
.head 6 -  ! MRL S2C30430A <--
.head 6 -  ! Se restaura la moneda como estaba
.head 6 -  Set sMoneda = AMBAS
.head 5 -  !
.head 5 -  ! Verificar si la compañia y la cuenta en cuestion usan unidades para calcular el saldo y si el usuario lo desea
.head 5 +  ! ! GCE S2C13260B 24/07/2003
.head 6 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 5 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'  
.head 6 -  ! !
.head 6 -  Set nSaldoIniUnd = NumberRound(nSaldoIniUnd,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalDebitosUnd = NumberRound(nTotalDebitosUnd,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalCreditosUnd = NumberRound(nTotalCreditosUnd,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nSaldoFinUnd = NumberRound(nSaldoFinUnd,fciGlobalesCG.nCantDecimales)
.head 6 -  ! PBI 217437 lgonzalez --->
.head 6 +  If NOT ComCGBridge.CalculeSaldos(
dfCentroCosto, 
fciBalanceComp.sCuenta,
'X',
sConta,
'U',
nSaldoIniUnd, 
nTotalDebitosUnd, 
nTotalCreditosUnd, 
nSaldoFinUnd,
lsError,
lbBienCOM )
.head 7 -  Call SPSMessageBox(  
       'Problemas calculando saldos',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 7 -  Return FALSE
.head 6 -  ! PBI 217437 lgonzalez <---
.head 5 +  Else
.head 6 -  Set nSaldoIniUnd = NUMBER_Null
.head 6 -  Set nTotalDebitosUnd = NUMBER_Null
.head 6 -  Set nTotalCreditosUnd = NUMBER_Null
.head 6 -  Set nSaldoFinUnd = NUMBER_Null
.head 5 -  !
.head 5 -  ! TAQ > Mejoras RD R4
.head 5 +  If cbAsientosDiario
.head 6 +  If NOT ObtenerSaldosDiario( nSaldoIniLoc, nSaldoFinLoc, nSaldoIniDol, nSaldoFinDol, nSaldoIniUnd, nSaldoFinUnd, 
nTotalDebitosLoc, nTotalCreditosLoc, nTotalDebitosDol, nTotalCreditosDol, nTotalDebitosUnd, nTotalCreditosUnd )
.head 7 -  Return FALSE
.head 5 -  ! TAQ < Mejoras RD R4
.head 5 -  !
.head 5 -  ! Verificar cuentas con/sin movimiento
.head 5 +  If rbSinMovNo
.head 6 +  If NOT ( nTotalDebitosLoc OR nTotalCreditosLoc OR nTotalDebitosDol OR nTotalCreditosDol )
.head 7 -  Set sImprimirCuenta = ''
.head 7 -  Set sImprimirDetalle = ''
.head 5 -  ! TAQ > Mejora en despligue
.head 5 +  Else If rbSinMovSaldos
.head 6 +  If rbMonLocal AND NOT nSaldoIniLoc AND NOT nSaldoFinLoc
.head 7 +  If NOT ( nTotalDebitosLoc OR nTotalCreditosLoc )
.head 8 -  Set sImprimirCuenta = ''
.head 8 -  Set sImprimirDetalle = ''
.head 6 +  Else If rbMonDolares AND NOT nSaldoIniDol AND NOT nSaldoFinDol
.head 7 +  If NOT ( nTotalDebitosDol OR nTotalCreditosDol )
.head 8 -  Set sImprimirCuenta = ''
.head 8 -  Set sImprimirDetalle = ''
.head 6 +  Else If rbMonAmbas AND NOT nSaldoIniLoc AND NOT nSaldoFinLoc AND NOT nSaldoIniDol AND NOT nSaldoFinDol
.head 7 +  If NOT ( nTotalDebitosLoc OR nTotalCreditosLoc OR nTotalDebitosDol OR nTotalCreditosDol)
.head 8 -  Set sImprimirCuenta = ''
.head 8 -  Set sImprimirDetalle = ''
.head 5 -  ! TAQ < Mejora en despligue
.head 5 -  !
.head 5 +  If sImprimirCuenta
.head 6 +  ! CASO S2C16282A
.head 7 +  ! Se pasa para abajo de la totalización el control de paréntesis
.head 8 -  ! ! CASO S2C15888 ----------->
.head 8 +  ! If dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal = SALDON_ACREDOR
.head 9 -  Set nSaldoIniLoc = -nSaldoIniLoc
.head 9 -  Set nSaldoIniDol = -nSaldoIniDol
.head 9 -  Set nSaldoFinLoc = -nSaldoFinLoc
.head 9 -  Set nSaldoFinDol = -nSaldoFinDol
.head 9 -  !
.head 9 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'
.head 10 -  Set nSaldoIniUnd = -nSaldoIniUnd
.head 10 -  Set nSaldoFinUnd = -nSaldoFinUnd
.head 9 +  Else 
.head 10 -  Set nSaldoIniUnd = NUMBER_Null
.head 10 -  Set nSaldoFinUnd = NUMBER_Null
.head 8 -  ! ! <----------- CASO S2C15888
.head 8 -  ! ! 
.head 8 +  ! If cbImpCambioNeto
.head 9 -  ! Agregar columna de cambio neto
.head 9 -  Set nCambioNetoLoc = nSaldoFinLoc - nSaldoIniLoc
.head 9 -  Set nCambioNetoDol = nSaldoFinDol - nSaldoIniDol
.head 9 -  !
.head 9 +  ! ! GCE S2C13260B 24/07/2003
.head 10 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 9 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'  
.head 10 -  Set nCambioNetoUnd = nSaldoFinUnd - nSaldoIniUnd
.head 9 +  Else 
.head 10 -  Set nCambioNetoUnd = 0.0
.head 8 +  ! Else 
.head 9 -  Set nCambioNetoLoc = 0.0
.head 9 -  Set nCambioNetoDol = 0.0
.head 9 -  Set nCambioNetoUnd = 0.0
.head 6 -  !
.head 6 +  If sCurCuenta != fciBalanceComp.sCuenta
.head 7 -  ! Incrementar el total de ctas.
.head 7 -  Set nTotalCuentas = nTotalCuentas + 1
.head 7 -  Set bCambiaContadorCuenta = TRUE
.head 7 +  If sCurCuenta = ' ' OR 
   NOT ( fciBalanceComp.IsDescendant( 
          fciBalanceComp.sCuenta, sCurCuentaPadre ) )
.head 8 -  ! Actualizar variable que tendra la cuenta padre
.head 8 -  Set sCurCuentaPadre = fciBalanceComp.sCuenta
.head 8 -  !
.head 8 -  ! Actualizar totales
.head 8 -  Set nRepTotalDebitosLoc = nRepTotalDebitosLoc + nTotalDebitosLoc
.head 8 -  Set nRepTotalCreditosLoc = nRepTotalCreditosLoc + nTotalCreditosLoc
.head 8 -  Set nRepTotalSaldoInicialLoc = nRepTotalSaldoInicialLoc + nSaldoIniLoc
.head 8 -  Set nRepTotalSaldoFinalLoc = nRepTotalSaldoFinalLoc + nSaldoFinLoc
.head 8 -  !
.head 8 -  Set nRepTotalDebitosDol = nRepTotalDebitosDol + nTotalDebitosDol
.head 8 -  Set nRepTotalCreditosDol = nRepTotalCreditosDol + nTotalCreditosDol
.head 8 -  Set nRepTotalSaldoInicialDol = nRepTotalSaldoInicialDol + nSaldoIniDol
.head 8 -  Set nRepTotalSaldoFinalDol = nRepTotalSaldoFinalDol + nSaldoFinDol
.head 8 -  !
.head 8 -  ! Verificar si la compañia y la cuenta en cuestion usan unidades para calcular el saldo y si el usuario lo desea
.head 8 +  ! ! GCE S2C13260B 24/07/2003
.head 9 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 8 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'  
.head 9 -  ! Actualizar totales de unidades
.head 9 -  Set nRepTotalDebitosUnd = nRepTotalDebitosUnd + nTotalDebitosUnd
.head 9 -  Set nRepTotalCreditosUnd = nRepTotalCreditosUnd + nTotalCreditosUnd
.head 9 -  Set nRepTotalSaldoInicialUnd = nRepTotalSaldoInicialUnd + nSaldoIniUnd
.head 9 -  Set nRepTotalSaldoFinalUnd = nRepTotalSaldoFinalUnd + nSaldoFinUnd
.head 8 +  Else
.head 9 -  ! Actualizar totales de unidades
.head 9 -  Set nRepTotalDebitosUnd = NUMBER_Null
.head 9 -  Set nRepTotalCreditosUnd = NUMBER_Null
.head 9 -  Set nRepTotalSaldoInicialUnd = NUMBER_Null
.head 9 -  Set nRepTotalSaldoFinalUnd = NUMBER_Null
.head 7 -  ! Guardar cuenta que se analiza
.head 7 -  Set sCurCuenta = fciBalanceComp.sCuenta
.head 6 +  ! ! EHG Se comenta por nueva funcionalidad de la Beta II 500, pues se establecen signos para cada
tipo de cuenta y tipo_detallado
.head 7 -  ! Control de paréntesis
.head 7 +  ! If fciBalanceComp.sSaldoNormal = 'A'
.head 8 -  Set nSaldoInicialLoc = -nSaldoIniLoc
.head 8 -  Set nSaldoInicialDol = -nSaldoIniDol
.head 8 -  Set nSaldoFinalLoc = -nSaldoFinLoc
.head 8 -  Set nSaldoFinalDol = -nSaldoFinDol
.head 8 -  !
.head 8 +  ! ! GCE S2C13260B 24/07/2003
.head 9 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 8 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S' 
.head 9 -  Set nSaldoInicialUnd = -nSaldoIniUnd 
.head 9 -  Set nSaldoFinalUnd = -nSaldoFinUnd 
.head 8 +  Else 
.head 9 -  Set nSaldoInicialUnd =NUMBER_Null
.head 9 -  Set nSaldoFinalUnd = NUMBER_Null 
.head 7 +  ! Else
.head 8 -  Set nSaldoInicialLoc = nSaldoIniLoc
.head 8 -  Set nSaldoFinalLoc = nSaldoFinLoc
.head 8 -  !
.head 8 -  Set nSaldoInicialDol = nSaldoIniDol
.head 8 -  Set nSaldoFinalDol = nSaldoFinDol
.head 8 -  !
.head 8 +  ! ! GCE S2C13260B 24/07/2003
.head 9 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 8 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'  
.head 9 -  Set nSaldoInicialUnd = nSaldoIniUnd 
.head 9 -  Set nSaldoFinalUnd = nSaldoFinUnd 
.head 8 +  Else 
.head 9 -  Set nSaldoInicialUnd = NUMBER_Null
.head 9 -  Set nSaldoFinalUnd = NUMBER_Null
.head 6 -  !
.head 6 -  ! CASO S2C16282A ----------->
.head 6 +  If dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal = SALDON_ACREDOR
.head 7 -  Set nSaldoIniLoc = -nSaldoIniLoc
.head 7 -  Set nSaldoIniDol = -nSaldoIniDol
.head 7 -  Set nSaldoFinLoc = -nSaldoFinLoc
.head 7 -  Set nSaldoFinDol = -nSaldoFinDol
.head 7 -  !
.head 7 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'
.head 8 -  Set nSaldoIniUnd = -nSaldoIniUnd
.head 8 -  Set nSaldoFinUnd = -nSaldoFinUnd
.head 7 +  Else
.head 8 -  Set nSaldoIniUnd = NUMBER_Null
.head 8 -  Set nSaldoFinUnd = NUMBER_Null
.head 6 -  !
.head 6 +  If cbImpCambioNeto
.head 7 -  ! Agregar columna de cambio neto
.head 7 -  Set nCambioNetoLoc = nSaldoFinLoc - nSaldoIniLoc
.head 7 -  Set nCambioNetoDol = nSaldoFinDol - nSaldoIniDol
.head 7 -  !
.head 7 +  ! ! GCE S2C13260B 24/07/2003
.head 8 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 7 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'  
.head 8 -  Set nCambioNetoUnd = nSaldoFinUnd - nSaldoIniUnd
.head 7 +  Else
.head 8 -  Set nCambioNetoUnd = 0.0
.head 6 +  Else
.head 7 -  Set nCambioNetoLoc = 0.0
.head 7 -  Set nCambioNetoDol = 0.0
.head 7 -  Set nCambioNetoUnd = 0.0
.head 6 -  ! <----------- CASO S2C16282A
.head 6 -  !
.head 6 -  Set nSaldoInicialLoc = nSaldoIniLoc
.head 6 -  Set nSaldoFinalLoc = nSaldoFinLoc
.head 6 -  !
.head 6 -  Set nSaldoInicialDol = nSaldoIniDol
.head 6 -  Set nSaldoFinalDol = nSaldoFinDol
.head 6 -  !
.head 6 +  ! ! GCE S2C13260B 24/07/2003
.head 7 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 6 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'  
.head 7 -  Set nSaldoInicialUnd = nSaldoIniUnd 
.head 7 -  Set nSaldoFinalUnd = nSaldoFinUnd 
.head 6 +  Else
.head 7 -  Set nSaldoInicialUnd = NUMBER_Null
.head 7 -  Set nSaldoFinalUnd = NUMBER_Null
.head 5 -  !
.head 5 -  !
.head 5 -  ! CASO S2C15888 ----------->
.head 5 +  ! Se comenta la mejora realizada por Desarrollo ya que originaba una mal cálculo de los saldos.
.head 6 -  ! ! EHG nueva funcionalidad de CGBETAII500
.head 6 -  ! ! Si se trata de balance de situacion con tipo detalle activo o bien el tipo es cuenta de orden el signo es negativo si el saldo
Normal es Acreedor
.head 6 +  ! If ((sTipoCta = TIPO_BALANCE_SITUACION AND sTipoDetalladoCta = TIPO_DETALLE_ACTIVO)
OR (sTipoCta = TIPO_DETALLE_ORDEN) ) OR ((sTipoCta = TIPO_ESTADO_RESULTADOS AND 
sTipoDetalladoCta = TIPO_DETALLE_GASTO))
.head 7 +  If dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal = SALDON_ACREDOR
.head 8 +  If nSaldoInicialLoc > 0 
.head 9 -  Set nSaldoInicialLoc = -nSaldoInicialLoc 
.head 8 +  If nSaldoInicialDol > 0 
.head 9 -  Set nSaldoInicialDol = -nSaldoInicialDol 
.head 8 +  If nSaldoFinalLoc > 0 
.head 9 -  Set nSaldoFinalLoc = -nSaldoFinalLoc 
.head 8 +  If nSaldoFinalDol > 0 
.head 9 -  Set nSaldoFinalDol = -nSaldoFinalDol
.head 8 -  !
.head 8 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S' 
.head 9 +  If nSaldoInicialUnd > 0
.head 10 -  Set nSaldoInicialUnd = -nSaldoInicialUnd 
.head 9 +  If nSaldoFinalUnd > 0
.head 10 -  Set nSaldoFinalUnd = -nSaldoFinalUnd 
.head 8 +  Else 
.head 9 -  Set nSaldoInicialUnd =NUMBER_Null
.head 9 -  Set nSaldoFinalUnd = NUMBER_Null 
.head 7 +  Else 
.head 8 +  If nSaldoInicialLoc < 0 
.head 9 -  Set nSaldoInicialLoc = nSaldoInicialLoc * -1
.head 8 +  If nSaldoInicialDol < 0 
.head 9 -  Set nSaldoInicialDol = nSaldoInicialDol * -1
.head 8 +  If nSaldoFinalLoc < 0 
.head 9 -  Set nSaldoFinalLoc = nSaldoFinalLoc * -1
.head 8 +  If nSaldoFinalDol < 0 
.head 9 -  Set nSaldoFinalDol = nSaldoFinalDol * -1
.head 8 -  !
.head 8 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S' 
.head 9 +  If nSaldoInicialUnd < 0
.head 10 -  Set nSaldoInicialUnd = nSaldoInicialUnd * -1
.head 9 +  If nSaldoFinalUnd < 0
.head 10 -  Set nSaldoFinalUnd = nSaldoInicialUnd * -1
.head 8 +  Else 
.head 9 -  Set nSaldoInicialUnd =NUMBER_Null
.head 9 -  Set nSaldoFinalUnd = NUMBER_Null 
.head 6 -  ! !
.head 6 -  ! ! Si se trata de balance de situacion con tipo detalle pasivo o patrimonio el signo es negativo si el saldo
Normal es Deudor
.head 6 +  ! Else If (sTipoCta = TIPO_BALANCE_SITUACION AND (sTipoDetalladoCta = TIPO_DETALLE_PASIVO
OR sTipoDetalladoCta = TIPO_DETALLE_PATRIMONIO)) OR ((sTipoCta = TIPO_ESTADO_RESULTADOS 
AND sTipoDetalladoCta = TIPO_DETALLE_INGRESO))
.head 7 +  If dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal = SALDON_DEUDOR
.head 8 +  If nSaldoInicialLoc > 0 
.head 9 -  Set nSaldoInicialLoc = -nSaldoInicialLoc 
.head 8 +  If nSaldoInicialDol > 0 
.head 9 -  Set nSaldoInicialDol = -nSaldoInicialDol 
.head 8 +  If nSaldoFinalLoc > 0 
.head 9 -  Set nSaldoFinalLoc = -nSaldoFinalLoc 
.head 8 +  If nSaldoFinalDol > 0 
.head 9 -  Set nSaldoFinalDol = -nSaldoFinalDol
.head 8 -  !
.head 8 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S' 
.head 9 +  If nSaldoInicialUnd > 0
.head 10 -  Set nSaldoInicialUnd = -nSaldoInicialUnd 
.head 9 +  If nSaldoFinalUnd > 0
.head 10 -  Set nSaldoFinalUnd = -nSaldoFinalUnd 
.head 8 +  Else 
.head 9 -  Set nSaldoInicialUnd =NUMBER_Null
.head 9 -  Set nSaldoFinalUnd = NUMBER_Null 
.head 7 +  Else 
.head 8 +  If nSaldoInicialLoc < 0 
.head 9 -  Set nSaldoInicialLoc = nSaldoInicialLoc * -1
.head 8 +  If nSaldoInicialDol < 0 
.head 9 -  Set nSaldoInicialDol = nSaldoInicialDol * -1
.head 8 +  If nSaldoFinalLoc < 0 
.head 9 -  Set nSaldoFinalLoc = nSaldoFinalLoc * -1
.head 8 +  If nSaldoFinalDol < 0 
.head 9 -  Set nSaldoFinalDol = nSaldoFinalDol * -1
.head 8 -  !
.head 8 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S' 
.head 9 +  If nSaldoInicialUnd < 0
.head 10 -  Set nSaldoInicialUnd = nSaldoInicialUnd * -1
.head 9 +  If nSaldoFinalUnd < 0
.head 10 -  Set nSaldoFinalUnd = nSaldoInicialUnd * -1
.head 8 +  Else 
.head 9 -  Set nSaldoInicialUnd =NUMBER_Null
.head 9 -  Set nSaldoFinalUnd = NUMBER_Null 
.head 6 -  ! !
.head 5 -  ! <----------- CASO S2C15888
.head 5 -  !
.head 5 +  ! NBH >> Caso #35150
.head 6 -  ! Se traslada aquí el código que estaba al final de esta función
.head 6 -  ! TAQ >> PROYECTO COLOMBIA
.head 5 -  Set fciBalanceComp.sCuenta = SetCuentaContable( lsCuenta )
.head 5 -  !
.head 5 -  ! Aqui se debe averiguar el nivel de la cuenta contable y concatenarle los espacios en blanco según sea
.head 5 +  If dlgBalanceComprobacion.cbIndentar
.head 6 +  Set nNiveles = fciBalanceComp.CantNivelesSignificativos(fciBalanceComp.sCuenta)
.head 7 -  !
.head 6 -  Set n = 1
.head 6 -  !
.head 6 +  While n < nNiveles
.head 7 -  Set fciBalanceComp.sCuenta = '   ' || fciBalanceComp.sCuenta
.head 7 -  Set n = n + 1
.head 5 -  !
.head 5 +  If NOT cbDetalleMov
.head 6 -  Set sImprimirDetalle = ''
.head 5 -  !
.head 5 -  Return TRUE
.head 3 +  Function: Help
.head 4 -  Description: Función de despliegue de la ayuda sensitiva al contexto.
Si no es redefinida despliega un mensaje indicando que no existe ayuda.
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Call DesplegarAyuda2( hWndForm, CG_HELP, HELP_Context, CGHLP_BALANCECUENTA, '' )
.head 3 +  Function: Destroy 
.head 4 -  Description:
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  ! Liberar los handlers
.head 5 -  Call fciBalanceComp.ReleInstance()
.head 5 -  Call fciBalanceMayorizar.ReleInstance()
.head 5 -  ! liberar lista de cuentas
.head 5 -  Call DestruyaListaSaldos( nLinkList )
.head 5 -  Call SPSDisconnect( hsqlCuenta )
.head 5 -  Call SPSDisconnect( hsqlSaldo )
.head 5 +  ! CASO S2C16265B
.head 6 -  ! ! TEMPORALMENTE
.head 6 -  ! Call SaldosDisconnect()
.head 5 -  !
.head 5 -  ! Caso MX6-03198-THZ9 JEV ---------->
.head 5 -  Call SPSDisconnect( vhsqlSaldoIni )
.head 5 -  Call SPSDisconnect( vhsqlSaldoFin )
.head 5 -  Call SPSDisconnect( vhsqlTotales )
.head 5 -  Set vbConectarCursores = FALSE
.head 5 -  ! <---------- Caso MX6-03198-THZ9 JEV
.head 5 -  !
.head 3 -  !
.head 3 +  Function: GetEndCurrentPerCon
.head 4 -  Description: Devuelve la fecha del  período contable actual para la fecha dada
como parámetro.  Si no existe un período contable, devuelve la fecha
actual.
.head 4 +  Returns
.head 5 -  Date/Time:
.head 4 +  Parameters
.head 5 -  Date/Time: dtPrmFecha
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Date/Time: dtEndCurrentPerCon
.head 5 -  FunctionalVar: fciPC
.head 6 -  Class: fclsUtilPeriodoContable
.head 4 +  Actions
.head 5 -  ! ! CASO S2C19601 ----------->
.head 5 +  If dtPrmFecha = DATETIME_Null
.head 6 -  Set dtPrmFecha = SalDateCurrent ( )
.head 5 -  ! ! Se eliminan las horas minutos y segundos
.head 5 -  Set dtPrmFecha = SalDateConstruct(
			SalDateYear ( dtPrmFecha ),
			SalDateMonth ( dtPrmFecha ),
			SalDateDay ( dtPrmFecha ),
			0, 0, 0 )
.head 5 -  ! <----------- CASO S2C19601D
.head 5 -  Set dtEndCurrentPerCon = dtPrmFecha
.head 5 +  If fciPC.InitInstance ()
.head 6 -  Call fciPC.ProximaFecha (dtPrmFecha, dtEndCurrentPerCon)
.head 6 +  If dtEndCurrentPerCon = DATETIME_Null
.head 7 -  Set dtEndCurrentPerCon = dtPrmFecha
.head 6 -  Call fciPC.ReleInstance ()
.head 5 -  Return dtEndCurrentPerCon
.head 3 +  Function: GetNextDayLastPerCon
.head 4 -  Description: Devuelve la fecha del día siguiente del último período contable para la fecha dada
como parámetro.  Si no existe un período contable anterior, devuelve el primer día
del mes actual.
.head 4 +  Returns
.head 5 -  Date/Time:
.head 4 +  Parameters
.head 5 -  Date/Time: dtPrmFecha
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Date/Time: dtNextDayLastPerCon
.head 5 -  FunctionalVar: fciPC
.head 6 -  Class: fclsUtilPeriodoContable
.head 5 -  !
.head 5 -  ! GHA CASO #26410
.head 5 -  Boolean: lbOk
.head 4 +  Actions
.head 5 -  ! CASO S2C19601D ----------->
.head 5 +  If dtPrmFecha = DATETIME_Null
.head 6 -  Set dtPrmFecha = SalDateCurrent ( )
.head 5 -  ! Se eliminan las horas minutos y segundos
.head 5 -  Set dtPrmFecha = SalDateConstruct(
			SalDateYear ( dtPrmFecha ),
			SalDateMonth ( dtPrmFecha ),
			SalDateDay ( dtPrmFecha ),
			0, 0, 0 )
.head 5 -  ! <----------- CASO S2C19601D
.head 5 -  Set dtNextDayLastPerCon = SalDateMonthBegin (dtPrmFecha)
.head 5 +  If fciPC.InitInstance ()
.head 6 -  !
.head 6 +  ! INICIO GHA CASO #26410
.head 7 -  ! Set dtNextDayLastPerCon = fciPC.FechaInicial (dtPrmFecha)
.head 6 -  Set lbOk= fciPC.FechaInicial (dtPrmFecha, dtNextDayLastPerCon)
.head 6 -  ! FIN GHA CASO #26410
.head 6 -  !
.head 6 +  If dtNextDayLastPerCon = DATETIME_Null
.head 7 -  Set dtNextDayLastPerCon = SalDateMonthBegin (dtPrmFecha)
.head 6 -  Call fciPC.ReleInstance ()
.head 5 -  Return dtNextDayLastPerCon
.head 3 -  !
.head 3 +  ! Function: ShowReport
.head 4 -  Description: Muestra el reporte correspondiente de acuerdo a los par'ametros seleccionados en 
el diálogo
.head 4 +  Returns 
.head 5 -  Boolean: 
.head 4 +  Parameters 
.head 5 -  String: sPrmREP_BalanceVar
.head 5 -  String: sPrmREP_BalanceInp
.head 5 -  !
.head 5 -  String: sPrmTitulo1
.head 5 -  String: sPrmTitulo2
.head 5 -  String: sPrmTitulo3
.head 5 -  String: sPrmTitulo4
.head 4 -  Static Variables 
.head 4 -  Local variables 
.head 4 +  Actions 
.head 5 -  !
.head 5 +  If rbMonAmbas
.head 6 -  ! Se imprime el reporte en dólares y local sin unidades
.head 6 -  Return InitReport(
    '', 'BCLocDol.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,
    sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm)
.head 6 -  ! Return InitReport( sSqlCmdReport, 'BCLocDol.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE, sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm )
.head 5 +  Else 
.head 6 -  ! Cuando el reporte es en solamente una moneda, se pueden imprimir las unidades
.head 6 +  If rbMonLocal
.head 7 -  ! Reporte en Moneda Local con o sin unidades
.head 7 +  If bCompaniaUsaUnidades AND cbImpUnidades
.head 8 -  !
.head 8 -  Return InitReport(
    '', 'BCLocUnd.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,
    sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm)
.head 8 -  ! Return InitReport( sSqlCmdReport, 'BCLocUnd.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
.head 7 +  Else 
.head 8 -  Return InitReport(
    '', 'BCLoc.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,
    sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm)
.head 8 -  ! Return InitReport( sSqlCmdReport, 'BCLoc.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
.head 6 +  Else 
.head 7 -  ! Reprote en Dólares con o sin unidades
.head 7 +  If bCompaniaUsaUnidades AND cbImpUnidades
.head 8 -  Return InitReport(
    '', 'BCDolUnd.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,
    sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm)
.head 8 -  ! Return InitReport( sSqlCmdReport, 'BCDolUnd.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
.head 7 +  Else 
.head 8 -  Return InitReport(
    '', 'BCDol.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,
    sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm)
.head 8 -  ! Return InitReport( sSqlCmdReport, 'BCDol.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
.head 3 -  !
.head 3 +  ! Function: StdReportStart
.head 4 -  Description: Se redefine en la instancia si el usuario desea hacer alguna
operación más en el SAM_ReportStart.
Esta función SOLO se ejecuta una sóla vez, antes de ejecutar el
reporte.
Además en este punto se tienen los datos del primer fetch del
result set ejecutado, el cual se hizo para verificar si existen
líneas en el reporte.
.head 4 -  Returns 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  Boolean: lbBien
.head 5 -  String: lsSqlCmd
.head 5 -  String: lsSqlCmdSelect
.head 5 -  String: lsSqlCmdFrom
.head 5 -  String: lsSqlCmdWhere
.head 5 +  String: sCondicionDeCentros
.head 6 -  ! TAQ -CR1-05560-ZGPT
.head 4 +  Actions 
.head 5 -  ! AEC-->CO5-02789-RB1F se obtienen los parámetros para agregar las firmas contables a los reportes (ruta de imagenes y nombres de firmante).
.head 5 -  Call ObtenerRutasFirmas( sFirmaContador, sFirmaRevisor, sFirmaRepresentante )
.head 5 -  !
.head 5 -  Call ExCryPrmSalReportSetStringVar( hwndFormReporte, 'sFirmaContador', sFirmaContador )
.head 5 -  Call ExCryPrmSalReportSetStringVar( hwndFormReporte, 'sFirmaRevisor', sFirmaRevisor )
.head 5 -  Call ExCryPrmSalReportSetStringVar( hwndFormReporte, 'sFirmaRepresentante', sFirmaRepresentante )
.head 5 -  !
.head 5 -  Call ObtenerNombresFirmas( sNombreContador, sNombreRevisor, sNombreRepresentante )
.head 5 -  !
.head 5 -  Call ExCryPrmSalReportSetStringVar( hwndFormReporte, 'sNombreContador', sNombreContador )
.head 5 -  Call ExCryPrmSalReportSetStringVar( hwndFormReporte, 'sNombreRevisor', sNombreRevisor )
.head 5 -  Call ExCryPrmSalReportSetStringVar( hwndFormReporte,  'sNombreRepresentante', sNombreRepresentante )
.head 5 -  ! AEC<--CO5-02789-RB1F
.head 5 -  !
.head 5 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nImprimirCambioNeto', cbImpCambioNeto )
.head 5 -  !
.head 5 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 6 -  ! Se agrega el indicador de si está activa la opción de NITs.
.head 5 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'gbUsarNITs', gbUsarNITs )
.head 5 -  !
.head 5 -  ! MRL GT_Folio Estados Finanancieros -->
.head 5 -  Call ExCryPrmSalReportSetNumberVar( SalNumberToWindowHandle( wParam ), 'nFolioInicial', dfFolioInicial )
.head 5 -  ! MRL GT_Folio Estados Finanancieros <--
.head 5 -  !
.head 5 +  When SqlError 
.head 6 -  Call SPSDisplayErrorMsg( 'Leyendo Cuentas', 'Error: Función SqlPrepare' )
.head 6 -  Set nErrorReport = 1
.head 6 -  ! Call SalPostMsg( hWndForm, SAM_ReportFinish, 0, 0 )
.head 6 +  If NOT bDebugging
.head 7 -  Return FALSE
.head 5 -  Set lbBien =  SqlPrepare( hsqlCuenta, sSqlCmdReport ) !Preparar comando Sql
.head 5 -  !
.head 5 -  ! Cambios Miguel Gomez - JEV ---------->
.head 5 -  ! Se coenctan los cursores
.head 5 -  !
.head 5 +  ! Caso MX6-03198-THZ9 JEV ---------->
.head 6 +  ! If lbBien
.head 7 +  If bEstaEnTransac
.head 8 -  Set lbBien = SPSConnectTransac( vhsqlSaldoIni )
.head 8 -  !
.head 8 +  If lbBien
.head 9 -  Set lbBien = SPSConnectTransac( vhsqlSaldoFin )
.head 8 -  !
.head 8 +  If lbBien
.head 9 -  Set lbBien = SPSConnectTransac( vhsqlTotales )
.head 7 +  Else 
.head 8 -  Set lbBien = SPSConnect( vhsqlSaldoIni )
.head 8 -  !
.head 8 +  If lbBien
.head 9 -  Set lbBien = SPSConnect( vhsqlSaldoFin )
.head 8 -  !
.head 8 +  If lbBien
.head 9 -  Set lbBien = SPSConnect( vhsqlTotales )
.head 5 +  If lbBien AND NOT vbConectarCursores
.head 6 +  If bEstaEnTransac
.head 7 -  Set lbBien = SPSConnectTransac( vhsqlSaldoIni )
.head 7 -  !
.head 7 +  If lbBien
.head 8 -  Set lbBien = SPSConnectTransac( vhsqlSaldoFin )
.head 7 -  !
.head 7 +  If lbBien
.head 8 -  Set lbBien = SPSConnectTransac( vhsqlTotales )
.head 6 +  Else 
.head 7 -  Set lbBien = SPSConnect( vhsqlSaldoIni )
.head 7 -  !
.head 7 +  If lbBien
.head 8 -  Set lbBien = SPSConnect( vhsqlSaldoFin )
.head 7 -  !
.head 7 +  If lbBien
.head 8 -  Set lbBien = SPSConnect( vhsqlTotales )
.head 6 -  !
.head 6 -  Set vbConectarCursores = lbBien
.head 5 -  ! <---------- Caso MX6-03198-THZ9 JEV
.head 5 -  !
.head 5 -  !
.head 5 -  ! Se realizan las consultas
.head 5 +  If lbBien
.head 6 -  !
.head 6 -  ! Se realiza la sentencia para obtener los saldos
.head 6 +  If lbBien
.head 7 -  Set lsSqlCmdSelect = 'SELECT sum( ' || SQLNullValue ('debito_local','0') || ' - ' || SQLNullValue ('credito_local','0') || ' ),
sum( ' || SQLNullValue ('debito_dolar','0') || ' - ' || SQLNullValue ('credito_dolar','0') || ' ),
sum( ' || SQLNullValue ('debito_unidades','0') || ' - ' || SQLNullValue ('credito_unidades','0') || ' ) '
.head 7 -  !
.head 7 -  Set lsSqlCmdFrom = 'FROM ' || ConcatCompany( 'diario d ') || SQLNoLock( ) || ' , ' || ConcatCompany( 'asiento_de_diario asd') || SQLNoLock( )
.head 7 -  !
.head 7 -  Set lsSqlCmdWhere = 'WHERE asd.asiento = d.asiento
AND d.cuenta_contable like :sCuentaObtenerSaldos AND asd.contabilidad IN ( \'' || sConta || '\', \'' || CONTA_AMBAS || '\' ) '
.head 7 -  !
.head 7 -  ! Determinar la condición para los centros de costo
.head 7 -  Set sCondicionDeCentros = STRING_Null
.head 7 +  If dfCentroCosto
.head 8 -  Set sCondicionDeCentros = 'AND d.centro_costo LIKE  \'' || fciCentroCosto.ChildrenLIKE ( dfCentroCosto ) || '\''
.head 6 -  !
.head 6 -  ! Se inicializa la consulta para saldos iniciales
.head 6 +  If lbBien
.head 7 -  Set lsSqlCmd = lsSqlCmdSelect || '
INTO :lnSaldoIniLoc, :lnSaldoIniDol, :lnSaldoIniUnd
' || lsSqlCmdFrom || '
' || lsSqlCmdWhere || '
and asd.fecha < ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE )
.head 7 -  !
.head 7 +  If sCondicionDeCentros
.head 8 -  Set lsSqlCmd = lsSqlCmd || '
' || sCondicionDeCentros

.head 7 -  ! AEC Bug-->32629 Cuando se marca el check se indica que omita los asientos que están registrados en el cierre
.head 7 +  If cbSaldosAlCierre
.head 8 -  Set lsSqlCmd = lsSqlCmd || " AND ASD.ASIENTO NOT IN ( 
					        SELECT	asiento 
					        FROM " 	|| ConcatCompany ('HIST_CIERRE_CG ' )  || ") "
.head 7 -  ! AEC Bug-->32629
.head 7 -  !
.head 7 +  When SqlError 
.head 8 -  Set lbBien = FALSE
.head 8 -  Call SPSDisplayErrorMsg( 'Error consultando movimientos del diario', 'Error: Función ObtenerSaldosDiario' )
.head 8 +  If NOT bDebugging
.head 9 -  Return FALSE
.head 7 -  Set lbBien = SqlPrepare( vhsqlSaldoIni, lsSqlCmd )
.head 7 -  !
.head 6 -  !
.head 6 -  ! Se inicializa la consulta para saldos Finales
.head 6 +  If lbBien
.head 7 -  Set lsSqlCmd = lsSqlCmdSelect || '
INTO :lnSaldoFinLoc, :lnSaldoFinDol, :lnSaldoFinUnd
' || lsSqlCmdFrom || '
' || lsSqlCmdWhere || '
and asd.fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE )
.head 7 -  !
.head 7 +  If sCondicionDeCentros
.head 8 -  Set lsSqlCmd = lsSqlCmd || '
' || sCondicionDeCentros

.head 7 -  !
.head 7 -  ! AEC Bug-->32629 Cuando se marca el check se indica que omita los asientos que están registrados en el cierre
.head 7 +  If cbSaldosAlCierre
.head 8 -  Set lsSqlCmd = lsSqlCmd || " AND ASD.ASIENTO NOT IN ( 
					        SELECT	asiento 
					        FROM " 	|| ConcatCompany ('HIST_CIERRE_CG ' )  || ") "
.head 7 -  ! AEC Bug-->32629
.head 7 -  !
.head 7 +  When SqlError 
.head 8 -  Set lbBien = FALSE
.head 8 -  Call SPSDisplayErrorMsg( 'Error consultando movimientos del diario', 'Error: Función ObtenerSaldosDiario' )
.head 8 +  If NOT bDebugging
.head 9 -  Return FALSE
.head 7 -  Set lbBien = SqlPrepare( vhsqlSaldoFin, lsSqlCmd )
.head 7 -  !
.head 6 -  !
.head 6 -  ! Se inicializa la consulta para los totales
.head 6 +  If lbBien
.head 7 -  Set lsSqlCmd = 'SELECT sum( ' || SQLNullValue ('debito_local','0') || '),
	sum( ' || SQLNullValue ('credito_local','0') || ' ),
	sum( ' || SQLNullValue ('debito_dolar','0') || ' ),
	sum( ' || SQLNullValue ('credito_dolar','0') || ' ),
	sum( ' || SQLNullValue ('debito_unidades','0') || ' ),
	sum( ' || SQLNullValue ('credito_unidades','0') || ' )
INTO :lnTotalDebitosLocal, :lnTotalCreditosLocal, :lnTotalDebitosDolar, :lnTotalCreditosDolar, :lnTotalDebitosUnd, :lnTotalCreditosUnd
' || lsSqlCmdFrom || '
' || lsSqlCmdWhere || '
and asd.fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || '
and asd.fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE )
.head 7 -  !
.head 7 +  If sCondicionDeCentros
.head 8 -  Set lsSqlCmd = lsSqlCmd || '
' || sCondicionDeCentros

.head 7 -  !
.head 7 -  ! AEC Bug-->32629 Cuando se marca el check se indica que omita los asientos que están registrados en el cierre
.head 7 +  If cbSaldosAlCierre
.head 8 -  Set lsSqlCmd = lsSqlCmd || " AND ASD.ASIENTO NOT IN ( 
					        SELECT	asiento 
					        FROM " 	|| ConcatCompany ('HIST_CIERRE_CG ' )  || ") "
.head 7 -  ! AEC Bug-->32629
.head 7 -  !
.head 7 +  When SqlError 
.head 8 -  Set lbBien = FALSE
.head 8 -  Call SPSDisplayErrorMsg( 'Error consultando movimientos del diario', 'Error: Función ObtenerSaldosDiario' )
.head 8 +  If NOT bDebugging
.head 9 -  Return FALSE
.head 7 -  Set lbBien = SqlPrepare( vhsqlTotales, lsSqlCmd )
.head 7 -  !
.head 5 -  ! <---------- Cambios Miguel Gomez - JEV
.head 5 -  !
.head 3 +  Function: StdReportFetchInit
.head 4 -  Description: Se redefine en la instancia si el usuario desea hacer alguna
operación más en el SAM_ReportInit.
En esta función deben ser inicializadas las variables utilizadas
en acumuladores y no en el SAM_ReportStart, ya que Report
Windows ejecuta el SAM_ReportStart sólo una vez, si el reporte
se hace a pantalla y después se trata de imprimir, no envia
nuevamente ese mensaje.
Además en este punto se tienen los datos del primer fetch del
result set ejecutado, el cual se hizo para verificar si existen
líneas en el reporte.
.head 4 -  Returns
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 +  If nErrorReport = 1
.head 6 -  Return TRUE
.head 5 +  When SqlError
.head 6 -  Call SPSDisplayErrorMsg( 'Report Fetch Init', 'Error: Función SqlExecute' )
.head 6 -  Set nErrorReport = 1
.head 6 -  ! Call SalPostMsg( hWndForm, SAM_ReportFinish, 0, 0 )
.head 6 +  If NOT bDebugging
.head 7 -  Return FALSE
.head 5 +  If NOT SqlExecute( hsqlCuenta )
.head 6 -  Return FALSE
.head 5 +  Else
.head 6 -  Call InitVariables() ! Inicializar variables del reporte
.head 6 -  Return TRUE
.head 3 +  ! Function: StdReportFetchNext
.head 4 -  Description: Se redefine en la instancia si el usuario desea hacer alguna
operacion mas en el SAM_ReportNext
.head 4 -  Returns 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 -  Local variables 
.head 4 +  Actions 
.head 5 +  When SqlError 
.head 6 -  Call SPSDisplayErrorMsg( 'Leyendo Cuentas', 'Error: Función SqlFetchNext' )
.head 6 +  If NOT bDebugging
.head 7 -  Set bFinalizarReporte = TRUE
.head 7 -  Return FALSE
.head 5 +  If SqlFetchNext( hsqlCuenta, nFetch )
.head 6 +  If nFetch = FETCH_Ok
.head 7 -  Return ConstruyeLineaReporte( )
.head 5 -  Set bFinalizarReporte = TRUE
.head 5 -  Return FALSE
.head 3 +  ! Function: StdReportNotify
.head 4 -  Description: Se redefine en la instancia si el usuario desea hacer alguna
operacion mas en el SAM_ReportNotify
.head 4 -  Returns 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 -  Local variables 
.head 4 +  Actions 
.head 5 +  ! If lParam = RPT_BeforeReportHeader
.head 6 -  ! Setear la variable que indica si seimprime columna de cambio neto
.head 6 -  Call SalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nImprimirCambioNeto', cbImpCambioNeto )
.head 5 +  If lParam = RPT_BeforeReportFooter
.head 6 -  ! Setear variable con el total de cuentas que se imprimen
.head 6 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nTotalCuentas', nTotalCuentas )
.head 6 -  !
.head 6 -  ! Setear totales de debitos y creditos
.head 6 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalDebitosLoc', nRepTotalDebitosLoc )
.head 6 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalDebitosDol', nRepTotalDebitosDol )
.head 6 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalCreditosLoc', nRepTotalCreditosLoc )
.head 6 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalCreditosDol', nRepTotalCreditosDol )
.head 6 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoInicialLoc', nRepTotalSaldoInicialLoc )
.head 6 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoInicialDol', nRepTotalSaldoInicialDol )
.head 6 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoFinalLoc', nRepTotalSaldoFinalLoc )
.head 6 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoFinalDol', nRepTotalSaldoFinalDol )
.head 6 -  !
.head 6 -  ! Verificar si la compañia y la cuenta en cuestion usan unidades para calcular el saldo y si el usuario lo desea
.head 6 +  If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 7 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalDebitosUnd', nRepTotalDebitosUnd )
.head 7 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalCreditosUnd', nRepTotalCreditosUnd )
.head 7 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoInicialUnd', nRepTotalSaldoInicialUnd )
.head 7 -  Call ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoFinalUnd', nRepTotalSaldoFinalUnd )
.head 3 -  !
.head 3 -  ! TAQ > Mejoras RD R4
.head 3 +  Function: ObtenerSaldosDiario
.head 4 -  Description: 
select sum(isnull(debito_local, 0) - isnull(credito_local, 0)), sum(isnull(debito_dolar, 0) - isnull(credito_dolar, 0)), SUM(isnull(debito_unidades, 0) - isnull(credito_unidades,0))
from demo.DIARIO d, demo.ASIENTO_DE_DIARIO asd
where asd.ASIENTO = d.ASIENTO
and CUENTA_CONTABLE like 'fciBalanceComp.CodigoHastaNivelSignificativo( ) || %'
and asd.FECHA < dfFechaInicial

select sum(isnull(debito_local, 0) - isnull(credito_local, 0)), sum(isnull(debito_dolar, 0) - isnull(credito_dolar, 0)), SUM(isnull(debito_unidades, 0) - isnull(credito_unidades,0))
from demo.DIARIO d, demo.ASIENTO_DE_DIARIO asd
where asd.ASIENTO = d.ASIENTO
and CUENTA_CONTABLE like 'fciBalanceComp.CodigoHastaNivelSignificativo( ) || %'
and asd.FECHA <= dfFechaFinal

select sum(isnull(debito_local, 0)) , SUM(isnull(credito_local, 0)), sum(isnull(debito_dolar, 0) ) , SUM isnull(credito_dolar, 0))
from demo.DIARIO d, demo.ASIENTO_DE_DIARIO asd
where asd.ASIENTO = d.ASIENTO
and CUENTA_CONTABLE like 'fciBalanceComp.CodigoHastaNivelSignificativo( ) || %'
and asd.FECHA >= dfFechaInicial
and asd.FECHA <= dfFechaFinal
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Receive Number: nPrmSaldoIniLoc
.head 5 -  Receive Number: nPrmSaldoFinLoc
.head 5 -  Receive Number: nPrmSaldoIniDol
.head 5 -  Receive Number: nPrmSaldoFinDol
.head 5 -  Receive Number: nPrmSaldoIniUnd
.head 5 -  Receive Number: nPrmSaldoFinUnd
.head 5 -  Receive Number: nPrmTotalDebitosLocal
.head 5 -  Receive Number: nPrmTotalCreditosLocal
.head 5 -  Receive Number: nPrmTotalDebitosDolar
.head 5 -  Receive Number: nPrmTotalCreditosDolar
.head 5 -  Receive Number: nPrmTotalDebitosUnd
.head 5 -  Receive Number: nPrmTotalCreditosUnd
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbOk
.head 5 -  ! String: lsSqlCmd
.head 5 -  ! String: lsSqlCmdSelect
.head 5 -  ! String: lsSqlCmdFrom
.head 5 -  ! String: lsSqlCmdWhere
.head 5 -  Number: lnInd
.head 5 -  Number: lnSaldoIniLoc
.head 5 -  Number: lnSaldoFinLoc
.head 5 -  Number: lnSaldoIniDol
.head 5 -  Number: lnSaldoFinDol
.head 5 -  Number: lnSaldoIniUnd
.head 5 -  Number: lnSaldoFinUnd
.head 5 -  Number: lnTotalDebitosLocal
.head 5 -  Number: lnTotalCreditosLocal
.head 5 -  Number: lnTotalDebitosDolar
.head 5 -  Number: lnTotalCreditosDolar
.head 5 -  Number: lnTotalDebitosUnd
.head 5 -  Number: lnTotalCreditosUnd
.head 5 +  ! String: sCondicionDeCentros
.head 6 -  ! TAQ -CR1-05560-ZGPT
.head 5 -  String: lsCodigoHastaNivelSig
.head 4 +  Actions
.head 5 -  Set lbOk = TRUE
.head 5 -  !
.head 5 +  ! Caso CR7-27337-CFS1 JEV ---------->
.head 6 -  ! Set lsCodigoHastaNivelSig = fciBalanceComp.CodigoHastaNivelSignificativo( ) || '%'
.head 5 -  Set lsCodigoHastaNivelSig = fciBalanceComp.CodigoHastaNivelSignificativo( )
.head 5 -  !
.head 5 +  If SalStrLength( lsCodigoHastaNivelSig ) < 25
.head 6 -  Set lsCodigoHastaNivelSig = lsCodigoHastaNivelSig || '%'
.head 5 -  ! <---------- Caso CR7-27337-CFS1 JEV
.head 5 -  !
.head 5 +  If NOT ( sCuentaObtenerSaldos = lsCodigoHastaNivelSig )
.head 6 -  !
.head 6 -  Set sCuentaObtenerSaldos = lsCodigoHastaNivelSig
.head 6 -  !
.head 6 -  ! Se obtiene el saldo inicial
.head 6 +  If lbOk
.head 7 +  !
.head 8 -  ! Set lsSqlCmd = lsSqlCmdSelect || '
INTO :lnSaldoIniLoc, :lnSaldoIniDol, :lnSaldoIniUnd
' || lsSqlCmdFrom || '
' || lsSqlCmdWhere || '
and asd.fecha < ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE )
.head 8 -  !
.head 8 -  ! TAQ > CR1-05560-ZGPT
.head 8 +  ! If sCondicionDeCentros
.head 9 -  Set lsSqlCmd = lsSqlCmd || '
' || sCondicionDeCentros

.head 8 -  ! TAQ < CR1-05560-ZGPT
.head 7 -  !
.head 7 +  When SqlError
.head 8 -  Set lbOk = FALSE
.head 8 -  Call SPSDisplayErrorMsg( 'Error consultando movimientos del diario', 'Error: Función ObtenerSaldosDiario' )
.head 8 +  If NOT bDebugging
.head 9 -  Return FALSE
.head 7 -  Set lbOk = SqlExecute( vhsqlSaldoIni )
.head 7 -  !
.head 7 +  If lbOk
.head 8 +  When SqlError
.head 9 -  Set lbOk = FALSE
.head 9 -  Call SPSDisplayErrorMsg( 'Error obteniendo el movimiento del diario', 'Error: Función ObtenerSaldosDiario' )
.head 9 +  If NOT bDebugging
.head 10 -  Return FALSE
.head 8 -  Call SqlFetchNext( vhsqlSaldoIni, lnInd )
.head 7 -  !
.head 7 -  ! Se aumentan los saldos iniciales
.head 7 +  If lbOk
.head 8 -  Set nPrmSaldoIniLoc = nPrmSaldoIniLoc + lnSaldoIniLoc
.head 8 -  Set nPrmSaldoIniDol = nPrmSaldoIniDol + lnSaldoIniDol
.head 8 -  Set nPrmSaldoIniUnd = nPrmSaldoIniUnd + lnSaldoIniUnd
.head 6 -  !
.head 6 -  ! Se obtiene el saldo final
.head 6 +  If lbOk
.head 7 +  !
.head 8 -  ! Set lsSqlCmd = lsSqlCmdSelect || '
INTO :lnSaldoFinLoc, :lnSaldoFinDol, :lnSaldoFinUnd
' || lsSqlCmdFrom || '
' || lsSqlCmdWhere || '
and asd.fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE )
.head 8 -  !
.head 8 -  ! TAQ > CR1-05560-ZGPT
.head 8 +  ! If sCondicionDeCentros
.head 9 -  Set lsSqlCmd = lsSqlCmd || '
' || sCondicionDeCentros

.head 8 -  ! TAQ < CR1-05560-ZGPT
.head 7 -  Set lnInd = 0
.head 7 -  !
.head 7 +  When SqlError
.head 8 -  Set lbOk = FALSE
.head 8 -  Call SPSDisplayErrorMsg( 'Error consultando movimientos del diario', 'Error: Función ObtenerSaldosDiario' )
.head 8 +  If NOT bDebugging
.head 9 -  Return FALSE
.head 7 -  Set lbOk = SqlExecute( vhsqlSaldoFin )
.head 7 -  !
.head 7 +  If lbOk
.head 8 +  When SqlError
.head 9 -  Set lbOk = FALSE
.head 9 -  Call SPSDisplayErrorMsg( 'Error obteniendo el movimiento del diario', 'Error: Función ObtenerSaldosDiario' )
.head 9 +  If NOT bDebugging
.head 10 -  Return FALSE
.head 8 -  Call SqlFetchNext( vhsqlSaldoFin, lnInd )
.head 7 -  !
.head 7 -  ! Se aumentan los saldos finales
.head 7 +  If lbOk
.head 8 -  Set nPrmSaldoFinLoc = nPrmSaldoFinLoc + lnSaldoFinLoc
.head 8 -  Set nPrmSaldoFinDol = nPrmSaldoFinDol + lnSaldoFinDol
.head 8 -  Set nPrmSaldoFinUnd = nPrmSaldoFinUnd + lnSaldoFinUnd
.head 6 -  !
.head 6 -  ! Se obtienen los totales de credito y débitos
.head 6 +  If lbOk
.head 7 -  Set lnInd = 0
.head 7 +  !
.head 8 -  ! Set lsSqlCmd = 'SELECT sum( ' || SQLNullValue ('debito_local','0') || '),
	sum( ' || SQLNullValue ('credito_local','0') || ' ),
	sum( ' || SQLNullValue ('debito_dolar','0') || ' ),
	sum( ' || SQLNullValue ('credito_dolar','0') || ' ),
	sum( ' || SQLNullValue ('debito_unidades','0') || ' ),
	sum( ' || SQLNullValue ('credito_unidades','0') || ' )
INTO :lnTotalDebitosLocal, :lnTotalCreditosLocal, :lnTotalDebitosDolar, :lnTotalCreditosDolar, :lnTotalDebitosUnd, :lnTotalCreditosUnd
' || lsSqlCmdFrom || '
' || lsSqlCmdWhere || '
and asd.fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || '
and asd.fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE )
.head 8 -  !
.head 8 -  ! TAQ > CR1-05560-ZGPT
.head 8 +  ! If sCondicionDeCentros
.head 9 -  Set lsSqlCmd = lsSqlCmd || '
' || sCondicionDeCentros

.head 8 -  ! TAQ < CR1-05560-ZGPT
.head 7 -  !
.head 7 +  When SqlError
.head 8 -  Set lbOk = FALSE
.head 8 -  Call SPSDisplayErrorMsg( 'Error consultando movimientos del diario', 'Error: Función ObtenerSaldosDiario' )
.head 8 +  If NOT bDebugging
.head 9 -  Return FALSE
.head 7 -  Set lbOk = SqlExecute( vhsqlTotales )
.head 7 -  !
.head 7 -  ! Se cargan las variables
.head 7 +  If lbOk
.head 8 +  When SqlError
.head 9 -  Set lbOk = FALSE
.head 9 -  Call SPSDisplayErrorMsg( 'Error obteniendo el movimiento del diario', 'Error: Función ObtenerSaldosDiario' )
.head 9 +  If NOT bDebugging
.head 10 -  Return FALSE
.head 8 -  Call SqlFetchNext( vhsqlTotales, lnInd )
.head 7 -  !
.head 7 -  ! Se aumentan los créditos y débitos
.head 7 +  If lbOk
.head 8 -  Set nPrmTotalDebitosLocal = nPrmTotalDebitosLocal + lnTotalDebitosLocal
.head 8 -  Set nPrmTotalCreditosLocal = nPrmTotalCreditosLocal + lnTotalCreditosLocal
.head 8 -  Set nPrmTotalDebitosDolar = nPrmTotalDebitosDolar + lnTotalDebitosDolar
.head 8 -  Set nPrmTotalCreditosDolar = nPrmTotalCreditosDolar + lnTotalCreditosDolar
.head 8 -  Set nPrmTotalDebitosUnd = nPrmTotalDebitosUnd + lnTotalDebitosUnd
.head 8 -  Set nPrmTotalCreditosUnd = nPrmTotalCreditosUnd + lnTotalCreditosUnd
.head 6 -  !
.head 6 -  ! Caso MX7-03204-M383 JEV ---------->
.head 6 -  Set vnSaldoIniLoc = nPrmSaldoIniLoc
.head 6 -  Set vnSaldoFinLoc = nPrmSaldoFinLoc
.head 6 -  Set vnSaldoIniDol = nPrmSaldoIniDol
.head 6 -  Set vnSaldoFinDol = nPrmSaldoFinDol
.head 6 -  Set vnSaldoIniUnd = nPrmSaldoIniUnd
.head 6 -  Set vnSaldoFinUnd = nPrmSaldoFinUnd
.head 6 -  Set vnTotalDebitosLocal = nPrmTotalDebitosLocal
.head 6 -  Set vnTotalCreditosLocal = nPrmTotalCreditosLocal
.head 6 -  Set vnTotalDebitosDolar = nPrmTotalDebitosDolar
.head 6 -  Set vnTotalCreditosDolar = nPrmTotalCreditosDolar
.head 6 -  Set vnTotalDebitosUnd = nPrmTotalDebitosUnd
.head 6 -  Set vnTotalCreditosUnd = nPrmTotalCreditosUnd
.head 6 -  ! <---------- Caso MX7-03204-M383 JEV
.head 6 -  !
.head 5 -  !
.head 5 -  ! Caso MX7-03204-M383 JEV ---------->
.head 5 +  Else
.head 6 -  Set nPrmSaldoIniLoc = vnSaldoIniLoc
.head 6 -  Set nPrmSaldoFinLoc = vnSaldoFinLoc
.head 6 -  Set nPrmSaldoIniDol = vnSaldoIniDol
.head 6 -  Set nPrmSaldoFinDol = vnSaldoFinDol
.head 6 -  Set nPrmSaldoIniUnd = vnSaldoIniUnd
.head 6 -  Set nPrmSaldoFinUnd = vnSaldoFinUnd
.head 6 -  Set nPrmTotalDebitosLocal = vnTotalDebitosLocal
.head 6 -  Set nPrmTotalCreditosLocal = vnTotalCreditosLocal
.head 6 -  Set nPrmTotalDebitosDolar = vnTotalDebitosDolar
.head 6 -  Set nPrmTotalCreditosDolar = vnTotalCreditosDolar
.head 6 -  Set nPrmTotalDebitosUnd = vnTotalDebitosUnd
.head 6 -  Set nPrmTotalCreditosUnd = vnTotalCreditosUnd
.head 5 -  ! <---------- Caso MX7-03204-M383 JEV
.head 5 -  !
.head 5 -  !
.head 5 -  Return lbOk
.head 3 -  ! TAQ < Mejoras RD R4
.head 3 +  Function: InicializarCGBridge
.head 4 -  Description: Inicializa el brige de CG
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 -  Parameters
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Boolean: lbComResult
.head 5 -  Number: lnServer
.head 4 +  Actions
.head 5 +  If ( ComCGBridge.Create(  ))
.head 6 +  If ERPTipoServidor = 0
.head 7 -  Set lnServer = 1
.head 6 +  Else
.head 7 -  Set lnServer = 0
.head 6 -  !
.head 6 -  Call ComCGBridge.InitConexion(	lnServer,
			             	ERPServidor, ERPNombreBaseDatos,
				sSPSCompania,sSPSUser,
				sSPSPassword , lbComResult)
.head 5 -  Return lbComResult
.head 3 +  Function: ObtenerRutasFirmas
.head 4 -  Description: Se obtiene la ruta de las firmas (imagenes) para los estados financieros.
.head 4 -  Returns
.head 4 +  Parameters
.head 5 -  Receive String: psFirmaContador
.head 5 -  Receive String: psFirmaRevisor
.head 5 -  Receive String: psFirmaRepresentante
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  String: lsRutaTemporal
.head 4 +  Actions
.head 5 -  Call ComCGBridge.rutaTemporalUsuario (lsRutaTemporal) 
.head 5 -  Set psFirmaContador = lsRutaTemporal || "\\contador_" || sSPSCompania|| ".Jpeg"
.head 5 -  Set psFirmaRevisor = lsRutaTemporal || "\\revisor_" || sSPSCompania|| ".Jpeg"
.head 5 -  Set psFirmaRepresentante = lsRutaTemporal || "\\representante_" || sSPSCompania|| ".Jpeg"
.head 3 +  Function: ObtenerNombresFirmas
.head 4 -  Description: Se obtienen los nombre de los firmantes de los reportes contables (contador, revisor y representante)
.head 4 +  Returns
.head 5 -  Boolean:
.head 4 +  Parameters
.head 5 -  Receive String: psFirmaContador
.head 5 -  Receive String: psFirmaRevisor
.head 5 -  Receive String: psFirmaRepresentante
.head 4 -  Static Variables
.head 4 +  Local variables
.head 5 -  Sql Handle: hsqlCursor
.head 5 -  Boolean: lbOk
.head 5 -  Number: lnInd
.head 5 -  String: lsSqlCmd
.head 4 +  Actions
.head 5 -  !
.head 5 -  Call SPSConnect( hsqlCursor )
.head 5 -  !
.head 5 -  Set lsSqlCmd = '
SELECT	nombre_contador, nombre_revisor, nombre_representante
FROM 	' || ConcatCompany ( 'globales_cg' ) || '
INTO 	:psFirmaContador,
	:psFirmaRevisor,
	:psFirmaRepresentante'
.head 5 -  !
.head 5 +  When SqlError
.head 6 -  Call SPSDisplayErrorMsg(
'Balance de Comprobacion - Error leyendo los nombres para las firmas de los reportes contables.',
'GLOBALES_CG' )
.head 6 +  If NOT bDebugging
.head 7 -  Return FALSE
.head 5 -  Set lbOk = SqlPrepareAndExecute( hsqlCursor, lsSqlCmd )
.head 5 -  !
.head 5 +  If lbOk
.head 6 -  Set lbOk = SqlFetchNext( hsqlCursor, lnInd )
.head 5 -  !
.head 5 -  Call SPSDisconnect( hsqlCursor )
.head 5 -  !
.head 5 -  Return lbOk
.head 3 -  ! !
.head 3 -  ! ! MRL GT_Folio Estados Financieros -->
.head 3 +  Function: ValidarEntrada
.head 4 -  Description: Mediante esta función se valida que los datos indicados por el usuario
para crear el reporte son válidos.
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
.head 5 +  If lbOk AND ( dfFolioInicial = 0 OR dfFolioInicial = NUMBER_Null ) AND fciGlobalesSPS.Pais() = GUATEMALA
.head 6 -  Call SPSMessageBox(
'Debe ingresar el Folio Inicial a imprimir en el reporte.',
'Reporte de Libro Mayor',
MBF_IconExclamation, CONTINUAR )
.head 6 -  Call SalSetFocus( dfFolioInicial )
.head 6 -  Set lbOk = FALSE
.head 5 -  !
.head 5 -  Return lbOk
.head 3 -  ! ! MRL GT_Folio Estados Financieros <--
.head 3 -  ! JAL Proyecto Mejora Balance Comp Excel 2026 ------>
.head 3 +  Function: ImprimirReporte
.head 4 -  Description:
.head 4 -  Returns
.head 4 +  Parameters
.head 5 -  Boolean: bFiltro
.head 4 -  Static Variables
.head 4 -  Local variables
.head 4 +  Actions
.head 5 -  Call AddParamStr(  'dfCentroCosto', dfCentroCosto )
.head 5 -  Call AddParamBool( 'cbImpUnidades', cbImpUnidades  )
.head 5 -  Call AddParamDate( 'dfFechaInicial', dfFechaInicial )
.head 5 -  Call AddParamDate( 'dfFechaFinal', dfFechaFinal )
.head 5 -  Call AddParamBool( 'rbMonLocal', rbMonLocal  )
.head 5 -  Call AddParamBool( 'rbMonAmbas', rbMonAmbas  )
.head 5 -  Call AddParamStr(  'dfCuentaInicial', dfCuentaInicial )
.head 5 -  Call AddParamStr(  'dfCuentaFinal', dfCuentaFinal )
.head 5 -  Call AddParamBool( 'cbImpCambioNeto', cbImpCambioNeto  )
.head 5 -  Call AddParamBool( 'cbSaldosAlCierre', cbSaldosAlCierre  )
.head 5 -  Call AddParamBool( 'cbAsientosDiario', cbAsientosDiario  )
.head 5 -  Call AddParamBool( 'cbSoloCtaMayor', cbSoloCtaMayor  )
.head 5 -  Call AddParamBool( 'cbDetalleMov', cbDetalleMov  )
.head 5 -  Call AddParamBool( 'cbImpUnidades', cbImpUnidades  )
.head 5 -  Call AddParamBool( 'cbIndentar', cbIndentar  )
.head 5 -  Call AddParamBool( 'rbContaFiscal', rbContaFiscal  )
.head 5 -  Call AddParamNum( 'dfCantNiveles', dfCantNiveles  )
.head 5 -  Call AddParamBool( 'rbSinMovTodas', rbSinMovTodas  )
.head 5 -  Call AddParamBool( 'rbSinMovSaldos', rbSinMovSaldos  )
.head 5 -  Call AddParamBool( 'rbSinMovNo', rbSinMovNo  )
.head 5 -  Call AddParamBool( 'rbMonDolares', rbMonDolares  )
.head 5 -  Call AddParamBool( 'rbMonDolares', rbMonDolares  )
.head 5 -  Call AddParamBool( 'cbImpExcel', cbImpExcel  )
.head 5 -  !
.head 5 -  Call ExecuteReport( 'Softland.ERP.CG.Reports.v701', 'BalanceComprobacion', bFiltro )
.head 3 -  ! JAL Proyecto Mejora Balance Comp Excel 2026 <------
.head 2 -  Window Parameters
.head 2 +  Window Variables
.head 3 -  !
.head 3 -  String: sSQLObtenerSaldos
.head 3 -  String: sCuentaObtenerSaldos
.head 3 -  Sql Handle: vhsqlSaldoIni
.head 3 -  Sql Handle: vhsqlSaldoFin
.head 3 -  Sql Handle: vhsqlTotales
.head 3 -  ! INPUT ITEMS PARA EL REPORTE
.head 3 -  !
.head 3 -  ! La cuenta y descripción se toman del fciBalanceComp
.head 3 -  !
.head 3 -  Number: nSaldoInicialLoc
.head 3 -  Number: nSaldoInicialDol
.head 3 -  Number: nSaldoInicialUnd
.head 3 -  !
.head 3 -  Number: nSaldoFinalLoc
.head 3 -  Number: nSaldoFinalDol
.head 3 -  Number: nSaldoFinalUnd
.head 3 -  !
.head 3 -  Number: nTotalDebitosLoc
.head 3 -  Number: nTotalDebitosDol
.head 3 -  Number: nTotalDebitosUnd
.head 3 -  !
.head 3 -  Number: nTotalCreditosLoc
.head 3 -  Number: nTotalCreditosDol
.head 3 -  Number: nTotalCreditosUnd
.head 3 -  !
.head 3 -  Number: nCambioNetoLoc
.head 3 -  Number: nCambioNetoDol
.head 3 -  Number: nCambioNetoUnd
.head 3 -  !
.head 3 -  String: sCentroCosto
.head 3 -  String: sDescripcionCentro
.head 3 -  String: sAsiento
.head 3 -  Date/Time: dtFecha
.head 3 -  String: sReferencia
.head 3 -  String: sFuente
.head 3 -  String: sTipoAsiento
.head 3 -  String: sOrigen
.head 3 -  !
.head 3 -  Number: nDebitosLoc
.head 3 -  Number: nDebitosDol
.head 3 -  Number: nDebitosUnd
.head 3 -  !
.head 3 -  Number: nCreditosLoc
.head 3 -  Number: nCreditosDol
.head 3 -  Number: nCreditosUnd
.head 3 -  !
.head 3 -  String: sImprimirCuenta
.head 3 -  String: sImprimirDetalle
.head 3 -  !
.head 3 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 4 -  ! Se agrega la variable para los NITs.
.head 3 -  String: vsNit
.head 3 -  !
.head 3 -  ! Hasta aqui los input item para el reporte
.head 3 -  !
.head 3 -  !
.head 3 -  String: sConta
.head 3 -  String: sMoneda
.head 3 -  String: sMontoMayor
.head 3 -  String: sCurCuenta
.head 3 -  String: sCurCuentaPadre
.head 3 -  Number: nTotalCuentas
.head 3 -  !
.head 3 -  Number: nRepTotalCreditosLoc
.head 3 -  Number: nRepTotalCreditosDol
.head 3 -  Number: nRepTotalDebitosLoc
.head 3 -  Number: nRepTotalDebitosDol
.head 3 -  Number: nRepTotalSaldoInicialLoc
.head 3 -  Number: nRepTotalSaldoInicialDol
.head 3 -  Number: nRepTotalSaldoFinalLoc
.head 3 -  Number: nRepTotalSaldoFinalDol
.head 3 -  Number: nRepTotalCreditosUnd
.head 3 -  Number: nRepTotalDebitosUnd
.head 3 -  Number: nRepTotalSaldoInicialUnd
.head 3 -  Number: nRepTotalSaldoFinalUnd
.head 3 -  !
.head 3 -  Number: nErrorReport
.head 3 -  Number: nFetch
.head 3 -  Number: nLinkList
.head 3 -  FunctionalVar: fciBalanceComp
.head 4 -  Class: fclsTablaCuentaContable
.head 3 -  Sql Handle: hsqlCuenta
.head 3 -  Sql Handle: hsqlSaldo
.head 3 -  Window Handle: hwndFormReporte
.head 3 -  String: sSqlCmdReport
.head 3 -  String: sCuentaProcesando
.head 3 -  !
.head 3 +  Boolean: bIndentarReporte
.head 4 -  ! Indica si se deben indentar las cuentas contables dentro del reporte
.head 3 -  !
.head 3 -  FunctionalVar: fciBalanceMayorizar
.head 4 -  Class: fclsBloqueoMayorizacion
.head 3 -  FunctionalVar: fciCentroCosto
.head 4 -  Class: fclsBaseCentroCosto
.head 3 -  ! ! GCE S2C13260b 22/07/2003
.head 3 +  String: sUsaUnidades
.head 4 -  ! Para el manejo de unidades
.head 3 -  !
.head 3 -  ! ! EHG Beta II CG
.head 3 -  String: sTipoCta
.head 3 -  String: sTipoDetalladoCta
.head 3 -  ComProxyVar: ComCGBridge
.head 4 -  Class: CGBridge
.head 3 -  String: sFirmaContador
.head 3 -  String: sFirmaRevisor
.head 3 -  String: sFirmaRepresentante
.head 3 -  String: sNombreContador
.head 3 -  String: sNombreRepresentante
.head 3 -  String: sNombreRevisor
.head 3 -  !
.head 3 -  !
.head 3 -  ! Caso MX6-03198-THZ9 JEV ---------->
.head 3 -  Boolean: vbConectarCursores
.head 3 -  ! <---------- Caso MX6-03198-THZ9 JEV
.head 3 -  !
.head 3 -  ! Caso MX7-03204-M383 JEV ---------->
.head 3 -  Number: vnSaldoIniLoc
.head 3 -  Number: vnSaldoFinLoc
.head 3 -  Number: vnSaldoIniDol
.head 3 -  Number: vnSaldoFinDol
.head 3 -  Number: vnSaldoIniUnd
.head 3 -  Number: vnSaldoFinUnd
.head 3 -  Number: vnTotalDebitosLocal
.head 3 -  Number: vnTotalCreditosLocal
.head 3 -  Number: vnTotalDebitosDolar
.head 3 -  Number: vnTotalCreditosDolar
.head 3 -  Number: vnTotalDebitosUnd
.head 3 -  Number: vnTotalCreditosUnd
.head 3 -  ! <---------- Caso MX7-03204-M383 JEV
.head 3 -  !
.head 3 -  !
.head 3 -  ! MRL GT_Folio Estados Financieros -->
.head 3 -  Window Handle: hWndGroupBox
.head 3 -  ! MRL GT_Folio Estados Financieros <--
.head 2 +  Message Actions
.head 3 -  ! NBH >> INICIO REVISIÓN EN CG 6.00
.head 3 -  ! Se cambia SAM_CreateComplete por AM_CreateComplete.
.head 3 +  On AM_Create
.head 4 +  If ( SPSConnect( hsqlCuenta )  AND SPSConnect( hsqlSaldo ) AND 
   fciBalanceComp.InitInstance() AND fciBalanceMayorizar.InitInstance() )
.head 5 -  Call SalCenterWindow( hWndForm )
.head 5 +  If NOT bDobleMoneda
.head 6 -  Call HideText( 'Moneda', 'G' )
.head 5 +  If NOT bDobleContabilidad
.head 6 -  Call HideText( 'Contabilidad', 'G' )
.head 5 -  !
.head 5 -  ! TAQ >> PROYECTO COLOMBIA
.head 5 +  If fciGlobalesSPS.Pais() = COLOMBIA
.head 6 -  Call SalHideWindow( cbImpUnidades )
.head 5 +  Else
.head 6 -  ! Verificar que la compañia usa o no unidades para determinar si aparecerá o no el
check box de Imprir Unidades
.head 6 +  If bCompaniaUsaUnidades
.head 7 -  Call SalShowWindow( cbImpUnidades )
.head 6 +  Else
.head 7 -  Call SalHideWindow( cbImpUnidades )
.head 5 -  ! TAQ << PROYECTO COLOMBIA
.head 5 -  !
.head 5 +  Call SalSetWindowText( rbContaFiscal, fciGlobalesCG.NombreContabilidadFiscal(  ) )
.head 6 -  ! NBH >> Nombre de la etiqueta para la Contabilidad "Fiscal"
.head 4 +  Else
.head 5 -  Call SPSMessageBox(  
        'Error iniciando conección a la base de datos.',
        'Error', MBF_IconHand, CONTINUAR )
.head 5 -  Call SalEndDialog( hWndForm, FALSE )
.head 3 -  ! NBH >> FIN REVISIÓN EN CG 6.00
.head 3 +  On SAM_CreateComplete
.head 4 -  ! Setear valores default
.head 4 -  Set cbSoloCtaMayor = TRUE
.head 4 -  !
.head 4 -  ! TAQ >> PROYECTO COLOMBIA
.head 4 +  If fciGlobalesSPS.Pais() = COLOMBIA
.head 5 -  Set cbImpUnidades = FALSE
.head 4 +  Else
.head 5 -  Set cbImpUnidades = TRUE
.head 4 -  ! TAQ << PROYECTO COLOMBIA
.head 4 -  !
.head 4 -  Set dfCantNiveles = 1
.head 4 -  Set cbImpCambioNeto = FALSE
.head 4 -  ! Actualizar items que estan relacionados
.head 4 -  Call SalSendMsg( cbSoloCtaMayor, SAM_Click, wParam, lParam )
.head 4 -  Set rbSinMovSaldos = TRUE
.head 4 -  Set rbSinMovNo = FALSE
.head 4 -  Set rbSinMovTodas = FALSE
.head 4 -  ! Deshabilitar el centro de costo en caso de que no esté configurada su utilización
.head 4 +  If NOT bUsarCentrosCosto
.head 5 -  Call DeshabiliteSoloItem( dfCentroCosto )
.head 5 -  Call SalHideWindow( dfDescCentroCosto )
.head 5 -  !
.head 5 -  Call SalHideWindowAndLabel ( dfCentroCosto )
.head 4 -  !
.head 4 -  ! Caso MX6-03198-THZ9 JEV ---------->
.head 4 -  Set vbConectarCursores = FALSE
.head 4 -  ! <---------- Caso MX6-03198-THZ9 JEV
.head 4 -  !
.head 4 -  !
.head 4 -  ! MRL GT_Folio Estados Financieros -->
.head 4 +  If fciGlobalesSPS.Pais() != GUATEMALA
.head 5 -  Set hWndGroupBox = VisWinGetHandle( hWndForm, 'Folio', TYPE_GroupBox )
.head 5 -  Call SalHideWindow( hWndGroupBox )
.head 5 -  Call SalHideWindowAndLabel( dfFolioInicial )
.head 4 -  ! MRL GT_Folio Estados Financieros <--
.head 3 +  On AM_Procesing
.head 4 +  If sCuentaProcesando != ''
.head 5 -  Call SalStatusSetText( hWndForm, 'Procesando la Cuenta: ' || sCuentaProcesando )
.head 5 -  Set nTotalCuentas = nTotalCuentas + 1
.head 5 -  Return SalSendMsg( frmOdometroCG, AM_Procesing, 0, 0 )
.head 4 +  Else
.head 5 -  Call SalStatusSetText( hWndForm, '' )
.head 5 -  Return TRUE
.head 3 +  On SAM_Help
.head 4 +  If DesplegarHelp( wParam )
.head 5 -  Call Help()
.head 3 +  On SAM_Close
.head 4 -  ! AEC-->CO5-02789-RB1F se hace el release al bridge de CG.
.head 4 -  Call ComCGBridge.Release(  )
.head 4 -  Call Destroy ( )
.head 1 +  Form Window: frmBalanceOdometro
.head 2 -  Class: clsOdometroProceso
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Consultando saldo de cuentas...
.head 2 -  Icon File:
.head 2 -  Accessories Enabled? Class Default
.head 2 -  Visible? Class Default
.head 2 -  Display Settings
.head 3 -  Display Style? Class Default
.head 3 -  Visible at Design time? No
.head 3 -  Automatically Created at Runtime? Class Default
.head 3 -  Initial State: Class Default
.head 3 -  Maximizable? Class Default
.head 3 -  Minimizable? Class Default
.head 3 -  Allow Child Docking? No
.head 3 -  Docking Orientation: All
.head 3 -  System Menu? Class Default
.head 3 -  Resizable? Class Default
.head 3 -  Window Location and Size
.head 4 -  Left: 2.2"
.head 4 -  Top: 3.146"
.head 4 -  Width:  Class Default
.head 4 -  Width Editable? Class Default
.head 4 -  Height: Class Default
.head 4 -  Height Editable? Class Default
.head 3 -  Form Size
.head 4 -  Width:  Class Default
.head 4 -  Height: Class Default
.head 4 -  Number of Pages: Class Default
.head 3 -  Font Name: Class Default
.head 3 -  Font Size: Class Default
.head 3 -  Font Enhancement: Class Default
.head 3 -  Text Color: Class Default
.head 3 -  Background Color: Class Default
.head 2 -  Description:
.head 2 -  Named Menus
.head 2 -  Menu
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
.head 3 -  Background Text:
.head 4 -  Resource Id: 52506
.head 4 -  Class Child Ref Key: 1
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsOdometroProceso
.head 4 -  Window Location and Size
.head 5 -  Left: Class Default
.head 5 -  Top: Class Default
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 -  Background Text:
.head 4 -  Resource Id: 52507
.head 4 -  Class Child Ref Key: 3
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsOdometroProceso
.head 4 -  Window Location and Size
.head 5 -  Left: Class Default
.head 5 -  Top: Class Default
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfContadorProceso
.head 4 -  Class Child Ref Key: 4
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsOdometroProceso
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
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
.head 4 -  Message Actions
.head 3 +  Pushbutton: pbCancelarProceso
.head 4 -  Class Child Ref Key: 5
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsOdometroProceso
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title:
.head 4 -  Window Location and Size
.head 5 -  Left: Class Default
.head 5 -  Top: Class Default
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
.head 3 +  Data Field: dfDate
.head 4 -  Class Child Ref Key: 6
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsOdometroProceso
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
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
.head 4 -  Message Actions
.head 3 -  Background Text:
.head 4 -  Resource Id: 52508
.head 4 -  Class Child Ref Key: 8
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsOdometroProceso
.head 4 -  Window Location and Size
.head 5 -  Left: Class Default
.head 5 -  Top: Class Default
.head 5 -  Width:  Class Default
.head 5 -  Width Editable? Class Default
.head 5 -  Height: Class Default
.head 5 -  Height Editable? Class Default
.head 4 -  Visible? Class Default
.head 4 -  Justify: Class Default
.head 4 -  Font Name: Class Default
.head 4 -  Font Size: Class Default
.head 4 -  Font Enhancement: Class Default
.head 4 -  Text Color: Class Default
.head 4 -  Background Color: Class Default
.head 3 +  Data Field: dfTime
.head 4 -  Class Child Ref Key: 7
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsOdometroProceso
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Class Default
.head 5 -  Data Type: Class Default
.head 5 -  Editable? Class Default
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: Class Default
.head 6 -  Top: Class Default
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
.head 4 -  Message Actions
.head 3 +  Custom Control: ccOdometroProceso
.head 4 -  Class Child Ref Key: 11
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsOdometroProceso
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
.head 2 -  Functions
.head 2 -  Window Parameters
.head 2 +  Window Variables
.head 3 -  Number: nContadorCuentas
.head 2 +  Message Actions
.head 3 +  On SAM_Create
.head 4 -  Call SalSendClassMessage( SAM_Create, wParam, lParam )
.head 4 -  Set bActualizacionEnMultiplos10 = TRUE
.head 3 +  On AM_Procesing
.head 4 -  ! Actualizar odómetro
.head 4 -  Set nContadorCuentas = nContadorCuentas + 1
.head 4 -  Call SalSendMsg( hWndForm, AM_NewRow, 
100 * nContadorCuentas / dlgBalanceComprobacion.nTotalCuentas, nContadorCuentas )
.head 4 -  Return NOT bProcesoCancelado
.head 1 +  ! Dialog Box: dlgBalanceComprobacion_ORIGINAL
.winattr
.head 2 -  Class:
.head 2 -  Property Template:
.head 2 -  Class DLL Name:
.head 2 -  Title: Balance de Comprobación
.head 2 -  Accessories Enabled? Yes
.head 2 -  Visible? Yes
.head 2 -  Display Settings
.head 3 -  Display Style? Default
.head 3 -  Visible at Design time? No
.head 3 -  Type of Dialog: Modal
.head 3 -  Allow Dock to Parent? No
.head 3 -  Docking Orientation: All
.head 3 -  Window Location and Size
.head 4 -  Left: 0.113"
.head 4 -  Top: -0.031"
.head 4 -  Width:  7.788"
.head 4 -  Width Editable? Yes
.head 4 -  Height: 5.0"
.head 4 -  Height Editable? Yes
.head 3 -  Absolute Screen Location? Yes
.head 3 -  Font Name: Default
.head 3 -  Font Size: Default
.head 3 -  Font Enhancement: Default
.head 3 -  Text Color: Default
.head 3 -  Background Color: Default
.head 3 -  Resizable? No
.head 3 -  Vertical Scroll? Yes
.head 3 -  Horizontal Scroll? Yes
.end
.head 2 -  Description: Diálogo para la generación de Balances de Comprobación
.head 2 +  Tool Bar 
.winattr
.head 3 -  Display Settings
.head 4 -  Display Style? Default
.head 4 -  Location? Top
.head 4 -  Visible? No
.head 4 -  Size: Default
.head 4 -  Size Editable? Yes
.head 4 -  Docking Toolbar? No
.head 4 -  Toolbar Docking Orientation: Top | Bottom
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Resizable? No
.end
.head 3 -  Contents 
.head 2 +  Contents 
.head 3 -  Group Box:
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.15"
.head 5 -  Top: 0.063"
.head 5 -  Width:  7.363"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.521"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: 3D Face Color
.end
.head 3 -  Background Text: Imprime un balance de comprobación para un rango de cuentas, y para un centro de costo específico o consolidando todos los centros de costo.
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.325"
.head 5 -  Top: 0.156"
.head 5 -  Width:  6.938"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.344"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  Background Text: C&entro de Costo:
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.213"
.head 5 -  Top: 0.76"
.head 5 -  Width:  1.488"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Right
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 +  Data Field: dfCentroCosto
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfCentroCostoF1
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: String
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.763"
.head 6 -  Top: 0.719"
.head 6 -  Width:  2.525"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Unformatted
.end
.head 4 +  Message Actions 
.head 5 +  On AM_InitDFHelp
.head 6 -  Set dfCentroCosto.bVerificarExistencia = FALSE
.head 6 -  Set dfCentroCosto.bDebeAceptarMovim = FALSE
.head 6 -  Set dfCentroCosto.bDescripcionSiError = TRUE
.head 6 -  Set dfCentroCosto.hwndDescripcion = dfDescCentroCosto
.head 6 -  Set clsdfHelp.sStatusText =  'Centro de costo para el cual se genera el balance (F1 o doble click para ayuda).  En blanco para todos los centros de costo'
.head 6 +  If bUsarCentrosCosto
.head 7 -  Set dfDescCentroCosto = 'Todos los centros de costo'
.head 5 +  On SAM_Validate
.head 6 +  If NOT SalSendClassMessage( SAM_Validate, wParam, lParam )
.head 7 -  Return FALSE
.head 6 +  Else If SalIsNull( hWndItem )
.head 7 +  If bUsarCentrosCosto
.head 8 -  Set dfDescCentroCosto = 'Todos los centros de costo'
.head 7 -  Return VALIDATE_OkClearFlag
.head 5 +  On AM_Create
.head 6 -  Call SalSendClassMessageNamed( clsdfCentroCosto, AM_Create, wParam, lParam )
.head 6 -  Set clsdfHelp.bPermiteBlancos = FALSE
.head 3 +  Data Field: dfDescCentroCosto
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: String
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 4.388"
.head 6 -  Top: 0.719"
.head 6 -  Width:  3.125"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: 3D Face Color
.head 5 -  Input Mask: Unformatted
.end
.head 4 -  Message Actions 
.head 3 -  Group Box: Cuen&tas
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.288"
.head 5 -  Top: 1.073"
.head 5 -  Width:  7.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.917"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  Background Text: Desde:
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.488"
.head 5 -  Top: 1.344"
.head 5 -  Width:  0.8"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  Background Text: Hasta:
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.52"
.head 5 -  Top: 1.677"
.head 5 -  Width:  0.8"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 +  Data Field: dfCuentaInicial
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfCuentaContableF1
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: String
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.563"
.head 6 -  Top: 1.292"
.head 6 -  Width:  0.825"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Unformatted
.end
.head 4 +  Message Actions 
.head 5 +  On AM_InitDFHelp
.head 6 -  Set dfCuentaInicial.bVerificarExistencia = FALSE
.head 6 -  Set dfCuentaInicial.bSoloConMovimiento = FALSE
.head 6 -  Set dfCuentaInicial.hwndDescripcion = dfDescCuentaInicial
.head 6 -  Set clsdfHelp.sStatusText =  'Código de la cuenta contable inicial ( F1 o doble-click para ayuda )'
.head 5 +  On AM_ExtraValidate
.head 6 +  If dfCuentaFinal = fciGlobalesCG.GetPatronRangoFinal()
.head 7 -  Set dfCuentaFinal = dfCuentaInicial
.head 7 -  Call dfCuentaFinal.Validacion( FALSE )
.head 6 -  Return VALIDATE_OkClearFlag
.head 3 +  Data Field: dfDescCuentaInicial
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: String
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 4.25"
.head 6 -  Top: 1.292"
.head 6 -  Width:  3.063"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: 3D Face Color
.head 5 -  Input Mask: Unformatted
.end
.head 4 -  Message Actions 
.head 3 +  Data Field: dfCuentaFinal
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfCuentaContableF1
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: String
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 1.563"
.head 6 -  Top: 1.635"
.head 6 -  Width:  0.825"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Unformatted
.end
.head 4 +  Message Actions 
.head 5 +  On AM_InitDFHelp
.head 6 -  Set dfCuentaFinal.hwndDescripcion = dfDescCuentaFinal
.head 6 -  Set dfCuentaFinal.bVerificarExistencia = FALSE
.head 6 -  Set dfCuentaFinal.bSoloConMovimiento = FALSE
.head 6 -  ! inicializar el patron con 9
.head 6 -  Set dfCuentaFinal = fciGlobalesCG.GetPatronRangoFinal()
.head 6 -  Set clsdfHelp.sStatusText =  'Código de la cuenta contable final (F1 o doble click para ayuda)'
.head 3 +  Data Field: dfDescCuentaFinal
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsdfDescripcion
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: String
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 4.25"
.head 6 -  Top: 1.635"
.head 6 -  Width:  3.063"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: 3D Face Color
.head 5 -  Input Mask: Unformatted
.end
.head 4 -  Message Actions 
.head 3 +  Check Box: cbSoloCtaMayor
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Solo Cuentas de Ma&yor
.head 4 -  Window Location and Size
.head 5 -  Left: 0.625"
.head 5 -  Top: 2.25"
.head 5 -  Width:  2.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set cbSoloCtaMayor.sStatusText = 
    'Imprimir únicamente las cuentas del mayor' 
.head 5 +  On AM_Click
.head 6 +  If cbSoloCtaMayor 
.head 7 -  Call SalDisableWindow( cbDetalleMov )
.head 7 -  Set cbDetalleMov = FALSE
.head 7 -  Call DisableItem( dfCantNiveles )
.head 7 -  Set dfCantNiveles = 1
.head 7 -  ! Call DisableSinMov()
.head 6 +  Else 
.head 7 -  Call SalEnableWindow( cbDetalleMov )
.head 7 -  Call EnableItem( dfCantNiveles )
.head 7 -  Set dfCantNiveles = fciGlobalesCG.GetCantNivelesCuenta()
.head 7 -  ! Call EnableSinMov()
.head 3 +  Check Box: cbDetalleMov
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Detalle de Mo&vimiento
.head 4 -  Window Location and Size
.head 5 -  Left: 0.638"
.head 5 -  Top: 2.458"
.head 5 -  Width:  2.1"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set cbDetalleMov.sStatusText = 'Imprimir el detalle de los movimientos'
.head 3 -  Background Text: Máximo nivel &para las cuentas:
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.638"
.head 5 -  Top: 2.802"
.head 5 -  Width:  2.588"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 +  Data Field: dfCantNiveles
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFNumeric
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: Default
.head 5 -  Data Type: Number
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 3.35"
.head 6 -  Top: 2.76"
.head 6 -  Width:  0.438"
.head 6 -  Width Editable? Yes
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? Yes
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Right
.head 5 -  Format: Unformatted
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: Unformatted
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set dfCantNiveles.sStatusText = 'Cantidad de niveles de las cuentas que desea incluir en el reporte, comenzando a partir de 1 para el primer nivel.'
.head 6 -  Set dfCantNiveles.nValueRange = VALUE_GT
.head 5 +  On AM_Validate
.head 6 +  If dfCantNiveles = NUMBER_Null
.head 7 -  Call SPSMessageBox(  
        'La cantidad de niveles debe ser a partir del número 1. Revise el código de las cuentas contables.',
        'Error', MBF_IconHand, CONTINUAR )
.head 7 -  Return VALIDATE_Cancel
.head 6 -  ! La cantidad de niveles esta definida de acuerdo al codigo de las cuentas
.head 6 +  If dfCantNiveles > fciGlobalesCG.GetCantNivelesCuenta()
.head 7 -  Call SPSMessageBox(  
        'La cantidad de niveles de las cuentas a imprimir debe se menor o igual a ' || 
         SalNumberToStrX( fciGlobalesCG.GetCantNivelesCuenta(), 0 ) || '. Revise el código de las cuentas contables.',
        'Error', MBF_IconHand, CONTINUAR )
.head 7 -  Return VALIDATE_Cancel
.head 6 -  Return VALIDATE_OkClearFlag
.head 3 -  Group Box: Cuentas &sin movimiento
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 4.538"
.head 5 -  Top: 2.01"
.head 5 -  Width:  2.875"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.146"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 +  Radio Button: rbSinMovTodas
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Incluir todas
.head 4 -  Window Location and Size
.head 5 -  Left: 4.788"
.head 5 -  Top: 2.292"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set rbSinMovTodas.sStatusText = 'Incluir todas las cuentas sin movimiento'
.head 3 +  Radio Button: rbSinMovSaldos
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Incluir cuentas con saldo
.head 4 -  Window Location and Size
.head 5 -  Left: 4.788"
.head 5 -  Top: 2.552"
.head 5 -  Width:  2.35"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set rbSinMovSaldos.sStatusText = 'Incluir aquellas cuentas que tengan saldo, aún cuando no tengan movimiento'
.head 3 +  Radio Button: rbSinMovNo
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Excluir
.head 4 -  Window Location and Size
.head 5 -  Left: 4.788"
.head 5 -  Top: 2.813"
.head 5 -  Width:  1.4"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set rbSinMovNo.sStatusText = 'Excluir las cuentas sin movimiento'
.head 3 -  Group Box: &Fechas
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.088"
.head 5 -  Top: 3.156"
.head 5 -  Width:  1.9"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 1.0"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  Background Text: Desde:
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.188"
.head 5 -  Top: 3.427"
.head 5 -  Width:  0.6"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 -  Background Text: Hasta:
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 0.25"
.head 5 -  Top: 3.76"
.head 5 -  Width:  0.6"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.167"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Justify: Left
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 +  Data Field: dfFechaInicial
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFExtDate
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: 10
.head 5 -  Data Type: Date/Time
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 0.863"
.head 6 -  Top: 3.396"
.head 6 -  Width:  1.025"
.head 6 -  Width Editable? No
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? No
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: dd/MM/yyyy
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: 99/99/9999
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  ! Set dfFechaInicial = SalDateMonthBegin( GetDateAndTime(  ) )
.head 6 -  Set dfFechaInicial = GetNextDayLastPerCon (GetDateAndTime ())
.head 6 -  Set dfFechaInicial.sStatusText = 'Fecha inicial para el balance de comprobación'
.head 6 -  Set bPermiteBlancos = FALSE
.head 3 +  Data Field: dfFechaFinal
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdDFExtDate
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Data
.head 5 -  Maximum Data Length: 10
.head 5 -  Data Type: Date/Time
.head 5 -  Editable? Yes
.head 4 -  Display Settings
.head 5 -  Window Location and Size
.head 6 -  Left: 0.863"
.head 6 -  Top: 3.729"
.head 6 -  Width:  1.025"
.head 6 -  Width Editable? No
.head 6 -  Height: 0.25"
.head 6 -  Height Editable? No
.head 5 -  Visible? Yes
.head 5 -  Border? Yes
.head 5 -  Justify: Left
.head 5 -  Format: dd/MM/yyyy
.head 5 -  Country: Default
.head 5 -  Font Name: Default
.head 5 -  Font Size: Default
.head 5 -  Font Enhancement: Default
.head 5 -  Text Color: Default
.head 5 -  Background Color: Default
.head 5 -  Input Mask: 99/99/9999
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  ! Set dfFechaFinal = GetDateAndTime(  ) 
.head 6 -  Set dfFechaFinal = GetEndCurrentPerCon (GetDateAndTime ())
.head 6 -  Set dfFechaFinal.sStatusText = 'Fecha final para el balance de comprobación'
.head 6 -  Set bPermiteBlancos = FALSE
.head 3 -  Group Box: Conta&bilidad
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 2.088"
.head 5 -  Top: 3.156"
.head 5 -  Width:  1.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.99"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 +  Radio Button: rbContaFiscal
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Fiscal
.head 4 -  Window Location and Size
.head 5 -  Left: 2.125"
.head 5 -  Top: 3.417"
.head 5 -  Width:  0.8"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set rbContaFiscal = TRUE
.head 6 -  Set rbContaFiscal.sStatusText = 'Imprimir el balance para la contabilidad fiscal'
.head 3 +  Radio Button: rbContaCorporativo
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Corporativa
.head 4 -  Window Location and Size
.head 5 -  Left: 2.125"
.head 5 -  Top: 3.781"
.head 5 -  Width:  1.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set rbContaCorporativo.sStatusText = 'Imprimir el balance para la contabilidad corporativa'
.head 3 -  !
.head 3 -  Group Box: &Moneda
.winattr
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class:
.head 4 -  Window Location and Size
.head 5 -  Left: 3.488"
.head 5 -  Top: 3.156"
.head 5 -  Width:  1.65"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.99"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 3 +  Radio Button: rbMonLocal
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: 1234567890
.head 4 -  Window Location and Size
.head 5 -  Left: 3.55"
.head 5 -  Top: 3.365"
.head 5 -  Width:  1.263"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set rbMonLocal = TRUE
.head 6 -  Set rbMonLocal.sStatusText = 'Imprimir el balance para la moneda local'
.head 6 -  Call SalSetWindowText( rbMonLocal, fciGlobalesAS.sNombreMonFunc )
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Call EnableItem( cbImpUnidades )
.head 3 +  Radio Button: rbMonDolares
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: 1234567890
.head 4 -  Window Location and Size
.head 5 -  Left: 3.55"
.head 5 -  Top: 3.594"
.head 5 -  Width:  1.263"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set rbMonDolares.sStatusText = 'Imprimir el balance para la moneda dólar'
.head 6 -  Call SalSetWindowText( rbMonDolares, fciGlobalesAS.sNombreMonRep )
.head 5 +  On AM_Click
.head 6 -  !
.head 6 -  Call EnableItem( cbImpUnidades )
.head 3 +  Radio Button: rbMonAmbas
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdRB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Ambas
.head 4 -  Window Location and Size
.head 5 -  Left: 3.55"
.head 5 -  Top: 3.823"
.head 5 -  Width:  1.263"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set rbMonAmbas.sStatusText = 'Imprimir el balance para ambas monedas'
.head 6 -  ! Call SalSetWindowText( rbMonDolares, fciGlobalesAS.sNombreMonRep )
.head 5 +  On AM_Click
.head 6 -  !
.head 6 +  If rbMonAmbas = TRUE
.head 7 -  Set cbImpUnidades = FALSE
.head 7 -  Call DisableItem( cbImpUnidades )
.head 3 -  !
.head 3 -  !
.head 3 +  Check Box: cbImpCambioNeto
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Imprimir Cambio &Neto
.head 4 -  Window Location and Size
.head 5 -  Left: 5.288"
.head 5 -  Top: 3.302"
.head 5 -  Width:  2.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set cbImpCambioNeto.sStatusText = 
    'Imprimir el cambio neto del período' 
.head 3 +  Check Box: cbImpUnidades
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Imprimir &Unidades
.head 4 -  Window Location and Size
.head 5 -  Left: 5.288"
.head 5 -  Top: 3.594"
.head 5 -  Width:  2.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set cbImpUnidades.sStatusText =
      'Si desea que aparezcan en los reportes los débitos y créditos relativos a Unidades'
.head 3 +  Check Box: cbIndentar	
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: In&dentar Cuentas
.head 4 -  Window Location and Size
.head 5 -  Left: 5.288"
.head 5 -  Top: 3.885"
.head 5 -  Width:  2.3"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set cbIndentar.sStatusText =
      'Indenta las cuentas por niveles según el patrón de cuentas contables.'
.head 3 -  !
.head 3 +  Pushbutton: pbOk
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Aceptar
.head 4 -  Window Location and Size
.head 5 -  Left: 2.288"
.head 5 -  Top: 4.208"
.head 5 -  Width:  1.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.292"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Gray
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set pbOk.sStatusText = 'Generar el reporte con los parámetros establecidos'
.head 5 +  On SAM_Click
.head 6 -  !
.head 6 +  If NOT dfFechaInicial
.head 7 -  Set dfFechaInicial = DATETIME_Null
.head 6 +  If NOT dfFechaFinal
.head 7 -  Set dfFechaFinal = DATETIME_Null
.head 6 -  !
.head 6 +  If ChkDateRange( dfFechaInicial, dfFechaFinal )
.head 7 +  If NOT RepBalanceComprob()
.head 8 -  ! Call Destroy ( )
.head 8 -  ! Call SalEndDialog( dlgBalanceComprobacion, FALSE )
.head 6 +  Else 
.head 7 -  Call SalSetFocus( dfFechaInicial )
.head 3 +  Pushbutton: pbCancelar
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdPushbutton
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: &Cancelar
.head 4 -  Window Location and Size
.head 5 -  Left: 3.85"
.head 5 -  Top: 4.208"
.head 5 -  Width:  1.2"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.292"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Keyboard Accelerator: (none)
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Picture File Name:
.head 4 -  Picture Transparent Color: Gray
.head 4 -  Image Style: Single
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.head 4 -  Button Appearance: Standard
.end
.head 4 +  Message Actions 
.head 5 +  On AM_Create
.head 6 -  Set pbCancelar.sStatusText = 'Retornar a la ventana anterior sin generar el reporte'
.head 5 +  On SAM_Click
.head 6 -  Call Destroy ( )
.head 6 -  Call SalEndDialog( dlgBalanceComprobacion, FALSE )
.head 3 +  Check Box: cbSaldosAlCierre
.winattr class
.head 4 -  Class Child Ref Key: 0
.head 4 -  Class ChildKey: 0
.head 4 -  Class: clsStdCB
.head 4 -  Property Template:
.head 4 -  Class DLL Name:
.head 4 -  Title: Saldos antes del cierre
.head 4 -  Window Location and Size
.head 5 -  Left: 0.638"
.head 5 -  Top: 2.042"
.head 5 -  Width:  2.15"
.head 5 -  Width Editable? Yes
.head 5 -  Height: 0.25"
.head 5 -  Height Editable? Yes
.head 4 -  Visible? Yes
.head 4 -  Font Name: Default
.head 4 -  Font Size: Default
.head 4 -  Font Enhancement: Default
.head 4 -  Text Color: Default
.head 4 -  Background Color: Default
.end
.head 4 -  Message Actions 
.head 2 +  Functions 
.head 3 -  !
.head 3 +  ! SPEREZ: RVS98002
.head 4 +  ! Function: RepBalanceComprob
.head 5 -  Description: Reporte de balance de comprobacion
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 -  Parameters 
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  String: sFecha
.head 6 -  String: sFechaInicial
.head 6 -  String: sFechaFinal
.head 6 -  String: sCuentaInicial
.head 6 -  String: sCuentaFinal
.head 6 -  String: sCuentaPatronInicial
.head 6 -  String: sTitulo1
.head 6 -  String: sTitulo2
.head 6 -  String: sTitulo3
.head 6 -  String: sTitulo4
.head 6 -  Boolean: bOk
.head 6 -  Boolean: bCreacionAbortada
.head 6 -  Boolean: bListaOk
.head 6 -  String: sREP_BalanceVar
.head 6 -  String: sREP_BalanceInp
.head 6 -  String: sSqlCmd
.head 6 -  Number: nInd
.head 6 -  String: sCondicionDeCentros
.head 6 -  String: sCondicionCentrosLista
.head 5 +  Actions 
.head 6 -  ! Validar que el proceso de mayorizacion no este corriendo
.head 6 +  If fciBalanceMayorizar.IsRowLockedMsgLike( 
     fciBalanceMayorizar.GetLlavePrimaria(),
     'Balance de Comprobación', 
     'Desea continuar con el Balance de Comprobación?.', FALSE )
.head 7 -  Return FALSE
.head 6 -  ! Convertir las fechas a hileras para el llamado a CrearListaSaldos
.head 6 -  Set sFechaInicial = SalFmtFormatDateTime( dfFechaInicial, 'yyyy-MM-dd' )
.head 6 -  Set sFechaFinal = SalFmtFormatDateTime( dfFechaFinal, 'yyyy-MM-dd' )
.head 6 -  ! Obtener las hileras de las cuentas a buscar
.head 6 +  If GetCuentasBalance( sCuentaInicial, sCuentaFinal )
.head 7 -  Call VisWaitCursor( TRUE )
.head 7 -  ! Determinar la condición para los centros de costo
.head 7 +  If SalIsNull( dfCentroCosto )
.head 8 -  Set sCondicionDeCentros = ''
.head 7 +  Else 
.head 8 -  Call fciCentroCosto.InitPatron (fciGlobalesAS.PatronCentroCosto ())
.head 8 -  Set sCondicionDeCentros = 'centro_costo  LIKE  \''  || 
fciCentroCosto.ChildrenLIKE (dfCentroCosto) 
|| '\''
.head 8 -  Set sCentroCosto = dfCentroCosto
.head 8 -  Set sDescripcionCentro = dfDescCentroCosto
.head 7 -  ! Establecer los títulos del reporte
.head 7 +  If rbContaFiscal
.head 8 -  Set sTitulo4 = 'Contabilidad Fiscal. '
.head 8 -  Set sConta = CONTA_FISCAL
.head 7 +  Else 
.head 8 -  Set sTitulo4 = 'Contabilidad Corporativa. '
.head 8 -  Set sConta = CONTA_CORP
.head 7 +  If rbMonLocal 
.head 8 -  Set sTitulo4 = sTitulo4 || 'Moneda Local. '
.head 8 -  Set sMoneda = 'L'
.head 8 -  Set sMontoMayor = 'debito_local, credito_local '
.head 7 +  Else 
.head 8 -  Set sTitulo4 = sTitulo4 || 'Moneda Dólar. '
.head 8 -  Set sMoneda = 'D'
.head 8 -  Set sMontoMayor = 'debito_dolar, credito_dolar '
.head 7 -  Set bOk = TRUE
.head 7 -  ! Calcular la cuenta inicial
.head 7 +  If dfCuentaInicial = ''
.head 8 -  Set sCuentaPatronInicial = fciGlobalesCG.GetPatronRangoInicial()
.head 7 +  Else 
.head 8 -  Set sCuentaPatronInicial = dfCuentaInicial
.head 7 -  ! Contar la cantidad de cuentas a procesar
.head 7 -  Set sSqlCmd = "
SELECT 	count(*) 
INTO 	:dlgBalanceComprobacion.nTotalCuentas
FROM 	" || ConcatCompany( 'centro_cuenta' ) || " A 
WHERE 	A.estado <> '" || CENTROCUENTA_INACTIVO || "' 
AND 	0< (
		SELECT 	COUNT (*) 
		FROM	" || ConcatCompany ('cuenta_contable') || " B 
		WHERE	B.acepta_datos = 'S' 
		AND	B.cuenta_contable >= '" || sCuentaInicial || "' 
		AND	B.cuenta_contable <= '" ||  sCuentaFinal || "' 
		AND	A.cuenta_contable = B.cuenta_contable 
		)
AND	0< (
		SELECT 	COUNT (*) 
		FROM	" || ConcatCompany ('centro_costo') || " C 
		WHERE 	A.centro_costo = C.centro_costo 
		AND	C.acepta_datos = 'S' "
.head 7 +  If sCondicionDeCentros
.head 8 -  Set sSqlCmd = sSqlCmd || ' AND C.' || sCondicionDeCentros || " ) "
.head 7 +  Else 
.head 8 -  Set sSqlCmd = sSqlCmd || " ) "
.head 7 +  When SqlError
.head 8 -  Call SPSDisplayErrorMsg( 
'Problemas contando la cantidad de cuentas a procesar.',
'Balance de Comprobación' )
.head 8 +  If NOT bDebugging
.head 9 -  Return FALSE
.head 7 +  If SqlPrepareAndExecute( hsqlMain, sSqlCmd )
.head 8 +  When SqlError
.head 9 -  Call SPSDisplayErrorMsg( 
'Problemas contando la cantidad de cuentas a procesar.',
'Balance de Comprobación' )
.head 9 +  If NOT bDebugging
.head 10 -  Return FALSE
.head 8 +  If SqlFetchNext( hsqlMain, nInd )
.head 9 +  If nTotalCuentas = 0 OR nTotalCuentas = NUMBER_Null
.head 10 -  Call SPSMessageBox( 
'No existen cuentas que cumplan con las restricciones establecidas.',
'Balance de Comprobación', MBF_IconAsterisk, CONTINUAR )
.head 10 -  Call VisWaitCursor( FALSE )
.head 10 -  Return FALSE
.head 9 +  Else 
.head 10 -  ! Crear odómetro para la creación de la lista de saldos
.head 10 -  Call SalCreateWindow( frmBalanceOdometro, hWndForm )
.head 10 -  Call SalYieldStartMessages( frmBalanceOdometro.pbCancelarProceso )
.head 10 -  ! Construir la lista de saldos
.head 10 -  Call SalStrSetBufferLength( sCuentaProcesando, 50 )
.head 10 -  Set sCondicionCentrosLista = sCondicionDeCentros
.head 10 +  If sCondicionCentrosLista
.head 11 -  Set sCondicionCentrosLista = 'ab.' || sCondicionCentrosLista
.head 10 -  Set bListaOk = CreeListaSaldos( 
hsqlCuenta, 
hsqlSaldo,
sSPSCompania,
sCondicionCentrosLista,
'ab.cuenta_contable >= \'' || sCuentaInicial || '\' AND
ab.cuenta_contable <= \'' ||  sCuentaFinal || '\'',
sFechaInicial,
sFechaFinal,
sConta, FALSE,
hWndForm,
50, sCuentaProcesando,
AM_Procesing,
nLinkList,
bCreacionAbortada )
.head 10 -  ! Destruir odómetro
.head 10 -  Call SalYieldStopMessages(  )
.head 10 -  Call SalDestroyWindow( frmBalanceOdometro )
.head 10 -  Call VisWaitCursor( FALSE )
.head 9 -  ! Error creando lista ?
.head 9 +  If NOT bListaOk
.head 10 -  Set bOk = FALSE
.head 8 +  Else 
.head 9 -  Set bOk = FALSE
.head 7 +  Else 
.head 8 -  Set bOk = FALSE
.head 7 -  ! Desplegar el error al crear la lista después de destruir el odómetro y desactivar el 
.head 7 -  ! wait cursor
.head 7 +  If NOT bListaOk AND NOT bCreacionAbortada
.head 8 -  Call SPSMessageBox(  
        'Problemas creando la lista de saldos.',
        'Balance de Comprobación', MBF_IconHand, CONTINUAR )
.head 7 +  If NOT bOk
.head 8 -  Call VisWaitCursor( FALSE )
.head 8 -  Return FALSE
.head 7 -  ! Se pudieron contar las cuentas a procesar y se creó bien las lista de saldos...continuar
.head 7 -  !
.head 7 -  !
.head 7 -  !
.head 7 -  ! Preparar el comando SQL y títulos del reporte
.head 7 -  Set sSqlCmdReport = 'SELECT ' 
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || 
'A.cuenta_contable, A.descripcion, A.saldo_normal' 
.head 7 +  If cbDetalleMov
.head 8 -  ! Agregar las columnas del mayor y del centro de costo en caso de detalle
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ', C.centro_costo, C.descripcion'
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ', D.asiento, D.fecha, D.referencia, D.fuente, 
	D.tipo_asiento, D.origen, ' || sMontoMayor
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || "
FROM " || ConcatCompany( 'cuenta_contable' ) || " A" 
.head 7 +  If cbDetalleMov
.head 8 -  ! Agregar el centro de costo y el mayor, cuando hay detalle
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ', ' || ConcatCompany( 'centro_costo' ) || " C"
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ', ' || ConcatCompany( 'mayor' ) || ' D'
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
INTO
:dlgBalanceComprobacion.fciBalanceComp.sCuenta, 
:dlgBalanceComprobacion.fciBalanceComp.sDescripcion,
:dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal'
.head 7 +  If cbDetalleMov
.head 8 -  ! Agregar las into-variables de la parte del mayor y del centro de costo
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || 
', :dlgBalanceComprobacion.sCentroCosto, 
:dlgBalanceComprobacion.sDescripcionCentro'
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ', :dlgBalanceComprobacion.sAsiento,
:dlgBalanceComprobacion.dtFecha, :dlgBalanceComprobacion.sReferencia,
:dlgBalanceComprobacion.sFuente, :dlgBalanceComprobacion.sTipoAsiento,
:dlgBalanceComprobacion.sOrigen, 
:dlgBalanceComprobacion.nDebitos, :dlgBalanceComprobacion.nCreditos'
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || "
WHERE 	A.cuenta_contable >= '" || sCuentaPatronInicial || "' 
AND	A.cuenta_contable <= '" ||  dfCuentaFinal || "'"
.head 7 +  If cbSoloCtaMayor
.head 8 -  ! Agregar LIKE para seleccionar solo las cuentas del mayor
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ' 
AND 	A.cuenta_contable LIKE \'' || fciBalanceComp.SoloMayorLIKE() || '\' '
.head 8 -  Set sTitulo2 = 'Incluye solo cuentas de mayor' 
.head 7 +  Else If dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta()
.head 8 -  ! Se quiere imprimir solo hasta cuentas del nivel dfCantNiveles
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ' 
AND A.cuenta_contable LIKE \'' || fciBalanceComp.SoloHastaNivelLIKE( dfCantNiveles ) || '\' '
.head 8 -  Set sTitulo2 = 'Incluye solo cuentas hasta el nivel ' || 
    SalNumberToStrX( dfCantNiveles, 0 )
.head 7 +  Else 
.head 8 -  Set sTitulo2 = 'Incluye todas las cuentas del rango: ' || dfCuentaInicial || ' .. ' ||
dfCuentaFinal
.head 7 +  If cbDetalleMov
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || '
AND 	D.centro_costo = C.centro_costo '
.head 8 -  ! Si se trata de un reporte con detalle agregar el joint con el mayor
.head 8 -  ! y el rango de fechas
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
AND 	A.cuenta_contable = D.cuenta_contable 
AND	D.fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || ' 
AND 	D.fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE ) || ' 
AND 	D.contabilidad IN ( \'' || sConta || '\', \'' || CONTA_AMBAS || '\' ) '
.head 8 -  !
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
AND 	0< (
		SELECT 	COUNT (*)
		FROM	' || ConcatCompany( 'centro_cuenta' ) || " B 
		WHERE	B.estado <> '" || CENTROCUENTA_INACTIVO || "' 
		AND	B.cuenta_contable = D.cuenta_contable 
		AND 	B.centro_costo = D.centro_costo "
.head 8 +  If sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ' 
		AND 	B.' || sCondicionDeCentros || ')'
.head 8 +  Else 
.head 9 -  Set sSqlCmdReport = sSqlCmdReport ||  ')'
.head 8 -  !
.head 8 -  ! agregar la union con las cuentas que no poseen movimientos en el mayor
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || "
UNION 	ALL
SELECT A.cuenta_contable, A.descripcion, A.saldo_normal,"
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || " ' ', ' ',"
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || " ' ', " ||
SQLSystemDate( ) || ", ' ', ' ', ' ', ' ', 0, 0
FROM 	" || ConcatCompany( 'cuenta_contable A' ) || "
WHERE 	A.cuenta_contable >= '"  || sCuentaPatronInicial || "'  
AND 	A.cuenta_contable <= '"  || dfCuentaFinal || "' "
.head 8 +  If dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta()
.head 9 -  ! Se quiere imprimir solo hasta cuentas del nivel dfCantNiveles
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ' 
AND 	A.cuenta_contable LIKE \'' || fciBalanceComp.SoloHastaNivelLIKE( dfCantNiveles ) || '\' '
.head 8 -  !
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || "
AND 	0< (
		SELECT 	COUNT (*)
		FROM 	" || ConcatCompany( 'centro_cuenta B' ) || "
		WHERE 	A.cuenta_contable = B.cuenta_contable 
		AND 	B.estado <> '" || CENTROCUENTA_INACTIVO || "'" 
.head 8 +  If sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ' 
		AND 	B.' || sCondicionDeCentros || ')'
.head 8 +  Else 
.head 9 -  Set sSqlCmdReport = sSqlCmdReport ||  ')'
.head 8 -  !
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || "
AND 	0= (
	SELECT 	COUNT (*)
	FROM 	" || ConcatCompany( 'mayor C' ) || '
	WHERE 	A.cuenta_contable = C.cuenta_contable 
	AND	fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || ' 
	AND 	fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE ) || ' 
	AND 	contabilidad IN ( \'' || sConta || '\', \'' || CONTA_AMBAS || '\' )  ' 
.head 8 +  If sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ' 
		AND 	C.' || sCondicionDeCentros || ')'
.head 8 +  Else 
.head 9 -  Set sSqlCmdReport = sSqlCmdReport ||  ')'
.head 7 +  Else 
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
AND 	0< (
		SELECT 	COUNT (*)
		FROM	' || ConcatCompany( 'centro_cuenta' ) || " B 
		WHERE	B.estado <> '" || CENTROCUENTA_INACTIVO || "' 
		AND	A.cuenta_contable = B.cuenta_contable "
.head 8 +  If sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ' 
		AND 	B.' || sCondicionDeCentros || ')'
.head 8 +  Else 
.head 9 -  Set sSqlCmdReport = sSqlCmdReport ||  ')'
.head 7 -  ! Ordenar por cuenta_contable
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
ORDER BY 1'
.head 7 +  If cbDetalleMov
.head 8 -  ! Ordenar el detalle también por fecha
.head 8 +  If NOT sCondicionDeCentros
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ', 7'
.head 8 +  Else 
.head 9 -  Set sSqlCmdReport = sSqlCmdReport || ', 5'
.head 7 -  ! Finaliza creacion de SQL para el reporte
.head 7 -  !
.head 7 -  !
.head 7 -  !
.head 7 -  !
.head 7 +  If SalIsNull( dfCentroCosto ) 
.head 8 -  Set sTitulo3 = dfDescCentroCosto || '. '
.head 7 +  Else 
.head 8 -  Set sTitulo3 = 'Centro de Costo: ' || dfDescCentroCosto || '. '
.head 7 +  If rbSinMovTodas
.head 8 -  Set sTitulo3 = sTitulo3 || 'Cuentas con y sin movimientos.'
.head 7 +  Else If rbSinMovNo
.head 8 -  Set sTitulo3 = sTitulo3 || 'Cuentas con movimientos. '
.head 7 +  Else If rbSinMovSaldos
.head 8 -  Set sTitulo3 = sTitulo3 || 'Cuentas con movimientos o saldo diferente de cero.'
.head 7 -  Set sTitulo1 = 'Balance de Comprobación del ' || 
    SalFmtFormatDateTime( dfFechaInicial, 'dd/MM/yyyy' ) || ' al ' ||
    SalFmtFormatDateTime( dfFechaFinal, 'dd/MM/yyyy' )
.head 7 -  ! Inicializar items del reporte
.head 7 -  Set sREP_BalanceVar =  
':dlgBalanceComprobacion.sCentroCosto, 
:dlgBalanceComprobacion.sDescripcionCentro,
:dlgBalanceComprobacion.fciBalanceComp.sCuenta,
:dlgBalanceComprobacion.fciBalanceComp.sDescripcion,
:dlgBalanceComprobacion.nSaldoInicial,
:dlgBalanceComprobacion.nSaldoFinal, 
:dlgBalanceComprobacion.nTotalDebitos, 
:dlgBalanceComprobacion.nTotalCreditos, 
:dlgBalanceComprobacion.nCambioNeto,
:dlgBalanceComprobacion.sAsiento,
:dlgBalanceComprobacion.dtFecha, 
:dlgBalanceComprobacion.sReferencia, 
:dlgBalanceComprobacion.sFuente, 
:dlgBalanceComprobacion.sTipoAsiento, 
:dlgBalanceComprobacion.sOrigen, 
:dlgBalanceComprobacion.nDebitos,
:dlgBalanceComprobacion.nCreditos, 
:dlgBalanceComprobacion.sImprimirCuenta,
:dlgBalanceComprobacion.sImprimirDetalle'
.head 7 -  Set sREP_BalanceInp = 
'sCentroCosto, sDescripcionCentro, sCuentaContable, sDescripcionCuenta,
nSaldoInicial, nSaldoFinal, nTotalDebitos, nTotalCreditos, nCambioNeto, sAsiento,
dtFecha, sReferencia, sFuente, sTipoAsiento, sOrigen, nDebitos, nCreditos,
sImprimirCuenta, sImprimirDetalle'
.head 7 -  ! Crear el reporte 
.head 7 -  Return ReportStandart.CrearReporte( 
    '', 'BALCOMP.QRP', sREP_BalanceVar, sREP_BalanceInp, TRUE,
    sTitulo1, sTitulo2, sTitulo3, sTitulo4, hWndForm, hwndFormReporte  )
.head 6 +  Else 
.head 7 -  Return FALSE
.head 4 +  ! Function: GetCuentasBalance
.head 5 -  Description: Devuelve las cuentas inicial y final de acuerdo a lo digitado en
en los data fields
.head 5 +  Returns 
.head 6 -  Boolean: 
.head 5 +  Parameters 
.head 6 -  Receive String: sParCuentaIni
.head 6 -  Receive String: sParCuentaFin
.head 5 -  Static Variables 
.head 5 +  Local variables 
.head 6 -  String: sCaracter
.head 6 -  String: sFmtIMask
.head 6 -  Number: nCuentaCodSize
.head 6 -  String: sCodigoConFormato
.head 6 -  String: sCuentaIni
.head 6 -  String: sCuentaFin
.head 6 -  Number: nIndice
.head 6 -  Number: nIniBloque
.head 5 +  Actions 
.head 6 +  If dfCuentaInicial > dfCuentaFinal
.head 7 -  Call SPSMessageBox(  
       'Error, el rango de cuentas debe ser ascendente',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 7 -  Return FALSE
.head 6 -  Set sFmtIMask = fciGlobalesCG.GetPatron()
.head 6 -  Set nCuentaCodSize = SalStrLength( sFmtIMask )
.head 6 -  ! Tomar las cuentas definidas en los data fields
.head 6 -  Set sParCuentaIni = dfCuentaInicial 
.head 6 -  Set sParCuentaFin = dfCuentaFinal
.head 6 +  If sParCuentaIni = ''
.head 7 -  ! Poner la cuenta inicial en cero y la final en el maximo
.head 7 -  Set sParCuentaIni = fciGlobalesCG.GetPatronRangoInicial()
.head 7 -  ! A partir del segundo nivel, llenar todo con el final del patrón
.head 7 -  Set nIndice = 0
.head 7 +  Loop 
.head 8 -  Set sCaracter = SalStrMidX( sParCuentaFin, nIndice, 1 )
.head 8 +  If NOT CaracterAlfanum( sCaracter )
.head 9 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIndice+1 )
.head 9 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX( 
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIndice-1 )
.head 9 -  Break 
.head 8 -  Set nIndice = nIndice + 1
.head 8 +  If nIndice >= nCuentaCodSize
.head 9 -  Break 
.head 6 +  Else 
.head 7 -  ! Buscar el primer bloque diferentes de las cuentas
.head 7 -  Set nIndice = 0
.head 7 -  Set nIniBloque = 0
.head 7 +  Loop 
.head 8 -  Set sCaracter = SalStrMidX( sParCuentaFin, nIndice, 1 )
.head 8 +  If NOT CaracterAlfanum( sCaracter )
.head 9 -  ! Termino el bloque, comparar
.head 9 -  Set sCuentaIni = SalStrMidX( sParCuentaIni, nIniBloque, 
                                               nIndice - nIniBloque )
.head 9 -  Set sCuentaFin = SalStrMidX( sParCuentaFin, nIniBloque, 
                                                 nIndice - nIniBloque )
.head 9 +  If ( sCuentaIni != sCuentaFin )
.head 10 -  ! Llenar de Zs a partir del mismo bloque
.head 10 +  If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni ) 
.head 11 -  ! Llenar de Zs a partir del siguiente bloque
.head 11 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 11 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX( 
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize - nIniBloque )
.head 10 +  Else 
.head 11 -  ! Llenar de Zs a partir del siguiente bloque diferente
.head 11 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIndice+1 )
.head 11 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX( 
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize - ( nIndice+1) )
.head 10 -  Break 
.head 9 +  Else If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni )    
.head 10 -  ! Llenar de Zs a partir del bloque analizado
.head 10 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 10 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX( 
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIniBloque )
.head 10 -  Break 
.head 9 +  Else 
.head 10 -  ! Guardar el inicio de bloque
.head 10 -  Set nIniBloque = nIndice + 1
.head 8 +  Else If nIndice = nCuentaCodSize-1
.head 9 -  ! Termino el bloque (es el último), comparar
.head 9 -  Set sCuentaIni = SalStrMidX( sParCuentaIni, nIniBloque, 
                                               nIndice - nIniBloque + 1 )
.head 9 +  If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni )    
.head 10 -  ! Llenar a partir del bloque analizado de Zs ( bloques desiguales o en cero ) 
.head 10 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 10 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX( 
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIniBloque )
.head 9 -  Break 
.head 8 -  Set nIndice = nIndice + 1
.head 6 -  Return TRUE
.head 3 -  !
.head 3 +  Function: RepBalanceComprob
.head 4 -  Description: Genera el Reporte de balance de comprobación
.head 4 +  Returns 
.head 5 -  Boolean: 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  String: sFecha
.head 5 -  String: sFechaInicial
.head 5 -  String: sFechaFinal
.head 5 -  String: sCuentaInicial
.head 5 -  String: sCuentaFinal
.head 5 -  String: sTitulo1
.head 5 -  String: sTitulo2
.head 5 -  String: sTitulo3
.head 5 -  String: sTitulo4
.head 5 -  Boolean: bOk
.head 5 -  Boolean: bCreacionAbortada
.head 5 -  Boolean: bListaOk
.head 5 -  String: sREP_BalanceVar
.head 5 -  String: sREP_BalanceInp
.head 5 -  String: sSqlCmd
.head 5 -  Number: nInd
.head 5 -  String: sCondicionDeCentros
.head 5 -  String: sCondicionCentrosLista
.head 5 +  String: sCentroCostoLIKE
.head 6 -  ! Variable para almacenar el resultado de la función ChildrenLIKE
.head 4 +  Actions 
.head 5 -  !
.head 5 -  ! Validar que el proceso de mayorizacion no este corriendo
.head 5 +  If fciBalanceMayorizar.IsRowLockedMsgLike(
     fciBalanceMayorizar.GetLlavePrimaria(),
     'Balance de Comprobación',
     'Desea continuar con el Balance de Comprobación?.', FALSE )
.head 6 -  Return FALSE
.head 5 -  !
.head 5 -  ! Convertir las fechas a hileras para el llamado a CrearListaSaldos
.head 5 -  Set sFechaInicial = SalFmtFormatDateTime( dfFechaInicial, 'yyyy-MM-dd' )
.head 5 -  Set sFechaFinal = SalFmtFormatDateTime( dfFechaFinal, 'yyyy-MM-dd' )
.head 5 -  !
.head 5 -  ! Obtener las hileras de las cuentas a buscar
.head 5 +  If GetCuentasBalance( sCuentaInicial, sCuentaFinal )
.head 6 -  Call VisWaitCursor( TRUE )
.head 6 -  !
.head 6 -  ! Determinar la condición para los centros de costo
.head 6 +  If SalIsNull( dfCentroCosto )
.head 7 -  Set sCondicionDeCentros = ''
.head 6 +  Else 
.head 7 -  !
.head 7 -  ! Set sCondicionDeCentros = 'centro_costo = \'' || dfCentroCosto || '\''
.head 7 -  Call fciCentroCosto.InitPatron (fciGlobalesAS.PatronCentroCosto ())
.head 7 -  Set sCentroCostoLIKE = fciCentroCosto.ChildrenLIKE ( dfCentroCosto )
.head 7 -  !
.head 7 +  If sCentroCostoLIKE = dfCentroCosto
.head 8 -  ! Significa que no hay patrón para el centro de costo, por lo tanto
  la condición del WHERE no se establece con un LIKE sino con
  un igual
.head 8 -  Set sCondicionDeCentros = 'centro_costo LIKE  \'' || dfCentroCosto || '\''
.head 7 +  Else 
.head 8 -  ! Existe un patrón definido, por lo tanto la condición del WHERE se 
  establece con un LIKE
.head 8 -  Set sCondicionDeCentros = 'centro_costo LIKE  \'' ||
fciCentroCosto.ChildrenLIKE (dfCentroCosto)
|| '\''
.head 7 -  !
.head 7 -  ! Se inicializan las input variables de Centros de Costo para el reporte
.head 7 -  Set sCentroCosto = dfCentroCosto
.head 7 -  Set sDescripcionCentro = dfDescCentroCosto
.head 6 -  !
.head 6 -  ! Establecer los títulos del reporte
.head 6 +  If rbContaFiscal
.head 7 -  Set sTitulo4 = 'Contabilidad Fiscal. '
.head 7 -  Set sConta = CONTA_FISCAL
.head 6 +  Else 
.head 7 -  Set sTitulo4 = 'Contabilidad Corporativa. '
.head 7 -  Set sConta = CONTA_CORP
.head 6 -  !
.head 6 +  If rbMonLocal
.head 7 -  Set sTitulo4 = sTitulo4 || 'Moneda Local. '
.head 7 -  Set sMoneda = 'L'
.head 6 +  Else If rbMonDolares
.head 7 -  Set sTitulo4 = sTitulo4 || 'Moneda Dólar. '
.head 7 -  Set sMoneda = 'D'
.head 6 +  Else 
.head 7 -  ! Set sTitulo4 = sTitulo4 || 'Moneda Dólar. '
.head 7 -  Set sMoneda = 'A'
.head 6 -  !
.head 6 -  ! Into Variables 
.head 6 -  Set sMontoMayor = ' debito_local, credito_local, debito_dolar, credito_dolar '
.head 6 -  !
.head 6 +  If bCompaniaUsaUnidades AND cbImpUnidades
.head 7 -  Set sMontoMayor = sMontoMayor || ', debito_unidades, credito_unidades '
.head 6 -  !
.head 6 -  Set bOk = TRUE
.head 6 -  !
.head 6 -  ! Crear odómetro para la creación de la lista de saldos
.head 6 -  Call SalCreateWindow( frmOdometroCG, hWndForm,"Balance de Comprobación" )
.head 6 -  Call SalYieldStartMessages( frmOdometroCG.pbCancelar )
.head 6 -  !
.head 6 -  ! Construir la lista de saldos
.head 6 -  Call SalStrSetBufferLength( sCuentaProcesando, 50 )
.head 6 -  Set sCondicionCentrosLista = sCondicionDeCentros
.head 6 -  !
.head 6 -  Set nTotalCuentas = 0
.head 6 -  !
.head 6 +  ! EHG CG 5.05
.head 7 -  ! Set bListaOk = CreeListaSaldos(
hsqlCuenta,
hsqlSaldo,
sSPSCompania,
sCondicionCentrosLista,
' cuenta_contable >= \'' || sCuentaInicial || '\' AND
 cuenta_contable <= \'' ||  sCuentaFinal || '\'',
sFechaInicial,
sFechaFinal,
sConta, FALSE,
hWndForm,
50, sCuentaProcesando,
AM_Procesing,
nLinkList,
bCreacionAbortada )
.head 6 -  !
.head 6 -  Set bListaOk = CreeListaSaldos(
hsqlCuenta,
hsqlSaldo,
sSPSCompania,
sCondicionCentrosLista,
' cuenta_contable >= \'' || sCuentaInicial || '\' AND
 cuenta_contable <= \'' ||  sCuentaFinal || '\'',
sFechaInicial,
sFechaFinal,
sConta, FALSE, cbSaldosAlCierre,
hWndForm,
50, sCuentaProcesando,
AM_Procesing,
nLinkList,
bCreacionAbortada )
.head 6 -  !
.head 6 -  ! Destruir odómetro
.head 6 -  Call SalDestroyWindow( frmOdometroCG )
.head 6 -  Call SalYieldStopMessages(  )
.head 6 -  Call VisWaitCursor( FALSE )
.head 6 -  !
.head 6 -  ! Si hubo algun error creando la lista de saldos
.head 6 +  If NOT bListaOk
.head 7 -  Set bOk = FALSE
.head 6 -  !
.head 6 +  If nTotalCuentas = 0 OR nTotalCuentas = NUMBER_Null
.head 7 -  Call SPSMessageBox(
'No existen cuentas que cumplan con las restricciones establecidas.',
'Balance de Comprobación', MBF_IconAsterisk, CONTINUAR )
.head 7 -  Call VisWaitCursor( FALSE )
.head 7 -  Return FALSE
.head 6 -  !
.head 6 -  ! Desplegar el error al crear la lista después de destruir el odómetro y desactivar el
.head 6 -  ! wait cursor
.head 6 +  If NOT bListaOk AND NOT bCreacionAbortada
.head 7 -  Call SPSMessageBox(
        'Problemas creando la lista de saldos.',
        'Balance de Comprobación', MBF_IconHand, CONTINUAR )
.head 6 -  !
.head 6 +  If NOT bOk
.head 7 -  Call VisWaitCursor( FALSE )
.head 7 -  Return FALSE
.head 6 -  !
.head 6 -  ! Se pudieron contar las cuentas a procesar y se creó bien las lista de saldos...continuar
.head 6 -  !
.head 6 -  ! Preparar el comando SQL y títulos del reporte
.head 6 +  ! ! GCE S2C13260B 24/07/2003 A.acepta_unidades
.head 7 -  ! Set sSqlCmdReport =
'SELECT A.cuenta_contable, A.descripcion, A.saldo_normal'
.head 6 -  Set sSqlCmdReport =
'SELECT A.cuenta_contable, A.descripcion, A.saldo_normal, A.acepta_unidades,A.tipo, A.tipo_detallado'
.head 6 -  !
.head 6 -  !
.head 6 +  If cbDetalleMov
.head 7 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 8 -  ! Se agrega el campo de NITs.
.head 7 -  ! Agregar las columnas del mayor y del centro de costo en caso de detalle
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || ',
	C.centro_costo, C.descripcion,
	D.asiento, D.fecha, D.referencia, D.fuente,
	D.tipo_asiento, D.origen, D.nit, ' || sMontoMayor
.head 6 -  !
.head 6 -  Set sSqlCmdReport = sSqlCmdReport || "
FROM " || ConcatCompany( 'cuenta_contable A, ' ) ||
	ConcatCompany( 'centro_cuenta B ')
.head 6 -  !
.head 6 +  If cbDetalleMov
.head 7 -  ! Agregar el centro de costo y el mayor, cuando hay detalle
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || ', ' ||
	ConcatCompany( 'centro_costo C, ' ) ||
	ConcatCompany( 'mayor D ' )
.head 6 +  ! ! GCE S2C13260B 24/07/2003
.head 7 -  ! Set sSqlCmdReport = sSqlCmdReport || '
INTO
:dlgBalanceComprobacion.fciBalanceComp.sCuenta,
:dlgBalanceComprobacion.fciBalanceComp.sDescripcion,
:dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal'
.head 6 -  Set sSqlCmdReport = sSqlCmdReport || '
INTO
:dlgBalanceComprobacion.fciBalanceComp.sCuenta,
:dlgBalanceComprobacion.fciBalanceComp.sDescripcion,
:dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal,
:sUsaUnidades,
:dlgBalanceComprobacion.sTipoCta,
:dlgBalanceComprobacion.sTipoDetalladoCta
'
.head 6 -  !
.head 6 +  If cbDetalleMov
.head 7 -  ! Agregar las into-variables de la parte del mayor y del centro de costo
.head 7 +  If bCompaniaUsaUnidades AND cbImpUnidades
.head 8 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 9 -  ! Se agrega el campo de NITs.
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ',
:dlgBalanceComprobacion.sCentroCosto, :dlgBalanceComprobacion.sDescripcionCentro,
:dlgBalanceComprobacion.sAsiento, :dlgBalanceComprobacion.dtFecha,
:dlgBalanceComprobacion.sReferencia, :dlgBalanceComprobacion.sFuente,
:dlgBalanceComprobacion.sTipoAsiento, :dlgBalanceComprobacion.sOrigen, :dlgBalanceComprobacion.vsNit,
:dlgBalanceComprobacion.nDebitosLoc, :dlgBalanceComprobacion.nCreditosLoc,
:dlgBalanceComprobacion.nDebitosDol, :dlgBalanceComprobacion.nCreditosDol,
:dlgBalanceComprobacion.nDebitosUnd, :dlgBalanceComprobacion.nCreditosUnd'
.head 7 +  Else 
.head 8 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 9 -  ! Se agrega el campo de NITs.
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || ',
:dlgBalanceComprobacion.sCentroCosto, :dlgBalanceComprobacion.sDescripcionCentro,
:dlgBalanceComprobacion.sAsiento, :dlgBalanceComprobacion.dtFecha,
:dlgBalanceComprobacion.sReferencia, :dlgBalanceComprobacion.sFuente,
:dlgBalanceComprobacion.sTipoAsiento, :dlgBalanceComprobacion.sOrigen, :dlgBalanceComprobacion.vsNit,
:dlgBalanceComprobacion.nDebitosLoc, :dlgBalanceComprobacion.nCreditosLoc,
:dlgBalanceComprobacion.nDebitosDol, :dlgBalanceComprobacion.nCreditosDol
'
.head 6 -  !
.head 6 -  Set sSqlCmdReport = sSqlCmdReport || '
WHERE 	A.cuenta_contable = B.cuenta_contable
AND	B.estado <> \'' || CENTROCUENTA_INACTIVO || '\' '
.head 6 -  !
.head 6 +  If dfCuentaInicial
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
AND	A.cuenta_contable >= \'' || dfCuentaInicial || '\' '
.head 6 -  !
.head 6 +  If dfCuentaFinal
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
AND	A.cuenta_contable <= \'' ||  dfCuentaFinal || '\' '
.head 6 -  !
.head 6 +  If sCondicionDeCentros
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
AND 	B.' || sCondicionDeCentros
.head 6 -  !
.head 6 +  If cbSoloCtaMayor
.head 7 -  ! Agregar LIKE para seleccionar solo las cuentas del mayor
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
AND A.cuenta_contable LIKE \'' || fciBalanceComp.SoloMayorLIKE() || '\' '
.head 7 -  Set sTitulo2 = 'Incluye solo cuentas de mayor'
.head 6 +  Else If dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta()
.head 7 -  ! Se quiere imprimir solo hasta cuentas del nivel dfCantNiveles
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
AND A.cuenta_contable LIKE \'' || fciBalanceComp.SoloHastaNivelLIKE( dfCantNiveles ) || '\' '
.head 7 -  Set sTitulo2 = 'Incluye solo cuentas hasta el nivel ' ||
    SalNumberToStrX( dfCantNiveles, 0 )
.head 6 +  Else 
.head 7 -  Set sTitulo2 = 'Incluye todas las cuentas del rango: ' || dfCuentaInicial || ' .. ' ||
dfCuentaFinal
.head 6 -  !
.head 6 -  ! EHG  CG BetaII
.head 6 +  If cbSaldosAlCierre
.head 7 -  Set sTitulo2 = sTitulo2 || 'con saldo antes de cierre'
.head 6 -  !
.head 6 +  If cbDetalleMov
.head 7 -  ! Si se trata de un reporte con detalle agregar el join con el mayor
.head 7 -  ! y el rango de fechas
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || '
AND 	D.cuenta_contable = A.cuenta_contable
AND	D.cuenta_contable = B.cuenta_contable
AND	D.centro_costo = B.centro_costo
AND 	D.centro_costo = C.centro_costo
AND	D.fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || '
AND 	D.fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE ) || '
AND 	D.contabilidad IN ( \'' || sConta || '\', \'' || CONTA_AMBAS || '\' ) '
.head 7 -  !
.head 7 -  ! agregar la union con las cuentas que no poseen movimientos en el mayor
.head 7 +  ! GCE S2B13483 29/07/2003
.head 8 -  ! Set sSqlCmdReport = sSqlCmdReport || "
UNION 	ALL
SELECT A.cuenta_contable, A.descripcion, A.saldo_normal,"
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || "
UNION 	ALL
SELECT A.cuenta_contable, A.descripcion, A.saldo_normal, A.acepta_unidades,"
.head 7 -  !
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || " ' ', ' ',"
.head 7 -  !
.head 7 +  If bCompaniaUsaUnidades AND cbImpUnidades
.head 8 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 9 -  ! Se agrega el campo de NITs.
.head 9 -  ! En esta caso se coloca el NIT_NO_DEFINIDO.
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || " ' ', " ||
SQLSystemDate( ) || ", ' ', ' ', ' ', ' ', '" || NIT_NO_DEFINIDO || "', 0, 0, 0, 0, 0, 0
FROM " || ConcatCompany( 'cuenta_contable A, ' ) ||
	ConcatCompany( 'centro_cuenta B ' ) || '
WHERE 	A.cuenta_contable = B.cuenta_contable
AND	B.estado <> \'' || CENTROCUENTA_INACTIVO || '\' '
.head 7 +  Else 
.head 8 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 9 -  ! Se agrega el campo de NITs.
.head 9 -  ! En esta caso se coloca el NIT_NO_DEFINIDO.
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || " ' ', " ||
SQLSystemDate( ) || ", ' ', ' ', ' ', ' ', '" || NIT_NO_DEFINIDO || "', 0, 0, 0, 0
FROM " || ConcatCompany( 'cuenta_contable A, ' ) ||
	ConcatCompany( 'centro_cuenta B ' ) || '
WHERE 	A.cuenta_contable = B.cuenta_contable
AND	B.estado <> \'' || CENTROCUENTA_INACTIVO || '\' '
.head 7 -  !
.head 7 +  If dfCuentaInicial
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
AND	A.cuenta_contable >= \'' || dfCuentaInicial || '\' '
.head 7 -  !
.head 7 +  If dfCuentaFinal
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
AND	A.cuenta_contable <= \'' ||  dfCuentaFinal || '\' '
.head 7 -  !
.head 7 +  If sCondicionDeCentros
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
AND B.' || sCondicionDeCentros
.head 7 -  !
.head 7 +  If dfCantNiveles < fciGlobalesCG.GetCantNivelesCuenta()
.head 8 -  ! Se quiere imprimir solo hasta cuentas del nivel dfCantNiveles
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
AND 	A.cuenta_contable LIKE \'' || fciBalanceComp.SoloHastaNivelLIKE( dfCantNiveles ) || '\' '
.head 7 -  !
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || "
AND 	0= (
	SELECT 	COUNT(*)
	FROM 	" || ConcatCompany( 'mayor C' ) || '
	WHERE 	A.cuenta_contable = C.cuenta_contable
	AND	fecha >= ' || SQLFormatDateTime( GetMinDate( dfFechaInicial ), 'dlgBalanceComprobacion.dfFechaInicial', FALSE ) || '
	AND 	fecha <= ' || SQLFormatDateTime( GetMaxDate( dfFechaFinal ), 'dlgBalanceComprobacion.dfFechaFinal', TRUE ) || '
	AND 	contabilidad IN ( \'' || sConta || '\', \'' || CONTA_AMBAS || '\' )  '
.head 7 -  !
.head 7 +  If sCondicionDeCentros
.head 8 -  Set sSqlCmdReport = sSqlCmdReport || '
		AND 	C.' || sCondicionDeCentros || ')'
.head 7 +  Else 
.head 8 -  Set sSqlCmdReport = sSqlCmdReport ||  ')'
.head 6 -  !
.head 6 -  ! Ordenar por cuenta_contable
.head 6 -  Set sSqlCmdReport = sSqlCmdReport || '
ORDER BY 1'
.head 6 +  If bCompaniaUsaUnidades AND cbDetalleMov
.head 7 -  ! Ordenar el detalle también por fecha
.head 7 +  ! GCE 12-09-2003 S2C13712
.head 8 -  ! Set sSqlCmdReport = sSqlCmdReport || ', 7'
.head 7 -  Set sSqlCmdReport = sSqlCmdReport || ', 8'
.head 6 -  ! Finaliza creacion de SQL para el reporte
.head 6 -  !
.head 6 -  !
.head 6 +  If SalIsNull( dfCentroCosto )
.head 7 -  Set sTitulo3 = dfDescCentroCosto || '. '
.head 6 +  Else 
.head 7 -  Set sTitulo3 = 'Centro de Costo: ' || dfDescCentroCosto || '. '
.head 6 -  !
.head 6 +  If rbSinMovTodas
.head 7 -  Set sTitulo3 = sTitulo3 || 'Cuentas con y sin movimientos.'
.head 6 +  Else If rbSinMovNo
.head 7 -  Set sTitulo3 = sTitulo3 || 'Cuentas con movimientos. '
.head 6 +  Else If rbSinMovSaldos
.head 7 -  Set sTitulo3 = sTitulo3 || 'Cuentas con movimientos o saldo diferente de cero.'
.head 6 -  !
.head 6 -  Set sTitulo1 = 'Balance de Comprobación del ' ||
    SalFmtFormatDateTime( dfFechaInicial, 'dd/MM/yyyy' ) || ' al ' ||
    SalFmtFormatDateTime( dfFechaFinal, 'dd/MM/yyyy' )
.head 6 -  !
.head 6 -  !
.head 6 -  ! Inicializar items del reporte
.head 6 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 7 -  ! Se agrega el campo de NITs.
.head 6 -  Set sREP_BalanceVar =
':dlgBalanceComprobacion.sCentroCosto,
:dlgBalanceComprobacion.sDescripcionCentro,
:dlgBalanceComprobacion.fciBalanceComp.sCuenta,
:dlgBalanceComprobacion.fciBalanceComp.sDescripcion,
:dlgBalanceComprobacion.nSaldoInicialLoc,
:dlgBalanceComprobacion.nSaldoInicialDol,
:dlgBalanceComprobacion.nSaldoInicialUnd,
:dlgBalanceComprobacion.nSaldoFinalLoc,
:dlgBalanceComprobacion.nSaldoFinalDol,
:dlgBalanceComprobacion.nSaldoFinalUnd,
:dlgBalanceComprobacion.nTotalDebitosLoc,
:dlgBalanceComprobacion.nTotalDebitosDol,
:dlgBalanceComprobacion.nTotalDebitosUnd,
:dlgBalanceComprobacion.nTotalCreditosLoc,
:dlgBalanceComprobacion.nTotalCreditosDol,
:dlgBalanceComprobacion.nTotalCreditosUnd,
:dlgBalanceComprobacion.nCambioNetoLoc,
:dlgBalanceComprobacion.nCambioNetoDol,
:dlgBalanceComprobacion.nCambioNetoUnd,
:dlgBalanceComprobacion.sAsiento,
:dlgBalanceComprobacion.dtFecha,
:dlgBalanceComprobacion.sReferencia,
:dlgBalanceComprobacion.sFuente,
:dlgBalanceComprobacion.sTipoAsiento,
:dlgBalanceComprobacion.sOrigen,
:dlgBalanceComprobacion.nDebitosLoc,
:dlgBalanceComprobacion.nDebitosDol,
:dlgBalanceComprobacion.nDebitosUnd,
:dlgBalanceComprobacion.nCreditosLoc,
:dlgBalanceComprobacion.nCreditosDol,
:dlgBalanceComprobacion.nCreditosUnd,
:dlgBalanceComprobacion.sImprimirCuenta,
:dlgBalanceComprobacion.sImprimirDetalle,
:dlgBalanceComprobacion.vsNit,
:dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal, 
:dlgBalanceComprobacion.nSigno'
.head 6 -  !
.head 6 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 7 -  ! Se agrega el campo de NITs.
.head 6 -  Set sREP_BalanceInp =
'sCentroCosto, 
sDescripcionCentro, 
sCuentaContable, 
sDescripcionCuenta,
nSaldoInicialLoc, 
nSaldoInicialDol, 
nSaldoInicialUnd, 
nSaldoFinalLoc, 
nSaldoFinalDol, 
nSaldoFinalUnd, 
nTotalDebitosLoc, 
nTotalDebitosDol, 
nTotalDebitosUnd, 
nTotalCreditosLoc, 
nTotalCreditosDol, 
nTotalCreditosUnd, 
nCambioNetoLoc, 
nCambioNetoDol, 
nCambioNetoUnd, 
sAsiento,
dtFecha, 
sReferencia, 
sFuente, 
sTipoAsiento, 
sOrigen, 
nDebitosLoc, 
nDebitosDol, 
nDebitosUnd, 
nCreditosLoc, 
nCreditosDol, 
nCreditosUnd,
sImprimirCuenta, 
sImprimirDetalle,
vsNit,
sSaldoNormal,
nSigno'
.head 6 -  !
.head 6 -  ! Crear el reporte
.head 6 -  Return ShowReport (sREP_BalanceVar, sREP_BalanceInp, sTitulo1, sTitulo2, sTitulo3, sTitulo4 )
.head 6 -  !
.head 5 +  Else 
.head 6 -  Return FALSE
.head 3 +  Function: InitVariables
.head 4 -  Description: Inicializa variables del reporte
.head 4 -  Returns 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 -  Local variables 
.head 4 +  Actions 
.head 5 -  !
.head 5 -  ! Si no hay detalle, inicializar variables relacionadas con los items del detalle
.head 5 -  Set dtFecha = DATETIME_Null
.head 5 -  Set sReferencia = ''
.head 5 -  Set sFuente = ''
.head 5 -  Set sTipoAsiento = ''
.head 5 -  Set sOrigen = ''
.head 5 -  !
.head 5 -  ! Inicializar el total de cuentas
.head 5 -  Set nTotalCuentas = 0
.head 5 -  !
.head 5 -  ! Inicializar totales
.head 5 -  Set nTotalCreditosUnd = 0
.head 5 -  Set nTotalDebitosUnd = 0
.head 5 -  !
.head 5 -  Set nRepTotalCreditosLoc = 0
.head 5 -  Set nRepTotalCreditosDol = 0
.head 5 -  Set nRepTotalDebitosLoc = 0
.head 5 -  Set nRepTotalDebitosDol = 0
.head 5 -  Set nRepTotalSaldoInicialLoc = 0
.head 5 -  Set nRepTotalSaldoInicialDol = 0
.head 5 -  Set nRepTotalSaldoFinalLoc = 0
.head 5 -  Set nRepTotalSaldoFinalDol = 0
.head 5 -  !
.head 5 -  Set nRepTotalCreditosUnd = 0
.head 5 -  Set nRepTotalDebitosUnd = 0
.head 5 -  Set nRepTotalSaldoInicialUnd = 0
.head 5 -  Set nRepTotalSaldoFinalUnd = 0
.head 5 -  !
.head 5 -  Set sCurCuenta = ' '
.head 5 -  Set sCurCuentaPadre = ''
.head 5 -  !
.head 5 -  ! Inicializar totales relativos a unidades
.head 5 -  Set nSaldoInicialUnd = NUMBER_Null
.head 5 -  Set nTotalDebitosUnd = NUMBER_Null
.head 5 -  Set nTotalCreditosUnd = NUMBER_Null
.head 5 -  Set nSaldoFinalUnd = NUMBER_Null
.head 3 +  Function: GetCuentasBalance
.head 4 -  Description: Devuelve las cuentas inicial y final de acuerdo a lo digitado en
en los data fields
.head 4 +  Returns 
.head 5 -  Boolean: 
.head 4 +  Parameters 
.head 5 -  Receive String: sParCuentaIni
.head 5 -  Receive String: sParCuentaFin
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  String: sCaracter
.head 5 -  String: sFmtIMask
.head 5 -  Number: nCuentaCodSize
.head 5 -  String: sCodigoConFormato
.head 5 -  String: sCuentaIni
.head 5 -  String: sCuentaFin
.head 5 -  Number: nIndice
.head 5 -  Number: nIniBloque
.head 4 +  Actions 
.head 5 +  If dfCuentaFinal AND ( dfCuentaInicial > dfCuentaFinal )
.head 6 -  Call SPSMessageBox(
       'Error, el rango de cuentas debe ser ascendente',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 6 -  Return FALSE
.head 5 -  Set sFmtIMask = fciGlobalesCG.GetPatron()
.head 5 -  Set nCuentaCodSize = SalStrLength( sFmtIMask )
.head 5 -  ! Tomar las cuentas definidas en los data fields
.head 5 -  Set sParCuentaIni = dfCuentaInicial
.head 5 -  Set sParCuentaFin = dfCuentaFinal
.head 5 -  !
.head 5 +  If sParCuentaIni = ''
.head 6 -  ! Poner la cuenta inicial en cero y la final en el maximo
.head 6 -  Set sParCuentaIni = fciGlobalesCG.GetPatronRangoInicial()
.head 6 +  If NOT sParCuentaFin
.head 7 -  ! NO hay límite superior poner el máximo
.head 7 -  Set sParCuentaFin = fciGlobalesCG.GetPatronRangoFinal()
.head 7 -  Return TRUE
.head 6 -  !
.head 6 -  ! A partir del segundo nivel, llenar todo con el final del patrón
.head 6 -  Set nIndice = 0
.head 6 +  Loop 
.head 7 -  Set sCaracter = SalStrMidX( sParCuentaFin, nIndice, 1 )
.head 7 +  If NOT CaracterAlfanum( sCaracter )
.head 8 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIndice+1 )
.head 8 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX(
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIndice-1 )
.head 8 -  Break 
.head 7 -  Set nIndice = nIndice + 1
.head 7 +  If nIndice >= nCuentaCodSize
.head 8 -  Break 
.head 5 +  Else 
.head 6 +  If NOT sParCuentaFin
.head 7 -  ! NO hay límite superior poner el máximo
.head 7 -  Set sParCuentaFin = fciGlobalesCG.GetPatronRangoFinal()
.head 7 -  Return TRUE
.head 6 -  !
.head 6 -  ! Buscar el primer bloque diferentes de las cuentas
.head 6 -  Set nIndice = 0
.head 6 -  Set nIniBloque = 0
.head 6 +  Loop 
.head 7 -  Set sCaracter = SalStrMidX( sParCuentaFin, nIndice, 1 )
.head 7 +  If NOT CaracterAlfanum( sCaracter )
.head 8 -  ! Termino el bloque, comparar
.head 8 -  Set sCuentaIni = SalStrMidX( sParCuentaIni, nIniBloque,
                                               nIndice - nIniBloque )
.head 8 -  Set sCuentaFin = SalStrMidX( sParCuentaFin, nIniBloque,
                                                 nIndice - nIniBloque )
.head 8 +  If ( sCuentaIni != sCuentaFin )
.head 9 -  ! Llenar de Zs a partir del mismo bloque
.head 9 +  If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni )
.head 10 -  ! Llenar de Zs a partir del siguiente bloque
.head 10 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 10 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX(
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize - nIniBloque )
.head 9 +  Else 
.head 10 -  ! Llenar de Zs a partir del siguiente bloque diferente
.head 10 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIndice+1 )
.head 10 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX(
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize - ( nIndice+1) )
.head 9 -  Break 
.head 8 +  Else If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni )
.head 9 -  ! Llenar de Zs a partir del bloque analizado
.head 9 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 9 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX(
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIniBloque )
.head 9 -  Break 
.head 8 +  Else 
.head 9 -  ! Guardar el inicio de bloque
.head 9 -  Set nIniBloque = nIndice + 1
.head 7 +  Else If nIndice = nCuentaCodSize-1
.head 8 -  ! Termino el bloque (es el último), comparar
.head 8 -  Set sCuentaIni = SalStrMidX( sParCuentaIni, nIniBloque,
                                               nIndice - nIniBloque + 1 )
.head 8 +  If ( SalStrRepeatX( '0', SalStrLength( sCuentaIni ) ) = sCuentaIni )
.head 9 -  ! Llenar a partir del bloque analizado de Zs ( bloques desiguales o en cero )
.head 9 -  Set sCodigoConFormato = SalStrLeftX( sParCuentaFin, nIniBloque )
.head 9 -  Set sParCuentaFin = sCodigoConFormato || SalStrRightX(
    fciGlobalesCG.GetPatronRangoFinal(), nCuentaCodSize-nIniBloque )
.head 8 -  Break 
.head 7 -  Set nIndice = nIndice + 1
.head 5 -  Return TRUE
.head 3 +  Function: ConstruyeLineaReporte
.head 4 -  Description: Construye la linea del reporte
.head 4 +  Returns 
.head 5 -  Boolean: ! resultado de la funcion CalcularSaldos
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  String: sSqlCmd
.head 5 -  Boolean: bExiste
.head 5 -  Number: nSaldoIniLoc
.head 5 -  Number: nSaldoIniDol
.head 5 -  Number: nSaldoFinLoc
.head 5 -  Number: nSaldoFinDol
.head 5 -  Number: nSaldoIniUnd
.head 5 -  Number: nSaldoFinUnd
.head 5 -  Boolean: bCambiaContadorCuenta
.head 5 -  !
.head 5 -  Number: n
.head 5 -  Number: nNiveles
.head 4 +  Actions 
.head 5 -  !
.head 5 -  Set sImprimirCuenta = 'SI'
.head 5 -  !
.head 5 -  Set sImprimirDetalle = ''
.head 5 -  !
.head 5 -  Set bCambiaContadorCuenta  = FALSE
.head 5 -  !
.head 5 +  If sMoneda = LOCAL
.head 6 +  If NOT CalculeSaldos(
dfCentroCosto, 
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nLinkList, 
nSaldoIniLoc, 
nTotalDebitosLoc, 
nTotalCreditosLoc, 
nSaldoFinLoc )
.head 7 -  Call SPSMessageBox(  
       'Problemas calculando saldos',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 7 -  Return FALSE
.head 6 -  ! !
.head 6 -  ! ! Poner el monto en débitos o créditos según corresponda
.head 6 -  Set nSaldoIniLoc = NumberRound(nSaldoIniLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalDebitosLoc = NumberRound(nTotalDebitosLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalCreditosLoc = NumberRound(nTotalCreditosLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nSaldoFinLoc = NumberRound(nSaldoFinLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  !
.head 6 -  ! Poner el monto en débitos o créditos según corresponda
.head 6 +  If nCreditosLoc OR nDebitosLoc
.head 7 -  Set sImprimirDetalle = 'SI'
.head 5 +  Else If sMoneda = DOLAR
.head 6 +  If NOT CalculeSaldos(
dfCentroCosto, 
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nLinkList, 
nSaldoIniDol, 
nTotalDebitosDol, 
nTotalCreditosDol, 
nSaldoFinDol )
.head 7 -  Call SPSMessageBox(  
       'Problemas calculando saldos',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 7 -  Return FALSE
.head 6 -  ! !
.head 6 -  Set nSaldoIniDol = NumberRound(nSaldoIniDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalDebitosDol = NumberRound(nTotalDebitosDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalCreditosDol = NumberRound(nTotalCreditosDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nSaldoFinDol = NumberRound(nSaldoFinDol,fciGlobalesCG.nCantDecimales)
.head 6 -  !
.head 6 -  ! Poner el monto en débitos o créditos según corresponda
.head 6 +  If nCreditosDol OR nDebitosDol
.head 7 -  Set sImprimirDetalle = 'SI'
.head 5 +  Else 
.head 6 -  !
.head 6 -  Set sMoneda = LOCAL
.head 6 +  If NOT CalculeSaldos(
dfCentroCosto, 
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nLinkList, 
nSaldoIniLoc, 
nTotalDebitosLoc, 
nTotalCreditosLoc, 
nSaldoFinLoc )
.head 7 -  Call SPSMessageBox(  
       'Problemas calculando saldos',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 7 -  Return FALSE
.head 6 -  !
.head 6 -  ! !
.head 6 -  Set nSaldoIniLoc = NumberRound(nSaldoIniLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalDebitosLoc = NumberRound(nTotalDebitosLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalCreditosLoc = NumberRound(nTotalCreditosLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nSaldoFinLoc = NumberRound(nSaldoFinLoc,fciGlobalesCG.nCantDecimales)
.head 6 -  Set sMoneda = DOLAR
.head 6 +  If NOT CalculeSaldos(
dfCentroCosto, 
fciBalanceComp.sCuenta,
'X',
sConta,
sMoneda,
nLinkList, 
nSaldoIniDol, 
nTotalDebitosDol, 
nTotalCreditosDol, 
nSaldoFinDol )
.head 7 -  Call SPSMessageBox(  
       'Problemas calculando saldos',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 7 -  Return FALSE
.head 6 -  !
.head 6 -  ! !
.head 6 -  Set nSaldoIniDol = NumberRound(nSaldoIniDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalDebitosDol = NumberRound(nTotalDebitosDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalCreditosDol = NumberRound(nTotalCreditosDol,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nSaldoFinDol = NumberRound(nSaldoFinDol,fciGlobalesCG.nCantDecimales)
.head 6 -  ! Poner el monto en débitos o créditos según corresponda
.head 6 +  If nCreditosLoc OR nDebitosLoc OR nDebitosDol OR nCreditosDol
.head 7 -  Set sImprimirDetalle = 'SI'
.head 6 -  ! Se restaura la moneda como estaba
.head 6 -  Set sMoneda = AMBAS
.head 5 -  !
.head 5 -  ! Verificar si la compañia y la cuenta en cuestion usan unidades para calcular el saldo y si el usuario lo desea
.head 5 +  ! ! GCE S2C13260B 24/07/2003
.head 6 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 5 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'  
.head 6 +  If NOT CalculeSaldos(
dfCentroCosto, 
fciBalanceComp.sCuenta,
'X',
sConta,
'U',
nLinkList, 
nSaldoIniUnd, 
nTotalDebitosUnd, 
nTotalCreditosUnd, 
nSaldoFinUnd )
.head 7 -  Call SPSMessageBox(  
       'Problemas calculando saldos',
       'Balance de Comprobación',
       MBF_IconHand, CONTINUAR )
.head 7 -  Return FALSE
.head 6 -  ! !
.head 6 -  Set nSaldoIniUnd = NumberRound(nSaldoIniUnd,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalDebitosUnd = NumberRound(nTotalDebitosUnd,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nTotalCreditosUnd = NumberRound(nTotalCreditosUnd,fciGlobalesCG.nCantDecimales)
.head 6 -  Set nSaldoFinUnd = NumberRound(nSaldoFinUnd,fciGlobalesCG.nCantDecimales)
.head 5 +  Else 
.head 6 -  Set nSaldoIniUnd = NUMBER_Null
.head 6 -  Set nTotalDebitosUnd = NUMBER_Null
.head 6 -  Set nTotalCreditosUnd = NUMBER_Null
.head 6 -  Set nSaldoFinUnd = NUMBER_Null
.head 5 -  !
.head 5 -  ! Verificar cuentas con/sin movimiento
.head 5 +  If rbSinMovNo
.head 6 +  If NOT ( nTotalDebitosLoc OR nTotalCreditosLoc OR nTotalDebitosDol OR nTotalCreditosDol )
.head 7 -  Set sImprimirCuenta = ''
.head 7 -  Set sImprimirDetalle = ''
.head 5 +  Else If rbSinMovSaldos AND NOT nSaldoIniLoc AND NOT nSaldoFinLoc AND NOT nSaldoIniDol AND NOT nSaldoFinDol
.head 6 +  If NOT ( nTotalDebitosLoc OR nTotalCreditosLoc OR nTotalDebitosDol OR nTotalCreditosDol)
.head 7 -  Set sImprimirCuenta = ''
.head 7 -  Set sImprimirDetalle = ''
.head 5 -  !
.head 5 +  If sImprimirCuenta
.head 6 +  If cbImpCambioNeto
.head 7 -  ! Agregar columna de cambio neto
.head 7 -  Set nCambioNetoLoc = nSaldoFinLoc - nSaldoIniLoc
.head 7 -  Set nCambioNetoDol = nSaldoFinDol - nSaldoIniDol
.head 7 -  !
.head 7 +  ! ! GCE S2C13260B 24/07/2003
.head 8 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 7 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'  
.head 8 -  Set nCambioNetoUnd = nSaldoFinUnd - nSaldoIniUnd
.head 7 +  Else 
.head 8 -  Set nCambioNetoUnd = 0.0
.head 6 +  Else 
.head 7 -  Set nCambioNetoLoc = 0.0
.head 7 -  Set nCambioNetoDol = 0.0
.head 7 -  Set nCambioNetoUnd = 0.0
.head 6 -  !
.head 6 +  If sCurCuenta != fciBalanceComp.sCuenta
.head 7 -  ! Incrementar el total de ctas.
.head 7 -  Set nTotalCuentas = nTotalCuentas + 1
.head 7 -  Set bCambiaContadorCuenta = TRUE
.head 7 +  If sCurCuenta = ' ' OR 
   NOT ( fciBalanceComp.IsDescendant( 
          fciBalanceComp.sCuenta, sCurCuentaPadre ) )
.head 8 -  ! Actualizar variable que tendra la cuenta padre
.head 8 -  Set sCurCuentaPadre = fciBalanceComp.sCuenta
.head 8 -  !
.head 8 -  ! Actualizar totales
.head 8 -  Set nRepTotalDebitosLoc = nRepTotalDebitosLoc + nTotalDebitosLoc
.head 8 -  Set nRepTotalCreditosLoc = nRepTotalCreditosLoc + nTotalCreditosLoc
.head 8 -  Set nRepTotalSaldoInicialLoc = nRepTotalSaldoInicialLoc + nSaldoIniLoc
.head 8 -  Set nRepTotalSaldoFinalLoc = nRepTotalSaldoFinalLoc + nSaldoFinLoc
.head 8 -  !
.head 8 -  Set nRepTotalDebitosDol = nRepTotalDebitosDol + nTotalDebitosDol
.head 8 -  Set nRepTotalCreditosDol = nRepTotalCreditosDol + nTotalCreditosDol
.head 8 -  Set nRepTotalSaldoInicialDol = nRepTotalSaldoInicialDol + nSaldoIniDol
.head 8 -  Set nRepTotalSaldoFinalDol = nRepTotalSaldoFinalDol + nSaldoFinDol
.head 8 -  !
.head 8 -  ! Verificar si la compañia y la cuenta en cuestion usan unidades para calcular el saldo y si el usuario lo desea
.head 8 +  ! ! GCE S2C13260B 24/07/2003
.head 9 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 8 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'  
.head 9 -  ! Actualizar totales de unidades
.head 9 -  Set nRepTotalDebitosUnd = nRepTotalDebitosUnd + nTotalDebitosUnd
.head 9 -  Set nRepTotalCreditosUnd = nRepTotalCreditosUnd + nTotalCreditosUnd
.head 9 -  Set nRepTotalSaldoInicialUnd = nRepTotalSaldoInicialUnd + nSaldoIniUnd
.head 9 -  Set nRepTotalSaldoFinalUnd = nRepTotalSaldoFinalUnd + nSaldoFinUnd
.head 8 +  Else 
.head 9 -  ! Actualizar totales de unidades
.head 9 -  Set nRepTotalDebitosUnd = NUMBER_Null
.head 9 -  Set nRepTotalCreditosUnd = NUMBER_Null
.head 9 -  Set nRepTotalSaldoInicialUnd = NUMBER_Null
.head 9 -  Set nRepTotalSaldoFinalUnd = NUMBER_Null
.head 7 -  ! Guardar cuenta que se analiza
.head 7 -  Set sCurCuenta = fciBalanceComp.sCuenta
.head 6 +  ! ! EHG Se comenta por nueva funcionalidad de la Beta II 500, pues se establecen signos para cada
tipo de cuenta y tipo_detallado
.head 7 -  ! Control de paréntesis
.head 7 +  ! If fciBalanceComp.sSaldoNormal = 'A'
.head 8 -  Set nSaldoInicialLoc = -nSaldoIniLoc
.head 8 -  Set nSaldoInicialDol = -nSaldoIniDol
.head 8 -  Set nSaldoFinalLoc = -nSaldoFinLoc
.head 8 -  Set nSaldoFinalDol = -nSaldoFinDol
.head 8 -  !
.head 8 +  ! ! GCE S2C13260B 24/07/2003
.head 9 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 8 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S' 
.head 9 -  Set nSaldoInicialUnd = -nSaldoIniUnd 
.head 9 -  Set nSaldoFinalUnd = -nSaldoFinUnd 
.head 8 +  Else 
.head 9 -  Set nSaldoInicialUnd =NUMBER_Null
.head 9 -  Set nSaldoFinalUnd = NUMBER_Null 
.head 7 +  ! Else
.head 8 -  Set nSaldoInicialLoc = nSaldoIniLoc
.head 8 -  Set nSaldoFinalLoc = nSaldoFinLoc
.head 8 -  !
.head 8 -  Set nSaldoInicialDol = nSaldoIniDol
.head 8 -  Set nSaldoFinalDol = nSaldoFinDol
.head 8 -  !
.head 8 +  ! ! GCE S2C13260B 24/07/2003
.head 9 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 8 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'  
.head 9 -  Set nSaldoInicialUnd = nSaldoIniUnd 
.head 9 -  Set nSaldoFinalUnd = nSaldoFinUnd 
.head 8 +  Else 
.head 9 -  Set nSaldoInicialUnd = NUMBER_Null
.head 9 -  Set nSaldoFinalUnd = NUMBER_Null
.head 6 -  !
.head 6 -  !
.head 6 -  Set nSaldoInicialLoc = nSaldoIniLoc
.head 6 -  Set nSaldoFinalLoc = nSaldoFinLoc
.head 6 -  !
.head 6 -  Set nSaldoInicialDol = nSaldoIniDol
.head 6 -  Set nSaldoFinalDol = nSaldoFinDol
.head 6 -  !
.head 6 +  ! ! GCE S2C13260B 24/07/2003
.head 7 -  ! If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 6 +  If bCompaniaUsaUnidades AND cbImpUnidades AND sUsaUnidades='S'  
.head 7 -  Set nSaldoInicialUnd = nSaldoIniUnd 
.head 7 -  Set nSaldoFinalUnd = nSaldoFinUnd 
.head 6 +  Else 
.head 7 -  Set nSaldoInicialUnd = NUMBER_Null
.head 7 -  Set nSaldoFinalUnd = NUMBER_Null
.head 5 -  !
.head 5 -  !
.head 5 -  ! ! EHG nueva funcionalidad de CGBETAII500
.head 5 -  Set nSigno = 1
.head 5 -  ! ! Si se trata de balance de situacion con tipo detalle activo o bien el tipo es cuenta de orden el signo es negativo si el saldo
Normal es Acreedor
.head 5 +  If (sTipoCta = TIPO_BALANCE_SITUACION AND sTipoDetalladoCta = TIPO_DETALLE_ACTIVO)
OR (sTipoCta = TIPO_DETALLE_ORDEN)
.head 6 +  If dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal = SALDON_ACREDOR
.head 7 -  Set nSigno = -1
.head 5 -  ! !
.head 5 -  ! ! Si se trata de balance de situacion con tipo detalle pasivo o patrimonio el signo es negativo si el saldo
Normal es Deudor
.head 5 +  Else If sTipoCta = TIPO_BALANCE_SITUACION AND (sTipoDetalladoCta = TIPO_DETALLE_PASIVO
OR sTipoDetalladoCta = TIPO_DETALLE_PATRIMONIO)
.head 6 +  If dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal = SALDON_DEUDOR
.head 7 -  Set nSigno = -1
.head 5 -  ! !
.head 5 -  ! ! Si se trata de estdo de resultados con tipo detalle Ingreso el signo es negativo si el saldo Normal es Deudor
.head 5 +  Else If (sTipoCta = TIPO_ESTADO_RESULTADOS AND sTipoDetalladoCta = TIPO_DETALLE_INGRESO)
.head 6 +  If dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal = SALDON_DEUDOR
.head 7 -  Set nSigno = -1
.head 5 -  ! !
.head 5 -  ! ! Si se trata de de estdo de resultados con tipo detalle gasto el signo es negativo si el saldo Normal es Acreedor
.head 5 +  Else If (sTipoCta = TIPO_ESTADO_RESULTADOS AND sTipoDetalladoCta = TIPO_DETALLE_GASTO)
.head 6 +  If dlgBalanceComprobacion.fciBalanceComp.sSaldoNormal = SALDON_ACREDOR
.head 7 -  Set nSigno = -1
.head 5 -  !
.head 5 -  ! Aqui se debe averiguar el nivel de la cuenta contable y concatenarle los espacios en blanco según sea
.head 5 +  If dlgBalanceComprobacion.cbIndentar
.head 6 +  Set nNiveles = fciBalanceComp.CantNivelesSignificativos(fciBalanceComp.sCuenta)
.head 7 -  !
.head 6 -  Set n = 1
.head 6 -  !
.head 6 +  While n < nNiveles
.head 7 -  Set fciBalanceComp.sCuenta = '   ' || fciBalanceComp.sCuenta
.head 7 -  Set n = n + 1
.head 5 -  !
.head 5 -  !
.head 5 +  If NOT cbDetalleMov
.head 6 -  Set sImprimirDetalle = ''
.head 5 -  !
.head 5 -  Return TRUE
.head 3 +  Function: Help
.head 4 -  Description: Función de despliegue de la ayuda sensitiva al contexto.
Si no es redefinida despliega un mensaje indicando que no existe ayuda.
.head 4 -  Returns 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 -  Local variables 
.head 4 +  Actions 
.head 5 -  Call DesplegarAyuda2( hWndForm, CG_HELP, HELP_Context, CGHLP_BALANCECUENTA, '' )
.head 3 +  Function: Destroy 
.head 4 -  Description: 
.head 4 -  Returns 
.head 4 -  Parameters 
.head 4 -  Static Variables 
.head 4 -  Local variables 
.head 4 +  Actions 
.head 5 -  ! Liberar los handlers
.head 5 -  Call fciBalanceComp.ReleInstance()
.head 5 -  Call fciBalanceMayorizar.ReleInstance()
.head 5 -  ! liberar lista de cuentas
.head 5 -  Call DestruyaListaSaldos( nLinkList )
.head 5 -  Call SPSDisconnect( hsqlCuenta )
.head 5 -  Call SPSDisconnect( hsqlSaldo )
.head 5 -  ! TEMPORALMENTE
.head 5 -  Call SaldosDisconnect()
.head 3 -  !
.head 3 +  Function: GetEndCurrentPerCon
.head 4 -  Description: Devuelve la fecha del  período contable actual para la fecha dada
como parámetro.  Si no existe un período contable, devuelve la fecha
actual.
.head 4 +  Returns 
.head 5 -  Date/Time: 
.head 4 +  Parameters 
.head 5 -  Date/Time: dtPrmFecha
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  Date/Time: dtEndCurrentPerCon
.head 5 -  : fciPC
.head 4 +  Actions 
.head 5 -  Set dtEndCurrentPerCon = dtPrmFecha
.head 5 +  If fciPC.InitInstance ()
.head 6 -  Call fciPC.ProximaFecha (dtPrmFecha, dtEndCurrentPerCon)
.head 6 +  If dtEndCurrentPerCon = DATETIME_Null
.head 7 -  Set dtEndCurrentPerCon = dtPrmFecha
.head 6 -  Call fciPC.ReleInstance ()
.head 5 -  Return dtEndCurrentPerCon
.head 3 +  Function: GetNextDayLastPerCon
.head 4 -  Description: Devuelve la fecha del día siguiente del último período contable para la fecha dada
como parámetro.  Si no existe un período contable anterior, devuelve el primer día
del mes actual.
.head 4 +  Returns 
.head 5 -  Date/Time: 
.head 4 +  Parameters 
.head 5 -  Date/Time: dtPrmFecha
.head 4 -  Static Variables 
.head 4 +  Local variables 
.head 5 -  Date/Time: dtNextDayLastPerCon
.head 5 -  : fciPC
.head 4 +  Actions 
.head 5 -  Set dtNextDayLastPerCon = SalDateMonthBegin (dtPrmFecha)
.head 5 +  If fciPC.InitInstance ()
.head 6 -  Set dtNextDayLastPerCon = fciPC.FechaInicial (dtPrmFecha)
.head 6 +  If dtNextDayLastPerCon = DATETIME_Null
.head 7 -  Set dtNextDayLastPerCon = SalDateMonthBegin (dtPrmFecha)
.head 6 -  Call fciPC.ReleInstance ()
.head 5 -  Return dtNextDayLastPerCon
.head 3 -  !
.head 3 +  Function: ShowReport
.head 4 -  Description: Muestra el reporte correspondiente de acuerdo a los par'ametros seleccionados en 
el diálogo
.head 4 +  Returns 
.head 5 -  Boolean: 
.head 4 +  Parameters 
.head 5 -  String: sPrmREP_BalanceVar
.head 5 -  String: sPrmREP_BalanceInp
.head 5 -  !
.head 5 -  String: sPrmTitulo1
.head 5 -  String: sPrmTitulo2
.head 5 -  String: sPrmTitulo3
.head 5 -  String: sPrmTitulo4
.head 4 -  Static Variables 
.head 4 -  Local variables 
.head 4 +  Actions 
.head 5 -  !
.head 5 +  If rbMonAmbas
.head 6 -  ! Se imprime el reporte en dólares y local sin unidades
.head 6 -  Return ReportStandart.CrearReporte(
    '', 'BCLocDol.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,
    sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte  )
.head 6 -  ! Return InitReport( sSqlCmdReport, 'BCLocDol.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE, sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm )
.head 5 +  Else 
.head 6 -  ! Cuando el reporte es en solamente una moneda, se pueden imprimir las unidades
.head 6 +  If rbMonLocal
.head 7 -  ! Reporte en Moneda Local con o sin unidades
.head 7 +  If bCompaniaUsaUnidades AND cbImpUnidades
.head 8 -  !
.head 8 -  Return ReportStandart.CrearReporte(
    '', 'BCLocUnd.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,
    sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte  )
.head 8 -  ! Return InitReport( sSqlCmdReport, 'BCLocUnd.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
.head 7 +  Else 
.head 8 -  Return ReportStandart.CrearReporte(
    '', 'BCLoc.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,
    sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte  )
.head 8 -  ! Return InitReport( sSqlCmdReport, 'BCLoc.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
.head 6 +  Else 
.head 7 -  ! Reprote en Dólares con o sin unidades
.head 7 +  If bCompaniaUsaUnidades AND cbImpUnidades
.head 8 -  Return ReportStandart.CrearReporte(
    '', 'BCDolUnd.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,
    sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte  )
.head 8 -  ! Return InitReport( sSqlCmdReport, 'BCDolUnd.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
.head 7 +  Else 
.head 8 -  Return ReportStandart.CrearReporte(
    '', 'BCDol.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,
    sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte  )
.head 8 -  ! Return InitReport( sSqlCmdReport, 'BCDol.QRP', sPrmREP_BalanceVar, sPrmREP_BalanceInp, TRUE,sPrmTitulo1, sPrmTitulo2, sPrmTitulo3, sPrmTitulo4, hWndForm, hwndFormReporte )
.head 3 -  !
.head 2 -  Window Parameters 
.head 2 +  Window Variables 
.head 3 -  !
.head 3 -  ! INPUT ITEMS PARA EL REPORTE
.head 3 -  !
.head 3 -  ! La cuenta y descripción se toman del fciBalanceComp
.head 3 -  !
.head 3 -  Number: nSaldoInicialLoc
.head 3 -  Number: nSaldoInicialDol
.head 3 -  Number: nSaldoInicialUnd
.head 3 -  !
.head 3 -  Number: nSaldoFinalLoc
.head 3 -  Number: nSaldoFinalDol
.head 3 -  Number: nSaldoFinalUnd
.head 3 -  !
.head 3 -  Number: nTotalDebitosLoc
.head 3 -  Number: nTotalDebitosDol
.head 3 -  Number: nTotalDebitosUnd
.head 3 -  !
.head 3 -  Number: nTotalCreditosLoc
.head 3 -  Number: nTotalCreditosDol
.head 3 -  Number: nTotalCreditosUnd
.head 3 -  !
.head 3 -  Number: nCambioNetoLoc
.head 3 -  Number: nCambioNetoDol
.head 3 -  Number: nCambioNetoUnd
.head 3 -  !
.head 3 -  String: sCentroCosto
.head 3 -  String: sDescripcionCentro
.head 3 -  String: sAsiento
.head 3 -  Date/Time: dtFecha
.head 3 -  String: sReferencia
.head 3 -  String: sFuente
.head 3 -  String: sTipoAsiento
.head 3 -  String: sOrigen
.head 3 -  !
.head 3 -  Number: nDebitosLoc
.head 3 -  Number: nDebitosDol
.head 3 -  Number: nDebitosUnd
.head 3 -  !
.head 3 -  Number: nCreditosLoc
.head 3 -  Number: nCreditosDol
.head 3 -  Number: nCreditosUnd
.head 3 -  !
.head 3 -  String: sImprimirCuenta
.head 3 -  String: sImprimirDetalle
.head 3 -  !
.head 3 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 4 -  ! Se agrega la variable para los NITs.
.head 3 -  String: vsNit
.head 3 -  !
.head 3 -  ! Hasta aqui los input item para el reporte
.head 3 -  !
.head 3 -  !
.head 3 -  String: sConta
.head 3 -  String: sMoneda
.head 3 -  String: sMontoMayor
.head 3 -  String: sCurCuenta
.head 3 -  String: sCurCuentaPadre
.head 3 -  Number: nTotalCuentas
.head 3 -  !
.head 3 -  Number: nRepTotalCreditosLoc
.head 3 -  Number: nRepTotalCreditosDol
.head 3 -  Number: nRepTotalDebitosLoc
.head 3 -  Number: nRepTotalDebitosDol
.head 3 -  Number: nRepTotalSaldoInicialLoc
.head 3 -  Number: nRepTotalSaldoInicialDol
.head 3 -  Number: nRepTotalSaldoFinalLoc
.head 3 -  Number: nRepTotalSaldoFinalDol
.head 3 -  Number: nRepTotalCreditosUnd
.head 3 -  Number: nRepTotalDebitosUnd
.head 3 -  Number: nRepTotalSaldoInicialUnd
.head 3 -  Number: nRepTotalSaldoFinalUnd
.head 3 -  !
.head 3 -  Number: nErrorReport
.head 3 -  Number: nFetch
.head 3 -  Number: nLinkList
.head 3 -  : fciBalanceComp
.head 3 -  : ReportStandart
.head 3 -  Sql Handle: hsqlCuenta
.head 3 -  Sql Handle: hsqlSaldo
.head 3 -  Window Handle: hwndFormReporte
.head 3 -  String: sSqlCmdReport
.head 3 -  String: sCuentaProcesando
.head 3 -  !
.head 3 +  Boolean: bIndentarReporte
.head 4 -  ! Indica si se deben indentar las cuentas contables dentro del reporte
.head 3 -  !
.head 3 -  : fciBalanceMayorizar
.head 3 -  : fciCentroCosto
.head 3 -  ! ! GCE S2C13260b 22/07/2003
.head 3 +  String: sUsaUnidades
.head 4 -  ! Para el manejo de unidades
.head 3 -  !
.head 3 -  ! ! EHG Beta II CG
.head 3 -  String: sTipoCta
.head 3 -  String: sTipoDetalladoCta
.head 3 -  Number: nSigno
.head 2 +  Message Actions 
.head 3 +  On SAM_Create
.head 4 -  ! SPSConnectWithoutFERS( hsqlCuenta )  AND SPSConnectWithoutFERS( hsqlSaldo
.head 4 +  If ( SPSConnect( hsqlCuenta )  AND SPSConnect( hsqlSaldo ) AND 
   fciBalanceComp.InitInstance() AND fciBalanceMayorizar.InitInstance() )
.head 5 -  Call SalCenterWindow( hWndForm )
.head 5 +  If NOT bDobleMoneda
.head 6 -  Call HideText( 'Moneda', 'G' )
.head 5 +  If NOT bDobleContabilidad
.head 6 -  Call HideText( 'Contabilidad', 'G' )
.head 5 -  ! TEMPORALMENTE
.head 5 -  Call SaldosConnect( SqlDatabase || '/' || SqlUser || '/' || SqlPassword )
.head 5 -  ! ! ! Verificar que la compañia usa o no unidades para determinar si aparecerá o no el
check box de Imprir Unidades
.head 5 +  If bCompaniaUsaUnidades
.head 6 -  Call SalShowWindow( cbImpUnidades )
.head 5 +  Else 
.head 6 -  Call SalHideWindow( cbImpUnidades )
.head 5 -  ! ! !
.head 4 +  Else 
.head 5 -  Call SPSMessageBox(  
        'Error iniciando conección a la base de datos.',
        'Error', MBF_IconHand, CONTINUAR )
.head 5 -  Call SalEndDialog( hWndForm, FALSE )
.head 3 +  On SAM_CreateComplete
.head 4 -  ! Setear valores default
.head 4 -  Set cbSoloCtaMayor = TRUE
.head 4 -  Set cbImpUnidades = TRUE
.head 4 -  Set dfCantNiveles = 1
.head 4 -  Set cbImpCambioNeto = FALSE
.head 4 -  ! Actualizar items que estan relacionados
.head 4 -  Call SalSendMsg( cbSoloCtaMayor, SAM_Click, wParam, lParam )
.head 4 -  Set rbSinMovSaldos = TRUE
.head 4 -  Set rbSinMovNo = FALSE
.head 4 -  Set rbSinMovTodas = FALSE
.head 4 -  ! Deshabilitar el centro de costo en caso de que no esté configurada su utilización
.head 4 +  If NOT bUsarCentrosCosto
.head 5 -  Call DeshabiliteSoloItem( dfCentroCosto )
.head 5 -  Call SalHideWindow( dfDescCentroCosto )
.head 5 -  !
.head 5 -  Call SalHideWindowAndLabel ( dfCentroCosto )
.head 3 +  On SAM_ReportStart
.head 4 -  ! Inicializar el dialog box con el standar y los titulos dados por la aplicacion
.head 4 -  Call ReportStandart.ReportStart( )
.head 4 -  Call ReportStandart.SetTitulosAdicionales( )
.head 4 -  ! Setear la variable que indica si seimprime columna de cambio neto
.head 4 -  Call ReportStandart.ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nImprimirCambioNeto', cbImpCambioNeto )
.head 4 -  !
.head 4 +  ! ljm NITs - Reportes de Balance de Comprobación
.head 5 -  ! Se agrega el indicador de si está activa la opción de NITs.
.head 4 -  Call ReportStandart.ExCryPrmSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'gbUsarNITs', gbUsarNITs )
.head 4 -  !
.head 4 +  When SqlError
.head 5 -  Call SPSDisplayErrorMsg( 'Leyendo Cuentas', 'Error: Función SqlPrepare' )
.head 5 -  Set nErrorReport = 1
.head 5 -  Call SalPostMsg( hWndForm, SAM_ReportFinish, 0, 0 )
.head 5 +  If NOT bDebugging
.head 6 -  Return FALSE
.head 4 -  Call SqlPrepare( hsqlCuenta, sSqlCmdReport ) !Preparar comando Sql
.head 3 +  On SAM_ReportFetchInit
.head 4 +  If nErrorReport = 1
.head 5 -  Return TRUE
.head 4 +  When SqlError
.head 5 -  Call SPSDisplayErrorMsg( 'Report Fetch Init', 'Error: Función SqlExecute' )
.head 5 -  Set nErrorReport = 1
.head 5 -  Call SalPostMsg( hWndForm, SAM_ReportFinish, 0, 0 )
.head 5 +  If NOT bDebugging
.head 6 -  Return FALSE
.head 4 +  If NOT SqlExecute( hsqlCuenta )
.head 5 -  Return FALSE
.head 4 +  Else 
.head 5 -  Call InitVariables() ! Inicializar variables del reporte
.head 5 -  Return TRUE
.head 3 +  On SAM_ReportFetchNext
.head 4 +  When SqlError
.head 5 -  Call SPSDisplayErrorMsg( 'Leyendo Cuentas', 'Error: Función SqlFetchNext' )
.head 5 +  If NOT bDebugging
.head 6 -  Return FALSE
.head 4 +  If SqlFetchNext( hsqlCuenta, nFetch )
.head 5 +  If nFetch = FETCH_Ok
.head 6 -  Return ConstruyeLineaReporte( )
.head 4 -  Return FALSE
.head 3 +  On SAM_ReportNotify
.head 4 -  Call ReportStandart.ReportNotify( )
.head 4 +  ! If lParam = RPT_BeforeReportHeader
.head 5 -  ! Setear la variable que indica si seimprime columna de cambio neto
.head 5 -  Call SalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nImprimirCambioNeto', cbImpCambioNeto )
.head 4 +  If lParam = RPT_BeforeReportFooter
.head 5 -  ! Setear variable con el total de cuentas que se imprimen
.head 5 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nTotalCuentas', nTotalCuentas )
.head 5 -  !
.head 5 -  ! Setear totales de debitos y creditos
.head 5 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalDebitosLoc', nRepTotalDebitosLoc )
.head 5 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalDebitosDol', nRepTotalDebitosDol )
.head 5 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalCreditosLoc', nRepTotalCreditosLoc )
.head 5 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalCreditosDol', nRepTotalCreditosDol )
.head 5 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoInicialLoc', nRepTotalSaldoInicialLoc )
.head 5 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoInicialDol', nRepTotalSaldoInicialDol )
.head 5 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoFinalLoc', nRepTotalSaldoFinalLoc )
.head 5 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoFinalDol', nRepTotalSaldoFinalDol )
.head 5 -  !
.head 5 -  ! Verificar si la compañia y la cuenta en cuestion usan unidades para calcular el saldo y si el usuario lo desea
.head 5 +  If bCompaniaUsaUnidades AND fciBaseCuentaContable.UsaUnidades(fciBalanceComp.sCuenta)  AND cbImpUnidades
.head 6 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalDebitosUnd', nRepTotalDebitosUnd )
.head 6 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalCreditosUnd', nRepTotalCreditosUnd )
.head 6 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoInicialUnd', nRepTotalSaldoInicialUnd )
.head 6 -  Call ReportStandart.ExCryFldSalReportSetNumberVar( 
    SalNumberToWindowHandle( wParam ), 'nRepTotalSaldoFinalUnd', nRepTotalSaldoFinalUnd )
.head 3 +  On SAM_ReportFinish
.head 4 -  ! destruir el form estandar del despliegue
.head 4 -  Call ReportStandart.ReportFinish( ReportStandart.hwndFormRep )
.head 3 +  On AM_Procesing
.head 4 +  If sCuentaProcesando != ''
.head 5 -  Call SalStatusSetText( hWndForm, 'Procesando la Cuenta: ' || sCuentaProcesando )
.head 5 -  Set nTotalCuentas = nTotalCuentas + 1
.head 5 -  Return SalSendMsg( frmOdometroCG, AM_Procesing, 0, 0 )
.head 4 +  Else 
.head 5 -  Call SalStatusSetText( hWndForm, '' )
.head 5 -  Return TRUE
.head 3 +  On SAM_Help
.head 4 +  If DesplegarHelp( wParam )
.head 5 -  Call Help()
.head 3 +  On SAM_Close
.head 4 -  Call Destroy ( )
