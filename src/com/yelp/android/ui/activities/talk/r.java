package com.yelp.android.ui.activities.talk;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.TalkMessage;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;

class r
  implements View.OnClickListener
{
  r(q paramq, TalkMessage paramTalkMessage) {}
  
  public void onClick(View paramView)
  {
    q.b(b).startActivity(ActivityUserProfile.a(q.b(b), a.getUserId()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */