package com.yelp.android.ui.activities.photoviewer;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.dialogs.AlertDialogFragment;

class j
  implements m<String>
{
  j(ActivityMediaViewer paramActivityMediaViewer) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, String paramString)
  {
    a.hideLoadingDialog();
    AlertDialogFragment.a(null, paramString).show(a.getSupportFragmentManager(), null);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    AlertDialogFragment.a(null, paramYelpException.getMessage(a)).show(a.getSupportFragmentManager(), null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */