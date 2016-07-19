package com.yelp.android.bt;

import com.yelp.android.appdata.webrequests.e.a;
import com.yelp.android.serializable.Badge;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.List;
import rx.a;

public abstract interface b
{
  public abstract a<e.a> a();
  
  public abstract a<List<YelpBusinessReview>> a(User paramUser, int paramInt1, int paramInt2, boolean paramBoolean);
  
  public abstract a<List<Tip>> a(User paramUser, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract a<List<Badge>> a(String paramString);
  
  public abstract a<Void> a(String paramString, boolean paramBoolean);
  
  public abstract a<Void> b(String paramString);
}

/* Location:
 * Qualified Name:     com.yelp.android.bt.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */