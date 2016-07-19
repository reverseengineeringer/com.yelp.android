package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.internal.zzx;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

class i$a
{
  private int b;
  private ByteArrayOutputStream c = new ByteArrayOutputStream();
  
  public i$a(i parami) {}
  
  public int a()
  {
    return b;
  }
  
  public boolean a(c paramc)
  {
    zzx.zzz(paramc);
    if (b + 1 > a.q().m()) {
      return false;
    }
    Object localObject = a.a(paramc, false);
    if (localObject == null)
    {
      a.p().a(paramc, "Error formatting hit");
      return true;
    }
    localObject = ((String)localObject).getBytes();
    int j = localObject.length;
    if (j > a.q().e())
    {
      a.p().a(paramc, "Hit size exceeds the maximum size limit");
      return true;
    }
    int i = j;
    if (c.size() > 0) {
      i = j + 1;
    }
    if (i + c.size() > a.q().g()) {
      return false;
    }
    try
    {
      if (c.size() > 0) {
        c.write(i.c());
      }
      c.write((byte[])localObject);
      b += 1;
      return true;
    }
    catch (IOException paramc)
    {
      a.e("Failed to write payload when batching hits", paramc);
    }
    return true;
  }
  
  public byte[] b()
  {
    return c.toByteArray();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */