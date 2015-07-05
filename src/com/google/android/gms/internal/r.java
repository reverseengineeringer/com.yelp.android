package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.auth.AccountChangeEventsRequest;
import com.google.android.gms.auth.AccountChangeEventsResponse;

public abstract interface r
  extends IInterface
{
  public abstract Bundle a(String paramString, Bundle paramBundle);
  
  public abstract Bundle a(String paramString1, String paramString2, Bundle paramBundle);
  
  public abstract AccountChangeEventsResponse a(AccountChangeEventsRequest paramAccountChangeEventsRequest);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */