function unique(obj){
    var arr = [];
    var len = obj.length;
    for(var i=0;i<len;i++){
        if(arr.indexOf(obj[i]) == -1){
            arr.push(obj[i])
        }
    }
    return arr;
}