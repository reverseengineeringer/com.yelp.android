package com.yelp.android.ui.activities.tips;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Tip;
import com.yelp.android.util.ObjectDirtyEvent;

class e
  extends BroadcastReceiver
{
  e(TipComplimentsLikes paramTipComplimentsLikes) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    TipComplimentsLikes.a(a, (Tip)ObjectDirtyEvent.a(paramIntent));
    TipComplimentsLikes.a(a, TipComplimentsLikes.a(a).getId());
    TipComplimentsLikes.d(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */