package com.yelp.android.ui.activities.support;

import android.support.v4.app.FragmentActivity;
import com.yelp.android.ui.dialogs.LocationSettingsDialog;

class j
  implements Runnable
{
  j(h paramh, boolean paramBoolean, int paramInt) {}
  
  public void run()
  {
    LocationSettingsDialog localLocationSettingsDialog = LocationSettingsDialog.a(a, b);
    localLocationSettingsDialog.a(h.a(c));
    localLocationSettingsDialog.show(h.b(c).getSupportFragmentManager(), null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */