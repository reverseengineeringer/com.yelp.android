package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Passport
  implements Parcelable
{
  protected List<String> a;
  protected Photo b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected int g;
  protected int h;
  protected int i;
  protected int j;
  protected int[] k;
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.createStringArrayList();
    b = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = paramParcel.readInt();
    h = paramParcel.readInt();
    i = paramParcel.readInt();
    j = paramParcel.readInt();
    k = paramParcel.createIntArray();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("disabled_features")) {}
    for (a = JsonUtil.getStringList(paramJSONObject.optJSONArray("disabled_features"));; a = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("profile_photo")) {
        b = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("profile_photo")));
      }
      if (!paramJSONObject.isNull("id")) {
        c = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("name")) {
        d = paramJSONObject.optString("name");
      }
      if (!paramJSONObject.isNull("first_name")) {
        e = paramJSONObject.optString("first_name");
      }
      if (!paramJSONObject.isNull("last_initial")) {
        f = paramJSONObject.optString("last_initial");
      }
      g = paramJSONObject.optInt("review_count");
      h = paramJSONObject.optInt("friend_count");
      i = paramJSONObject.optInt("video_count");
      j = paramJSONObject.optInt("business_photo_count");
      if (paramJSONObject.isNull("elite_years")) {
        break;
      }
      paramJSONObject = paramJSONObject.getJSONArray("elite_years");
      int n = paramJSONObject.length();
      k = new int[n];
      int m = 0;
      while (m < n)
      {
        k[m] = paramJSONObject.getInt(m);
        m += 1;
      }
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
    paramObject = (_Passport)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a();
  }
  
  public int j_()
  {
    return g;
  }
  
  public JSONObject k()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    JSONArray localJSONArray;
    Object localObject;
    if (a != null)
    {
      localJSONArray = new JSONArray();
      localObject = a.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put((String)((Iterator)localObject).next());
      }
      localJSONObject.put("disabled_features", localJSONArray);
    }
    if (b != null) {
      localJSONObject.put("profile_photo", b.w());
    }
    if (c != null) {
      localJSONObject.put("id", c);
    }
    if (d != null) {
      localJSONObject.put("name", d);
    }
    if (e != null) {
      localJSONObject.put("first_name", e);
    }
    if (f != null) {
      localJSONObject.put("last_initial", f);
    }
    localJSONObject.put("review_count", g);
    localJSONObject.put("friend_count", h);
    localJSONObject.put("video_count", i);
    localJSONObject.put("business_photo_count", j);
    if (k != null)
    {
      localJSONArray = new JSONArray();
      localObject = k;
      int n = localObject.length;
      int m = 0;
      while (m < n)
      {
        localJSONArray.put(localObject[m]);
        m += 1;
      }
      localJSONObject.put("elite_years", localJSONArray);
    }
    return localJSONObject;
  }
  
  public int k_()
  {
    return h;
  }
  
  public int[] l()
  {
    return k;
  }
  
  public int l_()
  {
    return j;
  }
  
  public String m()
  {
    return f;
  }
  
  public int m_()
  {
    return i;
  }
  
  public String n()
  {
    return e;
  }
  
  public String o()
  {
    return d;
  }
  
  public String p()
  {
    return c;
  }
  
  public Photo q()
  {
    return b;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(a);
    paramParcel.writeParcelable(b, 0);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
    paramParcel.writeValue(f);
    paramParcel.writeInt(g);
    paramParcel.writeInt(h);
    paramParcel.writeInt(i);
    paramParcel.writeInt(j);
    paramParcel.writeIntArray(k);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Passport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */