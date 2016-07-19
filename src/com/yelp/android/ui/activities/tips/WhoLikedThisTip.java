package com.yelp.android.ui.activities.tips;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.cj;
import com.yelp.android.appdata.webrequests.cj.a;
import com.yelp.android.serializable.TipFeedback;
import com.yelp.android.ui.activities.reviewpage.UserBadgeList;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class WhoLikedThisTip
  extends UserBadgeList
  implements ApiRequest.b<cj.a>
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
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cj.a parama)
  {
    a(a);
    r().f();
    disableLoading();
  }
  
  public cj b(ApiRequest<Void, ?, ?> paramApiRequest)
  {
    cj localcj = (cj)paramApiRequest;
    paramApiRequest = localcj;
    if (localcj == null) {
      paramApiRequest = new cj(this, getIntent().getStringExtra("TIP"));
    }
    paramApiRequest.a(this);
    return paramApiRequest;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.TipLikes;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    parama = new HashMap();
    parama.put("business_id", getIntent().getStringExtra("BUSINESS_ID"));
    parama.put("quicktip_id", getIntent().getStringExtra("TIP"));
    return parama;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.WhoLikedThisTip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */