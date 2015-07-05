package com.yelp.android.av;

import com.google.android.gms.analytics.GoogleAnalytics;
import com.yelp.android.analytics.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.aa;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

class c
  extends aa<List<b>, Void, Void>
{
  c(a parama, Runnable[] paramArrayOfRunnable) {}
  
  protected Void a(List<b>... paramVarArgs)
  {
    synchronized (paramVarArgs[0])
    {
      String str = a.a(paramVarArgs[0], false, null);
      try
      {
        BufferedWriter localBufferedWriter = new BufferedWriter(new FileWriter(a.b(b)));
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
    if (a.c(b)) {
      GoogleAnalytics.getInstance(AppData.b()).dispatchLocalHits();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.av.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */