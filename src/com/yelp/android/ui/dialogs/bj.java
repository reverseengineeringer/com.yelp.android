package com.yelp.android.ui.dialogs;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class bj
  implements View.OnClickListener
{
  bj(UpdatePromptDialogFragment paramUpdatePromptDialogFragment) {}
  
  public void onClick(View paramView)
  {
    paramView = AppData.b().getPackageName();
    AppData.a(EventIri.UpdatePromptAccept);
    try
    {
      a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + paramView)));
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://play.google.com/store/apps/details?id=" + paramView)));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */