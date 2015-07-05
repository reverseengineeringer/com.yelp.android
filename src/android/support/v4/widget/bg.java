package android.support.v4.widget;

import android.support.v4.view.ce;
import android.view.View;
import java.util.ArrayList;

class bg
  implements Runnable
{
  final View a;
  
  bg(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
  {
    a = paramView;
  }
  
  public void run()
  {
    if (a.getParent() == b)
    {
      ce.a(a, 0, null);
      SlidingPaneLayout.a(b, a);
    }
    SlidingPaneLayout.g(b).remove(this);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */