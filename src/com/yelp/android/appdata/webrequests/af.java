package com.yelp.android.appdata.webrequests;

import android.os.Parcelable.Creator;
import org.json.JSONObject;

abstract interface af
  extends Parcelable.Creator<BusinessSearchRequest.BusinessSearchResponse>
{
  public abstract BusinessSearchRequest.BusinessSearchResponse a(JSONObject paramJSONObject, String paramString, BusinessSearchRequest.FormatMode paramFormatMode);
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */