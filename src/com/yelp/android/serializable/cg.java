package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class cg
  extends JsonParser.DualCreator<Ranking>
{
  public Ranking a(Parcel paramParcel)
  {
    Ranking localRanking = new Ranking();
    localRanking.readFromParcel(paramParcel);
    return localRanking;
  }
  
  public Ranking a(JSONObject paramJSONObject)
  {
    Ranking localRanking = new Ranking();
    localRanking.readFromJson(paramJSONObject);
    return localRanking;
  }
  
  public Ranking[] a(int paramInt)
  {
    return new Ranking[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */