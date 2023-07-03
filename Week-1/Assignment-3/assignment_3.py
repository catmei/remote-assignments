def find_max(numbers):
    if len(numbers) == 0:
        return "the input is the empty list which doesn't have the max number"
    else:
        max_number = numbers[0]
        for i in numbers[1:]:
            if i > max_number:
                max_number = i
        return max_number


def find_position(numbers, target):
    if len(numbers) == 0:
        return -1
    else:
        for i in range(len(numbers)):
            if numbers[i] == target:
                return i
        return -1







