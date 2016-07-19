package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.c;
import com.google.android.gms.ads.internal.formats.f;
import com.yelp.android.g.i;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public class ft
  implements fq.a<f>
{
  private final boolean a;
  
  public ft(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  private <K, V> i<K, V> a(i<K, Future<V>> parami)
    throws InterruptedException, ExecutionException
  {
    i locali = new i();
    int i = 0;
    while (i < parami.size())
    {
      locali.put(parami.b(i), ((Future)parami.c(i)).get());
      i += 1;
    }
    return locali;
  }
  
  private void a(fq paramfq, JSONObject paramJSONObject, i<String, Future<c>> parami)
    throws JSONException
  {
    parami.put(paramJSONObject.getString("name"), paramfq.a(paramJSONObject, "image_value", a));
  }
  
  private void a(JSONObject paramJSONObject, i<String, String> parami)
    throws JSONException
  {
    parami.put(paramJSONObject.getString("name"), paramJSONObject.getString("string_value"));
  }
  
  public f b(fq paramfq, JSONObject paramJSONObject)
    throws JSONException, InterruptedException, ExecutionException
  {
    i locali1 = new i();
    i locali2 = new i();
    hs localhs = paramfq.b(paramJSONObject);
    JSONArray localJSONArray = paramJSONObject.getJSONArray("custom_assets");
    int i = 0;
    if (i < localJSONArray.length())
    {
      JSONObject localJSONObject = localJSONArray.getJSONObject(i);
      String str = localJSONObject.getString("type");
      if ("string".equals(str)) {
        a(localJSONObject, locali2);
      }
      for (;;)
      {
        i += 1;
        break;
        if ("image".equals(str)) {
          a(paramfq, localJSONObject, locali1);
        } else {
          gz.d("Unknown custom asset type: " + str);
        }
      }
    }
    return new f(paramJSONObject.getString("custom_template_id"), a(locali1), locali2, (a)localhs.get());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */