package com.yelp.android.ui.activities.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocaleSettings.DISTANCE_UNIT;
import java.util.Locale;

class ChangeSettings$4
  implements DialogInterface.OnClickListener
{
  ChangeSettings$4(ChangeSettings paramChangeSettings, LocaleSettings paramLocaleSettings) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    LocaleSettings.DISTANCE_UNIT localDISTANCE_UNIT = LocaleSettings.DISTANCE_UNIT.values()[paramInt];
    a.a(localDISTANCE_UNIT, b.getAppData());
    AppData.a(EventIri.DistanceUnitChanged, "unit", localDISTANCE_UNIT.name().toLowerCase(Locale.US));
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ChangeSettings.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */