package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class LocalizedAttribute
  extends _LocalizedAttribute
{
  public static final JsonParser.DualCreator<LocalizedAttribute> CREATOR = new LocalizedAttribute.1();
  private HashMap<String, String> f = new HashMap();
  
  public HashMap<String, String> a()
  {
    return f;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    paramParcel.readMap(f, null);
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    if (!paramJSONObject.isNull("params"))
    {
      paramJSONObject = paramJSONObject.getJSONObject("params");
      Iterator localIterator = paramJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        f.put(str, paramJSONObject.getString(str));
      }
    }
  }
  
  public boolean b()
  {
    return (d() != null) && ((d() == LocalizedAttribute.Type.PLATFORM) || (d() == LocalizedAttribute.Type.RESERVATION));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeMap(f);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.LocalizedAttribute
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */