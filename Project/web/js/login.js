$(function(){
   $(".loginBtn").click(function(){
       if(checkInput()) {
           $("form").action("/loginServlet");
       }else{
           return false;
       }
   });
  

    function checkInput(){
        //�ж��û���
        if($("input[name=username]").val() == null || $("input[name=username]").val() == ""){
            alert("�û�������Ϊ��");
            $("input[name=username]").focus();
            return false;
        }
        //�ж�����
        if($("input[name=password]").val() == null || $("input[name=password]").val() == ""){
            alert("���벻��Ϊ��");
            $("input[name=password]").focus();
            return false;
        }
        
        return true;
    }
});
