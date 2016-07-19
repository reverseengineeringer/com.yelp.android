package android.support.v7.internal.widget;

import android.support.v7.internal.view.menu.a;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window.Callback;

class q$1
  implements View.OnClickListener
{
  final a a = new a(q.a(b).getContext(), 0, 16908332, 0, 0, q.b(b));
  
  q$1(q paramq) {}
  
  public void onClick(View paramView)
  {
    if ((q.c(b) != null) && (q.d(b))) {
      q.c(b).onMenuItemSelected(0, a);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.q.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */