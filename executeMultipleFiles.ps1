cd / # Paste the path to the files to execute here

$collection = get-childitem | select-object -Property fullname

foreach ($item in $collection) {
    start-process -filePath $item.fullname -wait
}