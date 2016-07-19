package com.google.android.gms.ads.internal.request;

import android.content.Context;
import com.google.android.gms.internal.ah;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.fw;
import com.google.android.gms.internal.fx;
import com.google.android.gms.internal.hu;

@fv
public final class c$a
  extends c
{
  private final Context a;
  
  public c$a(Context paramContext, hu<AdRequestInfoParcel> paramhu, b.a parama)
  {
    super(paramhu, parama);
    a = paramContext;
  }
  
  public void a() {}
  
  public i b()
  {
    ah localah = new ah((String)ao.b.c());
    return fx.a(a, localah, fw.a());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */