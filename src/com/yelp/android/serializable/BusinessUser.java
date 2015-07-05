package com.yelp.android.serializable;

import com.yelp.android.appdata.AppData;
import com.yelp.parcelgen.JsonParser.DualCreator;

public class BusinessUser
  extends _BusinessUser
  implements bg
{
  public static final JsonParser.DualCreator<BusinessUser> CREATOR = new s();
  
  public String getNameWithoutPeriod()
  {
    return User.getNameWithoutPeriod(mFirstName, mLastInitial);
  }
  
  public String getRole()
  {
    BusinessUser.Role[] arrayOfRole = BusinessUser.Role.values();
    int j = arrayOfRole.length;
    int i = 0;
    while (i < j)
    {
      BusinessUser.Role localRole = arrayOfRole[i];
      if (mKey.equalsIgnoreCase(mRole)) {
        return AppData.b().getString(mResourceId);
      }
      i += 1;
    }
    return AppData.b().getString(EMPLOYEEmResourceId);
  }
  
  public void setBlocked(boolean paramBoolean)
  {
    mIsBlocked = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BusinessUser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */