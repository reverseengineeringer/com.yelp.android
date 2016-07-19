package com.yelp.android.serializable;

import android.text.TextUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;

public class BusinessRepresentative
  extends _BusinessRepresentative
{
  public static final JsonParser.DualCreator<BusinessRepresentative> CREATOR = new BusinessRepresentative.1();
  
  public Role a()
  {
    if (TextUtils.equals(super.b(), "business_owner")) {
      return Role.BUSINESS_OWNER;
    }
    return Role.MANAGER;
  }
  
  public final String b()
  {
    throw new UnsupportedOperationException("Don't parse these strings yourself, use getRole() instead.");
  }
  
  public static enum Role
  {
    BUSINESS_OWNER,  MANAGER;
    
    private Role() {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BusinessRepresentative
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */