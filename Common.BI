Const TRUE = 1
Const FALSE = 0

Const STATUSMENU = 1
Const STATUSSELECTPUZZLE = 2
Const STATUSSOLVE = 3

Const SOLVEMANUALLY = 0
Const SOLVEAI = 1

Dim Shared ScreenWidth As _Unsigned Integer
Dim Shared ScreenHeight As _Unsigned Integer

'Dim Shared ScreenImage As Long
Dim Shared WindowImage As Long

Dim Shared StatusCurrent As Integer
Dim Shared StatusNext As Integer

Dim Shared SolutionMode As Integer
Dim Shared CurrentSolutionMode As Integer

Dim Shared Degree As Double

Dim Shared CurrentKeyHit As _Unsigned Long

Type StyleSheets
    Class As String
End Type


Degree = 3.1415926535 / 180

StatusCurrent = STATUSSOLVE
StatusNext = STATUSSOLVE

SolutionMode = SOLVEMANUALLY
CurrentSolutionMode = SOLVEAI


