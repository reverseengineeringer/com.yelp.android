package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

final class g
  implements Parcelable.Creator<ApiException>
{
  public ApiException a(Parcel paramParcel)
  {
    int i = paramParcel.readInt();
    paramParcel = paramParcel.readString();
    if (!TextUtils.isEmpty(paramParcel)) {}
    for (;;)
    {
      try
      {
        paramParcel = new JSONObject(paramParcel);
        return new ApiException(i, paramParcel, null);
      }
      catch (JSONException paramParcel)
      {
        paramParcel = null;
        continue;
      }
      paramParcel = null;
    }
  }
  
  public ApiException[] a(int paramInt)
  {
    return new ApiException[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */