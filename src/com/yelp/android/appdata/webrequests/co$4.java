package com.yelp.android.appdata.webrequests;

import android.support.v4.app.l;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.UserLocation;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.util.YelpLog;
import java.util.Iterator;
import java.util.List;

class co$4
  implements ApiRequest.b<List<UserLocation>>
{
  co$4(co paramco, l paraml) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<UserLocation> paramList)
  {
    paramList = paramList.iterator();
    do
    {
      if (!paramList.hasNext()) {
        break;
      }
      paramApiRequest = (UserLocation)paramList.next();
    } while (!paramApiRequest.a());
    for (;;)
    {
      if (paramApiRequest != null) {
        b.a(paramApiRequest);
      }
      return;
      paramApiRequest = null;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    paramApiRequest = paramYelpException.getMessage(AppData.b().getApplicationContext());
    if (a != null)
    {
      AlertDialogFragment.a(null, paramApiRequest).show(a, null);
      return;
    }
    YelpLog.remoteError("LoginManager", paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.co.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */