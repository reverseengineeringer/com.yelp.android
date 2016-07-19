package com.yelp.android.ui.activities.badges;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bx.a;
import com.yelp.android.serializable.Badge;
import com.yelp.android.serializable.BadgesViewModel;
import java.util.List;

public abstract interface b
{
  public static abstract interface a
    extends a
  {
    public abstract void a(Badge paramBadge);
    
    public abstract void d();
    
    public abstract boolean e();
  }
  
  public static class b
  {
    public static Intent a(Context paramContext, String paramString)
    {
      return new Intent(paramContext, ActivityBadges.class).putExtra("user_id", paramString);
    }
    
    public static BadgesViewModel a(Intent paramIntent)
    {
      return new BadgesViewModel(paramIntent.getStringExtra("user_id"));
    }
  }
  
  public static abstract interface c
    extends com.yelp.android.bx.b
  {
    public abstract void a(YelpException paramYelpException);
    
    public abstract void a(Badge paramBadge);
    
    public abstract void a(List<Badge> paramList);
    
    public abstract void b();
    
    public abstract void c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.badges.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */