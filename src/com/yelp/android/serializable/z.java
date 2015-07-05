package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class z
  extends JsonParser.DualCreator<Comment>
{
  public Comment a(Parcel paramParcel)
  {
    Comment localComment = new Comment();
    localComment.readFromParcel(paramParcel);
    return localComment;
  }
  
  public Comment a(JSONObject paramJSONObject)
  {
    Comment localComment = new Comment();
    localComment.readFromJson(paramJSONObject);
    return localComment;
  }
  
  public Comment[] a(int paramInt)
  {
    return new Comment[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */