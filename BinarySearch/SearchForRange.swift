// O(LogN) Time / O(1) Space
func searchForRange(_ arr: [Int], _ target: Int) -> [Int] {
  var result = [-1, -1]
  result[0] = binarySearchHelper(arr, target, false)
  if result[0] == -1 || result[0] == arr.count - 1 || arr[result[0]] < arr[result[0] + 1] {
    result[1] = result[0]
  } else {
    result[1] = binarySearchHelper(arr, target, true)
  }

  return result
}

func binarySearchHelper(_ arr: [Int], _ target: Int, _ isRightMost: Bool) -> Int {
  var left = 0
  var right = arr.count - 1

  while left <= right {
    let midIdx = left + (right - left) / 2
    let midVal = arr[midIdx]

    if midVal == target {
      if isRightMost {
        if midIdx == arr.count - 1 || arr[midIdx + 1] > target {
          return midIdx
        } else {
          left = midIdx + 1
        }
      } else {
        if midIdx == 0 || arr[midIdx - 1] < target {
          return midIdx
        } else {
          right = midIdx - 1
        }
      }
    } else if midVal < target {
      left = midIdx + 1
    } else {
      right = midIdx - 1
    }
  }

  return -1
}

// Test Cases

print(searchForRange([5, 7, 7, 8, 8, 10], 8)) // Expected output: [3, 4]
print(searchForRange([5, 7, 7, 8, 8, 10], 6)) // Expected output: [-1, -1]
print(searchForRange([5, 7, 7, 8, 8, 10], 5)) // Expected output: [0, 0]
print(searchForRange([5, 7, 7, 8, 8, 10], 10)) // Expected output: [5, 5]
print(searchForRange([5], 5)) // Expected output: [0, 0]
print(searchForRange([5], 3)) // Expected output: [-1, -1]
print(searchForRange([], 4)) // Expected output: [-1, -1]
print(searchForRange([1, 2, 2, 2, 2, 2, 2, 2, 2, 9], 2)) // Expected output: [1, 8]
print(searchForRange([-5, -3, 0, 3, 5], -3)) // Expected output: [1, 1]
print(searchForRange([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 11)) // Expected output: [-1, -1]