package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.android.appdata.AppData;
import com.yelp.android.services.f;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class Ranking
  extends _Ranking
  implements DisplayableAsUserBadge
{
  public static final JsonParser.DualCreator<Ranking> CREATOR = new Ranking.1();
  private String m;
  private String n;
  private boolean o;
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    m = paramParcel.readString();
    o = paramParcel.createBooleanArray()[0];
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    paramJSONObject = AppData.b();
    int i = n();
    m = paramJSONObject.getString(2131165618, new Object[] { Integer.valueOf(i) });
    n = paramJSONObject.getString(2131165619, new Object[] { Integer.valueOf(i) });
    o = f.a(l());
  }
  
  public boolean h()
  {
    return o;
  }
  
  public String j()
  {
    return m;
  }
  
  public int j_()
  {
    return g;
  }
  
  public String k()
  {
    return n;
  }
  
  public int k_()
  {
    return f;
  }
  
  public int l_()
  {
    return i;
  }
  
  public int m_()
  {
    return h;
  }
  
  public int n_()
  {
    return i + h;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(m);
    paramParcel.writeBooleanArray(new boolean[] { o });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Ranking
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */