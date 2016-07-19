package android.support.v7.app;

import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.support.v4.view.be;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.View;

class k$5
  extends be
{
  k$5(k paramk) {}
  
  public void a(View paramView)
  {
    a.n.setVisibility(0);
    a.n.sendAccessibilityEvent(32);
    if (a.n.getParent() != null) {
      ai.w((View)a.n.getParent());
    }
  }
  
  public void b(View paramView)
  {
    ai.c(a.n, 1.0F);
    a.q.a(null);
    a.q = null;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.k.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */