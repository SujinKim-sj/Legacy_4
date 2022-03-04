//전역 변수
const pwResult = document.getElementById('pwResult');
const pwResult2 = document.getElementById('pwResult2');
const pw = document.getElementById('pw');
const pw2 = document.getElementById('pw2');

const id = document.getElementById('id1');
const idResult = document.getElementById('idResult');

const frm = document.getElementById("frm");
const btn = document.getElementById("btn");

const name = document.getElementById("name");
const phone = document.getElementById("phone");
const email = document.getElementById("email");

let idCheck = false;    //check OK : true, check X : false
let pwCheck = false;    
let nCheck = false;
let pCheck = false;
let eCheck = false;

//비번값을 변경했을 때
pw.addEventListener("change", function() {
    pwCheck = false;
    pw2.value = '';
    pwResult2.innerHTML = '';
    pw2.focus();
});

pw.addEventListener("keyup", function() {
    let len = pw.value.length;
	let msg = '잘못된 입력입니다';

    if(len >= 8 && len <= 12){
        msg = '올바른 입력입니다'
    } else if(len < 8) {
        msg = "8글자이상 입력하세요";
    } else if(len > 12) {
        msg = "12글자이하로 입력하세요";
    } 

    pwResult.innerHTML = msg;
});

id.addEventListener("blur", function() {
    let v = id.value;

    if(v.length == 0) {     //v = ''
        idResult.innerHTML = '아이디 입력은 필수입니다';
        idCheck = false;
    } else {
        idCheck = true;
    }

});

pw2.addEventListener("blur", function() {
    let v1 = pw.value;
    let v2 = pw2.value;
    let msg = '일치하지않습니다';

    if(v1 == v2) {
        msg = '일치합니다';
        pwCheck = true;
    } else {
        pwCheck = false;
    }

    pwResult2.innerHTML = msg;
});

name.addEventListener("blur", function() {
    if(name.value.length != 0) {
        nCheck = true;
    } 
});

email.addEventListener("blur", function() {
    if(email.value.length != 0) {
        eCheck = true;
    }
});

phone.addEventListener("blur", function() {
    if(phone.value.length != 0) {
        pCheck = true;
    }
});

btn.addEventListener("click", function() {
    if(idCheck && pwCheck && nCheck && pCheck && eCheck) {
        frm.submit();
    } else {
        alert('필수 요건을 확인하세요');
    }
});
