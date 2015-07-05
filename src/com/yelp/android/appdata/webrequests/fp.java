package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;
import com.yelp.android.ui.activities.reviews.ReviewSource;

public class fp
  extends h
{
  public fp(String paramString1, String paramString2, int paramInt, i parami, ReviewSource paramReviewSource)
  {
    super("reviews/draft/save", parami);
    addPostParam("business_id", paramString1);
    addPostParam("text", paramString2);
    addPostParam("rating", String.valueOf(paramInt));
    addPostParam("replace", "yes");
    addPostParam("source", paramReviewSource.getSourceName());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */