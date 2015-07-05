package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;

@ey
public class ak
{
  private final Object mH = new Object();
  private final int np;
  private final int nq;
  private final int nr;
  private final ap ns;
  private ArrayList<String> nt = new ArrayList();
  private int nu = 0;
  private int nv = 0;
  private int nw = 0;
  private int nx;
  private String ny = "";
  
  public ak(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    np = paramInt1;
    nq = paramInt2;
    nr = paramInt3;
    ns = new ap(paramInt4);
  }
  
  private String a(ArrayList<String> paramArrayList, int paramInt)
  {
    if (paramArrayList.isEmpty()) {
      paramArrayList = "";
    }
    Object localObject;
    do
    {
      return paramArrayList;
      localObject = new StringBuffer();
      paramArrayList = paramArrayList.iterator();
      do
      {
        if (!paramArrayList.hasNext()) {
          break;
        }
        ((StringBuffer)localObject).append((String)paramArrayList.next());
        ((StringBuffer)localObject).append(' ');
      } while (((StringBuffer)localObject).length() <= paramInt);
      ((StringBuffer)localObject).deleteCharAt(((StringBuffer)localObject).length() - 1);
      localObject = ((StringBuffer)localObject).toString();
      paramArrayList = (ArrayList<String>)localObject;
    } while (((String)localObject).length() < paramInt);
    return ((String)localObject).substring(0, paramInt);
  }
  
  private void j(String paramString)
  {
    if ((paramString == null) || (paramString.length() < nr)) {
      return;
    }
    synchronized (mH)
    {
      nt.add(paramString);
      nu += paramString.length();
      return;
    }
  }
  
  int a(int paramInt1, int paramInt2)
  {
    return np * paramInt1 + nq * paramInt2;
  }
  
  public boolean aS()
  {
    for (;;)
    {
      synchronized (mH)
      {
        if (nw == 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public String aT()
  {
    return ny;
  }
  
  public void aU()
  {
    synchronized (mH)
    {
      nx -= 100;
      return;
    }
  }
  
  public void aV()
  {
    synchronized (mH)
    {
      nw -= 1;
      return;
    }
  }
  
  public void aW()
  {
    synchronized (mH)
    {
      nw += 1;
      return;
    }
  }
  
  public void aX()
  {
    synchronized (mH)
    {
      int i = a(nu, nv);
      if (i > nx)
      {
        nx = i;
        ny = ns.a(nt);
      }
      return;
    }
  }
  
  int aY()
  {
    return nu;
  }
  
  public void c(int paramInt)
  {
    nv = paramInt;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ak)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (ak)paramObject;
    } while ((((ak)paramObject).aT() == null) || (!((ak)paramObject).aT().equals(aT())));
    return true;
  }
  
  public int getScore()
  {
    return nx;
  }
  
  public void h(String arg1)
  {
    j(???);
    synchronized (mH)
    {
      if (nw < 0) {
        gr.S("ActivityContent: negative number of WebViews.");
      }
      aX();
      return;
    }
  }
  
  public int hashCode()
  {
    return aT().hashCode();
  }
  
  public void i(String paramString)
  {
    j(paramString);
  }
  
  public String toString()
  {
    return "ActivityContent fetchId: " + nv + " score:" + nx + " total_length:" + nu + "\n text: " + a(nt, 200) + "\n signture: " + ny;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */