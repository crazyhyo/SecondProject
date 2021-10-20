$(function () {
  $("#id").on("keyup", function () {
    let idVal = $(this).val();
    console.log(idVal);
    let idReg = /^([a-z])([a-z0-9_-]){5,20}$/g;

    if (!idReg.test(idVal)) {
      $("#idMsg").show();
      $("#idMsg-green").hide();
    } else {
      $("#idMsg").hide();
      $("#idMsg-green").show();
    }

    if (idVal === "") {
      $("#idMsg").hide();
      $("#idMsg-green").hide();
    }
  });

  $("#pass").on("keyup", function () {
    let passVal = $(this).val();
    console.log(passVal);
    let passReg =
      /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,16}$/;

    !passReg.test(passVal) ? $("#pswd1Msg").show() : $("#pswd1Msg").hide();
    // if(!(passReg.test(passVal))){
    //   $('#pswd1Msg').show();
    // } else {
    //   $('#pswd1Msg').hide();
    // }

    if (passVal === "") {
      $("#pswd1Msg").hide();
    }
  });

  $("#name").on("keyup", function () {
    let nameVal = $(this).val();
    console.log(nameVal);
    let nameReg = /^[가-힣a-zA-Z]+$/;

    !nameReg.test(nameVal) ? $("#nameMsg").show() : $("#nameMsg").hide();
    // if(!(nameReg.test(nameVal))){
    //   $('#nameMsg').show();
    // } else {
    //   $('#nameMsg').hide();
    // }

    if (nameVal === "") {
      $("#nameMsg").hide();
    }
  });

  $("#email").on("keyup", function () {
    let emailVal = $(this).val();
    console.log(emailVal);
    let emailReg =
      /(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))/g;

    !emailReg.test(emailVal) ? $("#emailMsg").show() : $("#emailMsg").hide();
    // if(!(nameReg.test(nameVal))){
    //   $('#nameMsg').show();
    // } else {
    //   $('#nameMsg').hide();
    // }

    if (emailVal === "") {
      $("#nameMsg").hide();
    }
  });
});

function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
  // 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
  document.form.roadFullAddr.value = roadFullAddr;
  document.form.roadAddrPart1.value = roadAddrPart1;
  document.form.roadAddrPart2.value = roadAddrPart2;
  document.form.addrDetail.value = addrDetail;
  document.form.engAddr.value = engAddr;
  document.form.jibunAddr.value = jibunAddr;
  document.form.zipNo.value = zipNo;
  document.form.admCd.value = admCd;
  document.form.rnMgtSn.value = rnMgtSn;
  document.form.bdMgtSn.value = bdMgtSn;
  document.form.detBdNmList.value = detBdNmList;
  /** 2017년 2월 추가제공 **/
  document.form.bdNm.value = bdNm;
  document.form.bdKdcd.value = bdKdcd;
  document.form.siNm.value = siNm;
  document.form.sggNm.value = sggNm;
  document.form.emdNm.value = emdNm;
  document.form.liNm.value = liNm;
  document.form.rn.value = rn;
  document.form.udrtYn.value = udrtYn;
  document.form.buldMnnm.value = buldMnnm;
  document.form.buldSlno.value = buldSlno;
  document.form.mtYn.value = mtYn;
  document.form.lnbrMnnm.value = lnbrMnnm;
  document.form.lnbrSlno.value = lnbrSlno;
  /** 2017년 3월 추가제공 **/
  document.form.emdNo.value = emdNo;
  
}

function searchAddr() {
  // 주소검색을 수행할 팝업 페이지를 호출합니다.
  // 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
  window.open(
    "../html/jusoPopup.jsp",
    "pop",
    "width=570,height=420, scrollbars=yes, resizable=yes"
  );
  // 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
  //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes");
}

// request.setCharacterEncoding("UTF-8"); //한글깨지면 주석제거
// request.setCharacterEncoding("EUC-KR");  //해당시스템의 인코딩타입이 EUC-KR일경우에
// var add1 = request.getParameter("add1");
// var zipNo = request.getParameter("zipNo");
// var add2 = request.getParameter("add2");
