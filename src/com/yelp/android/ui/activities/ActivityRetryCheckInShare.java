package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.util.Pair;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.services.ShareService.ShareObjectType;
import java.util.List;

public class ActivityRetryCheckInShare
  extends ActivityRetryShare
{
  public static Intent a(Context paramContext, String paramString, List<Pair<ShareRequest.ShareType, ? extends YelpException>> paramList)
  {
    paramString = ActivityRetryShare.b(paramContext, paramString, paramList);
    paramString.setClass(paramContext, ActivityRetryCheckInShare.class);
    return paramString;
  }
  
  public dw a()
  {
    return g;
  }
  
  ShareService.ShareObjectType b()
  {
    return ShareService.ShareObjectType.CHECKIN;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRetryCheckInShare
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */