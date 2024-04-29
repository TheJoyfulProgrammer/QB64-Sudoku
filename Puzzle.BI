Const BORDERSIZE = 8
Const BOXSEPARATORSIZE = 6
Const CELLSEPARATORSIZE = 4
Const SUBCELLMARGINTOP = 3
Const SUBCELLMARGINRIGHT = 4
Const SUBCELLMARGINBOTTOM = SUBCELLMARGINTOP
Const SUBCELLMARGINLEFT = SUBCELLMARGINRIGHT

Type Box
    X1 As Integer
    Y1 As Integer
    X2 As Integer
    Y2 As Integer
    BoxColor As _Unsigned Long
End Type


Type SudokuPuzzle
    Puzzle As String * 810
    OriginalPuzzle As String * 81
    SelectionBoxes As String * 9
    SelectionCells As String * 81
End Type


ReDim Shared PuzzleBox(0) As Box
ReDim Shared CellBox(0) As Box
ReDim Shared SubCellBox(0) As Box
ReDim Shared SudokuPuzzles(0) As SudokuPuzzle

Dim Shared CurrentPuzzleImage As Long
Dim Shared CurrentPuzzleCellOverlayImage As Long
Dim Shared CurrentPuzzleOverlayImage As Long
Dim Shared PuzzlePositionX As Integer
Dim Shared PuzzlePositionY As Integer

Dim Shared CellNumbersImage(9) As Long
Dim Shared SubCellNumbersUntestedImage(10) As Long
Dim Shared SubCellNumbersValidImage(9) As Long
Dim Shared SubCellNumbersInvalidImage(9) As Long

ReDim Shared PuzzleIcons(0) As Long
Dim Shared PuzzleIconScale As Single

Dim Shared SubCellWidth As _Unsigned Integer
Dim Shared SubCellHeight As _Unsigned Integer

Dim Shared CellWidth As _Unsigned Integer
Dim Shared CellHeight As _Unsigned Integer

Dim Shared BoxWidth As _Unsigned Integer
Dim Shared BoxHeight As _Unsigned Integer

Dim Shared PuzzleWidth As _Unsigned Integer
Dim Shared PuzzleHeight As _Unsigned Integer

Dim Shared PuzzleDirty As Integer
Dim Shared CurrentPuzzle As _Unsigned Integer

Dim Shared CurrentCellBox As _Unsigned Integer

Dim Shared ShowAllSubcellNumbers as Integer

ShowAllSubcellNumbers = TRUE
