package com.yelp.android.services.push;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.services.backgroundlocation.a;
import com.yelp.android.ui.dialogs.WhatsNewDialogFragment;

public class AppUpdatedReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!"android.intent.action.MY_PACKAGE_REPLACED".equals(paramIntent.getAction())) {}
    do
    {
      return;
      if (b.b().f()) {
        b.b().c();
      }
      paramContext = AppData.c(paramContext);
      if (WhatsNewDialogFragment.a(AppData.b().f().g(), paramContext)) {
        AppData.b().f().a(WhatsNewDialogFragment.a, true);
      }
      AppData.b().f().b(paramContext);
      paramContext = AppData.b().s();
    } while (!paramContext.d());
    paramContext.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.AppUpdatedReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */