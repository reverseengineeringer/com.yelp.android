package android.support.design.widget;

import android.support.v4.view.ai;
import android.view.View;
import java.util.Comparator;

class CoordinatorLayout$f
  implements Comparator<View>
{
  public int a(View paramView1, View paramView2)
  {
    float f1 = ai.E(paramView1);
    float f2 = ai.E(paramView2);
    if (f1 > f2) {
      return -1;
    }
    if (f1 < f2) {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CoordinatorLayout.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */