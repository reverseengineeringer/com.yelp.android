package com.yelp.android.aa;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class j$a
{
  private static final String a = System.getProperty("http.agent");
  private static final Map<String, List<i>> b;
  private boolean c = true;
  private boolean d = true;
  private Map<String, List<i>> e = b;
  private boolean f = e.containsKey(a);
  
  static
  {
    HashMap localHashMap = new HashMap(2);
    if (!TextUtils.isEmpty(a)) {
      localHashMap.put("User-Agent", Collections.singletonList(new j.b(a)));
    }
    localHashMap.put("Accept-Encoding", Collections.singletonList(new j.b("identity")));
    b = Collections.unmodifiableMap(localHashMap);
  }
  
  public j a()
  {
    c = true;
    return new j(e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.j.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */