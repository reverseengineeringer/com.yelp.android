package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.ui.widgets.ah;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

class i
  implements ah
{
  i(ActivityReviewPager paramActivityReviewPager) {}
  
  public void a(boolean paramBoolean, int paramInt)
  {
    ActivityReviewPager.a(a, paramInt);
    if (ActivityReviewPager.a(a).isEmpty())
    {
      ActivityReviewPager.a(a, paramBoolean);
      return;
    }
    Object localObject = ActivityReviewPager.a(a).iterator();
    n localn;
    do
    {
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
      localn = (n)((Iterator)localObject).next();
    } while (localn.a() <= paramInt);
    for (localObject = localn.c();; localObject = null)
    {
      int i;
      if (localObject == null)
      {
        i = ActivityReviewPager.a(a).size() - 1;
        if (i >= 0) {
          if (paramInt >= ((n)ActivityReviewPager.a(a).get(i)).a())
          {
            localn = (n)ActivityReviewPager.a(a).get(i);
            localObject = localn.b();
          }
        }
      }
      for (;;)
      {
        ActivityReviewPager localActivityReviewPager = a;
        if (localn != null) {}
        for (paramInt = localn.a();; paramInt = 0)
        {
          ActivityReviewPager.b(localActivityReviewPager, paramInt);
          ActivityReviewPager.a(a, (Locale)localObject);
          ActivityReviewPager.a(a, paramBoolean);
          return;
          i -= 1;
          break;
        }
        localn = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */