VERSION 5.00
Begin VB.Form frmFFWaitDemo 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Firefox Wait Control Demo"
   ClientHeight    =   1170
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   2910
   Icon            =   "Firefox Wait Demo.frx":0000
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1170
   ScaleWidth      =   2910
   StartUpPosition =   2  'CenterScreen
   Begin Project1.ucFirefoxWait ucFfWait 
      Height          =   240
      Left            =   240
      TabIndex        =   2
      Top             =   120
      Width           =   240
      _ExtentX        =   423
      _ExtentY        =   423
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      Height          =   375
      Left            =   1680
      TabIndex        =   1
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton cmdPlay 
      Caption         =   "&Play"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   600
      Width           =   975
   End
End
Attribute VB_Name = "frmFFWaitDemo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Sub cmdExit_Click()
  Unload Me
End Sub
Private Sub cmdPlay_Click()
  If ucFfWait.IsPlaying = False Then
    cmdPlay.Caption = "&Stop"
    ucFfWait.PlayWait
  Else
    cmdPlay.Caption = "&Play"
    ucFfWait.StopWait
  End If
End Sub
Private Sub Form_Load()
  ucFfWait.IsPlaying = False
End Sub
Private Sub Form_Unload(Cancel As Integer)
  Set frmFFWaitDemo = Nothing
End Sub
