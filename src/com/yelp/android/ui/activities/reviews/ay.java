package com.yelp.android.ui.activities.reviews;

import android.content.Context;
import android.text.TextUtils;
import com.adjust.sdk.e;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.analytics.iris.ReviewEventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fb;
import com.yelp.android.serializable.Review;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.h;
import com.yelp.android.ui.util.cp;
import com.yelp.android.util.z;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

class ay
  extends com.yelp.android.appdata.webrequests.j<fb>
{
  ay(ReviewOverviewFragment paramReviewOverviewFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, fb paramfb)
  {
    if (paramfb.a() != null) {
      a.d.a(paramfb.a());
    }
    ReviewOverviewFragment.a(a, paramfb.d());
    ReviewOverviewFragment.b(a, paramfb.e());
    ReviewOverviewFragment.a(a, paramfb.f());
    paramApiRequest = new TreeMap();
    paramApiRequest.put("is_converted_tip", Boolean.valueOf(ReviewOverviewFragment.g(a)));
    paramApiRequest.put("review_state", ReviewOverviewFragment.h(a).getReviewStateString());
    if (ReviewOverviewFragment.i(a)) {
      paramApiRequest.put("source", "post_review_ynra");
    }
    Object localObject = (YelpActivity)a.getActivity();
    paramApiRequest.put("sign_up_status", ((YelpActivity)localObject).getHelper().u());
    AppData.a(ReviewEventIri.ReviewSaved, paramApiRequest);
    e.a("8uz0h4");
    com.yelp.android.analytics.j.a(KahunaEventIri.ReviewSaved);
    ((YelpActivity)localObject).hideLoadingDialog();
    localObject = a;
    if (a.d.h() == null) {}
    for (paramApiRequest = paramfb.g();; paramApiRequest = a.d.h().getId())
    {
      ReviewOverviewFragment.c((ReviewOverviewFragment)localObject, paramApiRequest);
      ReviewOverviewFragment.a(a, paramfb.b());
      ReviewOverviewFragment.b(a, paramfb.c());
      if ((paramfb.f()) || (a.d.q()) || (!AppData.b().m().e())) {
        break;
      }
      ReviewOverviewFragment.j(a).clear();
      ReviewOverviewFragment.j(a).addAll(z.a(null, ReviewOverviewFragment.k(a), ReviewOverviewFragment.l(a)));
      if (!a.b())
      {
        a.c();
        ReviewOverviewFragment.m(a);
      }
      return;
    }
    ReviewOverviewFragment.m(a);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ((YelpActivity)a.getActivity()).hideLoadingDialog();
    paramApiRequest = a.getActivity();
    if (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 11))
    {
      a.startActivity(ActivityLogin.a(paramApiRequest, 2131166786));
      return;
    }
    if (((paramYelpException instanceof ApiException)) && (!TextUtils.isEmpty(paramYelpException.getMessage(paramApiRequest))))
    {
      cp.a(paramApiRequest, paramYelpException.getMessage(paramApiRequest));
      return;
    }
    cp.a(paramApiRequest, paramApiRequest.getString(2131165769));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */