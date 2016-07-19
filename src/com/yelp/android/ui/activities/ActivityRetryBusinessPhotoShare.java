package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.util.Pair;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.services.ShareService.ShareObjectType;
import java.util.List;

public class ActivityRetryBusinessPhotoShare
  extends ActivityRetryShare
{
  public static Intent a(Context paramContext, String paramString, List<Pair<ShareRequest.ShareType, ? extends YelpException>> paramList)
  {
    paramString = ActivityRetryShare.b(paramContext, paramString, paramList, null);
    paramString.setClass(paramContext, ActivityRetryBusinessPhotoShare.class);
    return paramString;
  }
  
  public ActivityRetryShare.a a()
  {
    return j;
  }
  
  ShareService.ShareObjectType b()
  {
    return ShareService.ShareObjectType.PHOTO;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRetryBusinessPhotoShare
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */