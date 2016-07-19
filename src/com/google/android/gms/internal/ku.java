package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.measurement.f;
import java.util.HashMap;
import java.util.Map;

public final class ku
  extends f<ku>
{
  public String a;
  public boolean b;
  
  public String a()
  {
    return a;
  }
  
  public void a(ku paramku)
  {
    if (!TextUtils.isEmpty(a)) {
      paramku.a(a);
    }
    if (b) {
      paramku.a(b);
    }
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public boolean b()
  {
    return b;
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("description", a);
    localHashMap.put("fatal", Boolean.valueOf(b));
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ku
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */