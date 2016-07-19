package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

@fv
public class gs
{
  private final gt a;
  private final LinkedList<a> b;
  private final Object c = new Object();
  private final String d;
  private final String e;
  private long f = -1L;
  private long g = -1L;
  private boolean h = false;
  private long i = -1L;
  private long j = 0L;
  private long k = -1L;
  private long l = -1L;
  
  public gs(gt paramgt, String paramString1, String paramString2)
  {
    a = paramgt;
    d = paramString1;
    e = paramString2;
    b = new LinkedList();
  }
  
  public gs(String paramString1, String paramString2)
  {
    this(s.h(), paramString1, paramString2);
  }
  
  public void a()
  {
    synchronized (c)
    {
      if ((l != -1L) && (g == -1L))
      {
        g = SystemClock.elapsedRealtime();
        a.a(this);
      }
      a.d().c();
      return;
    }
  }
  
  public void a(long paramLong)
  {
    synchronized (c)
    {
      l = paramLong;
      if (l != -1L) {
        a.a(this);
      }
      return;
    }
  }
  
  public void a(AdRequestParcel paramAdRequestParcel)
  {
    synchronized (c)
    {
      k = SystemClock.elapsedRealtime();
      a.d().a(paramAdRequestParcel, k);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    synchronized (c)
    {
      if (l != -1L)
      {
        i = SystemClock.elapsedRealtime();
        if (!paramBoolean)
        {
          g = i;
          a.a(this);
        }
      }
      return;
    }
  }
  
  public void b()
  {
    synchronized (c)
    {
      if (l != -1L)
      {
        a locala = new a();
        locala.c();
        b.add(locala);
        j += 1L;
        a.d().b();
        a.a(this);
      }
      return;
    }
  }
  
  public void b(long paramLong)
  {
    synchronized (c)
    {
      if (l != -1L)
      {
        f = paramLong;
        a.a(this);
      }
      return;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    synchronized (c)
    {
      if (l != -1L)
      {
        h = paramBoolean;
        a.a(this);
      }
      return;
    }
  }
  
  public void c()
  {
    synchronized (c)
    {
      if ((l != -1L) && (!b.isEmpty()))
      {
        a locala = (a)b.getLast();
        if (locala.a() == -1L)
        {
          locala.b();
          a.a(this);
        }
      }
      return;
    }
  }
  
  public Bundle d()
  {
    ArrayList localArrayList;
    synchronized (c)
    {
      Bundle localBundle1 = new Bundle();
      localBundle1.putString("seq_num", d);
      localBundle1.putString("slotid", e);
      localBundle1.putBoolean("ismediation", h);
      localBundle1.putLong("treq", k);
      localBundle1.putLong("tresponse", l);
      localBundle1.putLong("timp", g);
      localBundle1.putLong("tload", i);
      localBundle1.putLong("pcc", j);
      localBundle1.putLong("tfetch", f);
      localArrayList = new ArrayList();
      Iterator localIterator = b.iterator();
      if (localIterator.hasNext()) {
        localArrayList.add(((a)localIterator.next()).d());
      }
    }
    localBundle2.putParcelableArrayList("tclick", localArrayList);
    return localBundle2;
  }
  
  @fv
  private static final class a
  {
    private long a = -1L;
    private long b = -1L;
    
    public long a()
    {
      return b;
    }
    
    public void b()
    {
      b = SystemClock.elapsedRealtime();
    }
    
    public void c()
    {
      a = SystemClock.elapsedRealtime();
    }
    
    public Bundle d()
    {
      Bundle localBundle = new Bundle();
      localBundle.putLong("topen", a);
      localBundle.putLong("tclose", b);
      return localBundle;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */