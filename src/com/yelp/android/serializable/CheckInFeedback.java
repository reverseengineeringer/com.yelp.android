package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;

public class CheckInFeedback
  extends _CheckInFeedback
  implements DisplayableAsUserBadge
{
  public static final JsonParser.DualCreator<CheckInFeedback> CREATOR = new CheckInFeedback.1();
  
  public CheckInFeedback() {}
  
  public CheckInFeedback(YelpCheckIn paramYelpCheckIn, User paramUser)
  {
    super(new Date(), null, paramUser, paramYelpCheckIn.d(), paramYelpCheckIn);
  }
  
  public String a()
  {
    return c.a();
  }
  
  public String c()
  {
    return c.c();
  }
  
  public boolean h()
  {
    return c.h();
  }
  
  public String i()
  {
    return c.ae();
  }
  
  public int j_()
  {
    return c.j_();
  }
  
  public int k_()
  {
    return c.k_();
  }
  
  public int l_()
  {
    return c.M();
  }
  
  public int m_()
  {
    return c.m_();
  }
  
  public int n_()
  {
    return c.n_();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.CheckInFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */