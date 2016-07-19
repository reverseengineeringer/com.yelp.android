package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;

public class TranslatedReview
  extends _TranslatedReview
{
  public static final JsonParser.DualCreator<TranslatedReview> CREATOR = new TranslatedReview.1();
  
  public boolean a()
  {
    return b.equals("google");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.TranslatedReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */