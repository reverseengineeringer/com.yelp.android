package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.util.Log;

public class jh
  implements DialogInterface.OnClickListener
{
  private final Fragment Mx;
  private final int My;
  private final Intent mIntent;
  private final Activity nB;
  
  public jh(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    nB = paramActivity;
    Mx = null;
    mIntent = paramIntent;
    My = paramInt;
  }
  
  public jh(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    nB = null;
    Mx = paramFragment;
    mIntent = paramIntent;
    My = paramInt;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      if ((mIntent != null) && (Mx != null)) {
        Mx.startActivityForResult(mIntent, My);
      }
      for (;;)
      {
        paramDialogInterface.dismiss();
        return;
        if (mIntent != null) {
          nB.startActivityForResult(mIntent, My);
        }
      }
      return;
    }
    catch (ActivityNotFoundException paramDialogInterface)
    {
      Log.e("SettingsRedirect", "Can't redirect to app settings for Google Play services");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */