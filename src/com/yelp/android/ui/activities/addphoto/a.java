package com.yelp.android.ui.activities.addphoto;

import android.app.AlertDialog;
import android.text.Html;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.util.YelpLog;

class a
  implements i
{
  a(AddBusinessPhoto paramAddBusinessPhoto) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    AddBusinessPhoto.a(a).dismiss();
    if (AddBusinessPhoto.b(a))
    {
      AddBusinessPhoto.c(a);
      return;
    }
    AddBusinessPhoto.d(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    AddBusinessPhoto.a(a).dismiss();
    AlertDialogFragment.a(null, Html.fromHtml(paramYelpException.getMessage(AppData.b())).toString()).show(a.getSupportFragmentManager(), null);
    YelpLog.error(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */