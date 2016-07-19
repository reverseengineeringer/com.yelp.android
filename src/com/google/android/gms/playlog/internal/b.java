package com.google.android.gms.playlog.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.lu.d;
import java.util.ArrayList;

public class b
{
  private final ArrayList<a> a = new ArrayList();
  private int b;
  
  public b()
  {
    this(100);
  }
  
  public b(int paramInt)
  {
    b = paramInt;
  }
  
  private void f()
  {
    while (c() > d()) {
      a.remove(0);
    }
  }
  
  public ArrayList<a> a()
  {
    return a;
  }
  
  public void a(PlayLoggerContext paramPlayLoggerContext, LogEvent paramLogEvent)
  {
    a.add(new a(paramPlayLoggerContext, paramLogEvent, null));
    f();
  }
  
  public void b()
  {
    a.clear();
  }
  
  public int c()
  {
    return a.size();
  }
  
  public int d()
  {
    return b;
  }
  
  public boolean e()
  {
    return a.isEmpty();
  }
  
  public static class a
  {
    public final PlayLoggerContext a;
    public final LogEvent b;
    public final lu.d c;
    
    private a(PlayLoggerContext paramPlayLoggerContext, LogEvent paramLogEvent)
    {
      a = ((PlayLoggerContext)zzx.zzz(paramPlayLoggerContext));
      b = ((LogEvent)zzx.zzz(paramLogEvent));
      c = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.playlog.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */