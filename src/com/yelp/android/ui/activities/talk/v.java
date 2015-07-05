package com.yelp.android.ui.activities.talk;

import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.aw.f;
import com.yelp.android.aw.h;

public abstract interface v
{
  public abstract f a(String paramString, int paramInt, m<h> paramm);
  
  public abstract void a(YelpException paramYelpException);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract void disableLoading();
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */