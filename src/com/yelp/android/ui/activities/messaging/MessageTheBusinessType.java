package com.yelp.android.ui.activities.messaging;

public enum MessageTheBusinessType
{
  MESSAGE_THE_BUSINESS("MTB"),  REQUEST_A_QUOTE("RAQ");
  
  private final String mType;
  
  private MessageTheBusinessType(String paramString)
  {
    mType = paramString;
  }
  
  public String getTypeName()
  {
    return mType;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.MessageTheBusinessType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */