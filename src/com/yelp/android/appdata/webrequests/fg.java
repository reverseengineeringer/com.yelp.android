package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Review;
import com.yelp.android.serializable.ReviewDraft;
import com.yelp.android.serializable.ReviewThreshold;
import com.yelp.android.ui.activities.reviews.ReviewState;
import java.util.ArrayList;

public class fg
{
  ReviewState a;
  ArrayList<ReviewThreshold> b;
  ReviewDraft c;
  Review d;
  
  public fg(ReviewState paramReviewState, ArrayList<ReviewThreshold> paramArrayList, ReviewDraft paramReviewDraft, Review paramReview)
  {
    a = paramArrayList;
    b = paramReviewDraft;
    c = paramReview;
    Review localReview;
    d = localReview;
  }
  
  public ReviewState a()
  {
    return a;
  }
  
  public ArrayList<ReviewThreshold> b()
  {
    return b;
  }
  
  public ReviewDraft c()
  {
    return c;
  }
  
  public Review d()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */