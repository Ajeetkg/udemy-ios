import UIKit

var str = "Hello, playground"

func calculateBMI(weightInKg: Double, heightInMeters: Double) -> String {
    let bmi = weightInKg/(heightInMeters*heightInMeters);
    let readableBMI = String(format: "%0.2f" ,bmi);
    let message: String;
    if ( bmi >= 25) {
        message = "\(readableBMI): You are overweight";
    } else if( bmi > 18.5 && bmi < 25) {
        message = "\(readableBMI): You are normal weight";
    } else if ( bmi < 18.5) {
        message = "\(readableBMI): You are underweight";
    } else {
         message = "Something is wrong";
    }
    print (message);
    return message;
}

calculateBMI(weightInKg: 63, heightInMeters: 1.8);


let arrayOfNumbers = [1, 3, 56, 3,2343];

func getSumOfArray(Int arrayOfNumbers: [Int]) -> Int {
    var sumOfArray = 0;
    for number in arrayOfNumbers{
        sumOfArray = sumOfArray + number;
    }
    print("sum of \(arrayOfNumbers): " ,  sumOfArray)
    return sumOfArray;
}

getSumOfArray(Int: arrayOfNumbers);

func getSumOfNumbersInRange( begin: Int, end: Int) -> Int{
    var sumOfNumbers = 0;
    for number in begin...end {
        sumOfNumbers = sumOfNumbers + number;
    }
    print( sumOfNumbers);
    return sumOfNumbers;
}

getSumOfNumbersInRange(begin: 0, end: 10);



func printFinonacciNumbers(indexToPrint: Int) ->  String {

     let firstNumber = 1
    let secondNumber = 1;
    print (firstNumber);
    print (secondNumber);
    printRecursively(firstNumber: 1, secondNumber: 1, indexToPrint: indexToPrint-2)
    return "";
}

func printRecursively(firstNumber: Int, secondNumber: Int, indexToPrint: Int) {

    var nextNumber:Int = 0;
    var lFirstNumber = firstNumber;
    var lSecondNumber = secondNumber;
    if(indexToPrint > 0){
        nextNumber = firstNumber + secondNumber;
        lFirstNumber = secondNumber;
        lSecondNumber = nextNumber;
        print (nextNumber);
        printRecursively( firstNumber: lFirstNumber, secondNumber: lSecondNumber, indexToPrint: (indexToPrint - 1));
    }
}

printFinonacciNumbers(indexToPrint: 10);
