function BubbleSort{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [ValidateNotNullOrEmpty()]
        [int[]]$Array
    )
    Write-Warning "Sorting the array using Bubble Sort algorithm sucks!, use it only for educational purposes.\n It is not efficient for large datasets. \n Consider using more efficient algorithms like QuickSort or MergeSort."
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