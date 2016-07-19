package com.yelp.android.ui.activities.profile;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.webrequests.du;
import com.yelp.android.serializable.ReviewDraft;
import java.util.ArrayList;

class ActivityUserDraftList$3
  implements DialogInterface.OnClickListener
{
  ActivityUserDraftList$3(ActivityUserDraftList paramActivityUserDraftList) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new ArrayList();
    paramDialogInterface.add(ActivityUserDraftList.c(a).g());
    ActivityUserDraftList.a(a, new du(paramDialogInterface, ActivityUserDraftList.d(a)));
    a.showLoadingDialog();
    ActivityUserDraftList.e(a).f(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserDraftList.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */