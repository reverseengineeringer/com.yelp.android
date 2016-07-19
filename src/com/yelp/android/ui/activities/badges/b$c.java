package com.yelp.android.ui.activities.badges;

import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bx.b;
import com.yelp.android.serializable.Badge;
import java.util.List;

public abstract interface b$c
  extends b
{
  public abstract void a(YelpException paramYelpException);
  
  public abstract void a(Badge paramBadge);
  
  public abstract void a(List<Badge> paramList);
  
  public abstract void b();
  
  public abstract void c();
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.badges.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */