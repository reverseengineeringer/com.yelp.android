package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class UpdatePrompt
  extends _UpdatePrompt
{
  public static final JsonParser.DualCreator<UpdatePrompt> CREATOR = new UpdatePrompt.1();
  
  public void a(int paramInt)
  {
    b = paramInt;
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.UpdatePrompt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */