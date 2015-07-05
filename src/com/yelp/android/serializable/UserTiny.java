package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class UserTiny
  extends _UserTiny
  implements bg
{
  public static final JsonParser.DualCreator<UserTiny> CREATOR = new dn();
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof UserTiny))
    {
      paramObject = (UserTiny)paramObject;
      return getId().equals(((UserTiny)paramObject).getId());
    }
    return false;
  }
  
  public String getNameWithoutPeriod()
  {
    return User.getNameWithoutPeriod(mFirstName, mLastInitial);
  }
  
  public int hashCode()
  {
    return getId().hashCode();
  }
  
  public void setBlocked(boolean paramBoolean)
  {
    mIsBlocked = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.UserTiny
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */