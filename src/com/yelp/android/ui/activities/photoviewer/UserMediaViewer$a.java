package com.yelp.android.ui.activities.photoviewer;

import android.content.Intent;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.ui.dialogs.AlertDialogFragment;

class UserMediaViewer$a
  implements c.a
{
  private UserMediaViewer$a(UserMediaViewer paramUserMediaViewer) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    paramApiRequest = new Intent();
    paramApiRequest.putExtra("extra.photo_deleted", true);
    a.setResult(-1, paramApiRequest);
    a.hideLoadingDialog();
    a.finish();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    AlertDialogFragment.a(null, a.getString(2131165850)).show(a.getSupportFragmentManager(), null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.UserMediaViewer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */