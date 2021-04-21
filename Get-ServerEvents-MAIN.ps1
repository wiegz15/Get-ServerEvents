$Form1_Load = {
}
$Label2_Click = {
}
$Label1_Click = {
}
$TextBox3_TextChanged = {
}

#Scan Servers Button
$ScanServers_Click = {
    $ScanError.Clear()
    Try{
		$Computername = Get-ADComputer -Filter { operatingsystem -like '*server*' } | select-object -expandproperty name
	    foreach ($Computer in $Computername) {
	        [void] $ListSrv.Items.Add("$Computer")
	    }
	}        
			catch {
			$ScanError.Text = "Error connecting to server: $Server - $($Error[0])"
			}
}

#Events Button Functions
$GetEvents_Click = {

#Get Date/Time
    #$StartTime = [datetime]::today
    #$EndTime = [datetime]::now
     $StartTime = $FromDate.Text
	 $EndTime = $ToDate.Text
	 $Results.Text = $ToDate.Text
#Get Checkbox Results
    $ScanError.Clear()
    $Levels = @('Placeholder-0', 'Critical', 'Error', 'Warning', 'Information', 'Verbose')
    $ListErr = @()
	if (($CheckBox1.Checked -eq $false) -and ($CheckBox2.Checked -eq $false) -and ($CheckBox3.Checked -eq $false) -and ($CheckBox4.Checked -eq $false) -and ($CheckBox5.Checked -eq $false)){$ScanError.Text = "No Event Level Checked"}
    If ($CheckBox1.Checked -eq $true){$ListErr = $ListErr + 1}
    If ($CheckBox2.Checked -eq $true){$ListErr = $ListErr + 2}
    If ($CheckBox3.Checked -eq $true){$ListErr = $ListErr + 3}
    If ($CheckBox4.Checked -eq $true){$ListErr = $ListErr + 4}
    If ($CheckBox5.Checked -eq $true){$ListErr = $ListErr + 5}
	
                    <# Event Log Levels
                    1 = Critical
                    2 = Error
                    3 = Warning
                    4 = Information
                    5 = Verbose 
                    #> 
                    
#Create Filter
    $EventFilter = @{Logname = 'System', 'Application'
        Level                = $ListErr             #Calling Array made by Check Box
        StartTime            = $StartTime           #Need to Connect to Date Time Picker.
        EndTime              = $EndTime             #Need to Connect to Date Time Picker.
    }         

#Get-WinEvent Call
    $ServerSelection = $ListSrv.SelectedItems
    foreach ($Server in $ServerSelection) {
        try {
            $Events = Get-WinEvent -ComputerName $Server -Verbose:$false -ErrorAction Stop -FilterHashtable $EventFilter 

#Output Options
    $Output = $Events | Select-Object @{n='Computer';e={$Server}}, TimeCreated,LogName, @{n='Level';e={$Levels[$($_.Level)]}}, Message
    
    #Output to Screen
    #$Output | ft
    #foreach ($line in $Output) {$Results.Appendtext($line)}
    #$ListEvents.Text = $Events
    #Export to File 
    #$Output | Out-File C:\Users\awiegel\WinEvents-$Computer.txt

        }
        catch {
			$ScanError.Text = "Error connecting to server: $Server - $($Error[0])"
            Write-warning "Error connecting to server: $Server - $($Error[0])"
        }
    }

}

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'Get-ServerEvents-MAIN.designer.ps1')

$Form1.ShowDialog()
