func indexEqualsValue(_ arr: [Int]) -> Int {
  var left = 0
  var right = arr.count - 1

  while left <= right {
    let midIdx = left + (right - left) / 2
    let midVal = arr[midIdx]

    if midVal < midIdx {
      left = midIdx + 1
    } else if midVal == midIdx && midIdx == 0 {
      return midIdx
    } else if midVal == midIdx && arr[midIdx - 1] < midIdx - 1 {
      return midIdx
    } else {
      right = midIdx - 1
    }
  }

  return -1
}


// Test Cases

// Test Case 1
let result1 = indexEqualsValue([-5, 0, 2, 3, 10, 29])
print(result1)  // Expected output: 2

// Test Case 2
let result2 = indexEqualsValue([-5, 1, 2, 3, 10, 29])
print(result2)  // Expected output: 1

// Test Case 3
let result3 = indexEqualsValue([-5, -3, 0, 3, 10, 29])
print(result3)  // Expected output: 3

// Test Case 4
let result4 = indexEqualsValue([0, 1, 2, 3, 4, 5])
print(result4)  // Expected output: 0

// Test Case 5
let result5 = indexEqualsValue([1, 2, 3, 4, 5, 6])
print(result5)  // Expected output: -1
