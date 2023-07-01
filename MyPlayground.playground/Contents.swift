import UIKit
/**.
 https://leetcode.com/explore/interview/card/leetcodes-interview-crash-course-data-structures-and-algorithms/703/arraystrings/4501/
 Arrays and Strings
 
 The two-pointers is very common in solving array and strings problems. it involves having two integer variables that both move along an iterable. in the next set of problems we'll be focusing onm arrays and strings. this means we will have two integers, usally named i and j, or left and right which each represent an index of the array or string.
 
 
 There are several ways to implement two-pointers. To start, lets look at the following method.
 
 - Start the two pointers at the edge of the input. Move them towards each other until they meet.
 
 let's look at some pseudocode that illustrates this concepts
 
 
 function fn(arr):
 left = 0
 right = arr.count - 1
 
 while left < right:
 do some logic here depending on the problem
 do some more logic here to decide on one of the following:
 
 1. left ++
 2. right --
 3. Both left++ and right--
 
 Complexity:
 
 since the pointers start n away from each other and move at least one step closer in every iteration. We will never have more than O(n). if we can keep the work inside each iteration at O(1) this techniuqe will result in a linear runtime, which is usally the best possible runtime. Now lets look at some examples in swift.
 
 
 
 */

class Solution {
  /**
   https://leetcode.com/problems/reverse-string/
   Write a function that reverses a string. The input string is given as an array of characters s.
   
   You must do this by modifying the input array in-place with O(1) extra memory.
   
   
   
   Example 1:
   
   Input: s = ["h","e","l","l","o"]
   Output: ["o","l","l","e","h"]
   Example 2:
   
   Input: s = ["H","a","n","n","a","h"]
   Output: ["h","a","n","n","a","H"]
   
   
   pscodocode
   
   right = 0
   left = s.count - 1
   
   while right < left {
   s[right] = s[left]
   right += 1
   left += 1
   
   //end of while
   return s
   
   
   
   */
  func reverseString(_ s: inout [Character]) {
   
    var right = 0
    var left = s.count - 1
    
    while right < left {
      let temp = s[left]
      s[left] = s[right]
      s[right] = temp
      
      right += 1
      left -= 1
    }
  }
  
  //easy to understand
  func reverseString2(_ s: inout [Character]) {
   
    var right = 0
    var left = s.count - 1
    
    while right < left {
      s.swapAt(right, left)
      
      right += 1
      left -= 1
    }
  }
  
  /**
   https://leetcode.com/problems/squares-of-a-sorted-array/
   977. Squares of a Sorted Array
   Easy
   7.9K
   198
   Companies
   Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

    

   Example 1:

   Input: nums = [-4,-1,0,3,10]
   Output: [0,1,9,16,100]
   Explanation: After squaring, the array becomes [16,1,0,9,100].
   After sorting, it becomes [0,1,9,16,100].
   Example 2:

   Input: nums = [-7,-3,2,3,11]
   Output: [4,9,9,49,121]

   
   steps
   method using two-pointer
   sort
   use pow on each ints
   return the resuls
   
   
   right = 0
   left = nums.count - 1
   var maxNumb
   result = []
   for i in nums {
     reslut.append(pow(i,2))
   while right < left
    if result[right] < result[left]
      
      result[right] = result[left]
      right += 1
      left -= 1
   
   
   */
  func sortedSquares(_ nums: [Int]) -> [Int] {
    var count = nums.count
    var result = Array(repeating: 0, count: count)
    var left = 0
    var right = count - 1
    var index  = count - 1
    
    while left <= right {
      let leftSqure = nums[left] * nums[left]
      let rightSqure = nums[right] * nums[right]
      
      if leftSqure >= rightSqure {
        result[index] = leftSqure
        left += 1
      } else {
        result[index] = rightSqure
        right -= 1
      }
      index -= 1
    }
    return result
  }
  /**
   https://leetcode.com/problems/reverse-prefix-of-word/
   2000. Reverse Prefix of Word
   Easy

   Companies
   Given a 0-indexed string word and a character ch, reverse the segment of word that starts at index 0 and ends at the index of the first occurrence of ch (inclusive). If the character ch does not exist in word, do nothing.

   For example, if word = "abcdefd" and ch = "d", then you should reverse the segment that starts at 0 and ends at 3 (inclusive). The resulting string will be "dcbaefd".
   Return the resulting string.

    

   Example 1:

   Input: word = "abcdefd", ch = "d"
   Output: "dcbaefd"
   Explanation: The first occurrence of "d" is at index 3.
   Reverse the part of word from 0 to 3 (inclusive), the resulting string is "dcbaefd".
   Example 2:

   Input: word = "xyxzxe", ch = "z"
   Output: "zxyxxe"
   Explanation: The first and only occurrence of "z" is at index 3.
   Reverse the part of word from 0 to 3 (inclusive), the resulting string is "zxyxxe".
   Example 3:

   Input: word = "abcd", ch = "z"
   Output: "abcd"
   Explanation: "z" does not exist in word.
   You should not do any reverse operation, the resulting string is "abcd".
   
   
   */
  func reversePrefix(_ word: String, _ ch: Character) -> String {
    
    /**
     Input: word = "xyxzxe", ch = "z"
     Output: "zxyxxe"
     
     
     xyxz
     zxyx xe
     
     look throught the string and find 'ch'
     if not there return the original string
     if found find the first index where its was found
     start the index from the start of string
     end the index at the second pointer
     and the rest of the string to the reversed word
     
     
     
     var chars = Array(word)
     var indexOfCha = 0
     for cha in chars
       if cha == ch
        indexOfCha =  chars[cha]
     
     right = 0
     left = indexOfCh
     var result = ""
     while right < left
     
        chars.swapAt(right, left)
        right += 1
        left -= 1
     
     
     for i in chars {
        result.append(i)
     
     return results
     */
    
    
    var chars = Array(word)
    var indexCha = 0
    var right = 1
    var left = chars.count
    var result = ""
   
    while right < chars.count - 1 {
      print(left)
      indexCha += right
      right += 1
      left -= 1
    }
    right = 0
    left = chars.count - 1
    
  
    while right < indexCha {
      chars.swapAt(indexCha, right)
      
      right += 1
      indexCha -= 1
      
    }
    for i in chars {
      result.append(i)
      
    }
          
    return result
   }
  
  func reversePrefix2(_ word: String, _ ch: Character) -> String {
     let arr = Array(word)
     var res = arr

     for (i, c) in arr.enumerated() {
         if c == ch {
             let reversedPrefix = reverse(Array(arr[0...i]))
             res = reversedPrefix + Array(arr[i+1..<arr.count])

             break
         }
     }

     return String(res)
 }

 func reverse(_ prefix: [Character]) -> [Character] {
     var l = 0
     var r = prefix.count - 1
     var prefix = prefix

     while l < r {
         var temp = prefix[l]
         prefix[l] = prefix[r]
         prefix[r] = temp

         l += 1
         r -= 1
     }

     return prefix
 }
 
}

var solution = Solution()
var s: [Character] = ["h","e","l","l","o"]
print(solution.reversePrefix2("abcdefd", "d"))

