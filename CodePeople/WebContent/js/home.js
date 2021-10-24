$(function () {
  $("#login_btn").on("click", function () {
    let idVal = $("#floatingInput").val();
    let passVal = $("#floatingPassword").val();
    $.ajax({
      url: "/CodePeople/Login.do",
      type: "post",
      data: {
        memId: idVal,
        memOrignlPw: passVal,
      },
      dataType: "json",
      success: function (resp) {
        if (resp.flag == "ok") {
          alert("로그인 성공!");
          location.href = "/CodePeople/html/index.jsp";
        } else {
          alert(resp.error);
        }
      },
      error: function (xhr) {
        alert("상태 : " + xhr.status);
      },
    });
  });
});
