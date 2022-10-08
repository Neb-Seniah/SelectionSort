import Foundation
func Sort(unsortedIntegers: [String]) {
    var sortedIntegers = unsortedIntegers 
//    print("Pass: 0, Swaps: 0/0, Array: \(sortedIntegers)")
    for current in 1 ..< sortedIntegers.count {
        var currentSmallest = current-1
        for i in current ..< sortedIntegers.count {
            if sortedIntegers[i] < sortedIntegers[currentSmallest] {
                currentSmallest = i
            }
        }
        if String(currentSmallest) != sortedIntegers[current-1] {
            let temp = sortedIntegers[current-1]
            sortedIntegers[current-1] = sortedIntegers[currentSmallest]
            sortedIntegers[currentSmallest] = temp
        }
  //      print("Pass: \(current), Swaps: 1/\(current), Array: \(sortedIntegers)")
    }
}
var unsortedIntegers : [String] = []
while let input = readLine() {
    unsortedIntegers.append(input.lowercased())
}
Sort(unsortedIntegers: unsortedIntegers)
