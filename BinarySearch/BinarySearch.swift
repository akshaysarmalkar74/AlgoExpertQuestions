func binarySearch(_ arr: [Int], _ target: Int) -> Int {
  var left = 0
  var right = arr.count - 1

  while left <= right {
    let midIdx = left + (right - left) / 2
    let midVal = arr[midIdx]

    if midVal == target {
      return midIdx
    } else if midVal < target {
      left = midIdx + 1
    } else {
      right = midIdx - 1
    }
  }

  return -1
}

// Test Cases

print(binarySearch([1, 2, 3, 4, 5], 4)) // 3
print(binarySearch([1, 2, 3, 4, 5], 6)) // -1
print(binarySearch([1, 3, 5, 7, 9], 3)) // 1
print(binarySearch([1, 3, 5, 7, 9], 10)) // -1
print(binarySearch([1, 1, 1, 1, 1], 1)) // 2
print(binarySearch([], 10)) // -1
print(binarySearch([1], 1)) // 0
