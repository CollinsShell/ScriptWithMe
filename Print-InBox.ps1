# ScriptWithMe
cls
Function Print-InBox {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory=$true)]
        [string]$String
    )
    $Words = $String -split ' '
    $LWord = $Words | Sort Length -Descending | select -first 1 
    [int]$Width = $Lword.length + 4
    $Box = "*"*$Width +"`n"
    
    foreach($Word in $Words){
        if ($Word.Length -lt $LWord.length){
            [int]$WSPACE = $Width - ($word.Length + 3)
            #write-debug 'short'
            $space = " "*$WSPACE
            $Box += "* $word$space*`n"      
        }
        else{$Box += "* $Word *`n"}
    } 
    $Box += "*"*$Width +"`n"
    $Box
}#Function Print-InBox

Print-InBox "Hello World in a Box" -debug
