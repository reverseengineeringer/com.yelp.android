package com.yelp.android.ui.activities.friendcheckins;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ct;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.CheckInFeedback;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.reviewpage.UserBadgeList;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class WhoLikedThisCheckIn
  extends UserBadgeList
  implements m<List<CheckInFeedback>>
{
  private YelpCheckIn a;
  
  public static Intent a(Context paramContext, YelpCheckIn paramYelpCheckIn)
  {
    paramContext = new Intent(paramContext, WhoLikedThisCheckIn.class);
    paramContext.putExtra("checkin.xtra", paramYelpCheckIn);
    return paramContext;
  }
  
  public ApiRequest<?, ?, ?> a(ApiRequest<?, ?, ?> paramApiRequest)
  {
    if ((paramApiRequest == null) || (paramApiRequest.is(AsyncTask.Status.FINISHED))) {
      return new ct(a, this, r());
    }
    ((ct)paramApiRequest).setCallback(this);
    return paramApiRequest;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<CheckInFeedback> paramList)
  {
    if (isFinishing()) {}
    do
    {
      return;
      a(paramList);
      disableLoading();
      c(q().getCount());
    } while (q().getCount() < a.getFeedback().getPositiveFeedbackCount());
    q().f();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.WhoLikedThisCheckIn;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return Collections.singletonMap("check_in_id", a.getId());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    a = ((YelpCheckIn)getIntent().getParcelableExtra("checkin.xtra"));
    if (a.getFeedback().getPositiveFeedbackCount() <= 0) {
      finish();
    }
    super.onCreate(paramBundle);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.WhoLikedThisCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */