/*
 * @lc app=leetcode id=42 lang=kotlin
 *
 * [42] Trapping Rain Water
 */

// @lc code=start
class Solution {
    fun trap(height: IntArray): Int {
        if (height.isEmpty()) return 0
        
        var left = 0
        var right = height.lastIndex
        var leftMax = 0
        var rightMax = 0
        var result = 0
        
        while (left < right) {
            // Update the maximum heights from both sides
            leftMax = maxOf(leftMax, height[left])
            rightMax = maxOf(rightMax, height[right])
            
            // Water trapped at current position is determined by the smaller of leftMax and rightMax
            if (leftMax < rightMax) {
                result += leftMax - height[left]
                left++
            } else {
                result += rightMax - height[right]
                right--
            }
        }
        
        return result
    }
}
// @lc code=end

