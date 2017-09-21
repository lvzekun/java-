package Page;

public class Page {
	public Page(){}
    public Page(int pageIndex){this.pageIndex=pageIndex;}
    int pageIndex=0;         //当前页号
    int pageRow=2;           //每页行数
    int rowCount=1;          //总行数
    String direct="showPageUser?pageIndex=";         //定向地址
    public void setDirect(String direct) {this.direct=direct;}
    public int getRowCount() {return rowCount;}
    public void setRowCount(int rowCount) {this.rowCount=rowCount; }
    public int getPageRow() {return pageRow;}
    public void setPageRow(int pageRow) {this.pageRow=pageRow;}
    public int getFirstPage() {return 0;}
    public int getPrvePage() {return pageIndex>0?pageIndex-1:0;}
    public int getPageIndex() {return pageIndex;}
    public void setPageIndex(int pageIndex) {this.pageIndex=pageIndex;}
    public int getPageCount() {return getLastPage()+1;}
    public int getNextPage() {return pageIndex<getLastPage()?pageIndex+1:getLastPage();}
    public int getLastPage() {return (rowCount+pageRow-1)/pageRow-1;}

    public String getPageStr() {
        String str="";
        if (pageIndex>0){
            str="<a href='"+direct+getFirstPage()+"'>首页</a> ";
            str+="<a href='"+direct+getPrvePage()+"'>上一页</a> ";
        } else
            str+="首页上一页 ";
        str+="第"+(1+pageIndex)+"页，共"+getPageCount()+"页，共有记录"+rowCount+"条 ";
        if (pageIndex+1<getPageCount()){
            str+="<a href='"+direct+getNextPage()+"'>下一页</a> ";
            str+="<a href='"+direct+getLastPage()+"'>尾页</a>";
        }else
            str+="下一页尾页 ";
        return str;
    }

}
