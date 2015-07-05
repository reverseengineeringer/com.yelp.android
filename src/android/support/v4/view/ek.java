package android.support.v4.view;

import android.view.View;
import java.lang.ref.WeakReference;

class ek
  implements Runnable
{
  WeakReference<View> a;
  eh b;
  
  private ek(ej paramej, eh parameh, View paramView)
  {
    a = new WeakReference(paramView);
    b = parameh;
  }
  
  public void run()
  {
    View localView = (View)a.get();
    if (localView != null) {
      ej.a(c, b, localView);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */