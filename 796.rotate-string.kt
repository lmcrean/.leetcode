/*
 * @lc app=leetcode id=796 lang=kotlin
 *
 * [796] Rotate String
 */

// @lc code=start
class Solution {
    fun rotateString(s: String, goal: String): Boolean {
        // Check if lengths are equal (if not, rotation is impossible)
        if (s.length != goal.length) return false
        
        // Concatenate s with itself and check if goal is a substring
        // e.g., s="abcde" -> s+s="abcdeabcde" contains all possible rotations
        return (s + s).contains(goal)
    }
}

// @lc code=end

