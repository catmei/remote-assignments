def count(input):
    ans = {}
    for i in input:
        if i not in ans.keys():
            ans[i] = 1
        else:
            ans[i] += 1
    return ans


def group_by_key(input):
    ans = {}
    for i in input:
        if i['key'] not in ans.keys():
            ans[i['key']] = i['value']
        else:
            ans[i['key']] += i['value']
    return ans