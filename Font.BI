Const FontSubcellSize = 19
Const FontCellSize = 72
Const FontInfoSize = 22
Const FontMenuSize = 20

Type FontItem
    FontFile As String
    FontName As String
End Type



Type Font
    FontName As String
    FontSize As _Unsigned Integer
    FontHandle As Long
    FontNumMaxWidth As _Unsigned Integer
End Type



ReDim Shared FontItems(0) As FontItem
ReDim Shared Fonts(0) As Font

