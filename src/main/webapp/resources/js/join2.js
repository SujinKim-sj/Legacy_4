//ID, PW, NAME, EMAIL, PHONE

const id = document.getElementById('id1');
const pw = document.getElementById('pw');
const pw2 = document.getElementById('pw2');
const name = document.getElementById("name");
const phone = document.getElementById("phone");
const email = document.getElementById("email");

const frm = document.getElementById("frm");
const btn = document.getElementById("btn");

const idResult = document.getElementById('idResult');
const pwResult = document.getElementById('pwResult');
const pwResult2 = document.getElementById('pwResult2');

// pw와 pw2가 같은지 검증
let pwCheck = true;     //같지 않을 때 true, 같으면 false

pw2.addEventListener("blur", function() {
    pwCheck = true;
    let msg = '패스워드가 일치합니다';

    if(pw.value != pw2.value) {
        pwCheck = true;
        msg = '패스워드가 일치하지 않습니다';
        pw2.value = '';
    } else {
        pwCheck = false;
    }

    pwResult2.innerHTML = msg;
});

//검증이 끝나고 패스워드를 수정했을 경우
pw.addEventListener("change", function() {
    pwCheck = true;
    pw2.value = '';
    pwResult2.value = '';
    pw2.focus();
});

//-------------- PW 길이 검증 ---------------
pw.addEventListener("blur", function() {
    if(pw.value.length < 8 || pw.value.length > 12) {
        pwResult.innerHTML = '패스워드를 8~12자로 입력하세요';
    } else {
        pwResult.innerHTML = '';
    }
});

//-------------- ID 입력 후 ---------------
id.addEventListener("blur", function() {
    if(id.value == '') {
        idResult.innerHTML = '아이디를 입력하세요';
    } else {
        idResult.innerHTML = '';
    }
});

//-------------- 가입 버튼 클릭 ---------------
btn.addEventListener("click", function() {
    if(id.value == '') {
        alert('아이디를 입력하세요');
        id.focus();
        return;
    }

    if(pw.value == '' && pw.value.length < 8 || pw.value.length > 12) {
        alert('패스워드가 정확하지 않습니다');
        pw.focus();
        return;
    }

    if(pwCheck) {
        alert('패스워드가 일치하지 않습니다');
        pw2.focus;
        return;
    }

    if(name.value == '') {
        alert('이름을 입력하세요');
        name.focus();
        return;
    }

    if(phone.value == '') {
        alert('핸드폰 번호를 입력하세요');
        phone.focus();
        return;
    }

    if(email.value == '') {
        alert('이메일을 입력하세요');
        email.focus();
        return;
    }

    frm.submit();
});




// name.addEventListener("blur", function() {
//     if(name.value.length == 0) {
//         nCheck = false;
//     } else {
//         nCheck = true;
//     }
// });

// phone.addEventListener("blur", function() {
//     if(phone.value.length == 0) {
//         pCheck = false;
//     } else {
//         pCheck = true;
//     }
// });

// email.addEventListener("blur", function() {
//     if(email.value.length == 0) {
//         eCheck = false;
//     } else {
//         eCheck = true;
//     }
// });

// btn.addEventListener("click", function() {
//     if(idCheck && pwCheck && nCheck && pCheck && eCheck) {
//         frm.submit();
//     } else if(!idCheck) {
//         alert('아이디를 입력하세요');
//         id.focus();
//         return;
//     } else if(!pwCheck) {
//         alert('패스워드를 입력하세요');
//         pw.focus();
//         return;
//     } else if(!pw2Check) {
//         alert('패스워드 확인을 입력하세요');
//         pw2.focus();
//         return;
//     } else if(!nCheck) {
//         alert('이름을 입력하세요');
//         name.focus();
//         return;
//     } else if(!pCheck) {
//         alert('휴대폰 번호를 입력하세요');
//         phone.focus();
//         return;
//     } else if(!eCheck) {
//         alert('이메일 주소를 입력하세요');
//         email.focus();
//         return;
//     }
// });