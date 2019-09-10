import UIKit

// how to delete letters which repeat more than a number


func removeLetter(word : String, number : Int) -> String{
    var finalWord = " "
    var firstWord = [String]()
    var worddictionary = [String : Int]()
    var count : Int = 0
    print ("First Word : \(word)")
    print ("Number : \(number)")
    
    for letter in word{  
        firstWord.append(String(letter))
    }
    for x in 0...firstWord.count-1{
        count = 0
        for y in 0...firstWord.count-1{
            if (firstWord[x].isEqual(firstWord[y])){
                count += 1
            }
            if count >= number {
                worddictionary[firstWord[x]] = count
            }
        }
       // print(firstWord)
    }
 
    var count2 = 0
    var index = 0
    for t in worddictionary.keys {
        count2 = 0
        for _ in 0...firstWord.count-1{
            if count2 < worddictionary[t]!{
                index = firstWord.index(of : t)!
                if t != " "{
                    firstWord.remove(at: index)
                    count2 += 1
                    
                }}}
       // print(firstWord)
        
        
    }
    for word in 0...firstWord.count-1{ //Array'i tekrar string haline getiriyorum.
        if (firstWord[word] != " " || word != 0){ //kelimenin başına boşluk koymamak için
            finalWord += firstWord[word]
        }
    }
    return finalWord
}

var finalWord = removeLetter(word: "tuuuba taffii burk", number: 4)
print("Final word: \(finalWord)")



var frstWord = ["tuba", "tayfun", "asd"]
frstWord.count-1

