package android.support.v7.app;

import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.support.v4.view.be;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.PopupWindow;
import com.yelp.android.r.a;
import com.yelp.android.r.a.a;

class k$b
  implements a.a
{
  private a.a b;
  
  public k$b(k paramk, a.a parama)
  {
    b = parama;
  }
  
  public void a(a parama)
  {
    b.a(parama);
    if (a.o != null) {
      a.b.getDecorView().removeCallbacks(a.p);
    }
    if (a.n != null)
    {
      k.b(a);
      a.q = ai.s(a.n).a(0.0F);
      a.q.a(new be()
      {
        public void b(View paramAnonymousView)
        {
          a.n.setVisibility(8);
          if (a.o != null) {
            a.o.dismiss();
          }
          for (;;)
          {
            a.n.removeAllViews();
            a.q.a(null);
            a.q = null;
            return;
            if ((a.n.getParent() instanceof View)) {
              ai.w((View)a.n.getParent());
            }
          }
        }
      });
    }
    if (a.e != null) {
      a.e.onSupportActionModeFinished(a.m);
    }
    a.m = null;
  }
  
  public boolean a(a parama, Menu paramMenu)
  {
    return b.a(parama, paramMenu);
  }
  
  public boolean a(a parama, MenuItem paramMenuItem)
  {
    return b.a(parama, paramMenuItem);
  }
  
  public boolean b(a parama, Menu paramMenu)
  {
    return b.b(parama, paramMenu);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.k.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */