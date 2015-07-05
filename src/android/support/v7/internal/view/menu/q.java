package android.support.v7.internal.view.menu;

import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;
import com.yelp.android.m.c;

class q
  extends FrameLayout
  implements c
{
  final CollapsibleActionView a;
  
  q(View paramView)
  {
    super(paramView.getContext());
    a = ((CollapsibleActionView)paramView);
    addView(paramView);
  }
  
  public void a()
  {
    a.onActionViewExpanded();
  }
  
  public void b()
  {
    a.onActionViewCollapsed();
  }
  
  View c()
  {
    return (View)a;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */