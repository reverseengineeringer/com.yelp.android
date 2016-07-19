package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Pair;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ea;
import com.yelp.android.appdata.webrequests.ea.a;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.widgets.ReviewPagerFragment.b;
import java.util.ArrayList;

public class ActivitySearchedReviewsPager
  extends ActivityAbstractReviewPager
{
  private int f;
  private String g;
  private ea h;
  private final ApiRequest.b<ea.a> i = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, ea.a paramAnonymousa)
    {
      a(a);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      a(paramAnonymousYelpException);
    }
  };
  
  public static Intent a(Context paramContext, ArrayList<YelpBusinessReview> paramArrayList, YelpBusinessReview paramYelpBusinessReview, String paramString1, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    paramContext = a(paramContext, paramString2, paramString1, paramString3, paramArrayList, paramArrayList.indexOf(paramYelpBusinessReview), true, ActivitySearchedReviewsPager.class);
    paramContext.putExtra("total", paramInt);
    paramContext.putExtra("search_term", paramString4);
    return paramContext;
  }
  
  protected int a()
  {
    return f;
  }
  
  protected ReviewPagerFragment.b b()
  {
    new ReviewPagerFragment.b()
    {
      public void a(boolean paramAnonymousBoolean, int paramAnonymousInt)
      {
        Pair localPair = a(paramAnonymousBoolean, paramAnonymousInt);
        ActivitySearchedReviewsPager.a(ActivitySearchedReviewsPager.this, new ea(a, ActivitySearchedReviewsPager.a(ActivitySearchedReviewsPager.this), ((Integer)second).intValue(), ((Integer)first).intValue(), ActivitySearchedReviewsPager.b(ActivitySearchedReviewsPager.this)));
        ActivitySearchedReviewsPager.c(ActivitySearchedReviewsPager.this).f(new Void[0]);
      }
    };
  }
  
  protected boolean e()
  {
    if ((h != null) && (h.u())) {
      return true;
    }
    return super.e();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    f = paramBundle.getIntExtra("total", 0);
    g = paramBundle.getStringExtra("search_term");
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("search_request", h);
  }
  
  protected void onResume()
  {
    super.onResume();
    h = ((ea)thawRequest("search_request", h, i));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivitySearchedReviewsPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */