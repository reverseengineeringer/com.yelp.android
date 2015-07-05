package android.support.v7.internal.widget;

import android.support.v4.view.ce;
import android.support.v4.view.eh;

class j
  implements Runnable
{
  j(ActionBarOverlayLayout paramActionBarOverlayLayout) {}
  
  public void run()
  {
    ActionBarOverlayLayout.a(a);
    ActionBarOverlayLayout.a(a, ce.q(ActionBarOverlayLayout.c(a)).c(0.0F).a(ActionBarOverlayLayout.b(a)));
    if ((ActionBarOverlayLayout.d(a) != null) && (ActionBarOverlayLayout.d(a).getVisibility() != 8)) {
      ActionBarOverlayLayout.b(a, ce.q(ActionBarOverlayLayout.d(a)).c(0.0F).a(ActionBarOverlayLayout.e(a)));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */