package android.support.v7.widget;

import android.util.Log;
import android.view.View;

public abstract class bz
{
  private int a;
  private RecyclerView b;
  private br c;
  private boolean d;
  private boolean e;
  private View f;
  private final ca g;
  
  private void a(int paramInt1, int paramInt2)
  {
    if ((!e) || (a == -1)) {
      a();
    }
    d = false;
    if (f != null)
    {
      if (a(f) != a) {
        break label116;
      }
      a(f, b.e, g);
      ca.a(g, b);
      a();
    }
    for (;;)
    {
      if (e)
      {
        a(paramInt1, paramInt2, b.e, g);
        ca.a(g, b);
      }
      return;
      label116:
      Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
      f = null;
    }
  }
  
  public int a(View paramView)
  {
    return b.c(paramView);
  }
  
  protected final void a()
  {
    if (!e) {
      return;
    }
    e();
    cb.d(b.e, -1);
    f = null;
    a = -1;
    d = false;
    e = false;
    br.a(c, this);
    c = null;
    b = null;
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  protected abstract void a(int paramInt1, int paramInt2, cb paramcb, ca paramca);
  
  protected abstract void a(View paramView, cb paramcb, ca paramca);
  
  protected void b(View paramView)
  {
    if (a(paramView) == d()) {
      f = paramView;
    }
  }
  
  public boolean b()
  {
    return d;
  }
  
  public boolean c()
  {
    return e;
  }
  
  public int d()
  {
    return a;
  }
  
  protected abstract void e();
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */