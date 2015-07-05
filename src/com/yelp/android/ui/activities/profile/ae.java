package com.yelp.android.ui.activities.profile;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.do;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.User;

final class ae
  implements CompoundButton.OnCheckedChangeListener, m<User>
{
  private final User a;
  
  public ae(User paramUser)
  {
    a = paramUser;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, User paramUser) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    paramCompoundButton = a;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      new do(this, paramCompoundButton, paramBoolean).execute(new Void[0]);
      return;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */