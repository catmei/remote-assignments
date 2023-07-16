def twoSum(nums, target):
    nums.sort()
    left_index = 0
    right_index = len(nums)-1

    while left_index < right_index:
        sum_ = nums[left_index] + nums[right_index]
        if sum_ > target:
            right_index -= 1
        elif sum_ < target:
            left_index += 1
        else:
            return [left_index, right_index]

    return 'No Solution'

'''
Analyze Time Complexity 
1. sort() function takes O(n log n) time
2. while loop takes at most O(n) iterations
3. In the worst case, the dominant factor is the sorting operation, which has a time complexity of O(n log n).
4. Therefore, the overall time complexity is O(n log n).
'''