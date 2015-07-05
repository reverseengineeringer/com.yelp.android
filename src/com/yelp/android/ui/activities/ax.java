package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.yelp.android.services.push.Notifier;
import com.yelp.android.services.push.p;

class ax
  implements DialogInterface.OnClickListener
{
  ax(ActivityConfig paramActivityConfig, String[] paramArrayOfString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = a[paramInt];
    Bundle localBundle = new Bundle();
    localBundle.putString("message", paramDialogInterface);
    localBundle.putString("sender", "Push test");
    localBundle.putString("url", paramDialogInterface);
    paramDialogInterface = new p(localBundle);
    new Notifier(b.getApplicationContext()).a(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */