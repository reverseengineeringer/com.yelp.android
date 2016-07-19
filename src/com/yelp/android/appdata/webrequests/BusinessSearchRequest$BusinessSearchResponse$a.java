package com.yelp.android.appdata.webrequests;

import android.os.Parcelable.Creator;
import org.json.JSONException;
import org.json.JSONObject;

abstract interface BusinessSearchRequest$BusinessSearchResponse$a
  extends Parcelable.Creator<BusinessSearchRequest.BusinessSearchResponse>
{
  public abstract BusinessSearchRequest.BusinessSearchResponse a(JSONObject paramJSONObject, String paramString, BusinessSearchRequest.FormatMode paramFormatMode)
    throws JSONException;
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessSearchRequest.BusinessSearchResponse.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */