package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.serializable.Media;
import com.yelp.android.ui.activities.photoviewer.ActivityMediaViewer;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class UserBizMediaViewer
  extends ActivityMediaViewer
{
  public static Intent a(Context paramContext, MediaRequest paramMediaRequest, List<? extends Media> paramList, int paramInt)
  {
    YelpActivity.IntentData.setData(paramList);
    paramContext = new Intent(paramContext, UserBizMediaViewer.class);
    paramContext.putExtra("extra.media_request", paramMediaRequest);
    paramContext.putExtra("extra.media_index", paramInt);
    return paramContext;
  }
  
  protected boolean a()
  {
    return true;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfileBizPhotosFullScreen;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return Collections.emptyMap();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.UserBizMediaViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */