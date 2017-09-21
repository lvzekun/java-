package Page;

public class Page1 extends Page{
    public String getPageStr() {
        String str="";
        int low,high;
        low=pageIndex-1;
        high=pageIndex+1;
        str=str+"["+(pageIndex+1)+"]";
        for(int i=1;i<=10&&high-low<=10;i++) {
            if (low>=0){
                str="[<a href='"+direct+low+"'>"+(low+1)+"</a>] "+str; low--;
            }
            if (high<11){
                str=str+" [<a href='"+direct+high+"'>"+(high+1)+"</a>]"; high++;
            }
        }
        str="[<a href='"+direct+0+"'>首页</a>]..."+str;
        str+="...[<a href='"+direct+getLastPage()+"'>尾页</a>] ";
        return str;
    }

}
