package com.yelp.android.ui.activities.talk;

import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bv.c.b;

public abstract interface c
{
  public abstract com.yelp.android.bv.c a(String paramString, int paramInt, ApiRequest.b<c.b> paramb);
  
  public abstract void a(YelpException paramYelpException);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract void disableLoading();
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */