package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzrs.a;
import com.google.android.gms.internal.zzrs.b;
import java.util.Set;

class ab$2
  implements ab.a
{
  ab$2(ab paramab) {}
  
  public void a(zzrs.b paramb, Set<zzrs.a> paramSet1, Set<zzrs.a> paramSet2, z paramz)
  {
    paramSet1.addAll(paramb.c());
    paramSet2.addAll(paramb.d());
    paramz.e().a(paramb.c(), paramb.f());
    paramz.f().a(paramb.d(), paramb.g());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ab.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */