package com.yelp.android.ui.activities.profile.tips;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bx.b;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.UserTipsViewModel;
import com.yelp.android.serializable.UserTipsViewModel.ViewType;
import java.util.ArrayList;
import java.util.List;

public abstract interface a
{
  public static abstract interface a
    extends com.yelp.android.bx.a
  {
    public abstract void a(Tip paramTip);
    
    public abstract void a(Tip paramTip, boolean paramBoolean);
    
    public abstract void b(Tip paramTip);
    
    public abstract void c(Tip paramTip);
    
    public abstract void d();
  }
  
  public static class b
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
  
  public static abstract interface c
    extends b
  {
    public abstract void a(YelpException paramYelpException);
    
    public abstract void a(Tip paramTip);
    
    public abstract void a(List<Tip> paramList);
    
    public abstract void b();
    
    public abstract void b(Tip paramTip);
    
    public abstract void c(Tip paramTip);
    
    public abstract void d(Tip paramTip);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.tips.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */