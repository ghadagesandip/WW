

$(document).ready(function(){
    $("#CarModelCarClassId").change(function(){
        var amgVal = 0;
        if($(this).attr('data-amg').length){
            amgVal = $(this).attr('data-amg');
        }
        $.ajax({
            async:true,
            data:{class_id:$(this).val(),amg:amgVal},
            dataType:"json",
            type:"POST",
            url:baseUrl+'admin/car_model_categories/getCarCategoriesByClass',
            success:function (data) {
                var htmlEle = '<option value="">Select options</option>';
                if(data['status']==='success'){

                        $.each(data['data'],function(index,val){

                            htmlEle +='<option value="'+index+'">'+val+'</option>';
                        });

                    $("#CarModelCarModelCategoryId").html(htmlEle);
                    $("#CarModelCarModelCategoryId").trigger("liszt:updated");
                }
                if(data['status']=='fail'){
                    console.log(data);
                }
            },
            beforeSend:function(){

            },
            error:function(){
                console.log('error occured, try again');
            }

        })
    });


    $("#PreownedCarCarClassId").change(function(){

        $.ajax({
            async:true,
            data:{class_id:$(this).val()},
            dataType:"json",
            type:"POST",
            url:baseUrl+'admin/car_models/getmodelsByClassId',
            success:function (data) {
                var htmlEle = '<option value="">Select options</option>';
                if(data['status']==='success'){

                    $.each(data['data'],function(index,val){

                        htmlEle +='<option value="'+index+'">'+val+'</option>';
                    });

                    $("#PreownedCarCarModelId").html(htmlEle);
                    $("#PreownedCarCarModelId").trigger("liszt:updated");
                }
                if(data['status']=='fail'){
                    console.log(data);
                }
            },
            beforeSend:function(){

            },
            error:function(){
                console.log('error occured, try again');
            }

        })
    });

    $("#NewsType").change(function(){
        if($(this).val() == 1){
            $(".notification_text").css("display",'none')
            $(".promotions-date").css("display",'block')
            $("#NewsNotificationText").removeClass('required');
            $("#valid_till").addClass('required');
        }else{
            $(".notification_text").css("display",'block')
            $(".promotions-date").css("display",'none')
            $("#NewsNotificationText").addClass('required');
            $("#valid_till").removeClass('required');
        }
    });


    $("#saveAsDraft").click(function(){
        $("#AlertAdminAddForm").append('<input type="hidden" name="data[Alert][is_draft]" value="1" /> ').submit();
    });
})