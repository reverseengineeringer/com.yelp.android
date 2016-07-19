package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _LocalIssueResponse
  implements Parcelable
{
  protected LocalIssue a;
  
  public LocalIssue a()
  {
    return a;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((LocalIssue)paramParcel.readParcelable(LocalIssue.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("weekly_issue")) {
      a = ((LocalIssue)LocalIssue.CREATOR.parse(paramJSONObject.getJSONObject("weekly_issue")));
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
    } while (paramObject.getClass() != getClass());
    paramObject = (_LocalIssueResponse)paramObject;
    return new b().a(a, a).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._LocalIssueResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */