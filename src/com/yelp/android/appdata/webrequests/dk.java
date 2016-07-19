package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.YelpBusiness;

public class dk
  extends c
{
  private YelpBusiness a;
  
  public dk(YelpBusiness paramYelpBusiness, c.a parama)
  {
    super("bookmarks/remove", parama);
    b("business_id", paramYelpBusiness.aD());
    a = paramYelpBusiness;
  }
  
  public YelpBusiness b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */