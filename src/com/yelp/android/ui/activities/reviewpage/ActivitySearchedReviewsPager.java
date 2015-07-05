package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.appdata.webrequests.fc;
import com.yelp.android.appdata.webrequests.fd;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.widgets.ah;
import java.util.ArrayList;

public class ActivitySearchedReviewsPager
  extends ActivityAbstractReviewPager
{
  private int f;
  private String g;
  private fc h;
  private final m<fd> i = new s(this);
  
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
  
  protected ah b()
  {
    return new r(this);
  }
  
  protected boolean e()
  {
    if ((h != null) && (h.isFetching())) {
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
    h = ((fc)thawRequest("search_request", h, i));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivitySearchedReviewsPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */