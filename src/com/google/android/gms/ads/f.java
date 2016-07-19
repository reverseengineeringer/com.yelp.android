package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.client.d;
import com.yelp.android.be.b;

public final class f
{
  private final d a;
  
  public f(Context paramContext)
  {
    a = new d(paramContext);
  }
  
  public void a()
  {
    a.a();
  }
  
  public void a(a parama)
  {
    a.a(parama);
    if ((parama != null) && ((parama instanceof com.google.android.gms.ads.internal.client.a))) {
      a.a((com.google.android.gms.ads.internal.client.a)parama);
    }
    while (parama != null) {
      return;
    }
    a.a(null);
  }
  
  public void a(c paramc)
  {
    a.a(paramc.a());
  }
  
  public void a(b paramb)
  {
    a.a(paramb);
  }
  
  public void a(String paramString)
  {
    a.a(paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public void b(String paramString)
  {
    a.b(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */