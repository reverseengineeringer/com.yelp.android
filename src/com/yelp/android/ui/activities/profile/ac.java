package com.yelp.android.ui.activities.profile;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.messaging.ActivityComposeMessage;

class ac
  implements View.OnClickListener
{
  ac(UserProfileView paramUserProfileView, User paramUser) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.ProfileNewConversation);
    ((Activity)b.getContext()).startActivityForResult(ActivityComposeMessage.a(b.getContext(), a), 1030);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */