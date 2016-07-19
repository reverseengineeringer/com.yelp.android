package android.support.design.widget;

import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.view.View;

class CollapsingToolbarLayout$a
  implements AppBarLayout.a
{
  private CollapsingToolbarLayout$a(CollapsingToolbarLayout paramCollapsingToolbarLayout) {}
  
  public void a(AppBarLayout paramAppBarLayout, int paramInt)
  {
    int j = 0;
    CollapsingToolbarLayout.b(a, paramInt);
    int i;
    int k;
    int m;
    label49:
    View localView;
    CollapsingToolbarLayout.LayoutParams localLayoutParams;
    u localu;
    if (CollapsingToolbarLayout.a(a) != null)
    {
      i = CollapsingToolbarLayout.a(a).b();
      k = paramAppBarLayout.getTotalScrollRange();
      m = a.getChildCount();
      if (j >= m) {
        break label181;
      }
      localView = a.getChildAt(j);
      localLayoutParams = (CollapsingToolbarLayout.LayoutParams)localView.getLayoutParams();
      localu = CollapsingToolbarLayout.a(localView);
      switch (a)
      {
      }
    }
    for (;;)
    {
      j += 1;
      break label49;
      i = 0;
      break;
      if (a.getHeight() - i + paramInt >= localView.getHeight())
      {
        localu.a(-paramInt);
        continue;
        float f = -paramInt;
        localu.a(Math.round(b * f));
      }
    }
    label181:
    if ((CollapsingToolbarLayout.b(a) != null) || (CollapsingToolbarLayout.c(a) != null))
    {
      if (a.getHeight() + paramInt >= a.getScrimTriggerOffset() + i) {
        break label313;
      }
      CollapsingToolbarLayout.d(a);
    }
    for (;;)
    {
      if ((CollapsingToolbarLayout.c(a) != null) && (i > 0)) {
        ai.d(a);
      }
      j = a.getHeight();
      m = ai.r(a);
      CollapsingToolbarLayout.f(a).b(Math.abs(paramInt) / (j - m - i));
      if (Math.abs(paramInt) != k) {
        break;
      }
      ai.h(paramAppBarLayout, paramAppBarLayout.getTargetElevation());
      return;
      label313:
      CollapsingToolbarLayout.e(a);
    }
    ai.h(paramAppBarLayout, 0.0F);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CollapsingToolbarLayout.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */