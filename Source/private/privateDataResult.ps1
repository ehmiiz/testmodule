function privateDataResult {
    $Team = privateDataFunction
    $TGoal = Get-Random -Minimum 3 -Maximum 9
    $OGoal = Get-Random -Minimum 0 -Maximum 2


    return "$Team won: $TGoal - $OGoal!"
}