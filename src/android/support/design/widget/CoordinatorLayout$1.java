package android.support.design.widget;

import android.view.View;
import java.util.Comparator;

class CoordinatorLayout$1
  implements Comparator<View>
{
  CoordinatorLayout$1(CoordinatorLayout paramCoordinatorLayout) {}
  
  public int a(View paramView1, View paramView2)
  {
    if (paramView1 == paramView2) {
      return 0;
    }
    if (((CoordinatorLayout.d)paramView1.getLayoutParams()).a(a, paramView1, paramView2)) {
      return 1;
    }
    if (((CoordinatorLayout.d)paramView2.getLayoutParams()).a(a, paramView2, paramView1)) {
      return -1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CoordinatorLayout.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */