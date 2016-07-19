package com.google.android.gms.analytics;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.a;
import com.google.android.gms.analytics.internal.aa;
import com.google.android.gms.analytics.internal.ag;
import com.google.android.gms.analytics.internal.t;
import com.google.android.gms.analytics.internal.y;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.iq;
import com.google.android.gms.measurement.d;
import com.google.android.gms.measurement.g;
import com.google.android.gms.measurement.j;
import java.util.List;
import java.util.ListIterator;

public class h
  extends g<h>
{
  private final t b;
  private boolean c;
  
  public h(t paramt)
  {
    super(paramt.h(), paramt.d());
    b = paramt;
  }
  
  protected void a(d paramd)
  {
    paramd = (iq)paramd.b(iq.class);
    if (TextUtils.isEmpty(paramd.b())) {
      paramd.b(b.p().b());
    }
    if ((c) && (TextUtils.isEmpty(paramd.d())))
    {
      a locala = b.o();
      paramd.d(locala.c());
      paramd.a(locala.b());
    }
  }
  
  public void a(String paramString)
  {
    zzx.zzcM(paramString);
    b(paramString);
    n().add(new i(b, paramString));
  }
  
  public void b(String paramString)
  {
    paramString = i.a(paramString);
    ListIterator localListIterator = n().listIterator();
    while (localListIterator.hasNext()) {
      if (paramString.equals(((j)localListIterator.next()).a())) {
        localListIterator.remove();
      }
    }
  }
  
  public void c(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  t k()
  {
    return b;
  }
  
  public d l()
  {
    d locald = m().a();
    locald.a(b.q().c());
    locald.a(b.r().b());
    b(locald);
    return locald;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */