package com.yelp.android.ui.widgets;

import android.support.v4.view.du;
import java.util.ArrayList;

class ad
  implements du
{
  ad(ReviewPagerFragment paramReviewPagerFragment) {}
  
  public void a(int paramInt)
  {
    boolean bool4 = false;
    boolean bool1 = false;
    boolean bool2 = true;
    boolean bool3 = true;
    if ((ReviewPagerFragment.b(a).getItem(paramInt) instanceof ReviewPagerFragment.LoadingFragment))
    {
      ReviewPagerFragment.a(a, false, false);
      if (ReviewPagerFragment.b(a).a() == ReviewPagerFragment.AdapterState.LOADING_FORWARDS)
      {
        ReviewPagerFragment.a(a, true);
        if (ReviewPagerFragment.g(a) != null)
        {
          localObject = ReviewPagerFragment.g(a);
          bool1 = ReviewPagerFragment.h(a);
          if (!ReviewPagerFragment.h(a)) {
            break label174;
          }
          paramInt = ReviewPagerFragment.i(a) + 1;
          label108:
          ((ah)localObject).a(bool1, paramInt);
        }
      }
    }
    label174:
    label258:
    do
    {
      return;
      if (ReviewPagerFragment.b(a).a() == ReviewPagerFragment.AdapterState.LOADING_BACKWARDS)
      {
        ReviewPagerFragment.a(a, false);
        break;
      }
      localObject = a;
      if (paramInt != 0) {}
      for (bool1 = bool3;; bool1 = false)
      {
        ReviewPagerFragment.a((ReviewPagerFragment)localObject, bool1);
        break;
      }
      paramInt = ReviewPagerFragment.j(a) - 1;
      break label108;
      ReviewPagerFragment.a(a, a.b());
      if (ReviewPagerFragment.b(a).a() == ReviewPagerFragment.AdapterState.DEFAULT)
      {
        localObject = a;
        if (paramInt > 0)
        {
          bool1 = true;
          if (paramInt >= ReviewPagerFragment.a(a).size() - 1) {
            break label258;
          }
        }
        for (;;)
        {
          ReviewPagerFragment.a((ReviewPagerFragment)localObject, bool1, bool2);
          return;
          bool1 = false;
          break;
          bool2 = false;
        }
      }
      if (ReviewPagerFragment.b(a).a() == ReviewPagerFragment.AdapterState.LOADING)
      {
        ReviewPagerFragment.a(a, true, true);
        return;
      }
      if (ReviewPagerFragment.b(a).a() == ReviewPagerFragment.AdapterState.LOADING_BACKWARDS)
      {
        localObject = a;
        if (paramInt < ReviewPagerFragment.a(a).size()) {
          bool1 = true;
        }
        ReviewPagerFragment.a((ReviewPagerFragment)localObject, true, bool1);
        return;
      }
    } while (ReviewPagerFragment.b(a).a() != ReviewPagerFragment.AdapterState.LOADING_FORWARDS);
    Object localObject = a;
    bool1 = bool4;
    if (paramInt > 0) {
      bool1 = true;
    }
    ReviewPagerFragment.a((ReviewPagerFragment)localObject, bool1, true);
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void b(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */