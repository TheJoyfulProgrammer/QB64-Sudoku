'$Include: 'KeyCodes.BI'
'$Include: 'Common.BI'
'$Include: 'Menu.BI'
'$Include: 'Font.BI'
'$Include: 'Color.BI'
'$Include: 'Puzzle.BI'
'$Include: 'Bubble.BI'
'$Include: 'InfoBox.BI'

'  DEFINE THE WINDOW DIMENSIONS
ScreenWidth = 1210
ScreenHeight = 800

'  CREATE A BACKBUFFER IMAGE FOR THE WINDOW
WindowImage = _NewImage(ScreenWidth, ScreenHeight, 32)

'  CREATE THE WINDOW AND SET THE TITLE
Screen WindowImage
_Title "Sudoku Solver - By: The Joyful Programmer"

'  CALL A FUNCTION THAT DEFINES ALL GLOBAL DATA.
'  THIS MAKES THE CODE CLEANER AND EASIER TO READ.
DefineGlobalData
DefineImages
SetupInformation
SetupTestMenu

'  PRINT SOME INTRODUCTION INFORMATION IN THE INFO BOX
PrintInfo "Sudoku by The Joyful Programmer", _RGB32(249, 209, 0)
PrintInfo "Proof-of-concept game", _RGB32(219, 114, 2)
PrintInfo "", _RGB32(0, 0, 0)


'  SET THE DRAWING DESTINATION TO THE BACKBUFFER IMAGE
_Dest WindowImage


'  MAIN GAME LOOP
Do

    CurrentKeyHit = _KeyHit
    'If CurrentKeyHit > 0 Then Print "CurrentKeyHit: "; CurrentKeyHit: Print "StatusCurrent: "; StatusCurrent

    If CurrentKeyHit = KeyF4 Then SolutionMode = (SolutionMode + 1) Mod 2

    Select Case StatusCurrent

        Case STATUSSELECTPUZZLE:

            'UpdatePuzzleScene

        Case STATUSSOLVE:

            Select Case SolutionMode

                Case SOLVEMANUALLY:
                    UpdateManualSolutionMode

                Case SOLVEAI:
                    UpdateAISolutionMode

            End Select

            UpdatePuzzleScene

    End Select

Loop


System


'$Include: 'Menu.BM'
'$Include: 'Font.BM'
'$Include: 'Color.BM'
'$Include: 'Puzzle.BM'
'$Include: 'Common.BM'
'$Include: 'DrawImage.BM'
'$Include: 'Bubble.BM'
'$Include: 'InfoBox.BM'

