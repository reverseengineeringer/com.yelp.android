package com.google.android.gms.internal;

import android.os.AsyncTask;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

final class j$1
  extends AsyncTask<Void, Void, Void>
{
  protected Void a(Void... paramVarArgs)
  {
    try
    {
      j.A().start();
      j.B().countDown();
      return null;
    }
    catch (GooglePlayServicesNotAvailableException paramVarArgs)
    {
      for (;;)
      {
        j.a(true);
        j.a(null);
      }
    }
    catch (IOException paramVarArgs)
    {
      for (;;)
      {
        j.a(null);
      }
    }
    catch (GooglePlayServicesRepairableException paramVarArgs)
    {
      for (;;)
      {
        j.a(null);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.j.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */