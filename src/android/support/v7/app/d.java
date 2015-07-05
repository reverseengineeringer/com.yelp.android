package android.support.v7.app;

import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.i.h;
import com.yelp.android.m.a;
import com.yelp.android.m.b;

class d
  implements h
{
  d(c paramc) {}
  
  public View a(int paramInt)
  {
    return a.a.onCreatePanelView(paramInt);
  }
  
  public a a(b paramb)
  {
    return a.b(paramb);
  }
  
  public boolean a(int paramInt, Menu paramMenu)
  {
    return a.a.superOnCreatePanelMenu(paramInt, paramMenu);
  }
  
  public boolean a(int paramInt, MenuItem paramMenuItem)
  {
    return a.a.onMenuItemSelected(paramInt, paramMenuItem);
  }
  
  public boolean a(int paramInt, View paramView, Menu paramMenu)
  {
    return a.a.superOnPreparePanel(paramInt, paramView, paramMenu);
  }
  
  public void b(int paramInt, Menu paramMenu)
  {
    a.a.onPanelClosed(paramInt, paramMenu);
  }
  
  public boolean c(int paramInt, Menu paramMenu)
  {
    return a.a.onMenuOpened(paramInt, paramMenu);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */