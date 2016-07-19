package com.yelp.android.ui.activities.support;

import android.support.v4.app.FragmentActivity;
import com.yelp.android.ui.dialogs.LocationSettingsDialog;

class b$2
  implements Runnable
{
  b$2(b paramb, boolean paramBoolean, int paramInt) {}
  
  public void run()
  {
    LocationSettingsDialog localLocationSettingsDialog = LocationSettingsDialog.a(a, b);
    localLocationSettingsDialog.a(b.a(c));
    localLocationSettingsDialog.show(b.b(c).getSupportFragmentManager(), null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.b.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */