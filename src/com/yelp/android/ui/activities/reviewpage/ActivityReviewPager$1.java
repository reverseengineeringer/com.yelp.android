package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.ui.widgets.ReviewPagerFragment.b;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

class ActivityReviewPager$1
  implements ReviewPagerFragment.b
{
  ActivityReviewPager$1(ActivityReviewPager paramActivityReviewPager) {}
  
  public void a(boolean paramBoolean, int paramInt)
  {
    ActivityReviewPager.a(a, paramInt);
    if (ActivityReviewPager.a(a).isEmpty())
    {
      ActivityReviewPager.a(a, paramBoolean);
      return;
    }
    Object localObject = ActivityReviewPager.a(a).iterator();
    ActivityReviewPager.a locala;
    do
    {
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
      locala = (ActivityReviewPager.a)((Iterator)localObject).next();
    } while (locala.a() <= paramInt);
    for (localObject = locala.c();; localObject = null)
    {
      int i;
      if (localObject == null)
      {
        i = ActivityReviewPager.a(a).size() - 1;
        if (i >= 0) {
          if (paramInt >= ((ActivityReviewPager.a)ActivityReviewPager.a(a).get(i)).a())
          {
            locala = (ActivityReviewPager.a)ActivityReviewPager.a(a).get(i);
            localObject = locala.b();
          }
        }
      }
      for (;;)
      {
        ActivityReviewPager localActivityReviewPager = a;
        if (locala != null) {}
        for (paramInt = locala.a();; paramInt = 0)
        {
          ActivityReviewPager.b(localActivityReviewPager, paramInt);
          ActivityReviewPager.a(a, (Locale)localObject);
          ActivityReviewPager.a(a, paramBoolean);
          return;
          i -= 1;
          break;
        }
        locala = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityReviewPager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */