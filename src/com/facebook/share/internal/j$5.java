package com.facebook.share.internal;

import com.facebook.FacebookException;
import com.facebook.internal.o.a;
import com.facebook.share.model.SharePhoto;
import java.util.ArrayList;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

final class j$5
  implements g.a
{
  j$5(UUID paramUUID, ArrayList paramArrayList) {}
  
  public JSONObject a(SharePhoto paramSharePhoto)
  {
    Object localObject = j.a(a, paramSharePhoto);
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      return (JSONObject)localObject;
      b.add(localObject);
      JSONObject localJSONObject = new JSONObject();
      try
      {
        localJSONObject.put("url", ((o.a)localObject).a());
        localObject = localJSONObject;
        if (!paramSharePhoto.c()) {
          continue;
        }
        localJSONObject.put("user_generated", true);
        return localJSONObject;
      }
      catch (JSONException paramSharePhoto)
      {
        throw new FacebookException("Unable to attach images", paramSharePhoto);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.j.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */