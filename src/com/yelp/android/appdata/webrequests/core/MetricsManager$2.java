package com.yelp.android.appdata.webrequests.core;

import com.google.android.gms.analytics.c;
import com.yelp.android.analytics.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.q;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

class MetricsManager$2
  extends q<List<b>, Void, Void>
{
  MetricsManager$2(MetricsManager paramMetricsManager, Runnable[] paramArrayOfRunnable) {}
  
  protected Void a(List<b>... paramVarArgs)
  {
    synchronized (paramVarArgs[0])
    {
      String str = MetricsManager.a(paramVarArgs[0], false, null);
      try
      {
        BufferedWriter localBufferedWriter = new BufferedWriter(new FileWriter(MetricsManager.b(b)));
        localBufferedWriter.write(str);
        localBufferedWriter.close();
        paramVarArgs[0].clear();
        return null;
      }
      catch (IOException paramVarArgs)
      {
        return null;
      }
    }
  }
  
  protected void a(Void paramVoid)
  {
    paramVoid = a;
    int j = paramVoid.length;
    int i = 0;
    while (i < j)
    {
      paramVoid[i].run();
      i += 1;
    }
    if (MetricsManager.c(b)) {
      c.a(AppData.b()).i();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.core.MetricsManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */