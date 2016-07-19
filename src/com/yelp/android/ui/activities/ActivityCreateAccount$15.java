package com.yelp.android.ui.activities;

import com.yelp.android.serializable.FacebookUser;
import com.yelp.android.webimageview.WebImageView;

class ActivityCreateAccount$15
  implements FacebookConnectManager.a<ActivityCreateAccount>
{
  ActivityCreateAccount$15(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void a(FacebookConnectManager paramFacebookConnectManager) {}
  
  public void a(FacebookConnectManager paramFacebookConnectManager, Throwable paramThrowable)
  {
    a.showYesNoDialog(2131165391, 2131166732, 17039360, 4);
  }
  
  public void b(FacebookConnectManager paramFacebookConnectManager) {}
  
  public void c(FacebookConnectManager paramFacebookConnectManager)
  {
    ActivityCreateAccount.t(a);
    a.showLoadingDialog(2131166075);
    paramFacebookConnectManager = paramFacebookConnectManager.c();
    ActivityCreateAccount.c(a, paramFacebookConnectManager.b());
    ActivityCreateAccount.p(a).setImageUrl(FacebookConnectManager.a(ActivityCreateAccount.u(a)), true, a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */