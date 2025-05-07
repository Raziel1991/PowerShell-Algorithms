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