package com.google.android.gms.analytics;

import java.util.SortedSet;
import java.util.TreeSet;

class y
{
  private static final y zV = new y();
  private SortedSet<y.a> zS = new TreeSet();
  private StringBuilder zT = new StringBuilder();
  private boolean zU = false;
  
  public static y eK()
  {
    return zV;
  }
  
  public void D(boolean paramBoolean)
  {
    try
    {
      zU = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(y.a parama)
  {
    try
    {
      if (!zU)
      {
        zS.add(parama);
        zT.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(parama.ordinal()));
      }
      return;
    }
    finally
    {
      parama = finally;
      throw parama;
    }
  }
  
  public String eL()
  {
    try
    {
      Object localObject1 = new StringBuilder();
      int j = 6;
      int i = 0;
      while (zS.size() > 0)
      {
        y.a locala = (y.a)zS.first();
        zS.remove(locala);
        int k = locala.ordinal();
        while (k >= j)
        {
          ((StringBuilder)localObject1).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i));
          j += 6;
          i = 0;
        }
        i += (1 << locala.ordinal() % 6);
      }
      if ((i > 0) || (((StringBuilder)localObject1).length() == 0)) {
        ((StringBuilder)localObject1).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(i));
      }
      zS.clear();
      localObject1 = ((StringBuilder)localObject1).toString();
      return (String)localObject1;
    }
    finally {}
  }
  
  public String eM()
  {
    try
    {
      if (zT.length() > 0) {
        zT.insert(0, ".");
      }
      String str = zT.toString();
      zT = new StringBuilder();
      return str;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */