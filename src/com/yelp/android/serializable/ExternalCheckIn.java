package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ExternalCheckIn
  extends _ExternalCheckIn
  implements CheckIn
{
  public static final a<ExternalCheckIn> CREATOR = new ExternalCheckIn.1();
  
  public static ArrayList<CheckIn> a(JSONArray paramJSONArray, Map<String, YelpBusiness> paramMap)
    throws JSONException
  {
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    if (i < j)
    {
      Object localObject = paramJSONArray.getJSONObject(i);
      if (((JSONObject)localObject).has("id"))
      {
        localObject = (YelpCheckIn)YelpCheckIn.CREATOR.parse((JSONObject)localObject);
        if ((paramMap != null) && (paramMap.containsKey(((YelpCheckIn)localObject).k()))) {
          n = ((YelpBusiness)paramMap.get(((YelpCheckIn)localObject).k()));
        }
        localArrayList.add(localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        localObject = (ExternalCheckIn)CREATOR.parse((JSONObject)localObject);
        if ((paramMap != null) && (paramMap.containsKey(((ExternalCheckIn)localObject).b()))) {
          k = ((YelpBusiness)paramMap.get(((ExternalCheckIn)localObject).b()));
        }
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  public static void a(YelpCheckIn paramYelpCheckIn, YelpBusiness paramYelpBusiness)
  {
    n = paramYelpBusiness;
  }
  
  public final String a()
  {
    return i();
  }
  
  public final String c()
  {
    return h();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof ExternalCheckIn)) {
          return false;
        }
        paramObject = (ExternalCheckIn)paramObject;
        if (d == null)
        {
          if (d != null) {
            return false;
          }
        }
        else if (!d.equals(d)) {
          return false;
        }
        if (c != null) {
          break;
        }
      } while (c == null);
      return false;
    } while (c.equals(c));
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (d == null)
    {
      i = 0;
      if (c != null) {
        break label39;
      }
    }
    for (;;)
    {
      return (i + 31) * 31 + j;
      i = d.hashCode();
      break;
      label39:
      j = c.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ExternalCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */