package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.s;
import java.util.WeakHashMap;

@fv
public final class ge
{
  private WeakHashMap<Context, a> a = new WeakHashMap();
  
  public gd a(Context paramContext)
  {
    Object localObject = (a)a.get(paramContext);
    if ((localObject != null) && (!((a)localObject).a()) && (((Boolean)ao.al.c()).booleanValue())) {}
    for (localObject = new gd.a(paramContext, b).a();; localObject = new gd.a(paramContext).a())
    {
      a.put(paramContext, new a((gd)localObject));
      return (gd)localObject;
    }
  }
  
  private class a
  {
    public final long a = s.i().a();
    public final gd b;
    
    public a(gd paramgd)
    {
      b = paramgd;
    }
    
    public boolean a()
    {
      long l = a;
      return ((Long)ao.am.c()).longValue() + l < s.i().a();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */