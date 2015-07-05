package com.google.android.gms.internal;

import com.google.android.gms.common.api.BaseImplementation.b;
import com.google.android.gms.common.api.Status;

class ke$a
  extends kb
{
  private final BaseImplementation.b<Status> Ea;
  
  public ke$a(BaseImplementation.b<Status> paramb)
  {
    Ea = paramb;
  }
  
  public void aI(int paramInt)
  {
    Ea.b(new Status(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ke.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */