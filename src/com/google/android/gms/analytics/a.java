package com.google.android.gms.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

class a
  implements q
{
  private static Object xO = new Object();
  private static a xP;
  private Context mContext;
  private AdvertisingIdClient.Info xQ;
  private long xR;
  private String xS;
  private boolean xT = false;
  private Object xU = new Object();
  
  a(Context paramContext)
  {
    mContext = paramContext.getApplicationContext();
  }
  
  private boolean a(AdvertisingIdClient.Info paramInfo1, AdvertisingIdClient.Info paramInfo2)
  {
    Object localObject1 = null;
    if (paramInfo2 == null) {}
    for (paramInfo2 = null; TextUtils.isEmpty(paramInfo2); paramInfo2 = paramInfo2.getId()) {
      return true;
    }
    k.y(mContext);
    k localk = k.el();
    String str = localk.getValue("&cid");
    boolean bool;
    for (;;)
    {
      synchronized (xU)
      {
        if (!xT)
        {
          xS = x(mContext);
          xT = true;
          paramInfo1 = aa(paramInfo2 + str);
          if (!TextUtils.isEmpty(paramInfo1)) {
            break;
          }
          return false;
        }
      }
      if (TextUtils.isEmpty(xS))
      {
        if (paramInfo1 == null) {}
        for (paramInfo1 = (AdvertisingIdClient.Info)localObject1; paramInfo1 == null; paramInfo1 = paramInfo1.getId())
        {
          bool = ab(paramInfo2 + str);
          return bool;
        }
        xS = aa(paramInfo1 + str);
      }
    }
    if (paramInfo1.equals(xS)) {
      return true;
    }
    if (!TextUtils.isEmpty(xS))
    {
      ae.V("Resetting the client id because Advertising Id changed.");
      paramInfo1 = localk.em();
      ae.V("New client Id: " + paramInfo1);
    }
    for (;;)
    {
      bool = ab(paramInfo2 + paramInfo1);
      return bool;
      paramInfo1 = str;
    }
  }
  
  static String aa(String paramString)
  {
    MessageDigest localMessageDigest = an.ap("MD5");
    if (localMessageDigest == null) {
      return null;
    }
    return String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, localMessageDigest.digest(paramString.getBytes())) });
  }
  
  private boolean ab(String paramString)
  {
    try
    {
      paramString = aa(paramString);
      ae.V("Storing hashed adid.");
      FileOutputStream localFileOutputStream = mContext.openFileOutput("gaClientIdData", 0);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      xS = paramString;
      return true;
    }
    catch (FileNotFoundException paramString)
    {
      ae.T("Error creating hash file.");
      return false;
    }
    catch (IOException paramString)
    {
      ae.T("Error writing to hash file.");
    }
    return false;
  }
  
  public static q w(Context paramContext)
  {
    if (xP == null) {}
    synchronized (xO)
    {
      if (xP == null) {
        xP = new a(paramContext);
      }
      return xP;
    }
  }
  
  static String x(Context paramContext)
  {
    String str = null;
    try
    {
      FileInputStream localFileInputStream = paramContext.openFileInput("gaClientIdData");
      Object localObject2 = new byte[''];
      int i = localFileInputStream.read((byte[])localObject2, 0, 128);
      if (localFileInputStream.available() > 0)
      {
        ae.W("Hash file seems corrupted, deleting it.");
        localFileInputStream.close();
        paramContext.deleteFile("gaClientIdData");
        return null;
      }
      if (i <= 0)
      {
        ae.U("Hash file is empty.");
        localFileInputStream.close();
        return null;
      }
      localObject2 = new String((byte[])localObject2, 0, i);
      Object localObject1;
      return null;
    }
    catch (IOException localIOException2)
    {
      try
      {
        localFileInputStream.close();
        return (String)localObject2;
      }
      catch (IOException localIOException1)
      {
        for (;;)
        {
          localObject1 = localIOException2;
        }
      }
      catch (FileNotFoundException paramContext)
      {
        return localIOException2;
      }
      localIOException2 = localIOException2;
      ae.W("Error reading Hash file, deleting it.");
      paramContext.deleteFile("gaClientIdData");
      return str;
    }
    catch (FileNotFoundException paramContext) {}
  }
  
  AdvertisingIdClient.Info dP()
  {
    try
    {
      AdvertisingIdClient.Info localInfo = AdvertisingIdClient.getAdvertisingIdInfo(mContext);
      return localInfo;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      ae.W("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
      return null;
    }
    catch (GooglePlayServicesRepairableException localGooglePlayServicesRepairableException)
    {
      ae.W("GooglePlayServicesRepairableException getting Ad Id Info");
      return null;
    }
    catch (IOException localIOException)
    {
      ae.W("IOException getting Ad Id Info");
      return null;
    }
    catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException)
    {
      ae.W("GooglePlayServicesNotAvailableException getting Ad Id Info");
      return null;
    }
    catch (Throwable localThrowable)
    {
      ae.W("Unknown exception. Could not get the ad Id.");
    }
    return null;
  }
  
  public String getValue(String paramString)
  {
    long l = System.currentTimeMillis();
    AdvertisingIdClient.Info localInfo;
    if (l - xR > 1000L)
    {
      localInfo = dP();
      if (!a(xQ, localInfo)) {
        break label72;
      }
    }
    label72:
    for (xQ = localInfo;; xQ = new AdvertisingIdClient.Info("", false))
    {
      xR = l;
      if (xQ == null) {
        break label118;
      }
      if (!"&adid".equals(paramString)) {
        break;
      }
      return xQ.getId();
    }
    if ("&ate".equals(paramString))
    {
      if (xQ.isLimitAdTrackingEnabled()) {
        return "0";
      }
      return "1";
    }
    label118:
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */