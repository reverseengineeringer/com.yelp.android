package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;

public class Comment
  extends _Comment
{
  public static final JsonParser.DualCreator<Comment> CREATOR = new z();
  
  public Comment() {}
  
  public Comment(Date paramDate, String paramString1, User paramUser, String paramString2)
  {
    super(paramDate, paramString1, paramString2, paramUser);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Comment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */