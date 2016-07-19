package android.support.v7.internal.widget;

import android.view.View;

class k$1
  implements Runnable
{
  k$1(k paramk, View paramView) {}
  
  public void run()
  {
    int i = a.getLeft();
    int j = (b.getWidth() - a.getWidth()) / 2;
    b.smoothScrollTo(i - j, 0);
    b.a = null;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.k.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */