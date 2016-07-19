package com.yelp.android.ui.activities.user.claimaccount;

import android.content.Intent;
import com.yelp.android.serializable.ClaimPlatformAccountViewModel;
import com.yelp.android.serializable.PlatformConfirmation;

public class a$b
{
  public static ClaimPlatformAccountViewModel a(Intent paramIntent)
  {
    return new ClaimPlatformAccountViewModel((PlatformConfirmation)paramIntent.getParcelableExtra("platform_confirmation"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.user.claimaccount.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */