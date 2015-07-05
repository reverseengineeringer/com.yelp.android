package com.yelp.android.ui.dialogs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.gv;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.YelpLog;
import java.io.File;
import java.io.FileNotFoundException;

class u
  implements DialogInterface.OnClickListener
{
  u(DlgAddPhotoCaption paramDlgAddPhotoCaption, boolean paramBoolean, m paramm, YelpActivity paramYelpActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      if (a) {}
      for (boolean bool = true;; bool = d.c())
      {
        paramDialogInterface = new gv(DlgAddPhotoCaption.a(d).getAbsolutePath(), d.b(), bool, b);
        paramDialogInterface.execute(new Void[0]);
        c.showLoadingDialog(paramDialogInterface, 2131166796);
        return;
      }
      return;
    }
    catch (FileNotFoundException paramDialogInterface)
    {
      YelpLog.e(c, "Error while uploading profile photo", paramDialogInterface);
      cr.a(c.getAppData().getString(2131165777), 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */