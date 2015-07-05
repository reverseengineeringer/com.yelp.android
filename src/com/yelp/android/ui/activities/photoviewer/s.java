package com.yelp.android.ui.activities.photoviewer;

import android.app.AlertDialog;
import android.text.Html;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;

class s
  implements i
{
  s(EditPhotoCaption paramEditPhotoCaption) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    EditPhotoCaption.a(a).dismiss();
    EditPhotoCaption.c(a).setCaption(EditPhotoCaption.b(a));
    new ObjectDirtyEvent(EditPhotoCaption.c(a), "com.yelp.android.media.update").a(a);
    a.finish();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    EditPhotoCaption.a(a).dismiss();
    AlertDialogFragment.a(null, Html.fromHtml(paramYelpException.getMessage(AppData.b())).toString()).show(a.getSupportFragmentManager(), null);
    YelpLog.error(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */