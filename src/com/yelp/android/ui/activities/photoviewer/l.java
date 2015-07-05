package com.yelp.android.ui.activities.photoviewer;

import android.content.Intent;
import android.support.v4.view.ViewPager;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.av.i;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.util.ObjectDirtyEvent;

class l
  implements i
{
  private final Media b;
  
  public l(ActivityMediaViewer paramActivityMediaViewer, Media paramMedia)
  {
    b = paramMedia;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    YelpActivity.IntentData.setData(ActivityMediaViewer.a(a));
    paramApiRequest = new Intent(a.getIntent());
    paramApiRequest.putExtra("extra.media_request", ActivityMediaViewer.g(a));
    paramApiRequest.putExtra("extra.media_index", ActivityMediaViewer.k(a).getCurrentItem());
    a.setResult(-1, paramApiRequest);
    a.hideLoadingDialog();
    new ObjectDirtyEvent(b, "com.yelp.android.media.delete").a(a);
    paramApiRequest = AppData.b().m().s();
    if (b.isMediaType(Media.MediaType.VIDEO)) {
      paramApiRequest.addVideoCount(-1);
    }
    for (;;)
    {
      a.finish();
      return;
      paramApiRequest.addPhotoCount(-1);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    if (b.isMediaType(Media.MediaType.VIDEO)) {}
    for (int i = 2131165766;; i = 2131165765)
    {
      AlertDialogFragment.a(null, a.getString(i)).show(a.getSupportFragmentManager(), null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */