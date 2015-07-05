package com.yelp.android.ui.activities.tips;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.cu;
import com.yelp.android.appdata.webrequests.cv;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.TipFeedback;
import com.yelp.android.ui.activities.reviewpage.UserBadgeList;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class WhoLikedThisTip
  extends UserBadgeList
  implements m<cv>
{
  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, paramString1, paramString2, null);
  }
  
  private static Intent a(Context paramContext, String paramString1, String paramString2, ArrayList<TipFeedback> paramArrayList)
  {
    paramContext = new Intent(paramContext, WhoLikedThisTip.class);
    paramContext.putExtra("TIP", paramString1);
    paramContext.putExtra("BUSINESS_ID", paramString2);
    UserBadgeList.a(paramContext, paramArrayList);
    return paramContext;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cv paramcv)
  {
    a(a);
    q().f();
    disableLoading();
  }
  
  public cu b(ApiRequest<?, ?, ?> paramApiRequest)
  {
    cu localcu = (cu)paramApiRequest;
    paramApiRequest = localcu;
    if (localcu == null) {
      paramApiRequest = new cu(this, getIntent().getStringExtra("TIP"));
    }
    paramApiRequest.setCallback(this);
    return paramApiRequest;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.TipLikes;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = new HashMap();
    paramb.put("business_id", getIntent().getStringExtra("BUSINESS_ID"));
    paramb.put("quicktip_id", getIntent().getStringExtra("TIP"));
    return paramb;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.WhoLikedThisTip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */