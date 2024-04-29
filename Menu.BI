Const HMENU = 1
Const isSeparator = &B00000000000000000000000000000001
Const isOption = &B00000000000000000000000000000010
Const isCommand = &B00000000000000000000000000000100
Const hasIcon = &B00000000000000000000000000001000

Const NoFlag = 0
Const NoCommand = -1
Const OpenSavedGameCommand = 1
Const SaveGameCommand = 2
Const NewPuzzleCommand = 3
Const ExitCommand = 4
Const HelpCommand = 5
Const ManualPlayCommand = 6
Const AIPlayCommand = 7

Type MenuObject
    Image As _Unsigned Long
    isVisible As Integer
    isPopup As Integer
    X As Integer
    Y As Integer
    ItemList As _Offset
End Type



Type Handle
    HandleType As Long
    HandleID As Long
    ObjectPointer As _MEM
End Type



Type MenuItem
    Label As String
    PreviousMenuItem As Integer
    SubMenuItem As Long
    ParentMenuItem As Integer
    Flags As _Unsigned Long
    AccessKeys As _Unsigned Integer
    ShortcutKeys As _Unsigned Integer
    Command As _Unsigned Integer
    NextMenuItem As Integer
    Container As _Unsigned Long
    Highlight As _Unsigned Long
End Type


ReDim Shared MenuItems(0) As MenuItem
Dim Shared MenuImage As Long
