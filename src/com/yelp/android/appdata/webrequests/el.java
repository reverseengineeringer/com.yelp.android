package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.ui.activities.reviews.ReviewSource;

public class el
  extends c
{
  public el(String paramString1, String paramString2, int paramInt, c.a parama, ReviewSource paramReviewSource)
  {
    super("reviews/draft/save", parama);
    b("business_id", paramString1);
    b("text", paramString2);
    b("rating", paramInt);
    b("replace", "yes");
    b("source", paramReviewSource.getSourceName());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */