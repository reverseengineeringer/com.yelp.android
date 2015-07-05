package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@ey
public final class cq
{
  public final String qn;
  public final String qo;
  public final List<String> qp;
  public final String qq;
  public final String qr;
  public final List<String> qs;
  public final String qt;
  
  public cq(JSONObject paramJSONObject)
  {
    qo = paramJSONObject.getString("id");
    Object localObject1 = paramJSONObject.getJSONArray("adapters");
    ArrayList localArrayList = new ArrayList(((JSONArray)localObject1).length());
    int i = 0;
    while (i < ((JSONArray)localObject1).length())
    {
      localArrayList.add(((JSONArray)localObject1).getString(i));
      i += 1;
    }
    qp = Collections.unmodifiableList(localArrayList);
    qq = paramJSONObject.optString("allocation_id", null);
    qs = cw.a(paramJSONObject, "imp_urls");
    localObject1 = paramJSONObject.optJSONObject("ad");
    if (localObject1 != null)
    {
      localObject1 = ((JSONObject)localObject1).toString();
      qn = ((String)localObject1);
      localObject1 = paramJSONObject.optJSONObject("data");
      if (localObject1 == null) {
        break label164;
      }
    }
    label164:
    for (paramJSONObject = ((JSONObject)localObject1).toString();; paramJSONObject = null)
    {
      qt = paramJSONObject;
      paramJSONObject = (JSONObject)localObject2;
      if (localObject1 != null) {
        paramJSONObject = ((JSONObject)localObject1).optString("class_name");
      }
      qr = paramJSONObject;
      return;
      localObject1 = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */