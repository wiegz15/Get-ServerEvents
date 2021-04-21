
$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$ScanServers = $null
[System.Windows.Forms.CheckedListBox]$ListSrv = $null
[System.Windows.Forms.DateTimePicker]$FromDate = $null
[System.Windows.Forms.DateTimePicker]$ToDate = $null
[System.Windows.Forms.TextBox]$Results = $null
[System.Windows.Forms.Button]$GetEvents = $null
[System.Windows.Forms.CheckBox]$CheckBox1 = $null
[System.Windows.Forms.CheckBox]$CheckBox2 = $null
[System.Windows.Forms.CheckBox]$CheckBox3 = $null
[System.Windows.Forms.CheckBox]$CheckBox4 = $null
[System.Windows.Forms.CheckBox]$CheckBox5 = $null
function InitializeComponent
{
$ScanServers = (New-Object -TypeName System.Windows.Forms.Button)
$ListSrv = (New-Object -TypeName System.Windows.Forms.CheckedListBox)
$FromDate = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$ToDate = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$Results = (New-Object -TypeName System.Windows.Forms.TextBox)
$GetEvents = (New-Object -TypeName System.Windows.Forms.Button)
$CheckBox1 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CheckBox2 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CheckBox3 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CheckBox4 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$CheckBox5 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$Form1.SuspendLayout()
#
#ScanServers
#
$ScanServers.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]44,[System.Int32]16))
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
$ListSrv.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]19,[System.Int32]45))
$ListSrv.Name = [System.String]'ListSrv'
$ListSrv.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]150,[System.Int32]308))
$ListSrv.TabIndex = [System.Int32]1
$ListSrv.UseCompatibleTextRendering = $true
#
#FromDate
#
$FromDate.CustomFormat = [System.String]''
$FromDate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]190,[System.Int32]45))
$FromDate.Name = [System.String]'FromDate'
$FromDate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]21))
$FromDate.TabIndex = [System.Int32]7
#
#ToDate
#
$ToDate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]190,[System.Int32]72))
$ToDate.Name = [System.String]'ToDate'
$ToDate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]200,[System.Int32]21))
$ToDate.TabIndex = [System.Int32]8
#
#Results
#
$Results.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]424,[System.Int32]18))
$Results.Multiline = $true
$Results.Name = [System.String]'Results'
$Results.ReadOnly = $true
$Results.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]599,[System.Int32]316))
$Results.TabIndex = [System.Int32]9
#
#GetEvents
#
$GetEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]216,[System.Int32]280))
$GetEvents.Name = [System.String]'GetEvents'
$GetEvents.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]144,[System.Int32]54))
$GetEvents.TabIndex = [System.Int32]10
$GetEvents.Text = [System.String]'Get Events'
$GetEvents.UseCompatibleTextRendering = $true
$GetEvents.UseVisualStyleBackColor = $true
$GetEvents.add_Click($GetEvents_Click)
#
#CheckBox1
#
$CheckBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]235,[System.Int32]99))
$CheckBox1.Name = [System.String]'CheckBox1'
$CheckBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox1.TabIndex = [System.Int32]13
$CheckBox1.Text = [System.String]'Critical'
$CheckBox1.UseCompatibleTextRendering = $true
$CheckBox1.UseVisualStyleBackColor = $true
#
#CheckBox2
#
$CheckBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]235,[System.Int32]129))
$CheckBox2.Name = [System.String]'CheckBox2'
$CheckBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox2.TabIndex = [System.Int32]14
$CheckBox2.Text = [System.String]'Error'
$CheckBox2.UseCompatibleTextRendering = $true
$CheckBox2.UseVisualStyleBackColor = $true
$CheckBox2.add_CheckedChanged($CheckBox2_CheckedChanged)
#
#CheckBox3
#
$CheckBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]235,[System.Int32]159))
$CheckBox3.Name = [System.String]'CheckBox3'
$CheckBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox3.TabIndex = [System.Int32]15
$CheckBox3.Text = [System.String]'Warning'
$CheckBox3.UseCompatibleTextRendering = $true
$CheckBox3.UseVisualStyleBackColor = $true
#
#CheckBox4
#
$CheckBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]235,[System.Int32]189))
$CheckBox4.Name = [System.String]'CheckBox4'
$CheckBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox4.TabIndex = [System.Int32]16
$CheckBox4.Text = [System.String]'Information'
$CheckBox4.UseCompatibleTextRendering = $true
$CheckBox4.UseVisualStyleBackColor = $true
$CheckBox4.add_CheckedChanged($CheckBox4_CheckedChanged)
#
#CheckBox5
#
$CheckBox5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]235,[System.Int32]219))
$CheckBox5.Name = [System.String]'CheckBox5'
$CheckBox5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]104,[System.Int32]24))
$CheckBox5.TabIndex = [System.Int32]17
$CheckBox5.Text = [System.String]'Verbose'
$CheckBox5.UseCompatibleTextRendering = $true
$CheckBox5.UseVisualStyleBackColor = $true
$CheckBox5.add_CheckedChanged($CheckBox5_CheckedChanged)
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1049,[System.Int32]362))
$Form1.Controls.Add($CheckBox5)
$Form1.Controls.Add($CheckBox4)
$Form1.Controls.Add($CheckBox3)
$Form1.Controls.Add($CheckBox2)
$Form1.Controls.Add($CheckBox1)
$Form1.Controls.Add($GetEvents)
$Form1.Controls.Add($Results)
$Form1.Controls.Add($ToDate)
$Form1.Controls.Add($FromDate)
$Form1.Controls.Add($ListSrv)
$Form1.Controls.Add($ScanServers)
$Form1.Text = [System.String]'Form1'
$Form1.add_Load($Form1_Load)
$Form1.ResumeLayout($false)
$Form1.PerformLayout()
Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ScanServers -Value $ScanServers -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ListSrv -Value $ListSrv -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name FromDate -Value $FromDate -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ToDate -Value $ToDate -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Results -Value $Results -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name GetEvents -Value $GetEvents -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox1 -Value $CheckBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox2 -Value $CheckBox2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox3 -Value $CheckBox3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox4 -Value $CheckBox4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name CheckBox5 -Value $CheckBox5 -MemberType NoteProperty
}
. InitializeComponent
