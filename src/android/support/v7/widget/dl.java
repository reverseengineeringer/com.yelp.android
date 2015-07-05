package android.support.v7.widget;

import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.i.h;
import com.yelp.android.m.a;
import com.yelp.android.m.b;

public class dl
  implements h
{
  private h a;
  
  public dl(h paramh)
  {
    if (paramh == null) {
      throw new IllegalArgumentException("Window callback may not be null");
    }
    a = paramh;
  }
  
  public View a(int paramInt)
  {
    return a.a(paramInt);
  }
  
  public a a(b paramb)
  {
    return a.a(paramb);
  }
  
  public boolean a(int paramInt, Menu paramMenu)
  {
    return a.a(paramInt, paramMenu);
  }
  
  public boolean a(int paramInt, MenuItem paramMenuItem)
  {
    return a.a(paramInt, paramMenuItem);
  }
  
  public boolean a(int paramInt, View paramView, Menu paramMenu)
  {
    return a.a(paramInt, paramView, paramMenu);
  }
  
  public void b(int paramInt, Menu paramMenu)
  {
    a.b(paramInt, paramMenu);
  }
  
  public boolean c(int paramInt, Menu paramMenu)
  {
    return a.c(paramInt, paramMenu);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */