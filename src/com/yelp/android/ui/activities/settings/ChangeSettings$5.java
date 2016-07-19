package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.support.v4.app.l;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.ui.dialogs.AlertDialogFragment;

final class ChangeSettings$5
  implements c.a
{
  ChangeSettings$5(Context paramContext, l paraml) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid) {}
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    AlertDialogFragment.a(null, a.getString(2131165865)).show(b, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ChangeSettings.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */