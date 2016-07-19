package com.crashlytics.android.core;

import android.content.Context;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.File;

class p
{
  private static final a a = new a(null);
  private final Context b;
  private final File c;
  private o d;
  
  public p(Context paramContext, File paramFile)
  {
    b = paramContext;
    c = new File(paramFile, "log-files");
    d = a;
  }
  
  private File b(String paramString)
  {
    c();
    paramString = "crashlytics-userlog-" + paramString + ".temp";
    return new File(c, paramString);
  }
  
  private void c()
  {
    if (!c.exists()) {
      c.mkdirs();
    }
  }
  
  private boolean d()
  {
    return CommonUtils.a(b, "com.crashlytics.CollectCustomLogs", true);
  }
  
  public b a()
  {
    return d.a();
  }
  
  public void a(long paramLong, String paramString)
  {
    d.a(paramLong, paramString);
  }
  
  void a(File paramFile, int paramInt)
  {
    d.b();
    d = new t(paramFile, paramInt);
  }
  
  public void a(String paramString)
  {
    b();
    if (!d())
    {
      c.h().a("Fabric", "Preferences requested no custom logs. Aborting log file creation.");
      d = a;
      return;
    }
    a(b(paramString), 65536);
  }
  
  public void b()
  {
    d.c();
  }
  
  private static final class a
    implements o
  {
    public b a()
    {
      return null;
    }
    
    public void a(long paramLong, String paramString) {}
    
    public void b() {}
    
    public void c() {}
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */