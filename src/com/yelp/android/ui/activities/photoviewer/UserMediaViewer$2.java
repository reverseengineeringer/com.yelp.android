package com.yelp.android.ui.activities.photoviewer;

import android.content.Intent;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fk.a;
import com.yelp.android.ui.activities.profile.ActivityUserProfile.a;

class UserMediaViewer$2
  implements ApiRequest.b<fk.a>
{
  UserMediaViewer$2(UserMediaViewer paramUserMediaViewer) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, fk.a parama)
  {
    a.hideLoadingDialog();
    paramApiRequest = new ActivityUserProfile.a();
    e = parama.a();
    paramApiRequest.a(a);
    paramApiRequest = new Intent();
    paramApiRequest.putExtra("extra.photo_added", true);
    a.setResult(-1, paramApiRequest);
    a.finish();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.UserMediaViewer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */