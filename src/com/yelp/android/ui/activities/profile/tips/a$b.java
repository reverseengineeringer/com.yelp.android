package com.yelp.android.ui.activities.profile.tips;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.UserTipsViewModel;
import com.yelp.android.serializable.UserTipsViewModel.ViewType;
import java.util.ArrayList;

public class a$b
{
  public static Intent a(Context paramContext, User paramUser, int paramInt)
  {
    return new Intent(paramContext, ActivityUserTips.class).putExtra("extra.user", paramUser).putExtra("extra.total_feed_items", paramInt).putExtra("extra.view_type", UserTipsViewModel.ViewType.NORMAL);
  }
  
  public static UserTipsViewModel a(Intent paramIntent)
  {
    return new UserTipsViewModel(new ArrayList(), (User)paramIntent.getParcelableExtra("extra.user"), (UserTipsViewModel.ViewType)paramIntent.getSerializableExtra("extra.view_type"), paramIntent.getIntExtra("extra.total_feed_items", 0));
  }
  
  public static Intent b(Context paramContext, User paramUser, int paramInt)
  {
    return a(paramContext, paramUser, paramInt).putExtra("extra.view_type", UserTipsViewModel.ViewType.TIPS_OF_THE_DAY);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.tips.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */