package com.yelp.android.ui.activities.talk;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.TalkTopic;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;

class TalkViewPost$7
  implements View.OnClickListener
{
  TalkViewPost$7(TalkViewPost paramTalkViewPost) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityUserProfile.a(a, TalkViewPost.d(a).i()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.TalkViewPost.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */