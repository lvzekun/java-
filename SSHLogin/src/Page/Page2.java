package Page;

public class Page2 extends Page{
    public String getPageStr() {
        int index=direct.indexOf('?');
        int last=direct.length();
        String str="<form action="+direct.substring(0,index)+" method='get'>转<select name="+
                                        direct.substring(index+1,last-1)+">";
        for(int i=0;i<getPageCount();i++) {
            if (pageIndex!=i)
                str+="<option value='"+i+"'> "+(i+1)+" </option>";
        }
        return str+"</select> 页 <input type='submit' value='GO'></form>";
    }

}
