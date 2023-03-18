// O(n) Time / O(1) Space
func threeLargestNumbers(_ arr: [Int]) -> [Int?] { 
  var result = [Int?](repeating: nil, count: 3)

  for num in arr {
    if result[2] == nil || (result[2] ?? 0) < num {
      updateValueAt(2, num, &result)
    } else if result[1] == nil || (result[1] ?? 0) < num {
      updateValueAt(1, num, &result)
    } else if result[0] == nil || (result[0] ?? 0) < num {
      updateValueAt(0, num, &result)
    }
  }

  return result
}

func updateValueAt(_ idx: Int, _ num: Int, _ result: inout [Int?]) {
  for iteratingIdx in 0...idx {
    if iteratingIdx == idx {
      result[iteratingIdx] = num
    } else {
      result[iteratingIdx] = result[iteratingIdx + 1]
    }
  }
}

// Test Cases
print(threeLargestNumbers([1, 2])) // Expected output: "Input array must contain at least three numbers."
print(threeLargestNumbers([4, 5, 2, 3, 1])) // Expected output: [3, 4, 5]
print(threeLargestNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9])) // Expected output: [7, 8, 9]
print(threeLargestNumbers([9, 8, 7, 6, 5, 4, 3, 2, 1])) // Expected output: [7, 8, 9]
print(threeLargestNumbers([5, -3, 10, -6, 9])) // Expected output: [5, 9, 10]
print(threeLargestNumbers([-5, -3, -1, 0, 2, 4, 6])) // Expected output: [2, 4, 6]
print(threeLargestNumbers([1, -2, 3, -4, 5, -6, 7])) // Expected output: [5, 7, 3]
print(threeLargestNumbers([7, 7, 7, 7, 7, 7, 7])) // Expected output: [7, 7, 7]