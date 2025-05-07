<#
.SYNOPSIS
    This script implements the Bubble Sort algorithm in PowerShell.
.DESCRIPTION
    The Bubble Sort algorithm is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements and swaps them if they are in the wrong order. The pass through the
    list is repeated until the list is sorted. The algorithm gets its name from the way larger elements "bubble" to the top of the list.
    This implementation is not efficient for large datasets and is primarily for educational purposes.
.PARAMETER Array
    The array of integers to be sorted.
.EXAMPLE
    PS C:\> $unsortedArray = 5, 3, 8, 4, 2
    PS C:\> BubbleSort -Array $unsortedArray
    This will sort the array in ascending order using the Bubble Sort algorithm.
.NOTES
For educational purposes only. 
    The Bubble Sort algorithm is not efficient for large datasets and is primarily for educational purposes.
    Consider using more efficient algorithms like QuickSort or MergeSort for practical applications.
Consider using more efficient algorithms for large datasets.
#>

function BubbleSort{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [int[]]$Array,
        [Parameter(Mandatory=$false)]
        [switch]$NoWarning,
        [Parameter(Mandatory=$false)]
        [switch]$TimeComplexity
        #[ValidateSet("Ascending", "Descending")] #might implement this in the future
    )
    if (-not $NoWarning) {
        Write-Warning "Sorting the array using Bubble Sort algorithm sucks!, use it only for educational purposes.\n It is not efficient for large datasets. \n Consider using more efficient algorithms like QuickSort or MergeSort."
    }
    if ($Array.Count -eq 0) {
        Write-Error "The array is empty. Please provide a non-empty array."
        return
    }
    if ($Array.Count -eq 1) {
        Write-Host "The array is already sorted."
        return $Array
    }
    if ($TimeComplexity) {
        Write-Host "The time complexity of Bubble Sort is O(n^2)."
    }
    

    # Bubble Sort algorithm implementation
    $n = $Array.Length
    for ($i = 0; $i -lt $n - 1; $i++) {
        for ($j = 0; $j -lt $n - $i - 1; $j++) {
            if ($Array[$j] -gt $Array[$j + 1]) {
                # Swap the elements
                $temp = $Array[$j]
                $Array[$j] = $Array[$j + 1]
                $Array[$j + 1] = $temp
            }
        }
    }
    return $Array
}