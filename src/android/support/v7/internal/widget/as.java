package android.support.v7.internal.widget;

import android.support.v7.app.b;
import android.support.v7.widget.LinearLayoutCompat;
import android.view.View;
import android.view.View.OnClickListener;

class as
  implements View.OnClickListener
{
  private as(ap paramap) {}
  
  public void onClick(View paramView)
  {
    ((at)paramView).b().d();
    int j = ap.a(a).getChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = ap.a(a).getChildAt(i);
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
 * Qualified Name:     android.support.v7.internal.widget.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */