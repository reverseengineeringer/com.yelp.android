package com.yelp.android.ui.dialogs;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class bk
  implements View.OnClickListener
{
  bk(UpdatePromptDialogFragment paramUpdatePromptDialogFragment) {}
  
  public void onClick(View paramView)
  {
    a.dismiss();
    AppData.a(EventIri.UpdatePromptRemindLater);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */