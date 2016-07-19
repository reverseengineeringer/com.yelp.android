package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.ib;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class n$4
  implements bz
{
  n$4(CountDownLatch paramCountDownLatch) {}
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    gz.d("Adapter returned an ad, but assets substitution failed");
    a.countDown();
    paramib.destroy();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.n.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */