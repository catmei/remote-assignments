function max(numbers){
    if(numbers.length === 0){
        return "the input is the empty list which doesn't have the max number"
    }else{
        let max_number = numbers[0]
        for(const i of numbers){
            if(i > max_number){
                max_number=i
            }
        }
        return max_number 
    }
}

function findPosition(numbers, target){
    if(numbers.length===0){
        return -1
    }else{
        for(let i = 0; i < numbers.length; i++){
            if(numbers[i] === target){
                return i
            }
        }
        return -1
    }
}
