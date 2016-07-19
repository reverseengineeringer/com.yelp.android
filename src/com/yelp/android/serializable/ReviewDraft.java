package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class ReviewDraft
  extends _ReviewDraft
{
  public static final JsonParser.DualCreator<ReviewDraft> CREATOR = new ReviewDraft.1();
  
  public int a()
  {
    return h / 2;
  }
  
  public void a(int paramInt)
  {
    h = paramInt;
  }
  
  public void a(String paramString)
  {
    f = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReviewDraft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */