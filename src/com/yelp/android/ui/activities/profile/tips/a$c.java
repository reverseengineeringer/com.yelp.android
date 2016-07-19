package com.yelp.android.ui.activities.profile.tips;

import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bx.b;
import com.yelp.android.serializable.Tip;
import java.util.List;

public abstract interface a$c
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

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.tips.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */