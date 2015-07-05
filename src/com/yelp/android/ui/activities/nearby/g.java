package com.yelp.android.ui.activities.nearby;

import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AbsListView.LayoutParams;
import android.widget.ListAdapter;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cp;

class g
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  g(ComboListFragment paramComboListFragment) {}
  
  public void onGlobalLayout()
  {
    cp.a(a.m(), this);
    int m = a.e();
    int k = a.m().getHeight();
    int n = a.m().getWidth();
    if (ComboListFragment.a(a) != null) {
      ComboListFragment.a(a).b(a);
    }
    View localView = null;
    int i = 0;
    int j = 0;
    while (j < a.r().getCount())
    {
      localView = a.r().getView(j, localView, a.m());
      localView.measure(View.MeasureSpec.makeMeasureSpec(n, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(k, Integer.MIN_VALUE));
      i += localView.getMeasuredHeight();
      j += 1;
    }
    if (i + m > k)
    {
      ComboListFragment.b(a).setLayoutParams(new AbsListView.LayoutParams(-1, 0));
      return;
    }
    j = a.e();
    ComboListFragment.b(a).setLayoutParams(new AbsListView.LayoutParams(-1, k - (j + i)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */