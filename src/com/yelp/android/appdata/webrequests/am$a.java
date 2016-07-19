package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.CheckInFeedback;
import com.yelp.android.serializable.Comment;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import java.util.List;

public class am$a
{
  public final List<Comment> a;
  public final List<CheckInFeedback> b;
  public final YelpCheckIn c;
  public final YelpBusiness d;
  
  public am$a(List<Comment> paramList, YelpCheckIn paramYelpCheckIn, YelpBusiness paramYelpBusiness, List<CheckInFeedback> paramList1)
  {
    a = paramList;
    c = paramYelpCheckIn;
    d = paramYelpBusiness;
    b = paramList1;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.am.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */