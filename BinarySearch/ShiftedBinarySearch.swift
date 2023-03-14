// O(LogN) Time / O(1) Space
func shiftedBinarySearch(_ arr: [Int], _ target: Int) -> Int {
  var left = 0
  var right = arr.count - 1

  while left <= right {
    let midIdx = left + (right - left) / 2
    let midVal = arr[midIdx]
    let leftElement = arr[left]
    let rightElement = arr[right]

    if midVal == target {
      return midIdx
    } else if leftElement <= midVal {
      // Sorted Left Half
      if leftElement <= target && target <= midVal {
        right = midIdx - 1
      } else {
        left = midIdx + 1
      }
    } else {
      // Sorted Right Half
      if midVal <= target && target <= rightElement {
        left = midIdx + 1
      } else {
        right = midIdx - 1
      }
    }
  }

  return -1
}

// Test Cases

print(shiftedBinarySearch([4, 5, 6, 7, 0, 1, 2], 0)) // Expected output: 4
print(shiftedBinarySearch([4, 5, 6, 7, 0, 1, 2], 3)) // Expected output: -1
print(shiftedBinarySearch([4, 5, 6, 7, 0, 1, 2], 4)) // Expected output: 0
print(shiftedBinarySearch([4, 5, 6, 7, 0, 1, 2], 2)) // Expected output: 6
print(shiftedBinarySearch([1], 1)) // Expected output: 0
print(shiftedBinarySearch([], 5)) // Expected output: -1
print(shiftedBinarySearch([-4, -3, -2, -1, 0, 1, 2, 3, 4], 2)) // Expected output: 6