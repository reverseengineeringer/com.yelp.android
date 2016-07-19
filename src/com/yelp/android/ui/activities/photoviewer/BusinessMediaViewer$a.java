package com.yelp.android.ui.activities.photoviewer;

import android.content.Intent;
import android.support.v4.view.ViewPager;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.BusinessObjectDeleteRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.ActivityUserProfile.a;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.util.ObjectDirtyEvent;

class BusinessMediaViewer$a
  implements c.a
{
  private BusinessMediaViewer$a(BusinessMediaViewer paramBusinessMediaViewer) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    paramApiRequest = ((BusinessObjectDeleteRequest)paramApiRequest).b();
    a.c.b(paramApiRequest);
    YelpActivity.IntentData.setData(a.c.g());
    paramVoid = new Intent(a.getIntent());
    paramVoid.putExtra("extra.media_index", a.d.getCurrentItem());
    a.setResult(-1, paramVoid);
    a.hideLoadingDialog();
    new ObjectDirtyEvent(paramApiRequest, "com.yelp.android.media.delete").a(a);
    paramVoid = AppData.b().q().p();
    if (paramApiRequest.a(Media.MediaType.VIDEO)) {
      paramVoid.c(-1);
    }
    for (;;)
    {
      new ActivityUserProfile.a().a(AppData.b());
      a.finish();
      return;
      if (!paramApiRequest.a(Media.MediaType.PHOTO)) {
        break;
      }
      paramVoid.a(-1);
    }
    throw new IllegalStateException("Media coming back from api should be photo or video");
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    paramApiRequest = ((BusinessObjectDeleteRequest)paramApiRequest).b();
    a.hideLoadingDialog();
    if (paramApiRequest.a(Media.MediaType.VIDEO)) {}
    for (int i = 2131165852;; i = 2131165850)
    {
      AlertDialogFragment.a(null, a.getString(i)).show(a.getSupportFragmentManager(), null);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.BusinessMediaViewer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */