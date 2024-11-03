/*
 * @lc app=leetcode id=923 lang=swift
 *
 * [923] 3Sum With Multiplicity
 */

// @lc code=start
class Solution {
    func threeSumMulti(_ arr: [Int], _ target: Int) -> Int {
        let mod = 1_000_000_007
        var count = [Int: Int]() // frequency map
        
        // Count frequencies
        for num in arr {
            count[num, default: 0] += 1
        }
        
        var result = 0
        
        // Check all possible combinations
        for i in 0...100 {
            for j in i...100 {
                let k = target - i - j
                if k < j { continue }
                if k > 100 { continue }
                
                // Case 1: All numbers are different (i < j < k)
                if i < j && j < k {
                    result += count[i, default: 0] * count[j, default: 0] * count[k, default: 0]
                }
                // Case 2: i == j != k
                else if i == j && j < k {
                    result += count[i, default: 0] * (count[i, default: 0] - 1) / 2 * count[k, default: 0]
                }
                // Case 3: i < j == k
                else if i < j && j == k {
                    result += count[i, default: 0] * count[j, default: 0] * (count[j, default: 0] - 1) / 2
                }
                // Case 4: i == j == k
                else if i == j && j == k {
                    result += count[i, default: 0] * (count[i, default: 0] - 1) * (count[i, default: 0] - 2) / 6
                }
                
                result %= mod
            }
        }
        
        return result
    }
}
// @lc code=end

