package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.gz;
import com.yelp.android.serializable.BusinessInfoProviderFeedEntry;
import com.yelp.android.serializable.User;

public class ActivityUserTips
  extends AnyUserSingleFeedEntryActivity<BusinessInfoProviderFeedEntry>
{
  private static String c = "extra.firsts_only";
  private static String d = "extra.tips_of_the_day";
  
  public static Intent a(Context paramContext, User paramUser, Class<? extends AnyUserSingleFeedEntryActivity<?>> paramClass, int paramInt)
  {
    paramContext = AnyUserSingleFeedEntryActivity.b(paramContext, paramUser, paramClass, paramInt);
    paramContext.putExtra(d, true);
    return paramContext;
  }
  
  public int a()
  {
    return 2131166151;
  }
  
  public ApiRequest<?, ?, ?> a(int paramInt1, int paramInt2)
  {
    boolean bool1 = getIntent().getBooleanExtra(c, false);
    boolean bool2 = getIntent().getBooleanExtra(d, false);
    return new gz(this, a, paramInt1, paramInt2, bool1, bool2).execute(new Void[0]);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfileTips;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    int i = 2131166726;
    if (getIntent().getBooleanExtra(c, false)) {
      i = 2131165835;
    }
    for (;;)
    {
      setTitle(i);
      return;
      if (getIntent().getBooleanExtra(d, false)) {
        i = 2131166720;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserTips
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */