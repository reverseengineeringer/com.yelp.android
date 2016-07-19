package android.support.v7.app;

import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.support.v4.view.be;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.View;
import android.widget.PopupWindow;

class k$4
  implements Runnable
{
  k$4(k paramk) {}
  
  public void run()
  {
    a.o.showAtLocation(a.n, 55, 0, 0);
    k.b(a);
    ai.c(a.n, 0.0F);
    a.q = ai.s(a.n).a(1.0F);
    a.q.a(new be()
    {
      public void a(View paramAnonymousView)
      {
        a.n.setVisibility(0);
      }
      
      public void b(View paramAnonymousView)
      {
        ai.c(a.n, 1.0F);
        a.q.a(null);
        a.q = null;
      }
    });
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.k.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */