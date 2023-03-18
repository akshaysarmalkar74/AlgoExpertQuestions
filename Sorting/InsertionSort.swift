// O(n^n) Time / O(1) Space

func insertionSort(_ arr: inout [Int]) -> [Int] {
  if arr.isEmpty { return arr }
  
  for idx in 1..<arr.count {
    var innerIdx = idx - 1
    let currentVal = arr[idx]
    
    while innerIdx >= 0 && arr[innerIdx] > currentVal {
      arr[innerIdx + 1] = arr[innerIdx]
      innerIdx -= 1
    }

    arr[innerIdx + 1] = currentVal
  }

  return arr
}

// Test Cases
var test1: [Int] = []
print(insertionSort(&test1)) // Expected output: []

var test2 = [1]
print(insertionSort(&test2)) // Expected output: [1]

var test3 = [2, 1]
print(insertionSort(&test3)) // Expected output: [1, 2]

var test4 = [3, 2, 1]
print(insertionSort(&test4)) // Expected output: [1, 2, 3]

var test5 = [5, 2, 7, 3, 8, 1]
print(insertionSort(&test5)) // Expected output: [1, 2, 3, 5, 7, 8]

var test6 = [1, 2, 3, 4, 5]
print(insertionSort(&test6)) // Expected output: [1, 2, 3, 4, 5]

var test7 = [5, 4, 3, 2, 1]
print(insertionSort(&test7)) // Expected output: [1, 2, 3, 4, 5]

var test8 = [1, 3, 2, 4, 6, 5, 8, 7, 9]
print(insertionSort(&test8)) // Expected output: [1, 2, 3, 4, 5, 6, 7, 8, 9]

var test9 = [5, 2, 5, 7, 3, 2, 8, 1]
print(insertionSort(&test9)) // Expected output: [1, 2, 2, 3, 5, 5, 7, 8]

var test10 = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
print(insertionSort(&test10)) // Expected output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
