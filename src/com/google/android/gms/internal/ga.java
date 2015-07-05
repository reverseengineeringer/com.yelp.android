package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

@ey
public class ga
  implements ck.b
{
  private static final ga vX = new ga();
  public static final String vY = vXvZ;
  private Context mContext;
  private final Object mH = new Object();
  private am nE = null;
  private al nF = null;
  private ex nG = null;
  private gs qJ;
  private boolean uV = true;
  private boolean uW = true;
  public final String vZ = gi.dx();
  private final gb wa = new gb(vZ);
  private ld wb;
  private BigInteger wc = BigInteger.ONE;
  private final HashSet<fz> wd = new HashSet();
  private final HashMap<String, gd> we = new HashMap();
  private boolean wf = false;
  private boolean wg = false;
  private an wh = null;
  private LinkedList<Thread> wi = new LinkedList();
  private boolean wj = false;
  private Bundle wk = bn.by();
  private String wl;
  
  public static Bundle a(Context paramContext, gc paramgc, String paramString)
  {
    return vX.b(paramContext, paramgc, paramString);
  }
  
  public static void a(Context paramContext, gs paramgs)
  {
    vX.b(paramContext, paramgs);
  }
  
  public static void a(Context paramContext, boolean paramBoolean)
  {
    vX.b(paramContext, paramBoolean);
  }
  
  public static void b(HashSet<fz> paramHashSet)
  {
    vX.c(paramHashSet);
  }
  
  public static Bundle bN()
  {
    return vX.dp();
  }
  
  public static String c(int paramInt, String paramString)
  {
    return vX.d(paramInt, paramString);
  }
  
  public static ga dc()
  {
    return vX;
  }
  
  public static String df()
  {
    return vX.dg();
  }
  
  public static gb dh()
  {
    return vX.di();
  }
  
  public static boolean dj()
  {
    return vX.dk();
  }
  
  public static boolean dl()
  {
    return vX.dm();
  }
  
  public static String dn()
  {
    return vX.jdMethod_do();
  }
  
  public static void e(Throwable paramThrowable)
  {
    vX.f(paramThrowable);
  }
  
  public void a(Bundle paramBundle)
  {
    synchronized (mH)
    {
      wj = true;
      wk = paramBundle;
      if (!wi.isEmpty()) {
        ex.a(mContext, (Thread)wi.remove(0), qJ);
      }
    }
  }
  
  public void a(fz paramfz)
  {
    synchronized (mH)
    {
      wd.add(paramfz);
      return;
    }
  }
  
  public void a(String paramString, gd paramgd)
  {
    synchronized (mH)
    {
      we.put(paramString, paramgd);
      return;
    }
  }
  
  public void a(Thread paramThread)
  {
    synchronized (mH)
    {
      if (wj)
      {
        ex.a(mContext, paramThread, qJ);
        return;
      }
      wi.add(paramThread);
    }
  }
  
  public Bundle b(Context paramContext, gc paramgc, String paramString)
  {
    Bundle localBundle;
    synchronized (mH)
    {
      localBundle = new Bundle();
      localBundle.putBundle("app", wa.b(paramContext, paramString));
      paramContext = new Bundle();
      paramString = we.keySet().iterator();
      if (paramString.hasNext())
      {
        String str = (String)paramString.next();
        paramContext.putBundle(str, ((gd)we.get(str)).toBundle());
      }
    }
    localBundle.putBundle("slots", paramContext);
    paramContext = new ArrayList();
    paramString = wd.iterator();
    while (paramString.hasNext()) {
      paramContext.add(((fz)paramString.next()).toBundle());
    }
    localBundle.putParcelableArrayList("ads", paramContext);
    paramgc.a(wd);
    wd.clear();
    return localBundle;
  }
  
  public void b(Context paramContext, gs paramgs)
  {
    synchronized (mH)
    {
      if (!wg)
      {
        mContext = paramContext.getApplicationContext();
        qJ = paramgs;
        uV = gg.o(paramContext);
        iy.H(paramContext);
        ck.a(paramContext, this);
        a(Thread.currentThread());
        wl = gi.c(paramContext, wS);
        wb = new lf();
        wg = true;
      }
      return;
    }
  }
  
  public void b(Context paramContext, boolean paramBoolean)
  {
    synchronized (mH)
    {
      if (paramBoolean != uV)
      {
        uV = paramBoolean;
        gg.a(paramContext, paramBoolean);
      }
      return;
    }
  }
  
  public void c(HashSet<fz> paramHashSet)
  {
    synchronized (mH)
    {
      wd.addAll(paramHashSet);
      return;
    }
  }
  
  public String d(int paramInt, String paramString)
  {
    if (qJ.wV) {}
    for (Resources localResources = mContext.getResources(); localResources == null; localResources = GooglePlayServicesUtil.getRemoteResource(mContext)) {
      return paramString;
    }
    return localResources.getString(paramInt);
  }
  
  public ld dd()
  {
    synchronized (mH)
    {
      ld localld = wb;
      return localld;
    }
  }
  
  public boolean de()
  {
    synchronized (mH)
    {
      boolean bool = uW;
      return bool;
    }
  }
  
  public String dg()
  {
    synchronized (mH)
    {
      String str = wc.toString();
      wc = wc.add(BigInteger.ONE);
      return str;
    }
  }
  
  public gb di()
  {
    synchronized (mH)
    {
      gb localgb = wa;
      return localgb;
    }
  }
  
  public boolean dk()
  {
    synchronized (mH)
    {
      boolean bool = wf;
      wf = true;
      return bool;
    }
  }
  
  public boolean dm()
  {
    synchronized (mH)
    {
      boolean bool = uV;
      return bool;
    }
  }
  
  public String jdMethod_do()
  {
    synchronized (mH)
    {
      String str = wl;
      return str;
    }
  }
  
  public Bundle dp()
  {
    synchronized (mH)
    {
      Bundle localBundle = wk;
      return localBundle;
    }
  }
  
  public void f(Throwable paramThrowable)
  {
    if (wg) {
      new ex(mContext, qJ, null, null).b(paramThrowable);
    }
  }
  
  public an l(Context paramContext)
  {
    if ((!bN().getBoolean(bn.pp.getKey(), false)) || (!ll.ij()) || (de())) {
      return null;
    }
    synchronized (mH)
    {
      if (nE != null) {
        break label83;
      }
      if (!(paramContext instanceof Activity)) {
        return null;
      }
    }
    nE = new am((Application)paramContext.getApplicationContext(), (Activity)paramContext);
    label83:
    if (nF == null) {
      nF = new al();
    }
    if (wh == null) {
      wh = new an(nE, nF, wk, new ex(mContext, qJ, null, null));
    }
    wh.ba();
    paramContext = wh;
    return paramContext;
  }
  
  public void x(boolean paramBoolean)
  {
    synchronized (mH)
    {
      uW = paramBoolean;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */