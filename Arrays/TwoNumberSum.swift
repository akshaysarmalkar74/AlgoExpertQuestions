// O(n^n) Time / O(1) Space
func twoNumberSum(_ arr: [Int], _ target: Int) -> [Int] {
  for outerIdx in 0..<arr.count - 1 {
    let outerNum = arr[outerIdx]
    for innerIdx in outerIdx+1..<arr.count {
      let innerNum = arr[innerIdx]
      let sum = outerNum + innerNum
      if sum == target {
        return [outerNum, innerNum]
      }
    }
  }
  return [-1, -1]
}

// O(n) Time / O(n) Space
func twoNumberSum(_ arr: [Int], _ target: Int) -> [Int] {
  var uniqueNums = Set<Int>()

  for num in arr {
    let numRequired = target - num
    if uniqueNums.contains(numRequired) {
      return [numRequired, num]
    } else {
      uniqueNums.insert(num)
    }
  }

  return [-1, -1]
}

// O(nLogN) Time / O(n) Space (Since not sorted inplace here)

func twoNumberSum(_ arr: [Int], _ target: Int) -> [Int] {
  let sortedNums = arr.sorted(by: <)

  var left = 0
  var right = sortedNums.count - 1

  while left < right {
    let currentSum = sortedNums[left] + sortedNums[right]
    if currentSum == target {
      return [sortedNums[left], sortedNums[right]]
    } else if currentSum < target {
      left += 1
    } else {
      right -= 1
    }
  }

  return [-1, -1]
}

// Test Cases

print(twoNumberSum([4, 6], 10)) // Expected output: [4, 6]
print(twoNumberSum([4, 6, 1], 5)) // Expected output: [4, 1]
print(twoNumberSum([4, 6, 1, -3], 3)) // Expected output: [6, -3]
print(twoNumberSum([2, 5, -5, 7, 1, 3], 0)) // Expected output: [-5, 5]
print(twoNumberSum([1, 2, 3, 4, 5, 6, 7, 8, 9], 17)) // Expected output: [8, 9]
print(twoNumberSum([0, 0, 1, 1, 2, 2], 4)) // Expected output: [2, 2]
print(twoNumberSum([1, 3, 5, 7, 9], 12)) // Expected output: [3, 9]
print(twoNumberSum([3, 5, -4, 8, 11, 1, -1, 6], 10)) // Expected output: [-1, 11]