package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class cz
  extends ah<SearchResultLocalAd>
{
  public SearchResultLocalAd a(Parcel paramParcel)
  {
    SearchResultLocalAd localSearchResultLocalAd = new SearchResultLocalAd();
    localSearchResultLocalAd.readFromParcel(paramParcel);
    return localSearchResultLocalAd;
  }
  
  public SearchResultLocalAd a(JSONObject paramJSONObject)
  {
    SearchResultLocalAd localSearchResultLocalAd = new SearchResultLocalAd();
    localSearchResultLocalAd.readFromJson(paramJSONObject);
    return localSearchResultLocalAd;
  }
  
  public SearchResultLocalAd[] a(int paramInt)
  {
    return new SearchResultLocalAd[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */