package com.yelp.android.ui.activities.reviewpage;

import android.util.Pair;
import com.yelp.android.appdata.webrequests.fc;
import com.yelp.android.ui.widgets.ah;

class r
  implements ah
{
  r(ActivitySearchedReviewsPager paramActivitySearchedReviewsPager) {}
  
  public void a(boolean paramBoolean, int paramInt)
  {
    Pair localPair = a.a(paramBoolean, paramInt);
    ActivitySearchedReviewsPager.a(a, new fc(a.a, ActivitySearchedReviewsPager.a(a), ((Integer)second).intValue(), ((Integer)first).intValue(), ActivitySearchedReviewsPager.b(a)));
    ActivitySearchedReviewsPager.c(a).execute(new String[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */