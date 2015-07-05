package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class cy
  extends JsonParser.DualCreator<SearchResultAnnotation>
{
  public SearchResultAnnotation a(Parcel paramParcel)
  {
    SearchResultAnnotation localSearchResultAnnotation = new SearchResultAnnotation();
    localSearchResultAnnotation.readFromParcel(paramParcel);
    return localSearchResultAnnotation;
  }
  
  public SearchResultAnnotation a(JSONObject paramJSONObject)
  {
    SearchResultAnnotation localSearchResultAnnotation = new SearchResultAnnotation();
    localSearchResultAnnotation.readFromJson(paramJSONObject);
    return localSearchResultAnnotation;
  }
  
  public SearchResultAnnotation[] a(int paramInt)
  {
    return new SearchResultAnnotation[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */