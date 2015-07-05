package com.yelp.android.ui.activities.messaging.apimanagers;

import android.content.Context;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.BusinessUser;
import com.yelp.android.serializable.bg;

 enum MessagingAction$4
{
  MessagingAction$4()
  {
    super(paramString, paramInt, null);
  }
  
  public String getErrorMessage(Context paramContext, bg parambg, YelpException paramYelpException, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramContext.getString(2131166767, new Object[] { ((BusinessUser)parambg).getRole() });
    }
    return paramContext.getString(2131166767, new Object[] { parambg.getName() });
  }
  
  public String getSuccessMessage(Context paramContext, bg parambg, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramContext.getString(2131166700, new Object[] { ((BusinessUser)parambg).getRole() });
    }
    return paramContext.getString(2131166768, new Object[] { parambg.getName() });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.MessagingAction.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */