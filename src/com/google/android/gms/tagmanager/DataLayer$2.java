package com.google.android.gms.tagmanager;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;

class DataLayer$2
  implements DataLayer.c.a
{
  DataLayer$2(DataLayer paramDataLayer) {}
  
  public void h(List<DataLayer.a> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      DataLayer.a locala = (DataLayer.a)paramList.next();
      DataLayer.a(aqY, aqY.c(KP, wF));
    }
    DataLayer.a(aqY).countDown();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.DataLayer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */