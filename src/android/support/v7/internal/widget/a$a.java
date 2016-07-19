package android.support.v7.internal.widget;

import android.support.v4.view.az;
import android.support.v4.view.bd;
import android.view.View;

public class a$a
  implements bd
{
  int a;
  private boolean c = false;
  
  protected a$a(a parama) {}
  
  public a a(az paramaz, int paramInt)
  {
    b.f = paramaz;
    a = paramInt;
    return this;
  }
  
  public void a(View paramView)
  {
    a.a(b, 0);
    c = false;
  }
  
  public void b(View paramView)
  {
    if (c) {
      return;
    }
    b.f = null;
    a.b(b, a);
  }
  
  public void c(View paramView)
  {
    c = true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */