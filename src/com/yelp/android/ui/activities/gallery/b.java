package com.yelp.android.ui.activities.gallery;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.yelp.android.co.a.j;
import java.util.Iterator;
import java.util.List;

public class b
  extends ArrayAdapter<a>
{
  private LayoutInflater a;
  
  public b(Context paramContext, List<a> paramList)
  {
    super(paramContext, 0, paramList);
    a = LayoutInflater.from(paramContext);
  }
  
  protected View a(int paramInt1, ViewGroup paramViewGroup, int paramInt2)
  {
    paramViewGroup = a.inflate(paramInt2, paramViewGroup, false);
    paramViewGroup.setTag(new b(paramViewGroup));
    return paramViewGroup;
  }
  
  protected void a(View paramView, int paramInt)
  {
    paramView = (b)paramView.getTag();
    a locala = (a)getItem(paramInt);
    if (e > 0)
    {
      a.setText(e);
      return;
    }
    a.setText(d);
  }
  
  public void a(List<a> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      add((a)paramList.next());
    }
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a(paramInt, paramViewGroup, 17367049);
    }
    a(localView, paramInt);
    return localView;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a(paramInt, paramViewGroup, 17367048);
    }
    a(localView, paramInt);
    return localView;
  }
  
  public static class a
  {
    public static a a = a(null, a.j.all_albums);
    public static a b = a(null, a.j.choose_source_ellipsis);
    public String c;
    public String d;
    public int e;
    
    public static a a(String paramString, int paramInt)
    {
      a locala = new a();
      c = paramString;
      e = paramInt;
      return locala;
    }
    
    public static a a(String paramString1, String paramString2)
    {
      a locala = new a();
      c = paramString1;
      d = paramString2;
      return locala;
    }
  }
  
  private static class b
  {
    TextView a;
    
    public b(View paramView)
    {
      a = ((TextView)paramView.findViewById(16908308));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */