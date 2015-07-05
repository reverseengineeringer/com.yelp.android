package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bi
  extends JsonParser.DualCreator<Movie>
{
  public Movie a(Parcel paramParcel)
  {
    Movie localMovie = new Movie();
    localMovie.readFromParcel(paramParcel);
    return localMovie;
  }
  
  public Movie a(JSONObject paramJSONObject)
  {
    Movie localMovie = new Movie();
    localMovie.readFromJson(paramJSONObject);
    return localMovie;
  }
  
  public Movie[] a(int paramInt)
  {
    return new Movie[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */