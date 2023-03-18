// O(nLogN) Time / O(n) Space
func sortedSquaredArray(_ arr: [Int]) -> [Int] {
  var squaredArray = arr.map { $0 * $0 }
  squaredArray.sort(by: <)
  return squaredArray
}

// O(n) Time / O(n) Space

func sortedSquaredArray(_ arr: [Int]) -> [Int] {
  var resultArray = [Int](repeating: 0, count: arr.count)
  var idxToInsert = arr.count - 1

  var left = 0
  var right = arr.count - 1

  while left <= right {
    let squaredNum: Int
    if abs(left) > abs(right) {
      squaredNum = left * left
      left += 1
    } else {
      squaredNum = right * right
      right -= 1
    }

    resultArray[idxToInsert] = squaredNum
    idxToInsert -= 1
  }

  return resultArray
}

// Test Cases

print(sortedSquaredArray([-7, -3, 1, 2, 3, 8, 9])) // Expected output: [1, 4, 9, 9, 49, 64, 81]
print(sortedSquaredArray([-6, -4, 1, 2, 3, 5])) // Expected output: [1, 4, 9, 16, 25, 36]
print(sortedSquaredArray([1, 2, 3, 4, 5])) // Expected output: [1, 4, 9, 16, 25]
print(sortedSquaredArray([-5, -4, -3, -2, -1])) // Expected output: [1, 4, 9, 16, 25]
print(sortedSquaredArray([-5, -3, 0, 2, 4])) // Expected output: [0, 4, 9, 16, 25]
print(sortedSquaredArray([0, 1, 2, 3, 4, 5])) // Expected output: [0, 1, 4, 9, 16, 25]
print(sortedSquaredArray([-10, -5, 0, 5, 10])) // Expected output: [0, 25, 25, 100, 100]