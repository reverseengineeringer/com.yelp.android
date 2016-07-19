package com.yelp.android.cn;

import android.os.SystemClock;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.ae;
import com.yelp.android.appdata.webrequests.ck;
import com.yelp.android.appdata.webrequests.cl;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.dw;
import com.yelp.android.appdata.webrequests.dy;
import java.util.Map;

public class b
  extends c
{
  private long e;
  private long f;
  private long g;
  private long h;
  private long i;
  private long j;
  private int k;
  
  public b(MetricsManager paramMetricsManager, com.yelp.android.analytics.iris.a parama)
  {
    super(paramMetricsManager, parama);
  }
  
  public void a(ApiRequest paramApiRequest)
  {
    for (;;)
    {
      try
      {
        if ((paramApiRequest instanceof cl))
        {
          e = (SystemClock.elapsedRealtime() - a);
          k += 1;
          return;
        }
        if ((paramApiRequest instanceof MediaRequest))
        {
          f = (SystemClock.elapsedRealtime() - a);
          continue;
        }
        if (!(paramApiRequest instanceof dw)) {
          break label83;
        }
      }
      finally {}
      g = (SystemClock.elapsedRealtime() - a);
      continue;
      label83:
      if ((paramApiRequest instanceof ck)) {
        h = (SystemClock.elapsedRealtime() - a);
      } else if ((paramApiRequest instanceof dy)) {
        i = (SystemClock.elapsedRealtime() - a);
      } else if ((paramApiRequest instanceof ae)) {
        j = (SystemClock.elapsedRealtime() - a);
      }
    }
  }
  
  protected Map<String, Object> d()
  {
    com.yelp.android.g.a locala = new com.yelp.android.g.a();
    if (e > 0L) {
      locala.put("interval_local_ads", Long.valueOf(e));
    }
    if (f > 0L) {
      locala.put("interval_media", Long.valueOf(f));
    }
    if (g > 0L) {
      locala.put("interval_highlights", Long.valueOf(g));
    }
    if (h > 0L) {
      locala.put("interval_tips", Long.valueOf(h));
    }
    if (i > 0L) {
      locala.put("interval_reviews", Long.valueOf(i));
    }
    if (j > 0L) {
      locala.put("interval_regular", Long.valueOf(j));
    }
    return locala;
  }
  
  public boolean e()
  {
    return (k >= 5) && (f == 0L);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cn.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */