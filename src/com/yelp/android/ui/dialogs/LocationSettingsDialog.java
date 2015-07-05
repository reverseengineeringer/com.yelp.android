package com.yelp.android.ui.dialogs;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.n;
import com.yelp.android.ui.activities.support.o;
import com.yelp.android.ui.util.cp;
import com.yelp.android.util.YelpLog;

public class LocationSettingsDialog
  extends DialogFragment
{
  private boolean a;
  private boolean b;
  private o c;
  private final View.OnClickListener d = new at(this);
  private final DialogInterface.OnClickListener e = new au(this);
  
  private int a()
  {
    int j = getArguments().getInt("message_res");
    int i = j;
    if (j == 0)
    {
      if (a) {
        i = 2131166194;
      }
    }
    else {
      return i;
    }
    if (n.a(19)) {
      return 2131166173;
    }
    return 2131166174;
  }
  
  public static LocationSettingsDialog a(boolean paramBoolean, int paramInt)
  {
    LocationSettingsDialog localLocationSettingsDialog = new LocationSettingsDialog();
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("allow_manual", paramBoolean);
    localBundle.putInt("message_res", paramInt);
    localLocationSettingsDialog.setArguments(localBundle);
    return localLocationSettingsDialog;
  }
  
  private void b()
  {
    try
    {
      startActivityForResult(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"), 1027);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      YelpLog.error(getActivity(), "Trying to open the location settings but they don't exist!");
      cp.a(getActivity(), getString(2131166022), getString(2131166023));
    }
  }
  
  private void c()
  {
    if (c != null)
    {
      if (!AppData.b().n().a()) {
        break label47;
      }
      b = true;
      c.k_();
      AppData.b().n().e();
    }
    for (;;)
    {
      dismiss();
      return;
      label47:
      c.a(false);
    }
  }
  
  public void a(o paramo)
  {
    c = paramo;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1027) {
      c();
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new AlertDialog.Builder(getActivity());
    a = getArguments().getBoolean("allow_manual");
    if (a) {}
    for (int i = 2131165762;; i = 17039360)
    {
      paramBundle.setPositiveButton(2131166262, null);
      paramBundle.setNegativeButton(i, e);
      paramBundle.setTitle(2131166022);
      paramBundle.setMessage(a());
      return paramBundle.create();
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    if ((c != null) && (!b)) {
      c.a(a);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    ((AlertDialog)getDialog()).getButton(-1).setOnClickListener(d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.LocationSettingsDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */