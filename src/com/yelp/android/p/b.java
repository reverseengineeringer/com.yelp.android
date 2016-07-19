package com.yelp.android.p;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.view.LayoutInflater;
import com.yelp.android.j.a.j;

public class b
  extends ContextWrapper
{
  private int a;
  private Resources.Theme b;
  private LayoutInflater c;
  
  public b(Context paramContext, int paramInt)
  {
    super(paramContext);
    a = paramInt;
  }
  
  public b(Context paramContext, Resources.Theme paramTheme)
  {
    super(paramContext);
    b = paramTheme;
  }
  
  private void b()
  {
    if (b == null) {}
    for (boolean bool = true;; bool = false)
    {
      if (bool)
      {
        b = getResources().newTheme();
        Resources.Theme localTheme = getBaseContext().getTheme();
        if (localTheme != null) {
          b.setTo(localTheme);
        }
      }
      a(b, a, bool);
      return;
    }
  }
  
  public int a()
  {
    return a;
  }
  
  protected void a(Resources.Theme paramTheme, int paramInt, boolean paramBoolean)
  {
    paramTheme.applyStyle(paramInt, true);
  }
  
  public Object getSystemService(String paramString)
  {
    if ("layout_inflater".equals(paramString))
    {
      if (c == null) {
        c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
      }
      return c;
    }
    return getBaseContext().getSystemService(paramString);
  }
  
  public Resources.Theme getTheme()
  {
    if (b != null) {
      return b;
    }
    if (a == 0) {
      a = a.j.Theme_AppCompat_Light;
    }
    b();
    return b;
  }
  
  public void setTheme(int paramInt)
  {
    if (a != paramInt)
    {
      a = paramInt;
      b();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.p.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */