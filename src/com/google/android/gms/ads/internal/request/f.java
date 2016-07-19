package com.google.android.gms.ads.internal.request;

import com.google.android.gms.internal.fv;
import java.lang.ref.WeakReference;

@fv
public final class f
  extends j.a
{
  private final WeakReference<b.a> a;
  
  public f(b.a parama)
  {
    a = new WeakReference(parama);
  }
  
  public void a(AdResponseParcel paramAdResponseParcel)
  {
    b.a locala = (b.a)a.get();
    if (locala != null) {
      locala.a(paramAdResponseParcel);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */