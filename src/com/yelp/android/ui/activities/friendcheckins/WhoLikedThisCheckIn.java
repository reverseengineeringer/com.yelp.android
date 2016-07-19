package com.yelp.android.ui.activities.friendcheckins;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ci;
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
  implements ApiRequest.b<List<CheckInFeedback>>
{
  private YelpCheckIn a;
  
  public static Intent a(Context paramContext, YelpCheckIn paramYelpCheckIn)
  {
    paramContext = new Intent(paramContext, WhoLikedThisCheckIn.class);
    paramContext.putExtra("checkin.xtra", paramYelpCheckIn);
    return paramContext;
  }
  
  public ApiRequest<Void, ?, ?> a(ApiRequest<Void, ?, ?> paramApiRequest)
  {
    if ((paramApiRequest == null) || (paramApiRequest.a(AsyncTask.Status.FINISHED))) {
      return new ci(a, this, s());
    }
    ((ci)paramApiRequest).a(this);
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
      c(r().getCount());
    } while (r().getCount() < a.n().d());
    r().f();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.WhoLikedThisCheckIn;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return Collections.singletonMap("check_in_id", a.z());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    a = ((YelpCheckIn)getIntent().getParcelableExtra("checkin.xtra"));
    if (a.n().d() <= 0) {
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