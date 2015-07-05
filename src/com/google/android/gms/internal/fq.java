package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@ey
public final class fq
  extends fl.a
{
  private static final Object ut = new Object();
  private static fq uu;
  private final Context mContext;
  private final fw uv;
  private final cn uw;
  private final bm ux;
  
  fq(Context paramContext, bm parambm, cn paramcn, fw paramfw)
  {
    mContext = paramContext;
    uv = paramfw;
    uw = paramcn;
    ux = parambm;
  }
  
  private static gv.a I(String paramString)
  {
    return new fq.3(paramString);
  }
  
  private static fj a(Context paramContext, bm parambm, cn paramcn, fw paramfw, fh paramfh)
  {
    gr.S("Starting ad request from service.");
    paramcn.init();
    fv localfv = new fv(paramContext);
    if (vr == -1)
    {
      gr.S("Device is offline.");
      return new fj(2);
    }
    fs localfs = new fs(applicationInfo.packageName);
    if (tL.extras != null)
    {
      localObject = tL.extras.getString("_ad");
      if (localObject != null) {
        return fr.a(paramContext, paramfh, (String)localObject);
      }
    }
    Object localObject = paramcn.a(250L);
    paramcn = parambm.bu();
    parambm = fr.a(paramfh, localfv, (Location)localObject, parambm.bv(), parambm.bw(), parambm.bx());
    if (parambm == null) {
      return new fj(0);
    }
    parambm = I(parambm);
    gq.wR.post(new fq.1(paramContext, paramfh, localfs, parambm, paramcn));
    try
    {
      paramcn = (fu)localfs.cR().get(10L, TimeUnit.SECONDS);
      if (paramcn == null)
      {
        paramContext = new fj(0);
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      paramContext = new fj(0);
      return paramContext;
      if (paramcn.getErrorCode() != -2)
      {
        paramContext = new fj(paramcn.getErrorCode());
        return paramContext;
      }
      parambm = null;
      if (paramcn.cV()) {
        parambm = paramfw.K(tM.packageName);
      }
      paramContext = a(paramContext, lO.wS, paramcn.getUrl(), parambm, paramcn);
      return paramContext;
    }
    finally
    {
      gq.wR.post(new fq.2(localfs));
    }
  }
  
  public static fj a(Context paramContext, String paramString1, String paramString2, String paramString3, fu paramfu)
  {
    try
    {
      localft = new ft();
      gr.S("AdRequestServiceImpl: Sending request: " + paramString2);
      paramString2 = new URL(paramString2);
      l = SystemClock.elapsedRealtime();
      i = 0;
    }
    catch (IOException paramContext)
    {
      try
      {
        for (;;)
        {
          ft localft;
          long l;
          int i;
          gi.a(paramContext, paramString1, false, localHttpURLConnection);
          if (!TextUtils.isEmpty(paramString3)) {
            localHttpURLConnection.addRequestProperty("x-afma-drt-cookie", paramString3);
          }
          if ((paramfu != null) && (!TextUtils.isEmpty(paramfu.cU())))
          {
            localHttpURLConnection.setDoOutput(true);
            localObject = paramfu.cU().getBytes();
            localHttpURLConnection.setFixedLengthStreamingMode(localObject.length);
            BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(localHttpURLConnection.getOutputStream());
            localBufferedOutputStream.write((byte[])localObject);
            localBufferedOutputStream.close();
          }
          int j = localHttpURLConnection.getResponseCode();
          Object localObject = localHttpURLConnection.getHeaderFields();
          if ((j >= 200) && (j < 300))
          {
            paramContext = paramString2.toString();
            paramString1 = gi.a(new InputStreamReader(localHttpURLConnection.getInputStream()));
            a(paramContext, (Map)localObject, paramString1, j);
            localft.a(paramContext, (Map)localObject, paramString1);
            paramContext = localft.i(l);
            return paramContext;
          }
          a(paramString2.toString(), (Map)localObject, null, j);
          if ((j >= 300) && (j < 400))
          {
            paramString2 = localHttpURLConnection.getHeaderField("Location");
            if (TextUtils.isEmpty(paramString2))
            {
              gr.W("No location header to follow redirect.");
              paramContext = new fj(0);
              return paramContext;
            }
            paramString2 = new URL(paramString2);
            i += 1;
            if (i > 5)
            {
              gr.W("Too many redirects.");
              paramContext = new fj(0);
              return paramContext;
            }
          }
          else
          {
            gr.W("Received error HTTP response code: " + j);
            paramContext = new fj(0);
            return paramContext;
          }
          localft.e((Map)localObject);
          localHttpURLConnection.disconnect();
        }
      }
      finally
      {
        HttpURLConnection localHttpURLConnection;
        localHttpURLConnection.disconnect();
      }
      paramContext = paramContext;
      gr.W("Error while connecting to ad server: " + paramContext.getMessage());
      return new fj(2);
    }
    localHttpURLConnection = (HttpURLConnection)paramString2.openConnection();
  }
  
  public static fq a(Context paramContext, bm parambm, cn paramcn, fw paramfw)
  {
    synchronized (ut)
    {
      if (uu == null) {
        uu = new fq(paramContext.getApplicationContext(), parambm, paramcn, paramfw);
      }
      paramContext = uu;
      return paramContext;
    }
  }
  
  private static void a(String paramString1, Map<String, List<String>> paramMap, String paramString2, int paramInt)
  {
    if (gr.v(2))
    {
      gr.V("Http Response: {\n  URL:\n    " + paramString1 + "\n  Headers:");
      if (paramMap != null)
      {
        paramString1 = paramMap.keySet().iterator();
        while (paramString1.hasNext())
        {
          Object localObject = (String)paramString1.next();
          gr.V("    " + (String)localObject + ":");
          localObject = ((List)paramMap.get(localObject)).iterator();
          while (((Iterator)localObject).hasNext())
          {
            String str = (String)((Iterator)localObject).next();
            gr.V("      " + str);
          }
        }
      }
      gr.V("  Body:");
      if (paramString2 != null)
      {
        int i = 0;
        while (i < Math.min(paramString2.length(), 100000))
        {
          gr.V(paramString2.substring(i, Math.min(paramString2.length(), i + 1000)));
          i += 1000;
        }
      }
      gr.V("    null");
      gr.V("  Response Code:\n    " + paramInt + "\n}");
    }
  }
  
  public fj b(fh paramfh)
  {
    return a(mContext, ux, uw, uv, paramfh);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */