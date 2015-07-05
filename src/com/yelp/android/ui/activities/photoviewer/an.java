package com.yelp.android.ui.activities.photoviewer;

import android.content.Intent;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gw;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.activities.profile.j;

class an
  implements m<gw>
{
  an(UserMediaViewer paramUserMediaViewer) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, gw paramgw)
  {
    a.hideLoadingDialog();
    paramApiRequest = new j();
    e = paramgw.a();
    paramApiRequest.a(a);
    paramApiRequest = new Intent();
    paramApiRequest.putExtra("photo_added", true);
    a.setResult(-1, paramApiRequest);
    a.finish();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */