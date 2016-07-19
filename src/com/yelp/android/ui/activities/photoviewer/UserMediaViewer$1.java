package com.yelp.android.ui.activities.photoviewer;

import android.content.Intent;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.ui.dialogs.AlertDialogFragment;

class UserMediaViewer$1
  implements c.a
{
  UserMediaViewer$1(UserMediaViewer paramUserMediaViewer) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    a.hideLoadingDialog();
    paramApiRequest = new Intent();
    paramApiRequest.putExtra("extra.photo_set_primary", true);
    a.setResult(-1, paramApiRequest);
    a.finish();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    AlertDialogFragment.a(null, a.getString(2131165860)).show(a.getSupportFragmentManager(), null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.UserMediaViewer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */