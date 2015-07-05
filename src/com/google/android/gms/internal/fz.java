package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

@ey
public class fz
{
  private final Object mH = new Object();
  private boolean uQ = false;
  private final ga vL;
  private final LinkedList<fz.a> vM;
  private final String vN;
  private final String vO;
  private long vP = -1L;
  private long vQ = -1L;
  private long vR = -1L;
  private long vS = 0L;
  private long vT = -1L;
  private long vU = -1L;
  
  public fz(ga paramga, String paramString1, String paramString2)
  {
    vL = paramga;
    vN = paramString1;
    vO = paramString2;
    vM = new LinkedList();
  }
  
  public fz(String paramString1, String paramString2)
  {
    this(ga.dc(), paramString1, paramString2);
  }
  
  public void cW()
  {
    synchronized (mH)
    {
      if ((vU != -1L) && (vQ == -1L))
      {
        vQ = SystemClock.elapsedRealtime();
        vL.a(this);
      }
      ga localga = vL;
      ga.dh().cW();
      return;
    }
  }
  
  public void cX()
  {
    synchronized (mH)
    {
      if (vU != -1L)
      {
        Object localObject2 = new fz.a();
        ((fz.a)localObject2).db();
        vM.add(localObject2);
        vS += 1L;
        localObject2 = vL;
        ga.dh().cX();
        vL.a(this);
      }
      return;
    }
  }
  
  public void cY()
  {
    synchronized (mH)
    {
      if ((vU != -1L) && (!vM.isEmpty()))
      {
        fz.a locala = (fz.a)vM.getLast();
        if (locala.cZ() == -1L)
        {
          locala.da();
          vL.a(this);
        }
      }
      return;
    }
  }
  
  public void e(av paramav)
  {
    synchronized (mH)
    {
      vT = SystemClock.elapsedRealtime();
      ga localga = vL;
      ga.dh().b(paramav, vT);
      return;
    }
  }
  
  public void j(long paramLong)
  {
    synchronized (mH)
    {
      vU = paramLong;
      if (vU != -1L) {
        vL.a(this);
      }
      return;
    }
  }
  
  public void k(long paramLong)
  {
    synchronized (mH)
    {
      if (vU != -1L)
      {
        vP = paramLong;
        vL.a(this);
      }
      return;
    }
  }
  
  public Bundle toBundle()
  {
    ArrayList localArrayList;
    synchronized (mH)
    {
      Bundle localBundle1 = new Bundle();
      localBundle1.putString("seq_num", vN);
      localBundle1.putString("slotid", vO);
      localBundle1.putBoolean("ismediation", uQ);
      localBundle1.putLong("treq", vT);
      localBundle1.putLong("tresponse", vU);
      localBundle1.putLong("timp", vQ);
      localBundle1.putLong("tload", vR);
      localBundle1.putLong("pcc", vS);
      localBundle1.putLong("tfetch", vP);
      localArrayList = new ArrayList();
      Iterator localIterator = vM.iterator();
      if (localIterator.hasNext()) {
        localArrayList.add(((fz.a)localIterator.next()).toBundle());
      }
    }
    localBundle2.putParcelableArrayList("tclick", localArrayList);
    return localBundle2;
  }
  
  public void v(boolean paramBoolean)
  {
    synchronized (mH)
    {
      if (vU != -1L)
      {
        vR = SystemClock.elapsedRealtime();
        if (!paramBoolean)
        {
          vQ = vR;
          vL.a(this);
        }
      }
      return;
    }
  }
  
  public void w(boolean paramBoolean)
  {
    synchronized (mH)
    {
      if (vU != -1L)
      {
        uQ = paramBoolean;
        vL.a(this);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */