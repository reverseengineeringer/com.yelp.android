package android.support.v4.view;

import android.os.Build.VERSION;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.e.b;

public class q
{
  static final d a = new a();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      a = new c();
      return;
    }
    if (i >= 11)
    {
      a = new b();
      return;
    }
  }
  
  public static MenuItem a(MenuItem paramMenuItem, d paramd)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).a(paramd);
    }
    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
    return paramMenuItem;
  }
  
  public static MenuItem a(MenuItem paramMenuItem, View paramView)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).setActionView(paramView);
    }
    return a.a(paramMenuItem, paramView);
  }
  
  public static View a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).getActionView();
    }
    return a.a(paramMenuItem);
  }
  
  public static void a(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof b))
    {
      ((b)paramMenuItem).setShowAsAction(paramInt);
      return;
    }
    a.a(paramMenuItem, paramInt);
  }
  
  public static MenuItem b(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).setActionView(paramInt);
    }
    return a.b(paramMenuItem, paramInt);
  }
  
  public static boolean b(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).expandActionView();
    }
    return a.b(paramMenuItem);
  }
  
  public static boolean c(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b)) {
      return ((b)paramMenuItem).isActionViewExpanded();
    }
    return a.c(paramMenuItem);
  }
  
  static class a
    implements q.d
  {
    public MenuItem a(MenuItem paramMenuItem, View paramView)
    {
      return paramMenuItem;
    }
    
    public View a(MenuItem paramMenuItem)
    {
      return null;
    }
    
    public void a(MenuItem paramMenuItem, int paramInt) {}
    
    public MenuItem b(MenuItem paramMenuItem, int paramInt)
    {
      return paramMenuItem;
    }
    
    public boolean b(MenuItem paramMenuItem)
    {
      return false;
    }
    
    public boolean c(MenuItem paramMenuItem)
    {
      return false;
    }
  }
  
  static class b
    implements q.d
  {
    public MenuItem a(MenuItem paramMenuItem, View paramView)
    {
      return r.a(paramMenuItem, paramView);
    }
    
    public View a(MenuItem paramMenuItem)
    {
      return r.a(paramMenuItem);
    }
    
    public void a(MenuItem paramMenuItem, int paramInt)
    {
      r.a(paramMenuItem, paramInt);
    }
    
    public MenuItem b(MenuItem paramMenuItem, int paramInt)
    {
      return r.b(paramMenuItem, paramInt);
    }
    
    public boolean b(MenuItem paramMenuItem)
    {
      return false;
    }
    
    public boolean c(MenuItem paramMenuItem)
    {
      return false;
    }
  }
  
  static class c
    extends q.b
  {
    public boolean b(MenuItem paramMenuItem)
    {
      return s.a(paramMenuItem);
    }
    
    public boolean c(MenuItem paramMenuItem)
    {
      return s.b(paramMenuItem);
    }
  }
  
  static abstract interface d
  {
    public abstract MenuItem a(MenuItem paramMenuItem, View paramView);
    
    public abstract View a(MenuItem paramMenuItem);
    
    public abstract void a(MenuItem paramMenuItem, int paramInt);
    
    public abstract MenuItem b(MenuItem paramMenuItem, int paramInt);
    
    public abstract boolean b(MenuItem paramMenuItem);
    
    public abstract boolean c(MenuItem paramMenuItem);
  }
  
  public static abstract interface e
  {
    public abstract boolean a(MenuItem paramMenuItem);
    
    public abstract boolean b(MenuItem paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */