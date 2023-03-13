// O(nLogN)) Time / O(1)) Space
func nonConstructibleChange(_ arr: [Int]) -> Int {
  let sortedtValues = arr.sorted(by: <)
  var currentChange = 0

  for change in sortedtValues {
    if currentChange + 1 < change {
      return currentChange + 1
    } else {
      currentChange += change
    }
  }

  return currentChange + 1
}

// Test Cases

print(nonConstructibleChange([1, 2, 3, 7, 10])) // 24
print(nonConstructibleChange([1, 1, 1, 1, 1])) // 6
print(nonConstructibleChange([2])) // 1
print(nonConstructibleChange([1, 5, 1, 1, 1, 10, 15, 20, 100])) // 55
print(nonConstructibleChange([3, 2, 5])) // 1
