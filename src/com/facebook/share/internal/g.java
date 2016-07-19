package com.facebook.share.internal;

import com.facebook.share.model.ShareOpenGraphAction;
import com.facebook.share.model.ShareOpenGraphObject;
import com.facebook.share.model.SharePhoto;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class g
{
  public static Object a(Object paramObject, a parama)
    throws JSONException
  {
    Object localObject;
    if (paramObject == null) {
      localObject = JSONObject.NULL;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return localObject;
                localObject = paramObject;
              } while ((paramObject instanceof String));
              localObject = paramObject;
            } while ((paramObject instanceof Boolean));
            localObject = paramObject;
          } while ((paramObject instanceof Double));
          localObject = paramObject;
        } while ((paramObject instanceof Float));
        localObject = paramObject;
      } while ((paramObject instanceof Integer));
      localObject = paramObject;
    } while ((paramObject instanceof Long));
    if ((paramObject instanceof SharePhoto))
    {
      if (parama != null) {
        return parama.a((SharePhoto)paramObject);
      }
      return null;
    }
    if ((paramObject instanceof ShareOpenGraphObject)) {
      return a((ShareOpenGraphObject)paramObject, parama);
    }
    if ((paramObject instanceof List)) {
      return a((List)paramObject, parama);
    }
    throw new IllegalArgumentException("Invalid object found for JSON serialization: " + paramObject.toString());
  }
  
  private static JSONArray a(List paramList, a parama)
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localJSONArray.put(a(paramList.next(), parama));
    }
    return localJSONArray;
  }
  
  public static JSONObject a(ShareOpenGraphAction paramShareOpenGraphAction, a parama)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = paramShareOpenGraphAction.c().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localJSONObject.put(str, a(paramShareOpenGraphAction.a(str), parama));
    }
    return localJSONObject;
  }
  
  private static JSONObject a(ShareOpenGraphObject paramShareOpenGraphObject, a parama)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = paramShareOpenGraphObject.c().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localJSONObject.put(str, a(paramShareOpenGraphObject.a(str), parama));
    }
    return localJSONObject;
  }
  
  public static abstract interface a
  {
    public abstract JSONObject a(SharePhoto paramSharePhoto);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */