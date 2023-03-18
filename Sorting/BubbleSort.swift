// O(n^n) Time / O(1) Space
func bubbleSort(_ arr: inout [Int]) -> [Int] {
  var sortedNumCount = 0
  var noSwaps: Bool
  while sortedNumCount < arr.count {
    noSwaps = true
    for innerIdx in 0..<arr.count - sortedNumCount - 1 {
      if arr[innerIdx] > arr[innerIdx + 1] {
        // Swap
        arr.swapAt(innerIdx, innerIdx + 1)
        noSwaps = false
      }
    }

    sortedNumCount += 1
    if noSwaps { break }
  }

  return arr
}

// Test Cases
var test1 = [Int]()
print(bubbleSort(&test1)) // Expected output: []

var test2 = [1]
print(bubbleSort(&test2)) // Expected output: [1]

var test3 = [2, 1]
print(bubbleSort(&test3)) // Expected output: [1, 2]

var test4 = [3, 2, 1]
print(bubbleSort(&test4)) // Expected output: [1, 2, 3]

var test5 = [5, 2, 7, 3, 8, 1]
print(bubbleSort(&test5)) // Expected output: [1, 2, 3, 5, 7, 8]

var test6 = [1, 2, 3, 4, 5]
print(bubbleSort(&test6)) // Expected output: [1, 2, 3, 4, 5]

var test7 = [5, 4, 3, 2, 1]
print(bubbleSort(&test7)) // Expected output: [1, 2, 3, 4, 5]

var test8 = [1, 3, 2, 4, 6, 5, 8, 7, 9]
print(bubbleSort(&test8)) // Expected output: [1, 2, 3, 4, 5, 6, 7, 8, 9]

var test9 = [5, 2, 5, 7, 3, 2, 8, 1]
print(bubbleSort(&test9)) // Expected output: [1, 2, 2, 3, 5, 5, 7, 8]

var test10 = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
print(bubbleSort(&test10)) // Expected output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]