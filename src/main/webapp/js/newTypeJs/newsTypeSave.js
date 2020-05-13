var elderName = $("#elderName").val();
var elderGender = $('input[name=elderGender][checked]').val();
var elderAge = $("#elderAge").val();
var elderHealthy = $("#elderHealthy").val();
var elderHouseholdRegister = $("#elderHouseholdRedister").val();
var elderIdCard = $("#elderIdCard").val();
var elderLinkman = $("#elderLinkman").val();
var elderLinkphone = $("#elderLinkphone").val();
var elderAddress = $("#elderAddress").val();
var elderBedId = $("#elderBedId").val();
var elderCheckinDate = $("#elderCheckinDate").val();
var elderLeaveDate = $("#elderLeaveDate").val();
//var newsTypeId = $("#newsTypeId").val();

/* ajax 提交 */
$("#newsTypeSave").live("click",function () {
    $.ajax({
        url:"newsType/save",
        type:"POST",
        data:{
            elderName:elderName,
            elderGender:elderGender,
            elderAge:elderAge,
            elderHealthy:elderHealthy,
            elderHouseholdRegister:elderHouseholdRegister,
            elderIdCard:elderIdCard,
            elderLinkman:elderLinkman,
            elderLinkphone:elderLinkphone,
            elderAddress:elderAddress,
            elderBedId:elderBedId,
            elderCheckinDate:elderCheckinDate,
            elderLeaveDate:elderLeaveDate,
            /*newsTypeId:newsTypeId*/
        },
        dataType:"json",
        success:function (data) {

        }

    });
});
