package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class PrivacyPolicy
  extends _PrivacyPolicy
{
  public static final JsonParser.DualCreator<PrivacyPolicy> CREATOR = new ca();
  
  public void setShareBasicInfoSource(String paramString)
  {
    mShareBasicInfoSource = paramString;
  }
  
  public void setShareBasicInfoStory(String paramString)
  {
    mShareBasicInfoStory = paramString;
  }
  
  public void setShareBasicInfoTime(String paramString)
  {
    mShareBasicInfoTime = paramString;
  }
  
  public void setShareDemographicsSource(String paramString)
  {
    mShareDemographicsSource = paramString;
  }
  
  public void setShareDemographicsStory(String paramString)
  {
    mShareDemographicsStory = paramString;
  }
  
  public void setShareDemographicsTime(String paramString)
  {
    mShareDemographicsTime = paramString;
  }
  
  public void setShareProfileSource(String paramString)
  {
    mShareProfileSource = paramString;
  }
  
  public void setShareProfileStory(String paramString)
  {
    mShareProfileStory = paramString;
  }
  
  public void setShareProfileTime(String paramString)
  {
    mShareProfileTime = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.PrivacyPolicy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */