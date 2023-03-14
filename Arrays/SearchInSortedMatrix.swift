// T(O(m+n)) Time / O(1) Space
func searchInSortedMatrix(_ arr: [[Int]], _ target: Int) -> [Int] {
  var row = 0
  var col = arr[row].count - 1
  
  while row < arr.count && col >= 0 {
    let currentVal = arr[row][col]
    if currentVal == target {
      return [row, col]
    } else if currentVal > target {
      col -= 1
    } else {
      row += 1
    }
  }

  return [-1, -1]
}

// Test Cases

print(searchInSortedMatrix([
[1, 4, 7, 12, 15, 1000],
[2, 5, 19, 31, 32, 1001],
[3, 8, 24, 33, 35, 1002],
[40, 41, 42, 44, 45, 1003],
[99, 100, 103, 106, 128, 1004],
], 44)) // Expected output: [3, 3]

print(searchInSortedMatrix([
[1, 4, 7, 12, 15, 1000],
[2, 5, 19, 31, 32, 1001],
[3, 8, 24, 33, 35, 1002],
[40, 41, 42, 44, 45, 1003],
[99, 100, 103, 106, 128, 1004],
], 99)) // Expected output: [4, 0]

print(searchInSortedMatrix([
[1, 4, 7, 12, 15, 1000],
[2, 5, 19, 31, 32, 1001],
[3, 8, 24, 33, 35, 1002],
[40, 41, 42, 44, 45, 1003],
[99, 100, 103, 106, 128, 1004],
], 128)) // Expected output: [4, 4]

print(searchInSortedMatrix([
[1, 4, 7, 12, 15, 1000],
[2, 5, 19, 31, 32, 1001],
[3, 8, 24, 33, 35, 1002],
[40, 41, 42, 44, 45, 1003],
[99, 100, 103, 106, 128, 1004],
], 50)) // Expected output: [-1, -1]

print(searchInSortedMatrix([
[1, 2],
[3, 4],
[5, 6],
], 6)) // Expected output: [2, 1]

print(searchInSortedMatrix([
[1, 2],
[3, 4],
[5, 6],
], 0)) // Expected output: [-1, -1]

print(searchInSortedMatrix([[]], 3)) // Expected output: [-1, -1]

print(searchInSortedMatrix([[1]], 1)) // Expected output: [0, 0]

print(searchInSortedMatrix([
[1, 4, 7, 12],
[2, 5, 8, 13],
[3, 6, 9, 14],
[10, 11, 12, 15],
], 6)) // Expected output: [2, 1]

print(searchInSortedMatrix([
[1, 4, 7, 12],
[2, 5, 8, 13],
[3, 6, 9, 14],
[10, 11, 12, 15],
], 12)) // Expected output: [0, 3]



