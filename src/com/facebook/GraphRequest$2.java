package com.facebook;

import com.facebook.internal.n;
import com.facebook.internal.u;
import org.json.JSONArray;
import org.json.JSONObject;

class GraphRequest$2
  implements GraphRequest.b
{
  GraphRequest$2(GraphRequest paramGraphRequest, GraphRequest.b paramb) {}
  
  public void a(GraphResponse paramGraphResponse)
  {
    Object localObject1 = paramGraphResponse.b();
    JSONArray localJSONArray;
    label28:
    int i;
    label35:
    label65:
    Object localObject2;
    if (localObject1 != null)
    {
      localObject1 = ((JSONObject)localObject1).optJSONObject("__debug__");
      if (localObject1 == null) {
        break label181;
      }
      localJSONArray = ((JSONObject)localObject1).optJSONArray("messages");
      if (localJSONArray == null) {
        break label204;
      }
      i = 0;
      if (i >= localJSONArray.length()) {
        break label204;
      }
      localObject3 = localJSONArray.optJSONObject(i);
      if (localObject3 == null) {
        break label187;
      }
      localObject1 = ((JSONObject)localObject3).optString("message");
      if (localObject3 == null) {
        break label192;
      }
      localObject2 = ((JSONObject)localObject3).optString("type");
      label79:
      if (localObject3 == null) {
        break label198;
      }
    }
    label181:
    label187:
    label192:
    label198:
    for (Object localObject3 = ((JSONObject)localObject3).optString("link");; localObject3 = null)
    {
      if ((localObject1 != null) && (localObject2 != null))
      {
        LoggingBehavior localLoggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_INFO;
        if (((String)localObject2).equals("warning")) {
          localLoggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_WARNING;
        }
        localObject2 = localObject1;
        if (!u.a((String)localObject3)) {
          localObject2 = (String)localObject1 + " Link: " + (String)localObject3;
        }
        n.a(localLoggingBehavior, GraphRequest.a, (String)localObject2);
      }
      i += 1;
      break label35;
      localObject1 = null;
      break;
      localJSONArray = null;
      break label28;
      localObject1 = null;
      break label65;
      localObject2 = null;
      break label79;
    }
    label204:
    if (a != null) {
      a.a(paramGraphResponse);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.GraphRequest.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */