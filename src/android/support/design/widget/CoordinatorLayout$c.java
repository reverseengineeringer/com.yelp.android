package android.support.design.widget;

import android.view.View;
import android.view.ViewGroup.OnHierarchyChangeListener;

final class CoordinatorLayout$c
  implements ViewGroup.OnHierarchyChangeListener
{
  CoordinatorLayout$c(CoordinatorLayout paramCoordinatorLayout) {}
  
  public void onChildViewAdded(View paramView1, View paramView2)
  {
    if (CoordinatorLayout.a(a) != null) {
      CoordinatorLayout.a(a).onChildViewAdded(paramView1, paramView2);
    }
  }
  
  public void onChildViewRemoved(View paramView1, View paramView2)
  {
    a.b(paramView2);
    if (CoordinatorLayout.a(a) != null) {
      CoordinatorLayout.a(a).onChildViewRemoved(paramView1, paramView2);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CoordinatorLayout.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */