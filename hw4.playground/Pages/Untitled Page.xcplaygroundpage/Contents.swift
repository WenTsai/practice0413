//: Playground - noun: a place where people can play

import UIKit

//#1:算全部格子的總合
print("== #1: 算全部格子的總合 ==")
var sum1 = 0
for i in 0...7{
    for j in 0...7{
        print(String(format:"%.2d",i*j),terminator:" ")
        sum1 += i*j
    }
    print("")
}
print("===== sum #1: \(sum1) =====\n\n")


//#2:奇數行的數字總合
print("== #2: 奇數行的數字總合 ==")
var sum2 = 0
for i in 0...7{
    if i % 2 != 0{
        for j in 0...7{
            print(String(format:"%.2d",i*j), terminator:" ")
            sum2 += i*j
        }
    }
    else{
        for _ in 0...7{
            print("00 ", terminator:"")
        }
    }
    
    print("")
}
print("===== sum #2: \(sum2) =====\n\n")



//#3:所有格子的總和，除了列數>=行數
print("== #3 所有格子的總和，除了列數>=行數 ==")
var sum3 = 0
for i in 0...7{
    for j in 0...7{
        if i > j{
            print(String(format:"%.2d",i*j),terminator:" ")
            sum3 += i*j
        }
        else{
            print("--",terminator:" ")
        }
        
    }
    print("")
}
print("===== sum #3: \(sum3) =====\n\n")




//#4 定義function1
print("== #4 定義function1 ==")
func addTimes(start:Int, Max:Int, times:Int) -> Int {
    var sum4 = 0
    for i in start...Max where i % 5 == 0 {
        print(i, terminator:" ")
        sum4 += i
    }
    return sum4
}
print(";\nthe sum4 is: ", addTimes(5, Max: 98, times: 5),"\n\n")




//#5 定義function2
print("== #5 定義function2 ==")
func addNoTimes(start:Int, Max:Int, times:Int) -> Int {
    var sum5 = 0
    for i in start...Max where i % 5 != 0 {
        print(i, terminator:" ")
        sum5 += i
    }
    return sum5
}
print(";\nthe sum5 is: ", addNoTimes(3, Max: 11, times: 5),"\n\n")



//#6 定義function: 奇數行的數字總和
print("== #6 定義function: 奇數行的數字總和 ==")
func addOddRow(row:Int, column:Int) -> Int {
    var sum6 = 0
    for i in 0...row{
        if i % 2 != 0{
            for j in 0...column{
                print(String(format:"%.2d",i*j), terminator:" ")
                sum6 += i*j
            }
        }
        else{
            for _ in 0...column{
                print("00 ", terminator:"")
            }
        }
        
        print("")
    }

    print("===== sum #6: \(sum6) =====\n\n")
    return sum6
    
}
addOddRow(7, column: 7)

//#7 定義function: 所有格子的總和，除了列數>=行數
print("== #7 定義function: 所有格子的總和，除了列數>=行數")
func addRowIsBiggerThanColumn (row:Int, column: Int) -> Int{
    var sum7 = 0
    for i in 0...row{
        for j in 0...column{
            if i > j{
                print(String(format:"%.2d",i*j),terminator:" ")
                sum7 += i*j
            }
            else{
                print("--",terminator:" ")
            }
            
        }
        print("")
    }
    print("===== sum #7: \(sum7) =====\n\n")
    
    return sum7

}
addRowIsBiggerThanColumn(7, column: 7)


//#8 定義function: 華氏轉攝氏
print("== #8 定義function: 華氏轉攝氏 ==")
func transTemp_FtoC ( fahrenheit: Float ) -> Float {
    var Celsius:Float
    
    Celsius = (fahrenheit - 32) * 5 / 9
    print("Fahrenheit \(fahrenheit) is Celsius \(Celsius)\n\n")
    return Celsius
}
transTemp_FtoC(212)



//#9定義function: 字串奇偶分離
print("== #9定義function: 字串奇偶分離 ==")
var array1 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
func sortIntArray_2_odd_and_even (inputArray:[Int]) -> (oddArray:[Int], evenArray:[Int]) {
    var odd = [Int]()
    var even = [Int]()
    
    for i in inputArray{
        if i % 2 != 0 {
            odd += [i]
        }
        else {
            even.append(i)
        }
    }
    return(odd, even)
}
sortIntArray_2_odd_and_even(array1)
print(sortIntArray_2_odd_and_even(array1))



