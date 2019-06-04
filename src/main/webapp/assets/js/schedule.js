
/*$(function(){
	select();
	update();
});
*/

//查看收费信息
function select(){
	var tr ;
	var getId1;
	var getId2;
	var getId3;
	var getId4;
	var getId5;
	$(".myclass").click(function(){
		   tr = $(this).closest('tr');//找到tr元素
		   getId1 = tr.find('td:eq(0)').html();//找到td元素
		   getId2 = tr.find('td:eq(1)').html();
		   getId3 = tr.find('td:eq(2)').html();
		   getId4 = tr.find('td:eq(3)').html();
		   getId5 = tr.find('td:eq(4)').html();
		   getId6 = tr.find('td:eq(5)').html();
//		   alert(getId1+getId2+getId3+getId4);
		   $("input[name='coid']").val(getId1);
		   $("input[name='name']").val(getId2);
		   $("input[name='cname']").val(getId3);
		   $("input[name='createtime']").val(getId4);
		   $("input[name='money']").val(getId5);
		   if(getId6 == '已收费'){
			   $("input:radio[name=state][value='1']").attr("checked",true); 
		   }else{
			   $("input:radio[name=state][value='0']").attr("checked",true); 
		   }
	});
}