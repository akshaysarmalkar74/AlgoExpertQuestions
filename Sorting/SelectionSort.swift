// O(n^n) Time / O(1) Space
func selectionSort(_ arr: inout [Int]) -> [Int] {
  if arr.isEmpty { return arr }
  
  for outerIdx in 0..<arr.count - 1 {
    var minIdx = outerIdx
    for innerIdx in outerIdx..<arr.count {
      if arr[innerIdx] < arr[minIdx] {
        minIdx = innerIdx
      }
    }

    if outerIdx != minIdx {
      arr.swapAt(outerIdx, minIdx)
    }
  }

  return arr
}

// Test Cases
var test1 = [Int]()
print(selectionSort(&test1)) // Expected output: []

var test2 = [1]
print(selectionSort(&test2)) // Expected output: [1]

var test3 = [2, 1]
print(selectionSort(&test3)) // Expected output: [1, 2]

var test4 = [3, 2, 1]
print(selectionSort(&test4)) // Expected output: [1, 2, 3]

var test5 = [5, 2, 7, 3, 8, 1]
print(selectionSort(&test5)) // Expected output: [1, 2, 3, 5, 7, 8]

var test6 = [1, 2, 3, 4, 5]
print(selectionSort(&test6)) // Expected output: [1, 2, 3, 4, 5]

var test7 = [5, 4, 3, 2, 1]
print(selectionSort(&test7)) // Expected output: [1, 2, 3, 4, 5]

var test8 = [1, 3, 2, 4, 6, 5, 8, 7, 9]
print(selectionSort(&test8)) // Expected output: [1, 2, 3, 4, 5, 6, 7, 8, 9]

var test9 = [5, 2, 5, 7, 3, 2, 8, 1]
print(selectionSort(&test9)) // Expected output: [1, 2, 2, 3, 5, 5, 7, 8]

var test10 = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
print(selectionSort(&test10)) // Expected output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]