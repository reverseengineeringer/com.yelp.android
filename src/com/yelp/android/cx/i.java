package com.yelp.android.cx;

import com.yelp.android.cw.c;
import com.yelp.android.cw.d;
import com.yelp.android.db.g;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class i
  extends a<g>
{
  protected i()
  {
    super(true);
  }
  
  protected final void a(HttpURLConnection paramHttpURLConnection, c paramc, d<g> paramd)
    throws Exception
  {
    Object localObject = paramc.e();
    int j = paramc.h();
    String str = paramc.i();
    Map localMap1 = paramc.j();
    Map localMap2 = paramc.k();
    paramd = new JSONObject();
    if ((localObject != null) && (localObject.length > 0))
    {
      localObject = new JSONArray();
      paramc = paramc.e();
      int k = paramc.length;
      int i = 0;
      while (i < k)
      {
        ((JSONArray)localObject).put(paramc[i]);
        i += 1;
      }
      paramd.put("to", localObject);
    }
    paramd.put("toChannel", j);
    paramd.put("eventType", str);
    if ((localMap1 != null) && (localMap1.size() > 0))
    {
      paramc = m.a(localMap1);
      if (paramc != null) {
        paramd.put("content", paramc);
      }
    }
    if ((localMap1 != null) && (localMap1.size() > 0))
    {
      paramc = m.a(localMap2);
      if (paramc != null) {
        paramd.put("push", paramc);
      }
    }
    paramc = paramd.toString().getBytes("UTF-8");
    paramHttpURLConnection.setRequestMethod("POST");
    paramHttpURLConnection.setDoOutput(true);
    paramHttpURLConnection.setRequestProperty("Content-Type", "application/json");
    paramHttpURLConnection.setRequestProperty("Content-Length", String.valueOf(paramc.length));
    b(paramHttpURLConnection);
    paramHttpURLConnection = paramHttpURLConnection.getOutputStream();
    paramHttpURLConnection.write(paramc);
    paramHttpURLConnection.flush();
    paramHttpURLConnection.close();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cx.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */