#import Algorithms funtions 
. $PSScriptRoot\Algorithms\Binary-Search.ps1
. $PSScriptRoot\Algorithms\Bubble-Sort.ps1
#Exporting functions to be used in other modules
Export-ModuleMember -Function BinarySearch, BubbleSort