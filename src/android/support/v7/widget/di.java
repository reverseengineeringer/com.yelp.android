package android.support.v7.widget;

import android.content.Context;
import android.support.v7.internal.view.menu.ad;
import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.m;
import android.support.v7.internal.view.menu.x;
import android.view.View;
import android.widget.ImageButton;
import com.yelp.android.m.c;

class di
  implements x
{
  i a;
  m b;
  
  private di(Toolbar paramToolbar) {}
  
  public void a(Context paramContext, i parami)
  {
    if ((a != null) && (b != null)) {
      a.d(b);
    }
    a = parami;
  }
  
  public void a(i parami, boolean paramBoolean) {}
  
  public boolean a(ad paramad)
  {
    return false;
  }
  
  public boolean a(i parami, m paramm)
  {
    Toolbar.b(c);
    if (Toolbar.c(c).getParent() != c) {
      c.addView(Toolbar.c(c));
    }
    c.a = paramm.getActionView();
    b = paramm;
    if (c.a.getParent() != c)
    {
      parami = c.i();
      a = (0x800003 | Toolbar.d(c) & 0x70);
      b = 2;
      c.a.setLayoutParams(parami);
      c.addView(c.a);
    }
    Toolbar.a(c, true);
    c.requestLayout();
    paramm.e(true);
    if ((c.a instanceof c)) {
      ((c)c.a).a();
    }
    return true;
  }
  
  public void b(boolean paramBoolean)
  {
    int k = 0;
    int j;
    int m;
    int i;
    if (b != null)
    {
      j = k;
      if (a != null)
      {
        m = a.size();
        i = 0;
      }
    }
    for (;;)
    {
      j = k;
      if (i < m)
      {
        if (a.getItem(i) == b) {
          j = 1;
        }
      }
      else
      {
        if (j == 0) {
          b(a, b);
        }
        return;
      }
      i += 1;
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public boolean b(i parami, m paramm)
  {
    if ((c.a instanceof c)) {
      ((c)c.a).b();
    }
    c.removeView(c.a);
    c.removeView(Toolbar.c(c));
    c.a = null;
    Toolbar.a(c, false);
    b = null;
    c.requestLayout();
    paramm.e(false);
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */