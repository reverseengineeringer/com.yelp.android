package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class PrivacyPolicySaveRequest
  extends h
{
  public PrivacyPolicySaveRequest(i parami, PrivacyPolicySaveRequest.PrivacyLevel paramPrivacyLevel)
  {
    super("/privacy_policy/save", parami);
    addPostParam("demographics", paramPrivacyLevel.getParamName());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.PrivacyPolicySaveRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */