/**
 * 分页函数
 * pno--页数
 * psize--每页显示记录数
 * 分页部分是从真实数据行开始，因而存在加减某个常数，以确定真正的记录数
 * 纯js分页实质是数据行全部加载，通过是否显示属性完成分页功能
 **/
function goPage(pno,psize){
    var itable = document.getElementById("tablepage");
    var num = itable.rows.length;//表格所有行数(所有记录数)
//    console.log(num);
    var totalPage = 0;//总页数
    var pageSize = psize;//每页显示行数
    //总共分几页 
    if(num/pageSize > parseInt(num/pageSize)){   
            totalPage=parseInt(num/pageSize)+1;   
       }else{   
           totalPage=parseInt(num/pageSize);   
       }   
    var currentPage = pno;//当前页数
    var startRow = (currentPage - 1) * pageSize+1;//开始显示的行  31 
       var endRow = currentPage * pageSize;//结束显示的行   40
       endRow = (endRow > num)? num : endRow;    40
//       console.log(endRow); //打印行数
       //遍历显示数据实现分页
    for(var i=1;i<(num+1);i++){    
        var irow = itable.rows[i-1];
        if(i>=startRow && i<=endRow){
            irow.style.display = "table-row";    
        }else{
            irow.style.display = "none";
        }
    }
    var pageEnd = document.getElementById("pageEnd");
    var tempStr = "";
    if(currentPage>1){
        tempStr += "<li class=\"page-item\"><a class=\"page-link\" href=\"#\" onClick=\"goPage("+(1)+","+psize+")\">&laquo;</a></li>";
        tempStr += "<li class=\"page-item\"><a class=\"page-link\" href=\"#\" onClick=\"goPage("+(currentPage-1)+","+psize+")\">&lsaquo;</a></li>"
    }else{
        tempStr += "<li class=\"page-item\"><a class=\"page-link\">&laquo;</a></li>";
        tempStr += "<li class=\"page-item\"><a class=\"page-link\">&lsaquo;</a></li>";    
    }
    tempStr +="<li class=\"page-item\"><a class=\"page-link\">"+currentPage+"/"+totalPage+"</a></li>"
    if(currentPage<totalPage){
        tempStr += "<li class=\"page-item\"><a class=\"page-link\" href=\"#\" onClick=\"goPage("+(currentPage+1)+","+psize+")\">&rsaquo;</a></li>";
        tempStr += "<li class=\"page-item\"><a class=\"page-link\" href=\"#\" onClick=\"goPage("+(totalPage)+","+psize+")\">&raquo;</a></li>";
    }else{
        tempStr += "<li class=\"page-item\"><a class=\"page-link\">&rsaquo;</a></li>";
        tempStr += "<li class=\"page-item\"><a class=\"page-link\">&raquo;</a></li>";    
    }

    document.getElementById("barcon").innerHTML = tempStr;
    
}