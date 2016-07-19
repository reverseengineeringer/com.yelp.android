package android.support.v7.internal.widget;

import android.support.v7.app.ActionBar.b;
import android.support.v7.widget.LinearLayoutCompat;
import android.view.View;
import android.view.View.OnClickListener;

class k$b
  implements View.OnClickListener
{
  private k$b(k paramk) {}
  
  public void onClick(View paramView)
  {
    ((k.c)paramView).b().d();
    int j = k.a(a).getChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = k.a(a).getChildAt(i);
      if (localView == paramView) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        i += 1;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.k.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */