package android.support.v7.app;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;

class c$1
  implements View.OnClickListener
{
  c$1(c paramc) {}
  
  public void onClick(View paramView)
  {
    if ((paramView == c.a(a)) && (c.b(a) != null)) {
      paramView = Message.obtain(c.b(a));
    }
    for (;;)
    {
      if (paramView != null) {
        paramView.sendToTarget();
      }
      c.h(a).obtainMessage(1, c.g(a)).sendToTarget();
      return;
      if ((paramView == c.c(a)) && (c.d(a) != null)) {
        paramView = Message.obtain(c.d(a));
      } else if ((paramView == c.e(a)) && (c.f(a) != null)) {
        paramView = Message.obtain(c.f(a));
      } else {
        paramView = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */