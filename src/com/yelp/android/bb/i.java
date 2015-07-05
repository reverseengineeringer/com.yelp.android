package com.yelp.android.bb;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.serializable.bg;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;

class i
  implements View.OnClickListener
{
  i(h paramh, Conversation paramConversation) {}
  
  public void onClick(View paramView)
  {
    paramView = paramView.getContext();
    if (a.getBizUser() == null)
    {
      paramView.startActivity(ActivityUserProfile.a(paramView, a.getOtherUser().getId()));
      return;
    }
    paramView.startActivity(ActivityBusinessPage.a(paramView, a.getBusinessId()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bb.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */