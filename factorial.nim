import strutils

proc factorial(n: int): int = 
    if (n < 0):
        var e: ref ValueError = newException(ValueError, "n must be >= 0")
        raise e
    elif(n <= 1):
        result =  1
    else:
        result = n * factorial(n - 1)

echo "Please enter a positive or zero integer:"

try:
    let n: int = readLine(stdin).parseInt()  

    echo "Factorial of ", n, " is ", factorial(n)
except ValueError:
    echo "You did not enter a valid positive integer"
