package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class UpdatePrompt
  extends _UpdatePrompt
{
  public static final JsonParser.DualCreator<UpdatePrompt> CREATOR = new dj();
  
  public void setAppLaunchesBetweenUpdatePrompts(int paramInt)
  {
    mAppLaunchesBetweenUpdatePrompts = paramInt;
  }
  
  public void setMessage(String paramString)
  {
    mMessage = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.UpdatePrompt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */