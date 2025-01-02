class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        seen = set()
        # print("called")
        for num in nums:
            # print("looping")
            # print("seen", seen)
            # print("num", num)
            if num in seen:
                # print("true")
                return True
            seen.add(num)
            # print("seen =>add(num)")
        # print("return false")
        return False