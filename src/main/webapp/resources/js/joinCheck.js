/**
 * 
 */

const checkAll = document.getElementById("checkAll");
const check = document.getElementsByClassName("check");

checkAll.addEventListener("click", function(){
    for(c of check) {
        c.checked = checkAll.checked;
    }
});


for(ch of check) {
    ch.addEventListener("click", function() {   
        let final = true;
        
        for(c of check) {
            if(!c.checked) {
                final = false;
            }
        }
        checkAll.checked = final;
    });
}

//join form으로 이동 (약관 모두 동의시)
const btn = document.getElementById('btn');

btn.addEventListener("click", function() {

    // let c = true;
    // for(ch of check) {
    //     if(!ch.checked) {
    //         c = false;
    //     }
    // }

    //if(c) {
    
    if(checkAll.checked) {
        location.href = "./join";
    } else {
        alert("약관 동의 필요");
    }
});

