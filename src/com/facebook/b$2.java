package com.facebook;

import android.util.Log;
import com.facebook.internal.u;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

class b$2
  implements GraphRequest.b
{
  b$2(b paramb, AtomicBoolean paramAtomicBoolean, Set paramSet1, Set paramSet2) {}
  
  public void a(GraphResponse paramGraphResponse)
  {
    paramGraphResponse = paramGraphResponse.b();
    if (paramGraphResponse == null) {}
    do
    {
      return;
      paramGraphResponse = paramGraphResponse.optJSONArray("data");
    } while (paramGraphResponse == null);
    a.set(true);
    int i = 0;
    label31:
    Object localObject;
    if (i < paramGraphResponse.length())
    {
      localObject = paramGraphResponse.optJSONObject(i);
      if (localObject != null) {
        break label58;
      }
    }
    for (;;)
    {
      i += 1;
      break label31;
      break;
      label58:
      String str = ((JSONObject)localObject).optString("permission");
      localObject = ((JSONObject)localObject).optString("status");
      if ((!u.a(str)) && (!u.a((String)localObject)))
      {
        localObject = ((String)localObject).toLowerCase(Locale.US);
        if (((String)localObject).equals("granted")) {
          b.add(str);
        } else if (((String)localObject).equals("declined")) {
          c.add(str);
        } else {
          Log.w("AccessTokenManager", "Unexpected status: " + (String)localObject);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.b.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */