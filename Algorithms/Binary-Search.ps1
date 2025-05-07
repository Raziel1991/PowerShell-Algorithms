<#
.SYNOPSIS
    This script implements the binary search algorithm in PowerShell.
.DESCRIPTION
    The binary search algorithm is a fast search algorithm that works on sorted arrays. It divides the array into halves and eliminates half of the elements from consideration in each step.
    This implementation assumes that the input array is sorted in ascending order.
    The algorithm has a time complexity of O(log n), making it much more efficient than linear search algorithms for large datasets.
.PARAMETER Array
    The sorted array of integers in which to search for the target value.
.PARAMETER Target
    The integer value to search for in the array.
.EXAMPLE
    PS C:\> $sortedArray = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
    PS C:\> $target = 5
    PS C:\> BinarySearch -Array $sortedArray -Target $target
    This will return the index of the target value in the sorted array. 
.NOTES
    Use is when you have a sorted array and want to find the index of a specific value.
    For educational purposes only. 
    The binary search algorithm requires the input array to be sorted in ascending order.
    If the array is not sorted, the results may be incorrect.
    Consider using more efficient algorithms for large datasets.
#>


# this is the binary search algorithm in powershell

function BinarySearch {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [int[]]$array,
        [Parameter(Mandatory=$true)]
        [int]$target
        
    )
    $low = 0
    $high = $array.Length - 1
    while ($low -le $high) {
        $mid = [math]::Floor(($low + $high) / 2)
        if ($array[$mid] -eq $target) {
            return $mid
        } elseif ($array[$mid] -lt $target) {
            $low = $mid + 1
        } else {
            $high = $mid - 1
        }
    }
    return -1 # target not found
}