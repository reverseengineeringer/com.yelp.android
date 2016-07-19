package com.yelp.android.ui.activities.tips;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Tip;
import com.yelp.android.util.ObjectDirtyEvent;

class TipComplimentsLikes$6
  extends BroadcastReceiver
{
  TipComplimentsLikes$6(TipComplimentsLikes paramTipComplimentsLikes) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (((Tip)ObjectDirtyEvent.a(paramIntent)).a().equals(TipComplimentsLikes.e(a))) {
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.tips.TipComplimentsLikes.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */