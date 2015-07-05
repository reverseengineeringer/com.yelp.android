package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.c.f;
import com.google.android.gms.internal.c.i;
import com.google.android.gms.internal.c.j;
import com.google.android.gms.internal.d.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Container
{
  private final String aqm;
  private final DataLayer aqn;
  private ct aqo;
  private Map<String, Container.FunctionCallMacroCallback> aqp = new HashMap();
  private Map<String, Container.FunctionCallTagCallback> aqq = new HashMap();
  private volatile long aqr;
  private volatile String aqs = "";
  private final Context mContext;
  
  Container(Context paramContext, DataLayer paramDataLayer, String paramString, long paramLong, c.j paramj)
  {
    mContext = paramContext;
    aqn = paramDataLayer;
    aqm = paramString;
    aqr = paramLong;
    a(gs);
    if (gr != null) {
      a(gr);
    }
  }
  
  Container(Context paramContext, DataLayer paramDataLayer, String paramString, long paramLong, cr.c paramc)
  {
    mContext = paramContext;
    aqn = paramDataLayer;
    aqm = paramString;
    aqr = paramLong;
    a(paramc);
  }
  
  private void a(c.f paramf)
  {
    if (paramf == null) {
      throw new NullPointerException();
    }
    try
    {
      cr.c localc = cr.b(paramf);
      a(localc);
      return;
    }
    catch (cr.g localg)
    {
      bh.T("Not loading resource: " + paramf + " because it is invalid: " + localg.toString());
    }
  }
  
  private void a(cr.c paramc)
  {
    aqs = paramc.getVersion();
    ag localag = cs(aqs);
    a(new ct(mContext, paramc, aqn, new Container.a(this, null), new Container.b(this, null), localag));
  }
  
  private void a(ct paramct)
  {
    try
    {
      aqo = paramct;
      return;
    }
    finally
    {
      paramct = finally;
      throw paramct;
    }
  }
  
  private void a(c.i[] paramArrayOfi)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramArrayOfi.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(paramArrayOfi[i]);
      i += 1;
    }
    pk().l(localArrayList);
  }
  
  private ct pk()
  {
    try
    {
      ct localct = aqo;
      return localct;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  Container.FunctionCallMacroCallback cp(String paramString)
  {
    synchronized (aqp)
    {
      paramString = (Container.FunctionCallMacroCallback)aqp.get(paramString);
      return paramString;
    }
  }
  
  Container.FunctionCallTagCallback cq(String paramString)
  {
    synchronized (aqq)
    {
      paramString = (Container.FunctionCallTagCallback)aqq.get(paramString);
      return paramString;
    }
  }
  
  void cr(String paramString)
  {
    pk().cr(paramString);
  }
  
  ag cs(String paramString)
  {
    if (ce.qa().qb().equals(ce.a.ass)) {}
    return new br();
  }
  
  public boolean getBoolean(String paramString)
  {
    ct localct = pk();
    if (localct == null)
    {
      bh.T("getBoolean called for closed container.");
      return di.qY().booleanValue();
    }
    try
    {
      boolean bool = di.n((d.a)localct.cT(paramString).getObject()).booleanValue();
      return bool;
    }
    catch (Exception paramString)
    {
      bh.T("Calling getBoolean() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return di.qY().booleanValue();
  }
  
  public String getContainerId()
  {
    return aqm;
  }
  
  public double getDouble(String paramString)
  {
    ct localct = pk();
    if (localct == null)
    {
      bh.T("getDouble called for closed container.");
      return di.qX().doubleValue();
    }
    try
    {
      double d = di.m((d.a)localct.cT(paramString).getObject()).doubleValue();
      return d;
    }
    catch (Exception paramString)
    {
      bh.T("Calling getDouble() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return di.qX().doubleValue();
  }
  
  public long getLastRefreshTime()
  {
    return aqr;
  }
  
  public long getLong(String paramString)
  {
    ct localct = pk();
    if (localct == null)
    {
      bh.T("getLong called for closed container.");
      return di.qW().longValue();
    }
    try
    {
      long l = di.l((d.a)localct.cT(paramString).getObject()).longValue();
      return l;
    }
    catch (Exception paramString)
    {
      bh.T("Calling getLong() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return di.qW().longValue();
  }
  
  public String getString(String paramString)
  {
    ct localct = pk();
    if (localct == null)
    {
      bh.T("getString called for closed container.");
      return di.ra();
    }
    try
    {
      paramString = di.j((d.a)localct.cT(paramString).getObject());
      return paramString;
    }
    catch (Exception paramString)
    {
      bh.T("Calling getString() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return di.ra();
  }
  
  public boolean isDefault()
  {
    return getLastRefreshTime() == 0L;
  }
  
  String pj()
  {
    return aqs;
  }
  
  public void registerFunctionCallMacroCallback(String paramString, Container.FunctionCallMacroCallback paramFunctionCallMacroCallback)
  {
    if (paramFunctionCallMacroCallback == null) {
      throw new NullPointerException("Macro handler must be non-null");
    }
    synchronized (aqp)
    {
      aqp.put(paramString, paramFunctionCallMacroCallback);
      return;
    }
  }
  
  public void registerFunctionCallTagCallback(String paramString, Container.FunctionCallTagCallback paramFunctionCallTagCallback)
  {
    if (paramFunctionCallTagCallback == null) {
      throw new NullPointerException("Tag callback must be non-null");
    }
    synchronized (aqq)
    {
      aqq.put(paramString, paramFunctionCallTagCallback);
      return;
    }
  }
  
  void release()
  {
    aqo = null;
  }
  
  public void unregisterFunctionCallMacroCallback(String paramString)
  {
    synchronized (aqp)
    {
      aqp.remove(paramString);
      return;
    }
  }
  
  public void unregisterFunctionCallTagCallback(String paramString)
  {
    synchronized (aqq)
    {
      aqq.remove(paramString);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.Container
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */