package com.yelp.android.ui.activities.drawer;

import android.view.View;
import android.widget.ImageView;
import com.yelp.android.DinoListView;
import com.yelp.android.ui.util.cu;

class h
  implements cu<View>
{
  h(DrawerFragment paramDrawerFragment) {}
  
  public void a(View paramView, int paramInt1, int paramInt2)
  {
    DrawerFragment.a(a).measure(0, 0);
    DrawerFragment.a(a, new a(DrawerFragment.b(a), DrawerFragment.c(a), DrawerFragment.d(a), a.getActivity(), paramInt2, DrawerFragment.a(a).getMeasuredHeight(), DrawerFragment.e(a)));
    DrawerFragment.b(a).setOnScrollListener(DrawerFragment.f(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.drawer.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */