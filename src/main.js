var like = document.getElementById("fa fa-thumbs-up"),
count1 = 0;
like.onclick = function() {
count1 += 1;
like.innerHTML ="Like:"  + count1;
};
var dislike = document.getElementById("fa fa-thumbs-down"),
count2 = 0;
dislike.onclick = function() {
count2 += 1;
dislike.innerHTML ="Dislike:"  + count2;
};

