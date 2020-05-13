var nurseName = $("#nurseName").val();
var nurseGender =  $('input[name=nurseGender][checked]').val();
var nurseAge = $("#nurseAge").val();
var nurseHouseholdRegister = $("#nurseHouseholdRegister").val();
var nurseIdCard = $("#nurseIdCard").val();
var nurseLinkPhone = $("#nurseLinkPhone").val();
var nurseAddress = $("#nurseAddress").val();

$("#nurseSave").live("click",function () {
    $.ajax({
        url:"/news/save.action",
        type:"post",
        dataType:"json",
        data:{
            nurseName:nurseName,
            nurseGender:nurseGender,
            nurseAge:nurseAge,
            nurseHouseholdRegister:nurseHouseholdRegister,
            nurseIdCard:nurseIdCard,
            nurseLinkPhone:nurseLinkPhone,
            nurseAddress:nurseAddress
        },
        success:function (data) {

        }
    });
});
