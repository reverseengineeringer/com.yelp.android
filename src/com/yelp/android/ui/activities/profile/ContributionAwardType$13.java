package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.webrequests.UserLocalMediaRequest;
import com.yelp.android.serializable.User;

 enum ContributionAwardType$13
{
  ContributionAwardType$13(EventIri paramEventIri, int paramInt2, int paramInt3)
  {
    super(paramString, paramInt1, paramEventIri, paramInt2, paramInt3, null);
  }
  
  public int getTitleRes(User paramUser)
  {
    if (paramUser.getVideoCount() == 0) {
      return 2131165447;
    }
    if (paramUser.getLocalPhotoCount() == 0) {
      return 2131166828;
    }
    return 2131166331;
  }
  
  int getValue(User paramUser)
  {
    return paramUser.getVideoCount() + paramUser.getLocalPhotoCount();
  }
  
  Intent getViewIntent(Context paramContext, User paramUser)
  {
    return UserBizMediaGrid.a(paramContext, new UserLocalMediaRequest(paramUser), paramContext.getString(getTitleRes(paramUser)), paramUser);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ContributionAwardType.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */