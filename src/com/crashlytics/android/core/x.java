package com.crashlytics.android.core;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

class x
  implements u
{
  private final File a;
  private final Map<String, String> b;
  
  public x(File paramFile)
  {
    this(paramFile, Collections.emptyMap());
  }
  
  public x(File paramFile, Map<String, String> paramMap)
  {
    a = paramFile;
    b = new HashMap(paramMap);
    if (a.length() == 0L) {
      b.putAll(v.a);
    }
  }
  
  public boolean a()
  {
    c.h().a("Fabric", "Removing report at " + a.getPath());
    return a.delete();
  }
  
  public String b()
  {
    return d().getName();
  }
  
  public String c()
  {
    String str = b();
    return str.substring(0, str.lastIndexOf('.'));
  }
  
  public File d()
  {
    return a;
  }
  
  public Map<String, String> e()
  {
    return Collections.unmodifiableMap(b);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */