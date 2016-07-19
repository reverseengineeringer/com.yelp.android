package android.support.v4.view;

import android.view.View;
import java.lang.ref.WeakReference;

class az$a$a
  implements Runnable
{
  WeakReference<View> a;
  az b;
  
  private az$a$a(az.a parama, az paramaz, View paramView)
  {
    a = new WeakReference(paramView);
    b = paramaz;
  }
  
  public void run()
  {
    View localView = (View)a.get();
    if (localView != null) {
      az.a.a(c, b, localView);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.az.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */