package com.yelp.android.ui.activities.talk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;

class e
  implements DialogInterface.OnClickListener
{
  e(ActivityTalkPost paramActivityTalkPost) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ActivityTalkPost.b(a).setText(ActivityTalkPost.a(a)[paramInt]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */