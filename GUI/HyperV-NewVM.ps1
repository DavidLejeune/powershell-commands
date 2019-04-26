<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
.NAME
    HyperV New VM
.SYNOPSIS
    Create Hyper V VM's quickly and easily with this great GUI. 
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$HyperVVMCreator                 = New-Object system.Windows.Forms.Form
$HyperVVMCreator.ClientSize      = '744,519'
$HyperVVMCreator.text            = "Hyper V - VM Creator"
$HyperVVMCreator.TopMost         = $false

$VMNameLabel                     = New-Object system.Windows.Forms.Label
$VMNameLabel.text                = "VM Name"
$VMNameLabel.AutoSize            = $false
$VMNameLabel.width               = 115
$VMNameLabel.height              = 20
$VMNameLabel.location            = New-Object System.Drawing.Point(25,25)
$VMNameLabel.Font                = 'Microsoft Sans Serif,12'
$VMNameLabel.ForeColor           = ""

$VMRAMinGBLabel                  = New-Object system.Windows.Forms.Label
$VMRAMinGBLabel.text             = "RAM in GB"
$VMRAMinGBLabel.AutoSize         = $false
$VMRAMinGBLabel.width            = 115
$VMRAMinGBLabel.height           = 20
$VMRAMinGBLabel.location         = New-Object System.Drawing.Point(25,50)
$VMRAMinGBLabel.Font             = 'Segoe UI,12'

$CPUCountLabel                   = New-Object system.Windows.Forms.Label
$CPUCountLabel.text              = "CPU Count"
$CPUCountLabel.AutoSize          = $false
$CPUCountLabel.width             = 115
$CPUCountLabel.height            = 20
$CPUCountLabel.location          = New-Object System.Drawing.Point(25,75)
$CPUCountLabel.Font              = 'Microsoft Sans Serif,12'

$SwitchNameLabel                 = New-Object system.Windows.Forms.Label
$SwitchNameLabel.text            = "Switch Name"
$SwitchNameLabel.AutoSize        = $false
$SwitchNameLabel.width           = 120
$SwitchNameLabel.height          = 20
$SwitchNameLabel.location        = New-Object System.Drawing.Point(411,80)
$SwitchNameLabel.Font            = 'Microsoft Sans Serif,12'

$VLANIDLabel                     = New-Object system.Windows.Forms.Label
$VLANIDLabel.text                = "VLAN ID"
$VLANIDLabel.AutoSize            = $false
$VLANIDLabel.width               = 115
$VLANIDLabel.height              = 20
$VLANIDLabel.location            = New-Object System.Drawing.Point(411,104)
$VLANIDLabel.Font                = 'Microsoft Sans Serif,12'

$DriveCLabel                     = New-Object system.Windows.Forms.Label
$DriveCLabel.text                = "C"
$DriveCLabel.AutoSize            = $false
$DriveCLabel.width               = 25
$DriveCLabel.height              = 14
$DriveCLabel.location            = New-Object System.Drawing.Point(25,222)
$DriveCLabel.Font                = 'Microsoft Sans Serif,10'

$DriveDLabel                     = New-Object system.Windows.Forms.Label
$DriveDLabel.text                = "D"
$DriveDLabel.AutoSize            = $false
$DriveDLabel.width               = 25
$DriveDLabel.height              = 14
$DriveDLabel.location            = New-Object System.Drawing.Point(25,242)
$DriveDLabel.Font                = 'Microsoft Sans Serif,10'

$DriveELabel                     = New-Object system.Windows.Forms.Label
$DriveELabel.text                = "E"
$DriveELabel.AutoSize            = $false
$DriveELabel.width               = 25
$DriveELabel.height              = 14
$DriveELabel.location            = New-Object System.Drawing.Point(25,262)
$DriveELabel.Font                = 'Microsoft Sans Serif,10'

$DriveFLabel                     = New-Object system.Windows.Forms.Label
$DriveFLabel.text                = "F"
$DriveFLabel.AutoSize            = $false
$DriveFLabel.width               = 25
$DriveFLabel.height              = 14
$DriveFLabel.location            = New-Object System.Drawing.Point(25,282)
$DriveFLabel.Font                = 'Microsoft Sans Serif,10'

$DriveGLabel                     = New-Object system.Windows.Forms.Label
$DriveGLabel.text                = "G"
$DriveGLabel.AutoSize            = $false
$DriveGLabel.width               = 25
$DriveGLabel.height              = 14
$DriveGLabel.location            = New-Object System.Drawing.Point(25,302)
$DriveGLabel.Font                = 'Microsoft Sans Serif,10'

$DriveHLabel                     = New-Object system.Windows.Forms.Label
$DriveHLabel.text                = "H"
$DriveHLabel.AutoSize            = $false
$DriveHLabel.width               = 25
$DriveHLabel.height              = 14
$DriveHLabel.location            = New-Object System.Drawing.Point(25,322)
$DriveHLabel.Font                = 'Microsoft Sans Serif,10'

$DriveILabel                     = New-Object system.Windows.Forms.Label
$DriveILabel.text                = "I"
$DriveILabel.AutoSize            = $false
$DriveILabel.width               = 20
$DriveILabel.height              = 14
$DriveILabel.location            = New-Object System.Drawing.Point(27,342)
$DriveILabel.Font                = 'Microsoft Sans Serif,10'

$DriveKLabel                     = New-Object system.Windows.Forms.Label
$DriveKLabel.text                = "K"
$DriveKLabel.AutoSize            = $false
$DriveKLabel.width               = 25
$DriveKLabel.height              = 14
$DriveKLabel.location            = New-Object System.Drawing.Point(150,222)
$DriveKLabel.Font                = 'Microsoft Sans Serif,10'

$DriveLLabel                     = New-Object system.Windows.Forms.Label
$DriveLLabel.text                = "L"
$DriveLLabel.AutoSize            = $false
$DriveLLabel.width               = 25
$DriveLLabel.height              = 14
$DriveLLabel.location            = New-Object System.Drawing.Point(150,242)
$DriveLLabel.Font                = 'Microsoft Sans Serif,10'

$DriveSLabel                     = New-Object system.Windows.Forms.Label
$DriveSLabel.text                = "S"
$DriveSLabel.AutoSize            = $false
$DriveSLabel.width               = 25
$DriveSLabel.height              = 14
$DriveSLabel.location            = New-Object System.Drawing.Point(275,222)
$DriveSLabel.Font                = 'Microsoft Sans Serif,10'

$DriveMLabel                     = New-Object system.Windows.Forms.Label
$DriveMLabel.text                = "M"
$DriveMLabel.AutoSize            = $false
$DriveMLabel.width               = 25
$DriveMLabel.height              = 14
$DriveMLabel.location            = New-Object System.Drawing.Point(150,262)
$DriveMLabel.Font                = 'Microsoft Sans Serif,10'

$DriveNLabel                     = New-Object system.Windows.Forms.Label
$DriveNLabel.text                = "N"
$DriveNLabel.AutoSize            = $false
$DriveNLabel.width               = 25
$DriveNLabel.height              = 14
$DriveNLabel.location            = New-Object System.Drawing.Point(150,282)
$DriveNLabel.Font                = 'Microsoft Sans Serif,10'

$DriveOLabel                     = New-Object system.Windows.Forms.Label
$DriveOLabel.text                = "O"
$DriveOLabel.AutoSize            = $false
$DriveOLabel.width               = 25
$DriveOLabel.height              = 14
$DriveOLabel.location            = New-Object System.Drawing.Point(150,302)
$DriveOLabel.Font                = 'Microsoft Sans Serif,10'

$DrivePLabel                     = New-Object system.Windows.Forms.Label
$DrivePLabel.text                = "P"
$DrivePLabel.AutoSize            = $false
$DrivePLabel.width               = 25
$DrivePLabel.height              = 14
$DrivePLabel.location            = New-Object System.Drawing.Point(150,322)
$DrivePLabel.Font                = 'Microsoft Sans Serif,10'

$DriveQLabel                     = New-Object system.Windows.Forms.Label
$DriveQLabel.text                = "Q"
$DriveQLabel.AutoSize            = $false
$DriveQLabel.width               = 25
$DriveQLabel.height              = 14
$DriveQLabel.location            = New-Object System.Drawing.Point(150,342)
$DriveQLabel.Font                = 'Microsoft Sans Serif,10'

$DriveRLabel                     = New-Object system.Windows.Forms.Label
$DriveRLabel.text                = "R"
$DriveRLabel.AutoSize            = $false
$DriveRLabel.width               = 25
$DriveRLabel.height              = 14
$DriveRLabel.location            = New-Object System.Drawing.Point(150,362)
$DriveRLabel.Font                = 'Microsoft Sans Serif,10'

$DriveTLabel                     = New-Object system.Windows.Forms.Label
$DriveTLabel.text                = "T"
$DriveTLabel.AutoSize            = $false
$DriveTLabel.width               = 25
$DriveTLabel.height              = 14
$DriveTLabel.location            = New-Object System.Drawing.Point(275,242)
$DriveTLabel.Font                = 'Microsoft Sans Serif,10'

$DriveULabel                     = New-Object system.Windows.Forms.Label
$DriveULabel.text                = "U"
$DriveULabel.AutoSize            = $false
$DriveULabel.width               = 25
$DriveULabel.height              = 14
$DriveULabel.location            = New-Object System.Drawing.Point(275,262)
$DriveULabel.Font                = 'Microsoft Sans Serif,10'

$DriveVLabel                     = New-Object system.Windows.Forms.Label
$DriveVLabel.text                = "V"
$DriveVLabel.AutoSize            = $false
$DriveVLabel.width               = 25
$DriveVLabel.height              = 14
$DriveVLabel.location            = New-Object System.Drawing.Point(275,282)
$DriveVLabel.Font                = 'Microsoft Sans Serif,10'

$DriveWLabel                     = New-Object system.Windows.Forms.Label
$DriveWLabel.text                = "W"
$DriveWLabel.AutoSize            = $false
$DriveWLabel.width               = 25
$DriveWLabel.height              = 14
$DriveWLabel.location            = New-Object System.Drawing.Point(275,302)
$DriveWLabel.Font                = 'Microsoft Sans Serif,10'

$GenerationLabel                 = New-Object system.Windows.Forms.Label
$GenerationLabel.text            = "Generation"
$GenerationLabel.AutoSize        = $false
$GenerationLabel.width           = 115
$GenerationLabel.height          = 20
$GenerationLabel.location        = New-Object System.Drawing.Point(24,104)
$GenerationLabel.Font            = 'Microsoft Sans Serif,12'

$DriveXLabel                     = New-Object system.Windows.Forms.Label
$DriveXLabel.text                = "X"
$DriveXLabel.AutoSize            = $false
$DriveXLabel.width               = 25
$DriveXLabel.height              = 14
$DriveXLabel.location            = New-Object System.Drawing.Point(275,322)
$DriveXLabel.Font                = 'Microsoft Sans Serif,10,style=Bold'
$DriveXLabel.ForeColor           = "#d0021b"

$DriveJLabel                     = New-Object system.Windows.Forms.Label
$DriveJLabel.text                = "J"
$DriveJLabel.AutoSize            = $false
$DriveJLabel.width               = 25
$DriveJLabel.height              = 14
$DriveJLabel.location            = New-Object System.Drawing.Point(25,362)
$DriveJLabel.Font                = 'Microsoft Sans Serif,10'

$DriveYLabel                     = New-Object system.Windows.Forms.Label
$DriveYLabel.text                = "Y"
$DriveYLabel.AutoSize            = $false
$DriveYLabel.width               = 25
$DriveYLabel.height              = 14
$DriveYLabel.location            = New-Object System.Drawing.Point(275,342)
$DriveYLabel.Font                = 'Microsoft Sans Serif,10'

$DriveZLabel                     = New-Object system.Windows.Forms.Label
$DriveZLabel.text                = "Z"
$DriveZLabel.AutoSize            = $false
$DriveZLabel.width               = 25
$DriveZLabel.height              = 14
$DriveZLabel.location            = New-Object System.Drawing.Point(275,362)
$DriveZLabel.Font                = 'Microsoft Sans Serif,10'

$VMNameTextBox                   = New-Object system.Windows.Forms.TextBox
$VMNameTextBox.multiline         = $false
$VMNameTextBox.width             = 220
$VMNameTextBox.height            = 10
$VMNameTextBox.location          = New-Object System.Drawing.Point(150,25)
$VMNameTextBox.Font              = 'Microsoft Sans Serif,10'

$RAMinGBTextBox                  = New-Object system.Windows.Forms.TextBox
$RAMinGBTextBox.multiline        = $false
$RAMinGBTextBox.text             = "4"
$RAMinGBTextBox.width            = 40
$RAMinGBTextBox.height           = 10
$RAMinGBTextBox.location         = New-Object System.Drawing.Point(149,50)
$RAMinGBTextBox.Font             = 'Microsoft Sans Serif,10'

$CPUCountTextBox                 = New-Object system.Windows.Forms.TextBox
$CPUCountTextBox.multiline       = $false
$CPUCountTextBox.text            = "2"
$CPUCountTextBox.width           = 40
$CPUCountTextBox.height          = 10
$CPUCountTextBox.location        = New-Object System.Drawing.Point(150,75)
$CPUCountTextBox.Font            = 'Microsoft Sans Serif,10'

$VLANIDTextBox                   = New-Object system.Windows.Forms.TextBox
$VLANIDTextBox.multiline         = $false
$VLANIDTextBox.text              = "165"
$VLANIDTextBox.width             = 40
$VLANIDTextBox.height            = 10
$VLANIDTextBox.location          = New-Object System.Drawing.Point(536,105)
$VLANIDTextBox.Font              = 'Microsoft Sans Serif,10'

$CSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$CSizeTextBox.multiline          = $false
$CSizeTextBox.text               = "85"
$CSizeTextBox.width              = 40
$CSizeTextBox.height             = 14
$CSizeTextBox.location           = New-Object System.Drawing.Point(50,221)
$CSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$Gen1RadioButton                 = New-Object system.Windows.Forms.RadioButton
$Gen1RadioButton.text            = "Gen 1"
$Gen1RadioButton.AutoSize        = $false
$Gen1RadioButton.width           = 60
$Gen1RadioButton.height          = 20
$Gen1RadioButton.location        = New-Object System.Drawing.Point(11,12)
$Gen1RadioButton.Font            = 'Microsoft Sans Serif,10'

$Gen2RadioButton                 = New-Object system.Windows.Forms.RadioButton
$Gen2RadioButton.text            = "Gen 2"
$Gen2RadioButton.AutoSize        = $false
$Gen2RadioButton.width           = 60
$Gen2RadioButton.height          = 20
$Gen2RadioButton.location        = New-Object System.Drawing.Point(75,12)
$Gen2RadioButton.Font            = 'Microsoft Sans Serif,10'

$DSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$DSizeTextBox.multiline          = $false
$DSizeTextBox.width              = 40
$DSizeTextBox.height             = 14
$DSizeTextBox.location           = New-Object System.Drawing.Point(50,242)
$DSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$ESizeTextBox                    = New-Object system.Windows.Forms.TextBox
$ESizeTextBox.multiline          = $false
$ESizeTextBox.width              = 40
$ESizeTextBox.height             = 14
$ESizeTextBox.location           = New-Object System.Drawing.Point(50,262)
$ESizeTextBox.Font               = 'Microsoft Sans Serif,7'

$FSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$FSizeTextBox.multiline          = $false
$FSizeTextBox.width              = 40
$FSizeTextBox.height             = 14
$FSizeTextBox.location           = New-Object System.Drawing.Point(50,282)
$FSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$GSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$GSizeTextBox.multiline          = $false
$GSizeTextBox.width              = 40
$GSizeTextBox.height             = 14
$GSizeTextBox.location           = New-Object System.Drawing.Point(50,302)
$GSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$HSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$HSizeTextBox.multiline          = $false
$HSizeTextBox.width              = 40
$HSizeTextBox.height             = 14
$HSizeTextBox.location           = New-Object System.Drawing.Point(50,322)
$HSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$ISizeTextBox                    = New-Object system.Windows.Forms.TextBox
$ISizeTextBox.multiline          = $false
$ISizeTextBox.width              = 40
$ISizeTextBox.height             = 14
$ISizeTextBox.location           = New-Object System.Drawing.Point(50,342)
$ISizeTextBox.Font               = 'Microsoft Sans Serif,7'

$JSIzeTextBox                    = New-Object system.Windows.Forms.TextBox
$JSIzeTextBox.multiline          = $false
$JSIzeTextBox.width              = 40
$JSIzeTextBox.height             = 14
$JSIzeTextBox.location           = New-Object System.Drawing.Point(50,362)
$JSIzeTextBox.Font               = 'Microsoft Sans Serif,7'

$KSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$KSizeTextBox.multiline          = $false
$KSizeTextBox.width              = 40
$KSizeTextBox.height             = 14
$KSizeTextBox.location           = New-Object System.Drawing.Point(175,222)
$KSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$LSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$LSizeTextBox.multiline          = $false
$LSizeTextBox.width              = 40
$LSizeTextBox.height             = 14
$LSizeTextBox.location           = New-Object System.Drawing.Point(175,242)
$LSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$MSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$MSizeTextBox.multiline          = $false
$MSizeTextBox.width              = 40
$MSizeTextBox.height             = 14
$MSizeTextBox.location           = New-Object System.Drawing.Point(175,262)
$MSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$NSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$NSizeTextBox.multiline          = $false
$NSizeTextBox.width              = 40
$NSizeTextBox.height             = 14
$NSizeTextBox.location           = New-Object System.Drawing.Point(175,282)
$NSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$OSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$OSizeTextBox.multiline          = $false
$OSizeTextBox.width              = 40
$OSizeTextBox.height             = 14
$OSizeTextBox.location           = New-Object System.Drawing.Point(175,302)
$OSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$PSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$PSizeTextBox.multiline          = $false
$PSizeTextBox.width              = 40
$PSizeTextBox.height             = 14
$PSizeTextBox.location           = New-Object System.Drawing.Point(175,322)
$PSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$QSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$QSizeTextBox.multiline          = $false
$QSizeTextBox.width              = 40
$QSizeTextBox.height             = 14
$QSizeTextBox.location           = New-Object System.Drawing.Point(175,342)
$QSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$RSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$RSizeTextBox.multiline          = $false
$RSizeTextBox.width              = 40
$RSizeTextBox.height             = 14
$RSizeTextBox.location           = New-Object System.Drawing.Point(175,362)
$RSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$SSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$SSizeTextBox.multiline          = $false
$SSizeTextBox.width              = 40
$SSizeTextBox.height             = 14
$SSizeTextBox.location           = New-Object System.Drawing.Point(300,222)
$SSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$TSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$TSizeTextBox.multiline          = $false
$TSizeTextBox.width              = 40
$TSizeTextBox.height             = 14
$TSizeTextBox.location           = New-Object System.Drawing.Point(300,242)
$TSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$USizeTextBox                    = New-Object system.Windows.Forms.TextBox
$USizeTextBox.multiline          = $false
$USizeTextBox.width              = 40
$USizeTextBox.height             = 14
$USizeTextBox.location           = New-Object System.Drawing.Point(300,262)
$USizeTextBox.Font               = 'Microsoft Sans Serif,7'

$VSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$VSizeTextBox.multiline          = $false
$VSizeTextBox.width              = 40
$VSizeTextBox.height             = 14
$VSizeTextBox.location           = New-Object System.Drawing.Point(300,282)
$VSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$WSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$WSizeTextBox.multiline          = $false
$WSizeTextBox.width              = 40
$WSizeTextBox.height             = 14
$WSizeTextBox.location           = New-Object System.Drawing.Point(300,302)
$WSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$XSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$XSizeTextBox.multiline          = $false
$XSizeTextBox.width              = 40
$XSizeTextBox.height             = 14
$XSizeTextBox.location           = New-Object System.Drawing.Point(300,322)
$XSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$YSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$YSizeTextBox.multiline          = $false
$YSizeTextBox.width              = 40
$YSizeTextBox.height             = 14
$YSizeTextBox.location           = New-Object System.Drawing.Point(300,342)
$YSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$ZSizeTextBox                    = New-Object system.Windows.Forms.TextBox
$ZSizeTextBox.multiline          = $false
$ZSizeTextBox.width              = 40
$ZSizeTextBox.height             = 14
$ZSizeTextBox.location           = New-Object System.Drawing.Point(300,362)
$ZSizeTextBox.Font               = 'Microsoft Sans Serif,7'

$BootISOLabel                    = New-Object system.Windows.Forms.Label
$BootISOLabel.text               = "Boot ISO"
$BootISOLabel.AutoSize           = $true
$BootISOLabel.width              = 25
$BootISOLabel.height             = 10
$BootISOLabel.location           = New-Object System.Drawing.Point(22,140)
$BootISOLabel.Font               = 'Microsoft Sans Serif,10'

$BootISOTextBox                  = New-Object system.Windows.Forms.TextBox
$BootISOTextBox.multiline        = $false
$BootISOTextBox.width            = 567
$BootISOTextBox.height           = 20
$BootISOTextBox.location         = New-Object System.Drawing.Point(83,140)
$BootISOTextBox.Font             = 'Microsoft Sans Serif,10'

$BootISOBrowseButton             = New-Object system.Windows.Forms.Button
$BootISOBrowseButton.text        = "Browse"
$BootISOBrowseButton.width       = 60
$BootISOBrowseButton.height      = 30
$BootISOBrowseButton.location    = New-Object System.Drawing.Point(662,133)
$BootISOBrowseButton.Font        = 'Microsoft Sans Serif,10'

$VHDCommentLabel                 = New-Object system.Windows.Forms.Label
$VHDCommentLabel.text            = "Sub Folder will be created based on the VM Name"
$VHDCommentLabel.AutoSize        = $true
$VHDCommentLabel.width           = 25
$VHDCommentLabel.height          = 10
$VHDCommentLabel.location        = New-Object System.Drawing.Point(426,187)
$VHDCommentLabel.Font            = 'Microsoft Sans Serif,8'

$VHDRootTextBox                  = New-Object system.Windows.Forms.TextBox
$VHDRootTextBox.multiline        = $false
$VHDRootTextBox.text             = "D:\Hyper-V"
$VHDRootTextBox.width            = 249
$VHDRootTextBox.height           = 20
$VHDRootTextBox.location         = New-Object System.Drawing.Point(91,183)
$VHDRootTextBox.Font             = 'Microsoft Sans Serif,10'

$VHDRootLabel                    = New-Object system.Windows.Forms.Label
$VHDRootLabel.text               = "VHD Root"
$VHDRootLabel.AutoSize           = $true
$VHDRootLabel.width              = 25
$VHDRootLabel.height             = 10
$VHDRootLabel.location           = New-Object System.Drawing.Point(22,183)
$VHDRootLabel.Font               = 'Microsoft Sans Serif,10'

$VHDRootBrowseButton             = New-Object system.Windows.Forms.Button
$VHDRootBrowseButton.text        = "Browse"
$VHDRootBrowseButton.width       = 60
$VHDRootBrowseButton.height      = 30
$VHDRootBrowseButton.location    = New-Object System.Drawing.Point(352,177)
$VHDRootBrowseButton.Font        = 'Microsoft Sans Serif,10'

$FeelingLuckyButton              = New-Object system.Windows.Forms.Button
$FeelingLuckyButton.BackColor    = "#b8e986"
$FeelingLuckyButton.text         = "Im Feeling Lucky Create VM"
$FeelingLuckyButton.width        = 359
$FeelingLuckyButton.height       = 70
$FeelingLuckyButton.location     = New-Object System.Drawing.Point(366,311)
$FeelingLuckyButton.Font         = 'Microsoft Sans Serif,10'

$DoSomeChecksButton              = New-Object system.Windows.Forms.Button
$DoSomeChecksButton.BackColor    = "#b8e986"
$DoSomeChecksButton.text         = "Do Some Checks"
$DoSomeChecksButton.width        = 359
$DoSomeChecksButton.height       = 66
$DoSomeChecksButton.location     = New-Object System.Drawing.Point(366,222)
$DoSomeChecksButton.Font         = 'Microsoft Sans Serif,10'

$ResultHeadingLabel              = New-Object system.Windows.Forms.Label
$ResultHeadingLabel.text         = "Last Result"
$ResultHeadingLabel.AutoSize     = $true
$ResultHeadingLabel.width        = 25
$ResultHeadingLabel.height       = 10
$ResultHeadingLabel.location     = New-Object System.Drawing.Point(334,403)
$ResultHeadingLabel.Font         = 'Microsoft Sans Serif,12'

$LastResultLabel                 = New-Object system.Windows.Forms.Label
$LastResultLabel.BackColor       = "#b8e986"
$LastResultLabel.AutoSize        = $false
$LastResultLabel.width           = 700
$LastResultLabel.height          = 59
$LastResultLabel.location        = New-Object System.Drawing.Point(24,429)
$LastResultLabel.Font            = 'Microsoft Sans Serif,19'

$Groupbox1                       = New-Object system.Windows.Forms.Groupbox
$Groupbox1.height                = 36
$Groupbox1.width                 = 149
$Groupbox1.location              = New-Object System.Drawing.Point(149,96)

$SwitchNameComboBox              = New-Object system.Windows.Forms.ComboBox
$SwitchNameComboBox.text         = "Switch Name"
$SwitchNameComboBox.width        = 157
$SwitchNameComboBox.height       = 20
$SwitchNameComboBox.location     = New-Object System.Drawing.Point(537,80)
$SwitchNameComboBox.Font         = 'Microsoft Sans Serif,10'

$HyperVVMCreator.controls.AddRange(@($VMNameLabel,$VMRAMinGBLabel,$CPUCountLabel,$SwitchNameLabel,$VLANIDLabel,$DriveCLabel,$DriveDLabel,$DriveELabel,$DriveFLabel,$DriveGLabel,$DriveHLabel,$DriveILabel,$DriveKLabel,$DriveLLabel,$DriveSLabel,$DriveMLabel,$DriveNLabel,$DriveOLabel,$DrivePLabel,$DriveQLabel,$DriveRLabel,$DriveTLabel,$DriveULabel,$DriveVLabel,$DriveWLabel,$GenerationLabel,$DriveXLabel,$DriveJLabel,$DriveYLabel,$DriveZLabel,$VMNameTextBox,$RAMinGBTextBox,$CPUCountTextBox,$VLANIDTextBox,$CSizeTextBox,$DSizeTextBox,$ESizeTextBox,$FSizeTextBox,$GSizeTextBox,$HSizeTextBox,$ISizeTextBox,$JSIzeTextBox,$KSizeTextBox,$LSizeTextBox,$MSizeTextBox,$NSizeTextBox,$OSizeTextBox,$PSizeTextBox,$QSizeTextBox,$RSizeTextBox,$SSizeTextBox,$TSizeTextBox,$USizeTextBox,$VSizeTextBox,$WSizeTextBox,$XSizeTextBox,$YSizeTextBox,$ZSizeTextBox,$BootISOLabel,$BootISOTextBox,$BootISOBrowseButton,$VHDCommentLabel,$VHDRootTextBox,$VHDRootLabel,$VHDRootBrowseButton,$FeelingLuckyButton,$DoSomeChecksButton,$ResultHeadingLabel,$LastResultLabel,$Groupbox1,$SwitchNameComboBox))
$Groupbox1.controls.AddRange(@($Gen1RadioButton,$Gen2RadioButton))

$DoSomeChecksButton.Add_Click({ Run-Checks })
$RAMinGBTextBox.Add_TextChanged({ remove-letters })
$CPUCountTextBox.Add_TextChanged({ remove-letters })
$VLANIDTextBox.Add_TextChanged({ remove-letters })
$CSizeTextBox.Add_TextChanged({ remove-letters })
$DSizeTextBox.Add_TextChanged({ remove-letters })
$ESizeTextBox.Add_TextChanged({ remove-letters })
$FSizeTextBox.Add_TextChanged({ remove-letters })
$GSizeTextBox.Add_TextChanged({ remove-letters })
$HSizeTextBox.Add_TextChanged({ remove-letters })
$ISizeTextBox.Add_TextChanged({ remove-letters })
$JSIzeTextBox.Add_TextChanged({ remove-letters })
$KSizeTextBox.Add_TextChanged({ remove-letters })
$LSizeTextBox.Add_TextChanged({ remove-letters })
$MSizeTextBox.Add_TextChanged({ remove-letters })
$NSizeTextBox.Add_TextChanged({ remove-letters })
$OSizeTextBox.Add_TextChanged({ remove-letters })
$PSizeTextBox.Add_TextChanged({ remove-letters })
$QSizeTextBox.Add_TextChanged({ remove-letters })
$RSizeTextBox.Add_TextChanged({ remove-letters })
$SSizeTextBox.Add_TextChanged({ remove-letters })
$TSizeTextBox.Add_TextChanged({ remove-letters })
$USizeTextBox.Add_TextChanged({ remove-letters })
$VSizeTextBox.Add_TextChanged({ remove-letters })
$WSizeTextBox.Add_TextChanged({ remove-letters })
$XSizeTextBox.Add_TextChanged({ remove-letters })
$YSizeTextBox.Add_TextChanged({ remove-letters })
$ZSizeTextBox.Add_TextChanged({ remove-letters })
$BootISOBrowseButton.Add_Click({ Get-BootISOFileName })
$VHDRootBrowseButton.Add_Click({ Get-VHDRootPath })
$FeelingLuckyButton.Add_Click({ Create-VMs })
$VMNameTextBox.Add_TextChanged({ Remove-Characters })

