/**
 * 
 */

$(document).ready(function(){
  let $allRadio = $("input[type='radio'");
  let $makeSeriesBtn = $("#makeSeriesBtn");
  let $boxSelectBtn = $(".boxSelectBtn");
  let $selectedResetBtn = $("#selectedResetBtn");
  let $selectedRemoveBtn = $("#selectedRemoveBtn");
  let $webtoonSearchQuery = $("#webtoonSearchQuery");
  let $seriesSearchQuery = $("#seriesSearchQuery");
  let $agreementAnchor = $("#agreement-anchor");

  // 시리즈 추가시 동의하지 않을 경우 제출이 안되도록 만들었음
  // 생성 시 동의하지 않을 경우 버튼 disabled
  $allRadio.click(function(){
    let agreementVal = $("input:checked").val();
    if(agreementVal==="agree"){
      $makeSeriesBtn.attr("disabled", false);
    } else {
      $makeSeriesBtn.attr("disabled", true);      
    }
  });

  // 삭제 선택할 시 변경사항 적용되게
  $boxSelectBtn.click(function(){
    // 변수 캐싱
    $this = $(this);
    $upperDiv = $this.parent().parent();
    $hiddenInput = $this.siblings('input[type=checkbox]');
    // button class toggle, 상위 카드 색 또한 검정색으로 변경, 그리고 checkbox checked toggle되게 수정
    $this.toggleClass('btn-outline-warning').toggleClass('btn-warning');
    $upperDiv.toggleClass('bg-black');
    $hiddenInput.trigger("click");
  });

  // 삭제 선택 초기화
  $selectedResetBtn.click(function(){
    $('input[type=checkbox]').each(function(){
      this.checked = false;
      $(this).siblings('.btn-warning').addClass('btn-outline-warning').removeClass('btn-warning');
      $(this).parent().parent().removeClass('bg-black');
    });
  });
  // 삭제 전송시
  $selectedRemoveBtn.click(function(){
    let removeList = [];  //삭제할 것 체크한 경우 value여기 담기게 됨
    $('input[type=checkbox]').each(function(){
      if(this.checked == true){
        removeList.push(this.value);
      }
    });
    if(removeList.length == 0){
      alert("선택하지 않았습니다!");
    } else{
      // fetch 사용
    }
  });

  $agreementAnchor.click(function(){
    $(".bg-polygon").css('clip-path','polygon(0% 0%, 100% 0%, 100% 100%, 0% 100%)').css('height','175vh');
  });
  
});