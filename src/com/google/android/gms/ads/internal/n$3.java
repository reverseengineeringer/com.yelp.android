package com.google.android.gms.ads.internal;

import android.view.View;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.ib;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

final class n$3
  implements bz
{
  n$3(CountDownLatch paramCountDownLatch) {}
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    a.countDown();
    paramib = paramib.b();
    if (paramib == null) {
      return;
    }
    paramib.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.n.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */