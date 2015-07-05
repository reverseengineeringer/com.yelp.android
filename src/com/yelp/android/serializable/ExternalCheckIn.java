package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class ExternalCheckIn
  extends _ExternalCheckIn
  implements CheckIn
{
  public static final ah<ExternalCheckIn> CREATOR = new an();
  
  public static ArrayList<CheckIn> mixedCheckInsFromJSONArray(JSONArray paramJSONArray, Map<String, YelpBusiness> paramMap)
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
        if ((paramMap != null) && (paramMap.containsKey(((YelpCheckIn)localObject).getBusinessId()))) {
          mBusiness = ((YelpBusiness)paramMap.get(((YelpCheckIn)localObject).getBusinessId()));
        }
        localArrayList.add(localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        localObject = (ExternalCheckIn)CREATOR.parse((JSONObject)localObject);
        if ((paramMap != null) && (paramMap.containsKey(((ExternalCheckIn)localObject).getBusinessId()))) {
          mBusiness = ((YelpBusiness)paramMap.get(((ExternalCheckIn)localObject).getBusinessId()));
        }
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  public static void updateCheckIn(YelpCheckIn paramYelpCheckIn, YelpBusiness paramYelpBusiness)
  {
    mBusiness = paramYelpBusiness;
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
        if (mAppCheckInId == null)
        {
          if (mAppCheckInId != null) {
            return false;
          }
        }
        else if (!mAppCheckInId.equals(mAppCheckInId)) {
          return false;
        }
        if (mAppId != null) {
          break;
        }
      } while (mAppId == null);
      return false;
    } while (mAppId.equals(mAppId));
    return false;
  }
  
  public final String getUserName()
  {
    return getAppUserName();
  }
  
  public final String getUserPhotoUrl()
  {
    return getAppUserImageUrl();
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (mAppCheckInId == null)
    {
      i = 0;
      if (mAppId != null) {
        break label39;
      }
    }
    for (;;)
    {
      return (i + 31) * 31 + j;
      i = mAppCheckInId.hashCode();
      break;
      label39:
      j = mAppId.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ExternalCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */