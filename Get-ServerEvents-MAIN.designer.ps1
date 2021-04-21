$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$ScanServers = $null
[System.Windows.Forms.CheckedListBox]$ListSrv = $null
[System.Windows.Forms.DateTimePicker]$FromDate = $null
[System.Windows.Forms.DateTimePicker]$ToDate = $null
[System.Windows.Forms.Button]$GetEvents = $null
[System.Windows.Forms.CheckBox]$CheckBox1 = $null
[System.Windows.Forms.CheckBox]$CheckBox2 = $null
[System.Windows.Forms.CheckBox]$CheckBox3 = $null
[System.Windows.Forms.CheckBox]$CheckBox4 = $null
[System.Windows.Forms.CheckBox]$CheckBox5 = $null
[System.Windows.Forms.TextBox]$TextBox1 = $null
[System.Windows.Forms.TextBox]$TextBox2 = $null
[System.Windows.Forms.TextBox]$TextBox3 = $null
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.RichTextBox]$ScanError = $null
[System.Windows.Forms.Label]$Label2 = $null
[System.Windows.Forms.RichTextBox]$Results = $null
function InitializeComponent
{
$ScanServers = (New-Object -TypeName System.Windows.Forms.Button)
$ListSrv = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$FromDate = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$ToDate = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$GetEvents = (New-Object -TypeName System.Windows.Forms.Button)
$CheckBox1 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CheckBox2 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CheckBox3 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CheckBox4 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CheckBox5 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$TextBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$TextBox2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$TextBox3 = (New-Object -TypeName System.Windows.Forms.TextBox)
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$ScanError = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$Label2 = (New-Object -TypeName System.Windows.Forms.Label)
$Results = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$Form1.SuspendLayout()
#
#ScanServers
#
$ScanServers.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]39,[System.Int32]11))
$ScanServers.Name = [System.String]'ScanServers'
$ScanServers.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]83,[System.Int32]23))
$ScanServers.TabIndex = [System.Int32]0
$ScanServers.Text = [System.String]'Scan Servers'
$ScanServers.UseCompatibleTextRendering = $true
$ScanServers.UseVisualStyleBackColor = $true
$ScanServers.add_Click($ScanServers_Click)
#
#ListSrv
#
$ListSrv.FormattingEnabled = $true
$ListSrv.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]45))
$ListSrv.Name = [System.String]'ListSrv'
$ListSrv.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]308))
$ListSrv.TabIndex = [System.Int32]1
$ListSrv.UseCompatibleTextRendering = $true
#
#FromDate
#
$FromDate.CustomFormat = [System.String]'dddd MMMM dd, yyyy hh:mm:ss tt'
$FromDate.Format = [System.Windows.Forms.DateTimePickerFormat]::Custom
$FromDate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]209,[System.Int32]80))
$FromDate.Name = [System.String]'FromDate'
$FromDate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]261,[System.Int32]21))
$FromDate.TabIndex = [System.Int32]7
#
#ToDate
#
$ToDate.CustomFormat = [System.String]'dddd MMMM dd, yyyy hh:mm:ss tt'
$ToDate.Format = [System.Windows.Forms.DateTimePickerFormat]::Custom
$ToDate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]209,[System.Int32]122))
$ToDate.Name = [System.String]'ToDate'
$ToDate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]261,[System.Int32]21))
$ToDate.TabIndex = [System.Int32]8
#
#GetEvents
#
$GetEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]476,[System.Int32]16))
$GetEvents.Name = [System.String]'GetEvents'
$GetEvents.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]142,[System.Int32]54))
$GetEvents.TabIndex = [System.Int32]10
$GetEvents.Text = [System.String]'Start Scan'
$GetEvents.UseCompatibleTextRendering = $true
$GetEvents.UseVisualStyleBackColor = $true
$GetEvents.add_Click($GetEvents_Click)
#
#CheckBox1
#
$CheckBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]209,[System.Int32]194))
$CheckBox1.Name = [System.String]'CheckBox1'
$CheckBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox1.TabIndex = [System.Int32]13
$CheckBox1.Text = [System.String]'Critical'
$CheckBox1.UseCompatibleTextRendering = $true
$CheckBox1.UseVisualStyleBackColor = $true
#
#CheckBox2
#
$CheckBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]209,[System.Int32]224))
$CheckBox2.Name = [System.String]'CheckBox2'
$CheckBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox2.TabIndex = [System.Int32]14
$CheckBox2.Text = [System.String]'Error'
$CheckBox2.UseCompatibleTextRendering = $true
$CheckBox2.UseVisualStyleBackColor = $true
#
#CheckBox3
#
$CheckBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]209,[System.Int32]254))
$CheckBox3.Name = [System.String]'CheckBox3'
$CheckBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox3.TabIndex = [System.Int32]15
$CheckBox3.Text = [System.String]'Warning'
$CheckBox3.UseCompatibleTextRendering = $true
$CheckBox3.UseVisualStyleBackColor = $true
#
#CheckBox4
#
$CheckBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]209,[System.Int32]284))
$CheckBox4.Name = [System.String]'CheckBox4'
$CheckBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox4.TabIndex = [System.Int32]16
$CheckBox4.Text = [System.String]'Information'
$CheckBox4.UseCompatibleTextRendering = $true
$CheckBox4.UseVisualStyleBackColor = $true
#
#CheckBox5
#
$CheckBox5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]209,[System.Int32]314))
$CheckBox5.Name = [System.String]'CheckBox5'
$CheckBox5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox5.TabIndex = [System.Int32]17
$CheckBox5.Text = [System.String]'Verbose'
$CheckBox5.UseCompatibleTextRendering = $true
$CheckBox5.UseVisualStyleBackColor = $true
#
#TextBox1
#
$TextBox1.BackColor = [System.Drawing.SystemColors]::Menu
$TextBox1.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$TextBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$TextBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]168,[System.Int32]80))
$TextBox1.Name = [System.String]'TextBox1'
$TextBox1.ReadOnly = $true
$TextBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]35,[System.Int32]16))
$TextBox1.TabIndex = [System.Int32]18
$TextBox1.Text = [System.String]'From'
#
#TextBox2
#
$TextBox2.BackColor = [System.Drawing.SystemColors]::Menu
$TextBox2.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$TextBox2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$TextBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]184,[System.Int32]122))
$TextBox2.Name = [System.String]'TextBox2'
$TextBox2.ReadOnly = $true
$TextBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]19,[System.Int32]16))
$TextBox2.TabIndex = [System.Int32]19
$TextBox2.Text = [System.String]'To'
#
#TextBox3
#
$TextBox3.BackColor = [System.Drawing.SystemColors]::Menu
$TextBox3.BorderStyle = [System.Windows.Forms.BorderStyle]::None
$TextBox3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$TextBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]255,[System.Int32]45))
$TextBox3.Name = [System.String]'TextBox3'
$TextBox3.ReadOnly = $true
$TextBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]121,[System.Int32]20))
$TextBox3.TabIndex = [System.Int32]20
$TextBox3.Text = [System.String]'Event Details'
$TextBox3.add_TextChanged($TextBox3_TextChanged)
#
#Label1
#
$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]11.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]702,[System.Int32]260))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]103,[System.Int32]17))
$Label1.TabIndex = [System.Int32]21
$Label1.Text = [System.String]'Scan Errors'
$Label1.UseCompatibleTextRendering = $true
$Label1.add_Click($Label1_Click)
#
#ScanError
#
$ScanError.BackColor = [System.Drawing.SystemColors]::Control
$ScanError.ForeColor = [System.Drawing.Color]::Red
$ScanError.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]476,[System.Int32]280))
$ScanError.Name = [System.String]'ScanError'
$ScanError.ReadOnly = $true
$ScanError.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]521,[System.Int32]50))
$ScanError.TabIndex = [System.Int32]22
$ScanError.Text = [System.String]''
#
#Label2
#
$Label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]9.75,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]209,[System.Int32]168))
$Label2.Name = [System.String]'Label2'
$Label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$Label2.TabIndex = [System.Int32]23
$Label2.Text = [System.String]'Level'
$Label2.UseCompatibleTextRendering = $true
$Label2.add_Click($Label2_Click)
#
#Results
#
$Results.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]476,[System.Int32]76))
$Results.Name = [System.String]'Results'
$Results.ReadOnly = $true
$Results.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]520,[System.Int32]172))
$Results.TabIndex = [System.Int32]24
$Results.Text = [System.String]''
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1049,[System.Int32]362))
$Form1.Controls.Add($Results)
$Form1.Controls.Add($Label2)
$Form1.Controls.Add($ScanError)
$Form1.Controls.Add($Label1)
$Form1.Controls.Add($TextBox3)
$Form1.Controls.Add($TextBox2)
$Form1.Controls.Add($TextBox1)
$Form1.Controls.Add($CheckBox5)
$Form1.Controls.Add($CheckBox4)
$Form1.Controls.Add($CheckBox3)
$Form1.Controls.Add($CheckBox2)
$Form1.Controls.Add($CheckBox1)
$Form1.Controls.Add($GetEvents)
$Form1.Controls.Add($ToDate)
$Form1.Controls.Add($FromDate)
$Form1.Controls.Add($ListSrv)
$Form1.Controls.Add($ScanServers)
$Form1.Text = [System.String]'Get Windows Server Events'
$Form1.add_Load($Form1_Load)
$Form1.ResumeLayout($false)
$Form1.PerformLayout()
Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ScanServers -Value $ScanServers -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ListSrv -Value $ListSrv -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name FromDate -Value $FromDate -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ToDate -Value $ToDate -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name GetEvents -Value $GetEvents -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox1 -Value $CheckBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox2 -Value $CheckBox2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox3 -Value $CheckBox3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox4 -Value $CheckBox4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox5 -Value $CheckBox5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox1 -Value $TextBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox2 -Value $TextBox2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name TextBox3 -Value $TextBox3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ScanError -Value $ScanError -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label2 -Value $Label2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Results -Value $Results -MemberType NoteProperty
}
. InitializeComponent
