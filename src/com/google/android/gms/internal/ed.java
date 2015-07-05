package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

@ey
public final class ed
  extends em.a
{
  private Context mContext;
  private String mG;
  private String sM;
  private ArrayList<String> sN;
  
  public ed(String paramString1, ArrayList<String> paramArrayList, Context paramContext, String paramString2)
  {
    sM = paramString1;
    sN = paramArrayList;
    mG = paramString2;
    mContext = paramContext;
  }
  
  private void cz()
  {
    try
    {
      mContext.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", new Class[] { Context.class, String.class, String.class, Boolean.TYPE }).invoke(null, new Object[] { mContext, sM, "", Boolean.valueOf(true) });
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      gr.W("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      gr.W("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
      return;
    }
    catch (Exception localException)
    {
      gr.d("Fail to report a conversion.", localException);
    }
  }
  
  protected String a(String paramString, HashMap<String, String> paramHashMap)
  {
    String str3 = mContext.getPackageName();
    long l1;
    long l2;
    String str2;
    try
    {
      String str1 = mContext.getPackageManager().getPackageInfo(str3, 0).versionName;
      l1 = SystemClock.elapsedRealtime();
      l2 = ga.dh().dq();
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str4 = (String)localIterator.next();
        paramString = paramString.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] { str4 }), String.format("$1%s$2", new Object[] { paramHashMap.get(str4) }));
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        gr.d("Error to retrieve app version", localNameNotFoundException);
        str2 = "";
      }
    }
    return paramString.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp135_132), String.format("$1%s$2", tmp149_146)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp167_164), String.format("$1%s$2", tmp181_178)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp198_195), String.format("$1%s$2", tmp212_209)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp233_230), String.format("$1%s$2", tmp247_244)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp266_263), String.format("$1%s$2", tmp280_277)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp297_294), String.format("$1%s$2", tmp311_308)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp333_330), String.format("$1%s$2", tmp347_344)).replaceAll("@@", "@");
  }
  
  public String getProductId()
  {
    return sM;
  }
  
  protected int p(int paramInt)
  {
    if (paramInt == 0) {
      return 1;
    }
    if (paramInt == 1) {
      return 2;
    }
    if (paramInt == 4) {
      return 3;
    }
    return 0;
  }
  
  public void recordPlayBillingResolution(int paramInt)
  {
    if (paramInt == 0) {
      cz();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("google_play_status", String.valueOf(paramInt));
    localHashMap.put("sku", sM);
    localHashMap.put("status", String.valueOf(p(paramInt)));
    Iterator localIterator = sN.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      new gp(mContext, mG, a(str, localHashMap)).start();
    }
  }
  
  public void recordResolution(int paramInt)
  {
    if (paramInt == 1) {
      cz();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("status", String.valueOf(paramInt));
    localHashMap.put("sku", sM);
    Iterator localIterator = sN.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      new gp(mContext, mG, a(str, localHashMap)).start();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */