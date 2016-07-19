package android.support.v7.widget;

import android.content.Context;
import android.os.Parcelable;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.l;
import android.support.v7.internal.view.menu.p;
import android.view.View;
import android.widget.ImageButton;
import com.yelp.android.r.b;

class Toolbar$a
  implements l
{
  f a;
  h b;
  
  private Toolbar$a(Toolbar paramToolbar) {}
  
  public void a(Context paramContext, f paramf)
  {
    if ((a != null) && (b != null)) {
      a.d(b);
    }
    a = paramf;
  }
  
  public void a(Parcelable paramParcelable) {}
  
  public void a(f paramf, boolean paramBoolean) {}
  
  public void a(boolean paramBoolean)
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
  
  public boolean a()
  {
    return false;
  }
  
  public boolean a(f paramf, h paramh)
  {
    Toolbar.b(c);
    if (Toolbar.c(c).getParent() != c) {
      c.addView(Toolbar.c(c));
    }
    c.a = paramh.getActionView();
    b = paramh;
    if (c.a.getParent() != c)
    {
      paramf = c.i();
      a = (0x800003 | Toolbar.d(c) & 0x70);
      b = 2;
      c.a.setLayoutParams(paramf);
      c.addView(c.a);
    }
    c.j();
    c.requestLayout();
    paramh.e(true);
    if ((c.a instanceof b)) {
      ((b)c.a).a();
    }
    return true;
  }
  
  public boolean a(p paramp)
  {
    return false;
  }
  
  public int b()
  {
    return 0;
  }
  
  public boolean b(f paramf, h paramh)
  {
    if ((c.a instanceof b)) {
      ((b)c.a).b();
    }
    c.removeView(c.a);
    c.removeView(Toolbar.c(c));
    c.a = null;
    c.k();
    b = null;
    c.requestLayout();
    paramh.e(false);
    return true;
  }
  
  public Parcelable c()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.Toolbar.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */