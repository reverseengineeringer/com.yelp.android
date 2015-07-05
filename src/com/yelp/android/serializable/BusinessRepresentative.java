package com.yelp.android.serializable;

import android.text.TextUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;

public class BusinessRepresentative
  extends _BusinessRepresentative
{
  public static final JsonParser.DualCreator<BusinessRepresentative> CREATOR = new p();
  
  public BusinessRepresentative.Role getRole()
  {
    if (TextUtils.equals(super.getRoleString(), "business_owner")) {
      return BusinessRepresentative.Role.BUSINESS_OWNER;
    }
    return BusinessRepresentative.Role.MANAGER;
  }
  
  public final String getRoleString()
  {
    throw new UnsupportedOperationException("Don't parse these strings yourself, use getRole() instead.");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BusinessRepresentative
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */