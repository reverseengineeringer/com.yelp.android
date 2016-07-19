package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _SurveyQuestion
  implements Parcelable
{
  protected List<SurveyAnswer> a;
  protected String b;
  protected String c;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null)
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((SurveyAnswer)localIterator.next()).a());
      }
      localJSONObject.put("answers", localJSONArray);
    }
    if (b != null) {
      localJSONObject.put("question", b);
    }
    if (c != null) {
      localJSONObject.put("question_identifier", c);
    }
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(SurveyAnswer.class.getClassLoader());
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("answers")) {}
    for (a = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("answers"), SurveyAnswer.CREATOR);; a = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("question")) {
        b = paramJSONObject.optString("question");
      }
      if (!paramJSONObject.isNull("question_identifier")) {
        c = paramJSONObject.optString("question_identifier");
      }
      return;
    }
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return b;
  }
  
  public List<SurveyAnswer> d()
  {
    return a;
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
    paramObject = (_SurveyQuestion)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._SurveyQuestion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */