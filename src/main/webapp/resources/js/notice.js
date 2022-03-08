const title = document.getElementById('title');
const writer = document.getElementById('writer');
const btn = document.getElementById('btn');
const frm = document.getElementById('frm');

titleCheck = false;
writerCheck = false;

title.addEventListener("blur", function() {
    let v = title.value;

    if(v == '') {
        titleCheck = false;
    } else {
        titleCheck = true;
    }
});

writer.addEventListener("blur", function() {
    let v = writer.value;

    if(v == '') {
        writerCheck = false;
    } else {
        writerCheck = true;
    }
})

btn.addEventListener("click", function() {
    if(titleCheck && writerCheck) {
        frm.submit();
    } else {
        alert("필수 요건을 입력하세요");
    }
});

