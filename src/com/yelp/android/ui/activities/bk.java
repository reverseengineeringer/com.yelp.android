package com.yelp.android.ui.activities;

import com.yelp.android.serializable.FacebookUser;
import com.yelp.android.webimageview.WebImageView;

class bk
  implements fg<ActivityCreateAccount>
{
  bk(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void a(FacebookConnectManager paramFacebookConnectManager) {}
  
  public void a(FacebookConnectManager paramFacebookConnectManager, Throwable paramThrowable)
  {
    a.showYesNoDialog(2131165255, 2131166752, 17039360, 4);
  }
  
  public void b(FacebookConnectManager paramFacebookConnectManager) {}
  
  public void c(FacebookConnectManager paramFacebookConnectManager)
  {
    ActivityCreateAccount.r(a);
    a.showLoadingDialog(2131166016);
    paramFacebookConnectManager = paramFacebookConnectManager.c();
    ActivityCreateAccount.a(a, paramFacebookConnectManager.getId());
    ActivityCreateAccount.t(a).setImageUrl(FacebookConnectManager.a(ActivityCreateAccount.s(a)), true, a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */