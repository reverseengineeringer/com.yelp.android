package android.support.design.widget;

import android.support.v4.view.ai;
import android.support.v4.widget.v;

class AppBarLayout$Behavior$a
  implements Runnable
{
  private final CoordinatorLayout b;
  private final AppBarLayout c;
  
  AppBarLayout$Behavior$a(AppBarLayout.Behavior paramBehavior, CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout)
  {
    b = paramCoordinatorLayout;
    c = paramAppBarLayout;
  }
  
  public void run()
  {
    if ((c != null) && (AppBarLayout.Behavior.a(a) != null) && (AppBarLayout.Behavior.a(a).g()))
    {
      a.b(b, c, AppBarLayout.Behavior.a(a).c());
      ai.a(c, this);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.AppBarLayout.Behavior.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */