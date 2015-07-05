package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class ReviewDraft
  extends _ReviewDraft
  implements m
{
  public static final JsonParser.DualCreator<ReviewDraft> CREATOR = new cp();
  
  public int getRating()
  {
    return mNumHalfstars / 2;
  }
  
  public void setHalfStars(int paramInt)
  {
    mNumHalfstars = paramInt;
  }
  
  public void setText(String paramString)
  {
    mText = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReviewDraft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */