def binary_search_position(numbers, target):
    min_index = 0
    max_index = len(numbers)-1

    while min_index <= max_index:
        mid_index = (max_index+min_index)//2
        mid_number = numbers[mid_index]

        if target == mid_number:
            return mid_index
        elif target > mid_number:
            min_index = mid_index+1
        elif target < mid_number:
            max_index = mid_index-1

    return "index of target can't be found"