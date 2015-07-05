package com.google.android.gms.analytics;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

class k
  implements q
{
  private static final Object xO = new Object();
  private static k yD;
  private final Context mContext;
  private String yE;
  private boolean yF = false;
  private final Object yG = new Object();
  
  protected k(Context paramContext)
  {
    mContext = paramContext;
    ep();
  }
  
  private boolean ae(String paramString)
  {
    try
    {
      ae.V("Storing clientId.");
      FileOutputStream localFileOutputStream = mContext.openFileOutput("gaClientId", 0);
      localFileOutputStream.write(paramString.getBytes());
      localFileOutputStream.close();
      return true;
    }
    catch (FileNotFoundException paramString)
    {
      ae.T("Error creating clientId file.");
      return false;
    }
    catch (IOException paramString)
    {
      ae.T("Error writing to clientId file.");
    }
    return false;
  }
  
  public static k el()
  {
    synchronized (xO)
    {
      k localk = yD;
      return localk;
    }
  }
  
  private String en()
  {
    if (!yF) {}
    synchronized (yG)
    {
      if (!yF) {
        ae.V("Waiting for clientId to load");
      }
      try
      {
        do
        {
          yG.wait();
        } while (!yF);
        ae.V("Loaded clientId");
        return yE;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          ae.T("Exception while waiting for clientId: " + localInterruptedException);
        }
      }
    }
  }
  
  private void ep()
  {
    new k.1(this, "client_id_fetcher").start();
  }
  
  public static void y(Context paramContext)
  {
    synchronized (xO)
    {
      if (yD == null) {
        yD = new k(paramContext);
      }
      return;
    }
  }
  
  public boolean ac(String paramString)
  {
    return "&cid".equals(paramString);
  }
  
  String em()
  {
    synchronized (yG)
    {
      yE = eo();
      String str = yE;
      return str;
    }
  }
  
  protected String eo()
  {
    String str2 = UUID.randomUUID().toString().toLowerCase();
    String str1 = str2;
    try
    {
      if (!ae(str2)) {
        str1 = "0";
      }
      return str1;
    }
    catch (Exception localException) {}
    return null;
  }
  
  String eq()
  {
    localObject4 = null;
    Object localObject3 = null;
    for (;;)
    {
      try
      {
        localFileInputStream = mContext.openFileInput("gaClientId");
        localObject1 = new byte[''];
        i = localFileInputStream.read((byte[])localObject1, 0, 128);
        if (localFileInputStream.available() <= 0) {
          continue;
        }
        ae.T("clientId file seems corrupted, deleting it.");
        localFileInputStream.close();
        mContext.deleteFile("gaClientId");
        localObject1 = localObject3;
      }
      catch (IOException localIOException1)
      {
        try
        {
          FileInputStream localFileInputStream;
          Object localObject1;
          int i;
          localFileInputStream.close();
          ae.V("Loaded client id from disk.");
        }
        catch (IOException localIOException2)
        {
          Object localObject2;
          continue;
        }
        catch (FileNotFoundException localFileNotFoundException3) {}
        localIOException1 = localIOException1;
        localObject2 = localObject4;
        ae.T("Error reading clientId file, deleting it.");
        mContext.deleteFile("gaClientId");
        continue;
        continue;
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        FileNotFoundException localFileNotFoundException2 = localFileNotFoundException3;
        continue;
      }
      localObject3 = localObject1;
      if (localObject1 == null) {
        localObject3 = eo();
      }
      return (String)localObject3;
      if (i > 0) {
        continue;
      }
      ae.T("clientId file seems empty, deleting it.");
      localFileInputStream.close();
      mContext.deleteFile("gaClientId");
      localObject1 = localObject3;
    }
    localObject1 = new String((byte[])localObject1, 0, i);
  }
  
  public String getValue(String paramString)
  {
    if ("&cid".equals(paramString)) {
      return en();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */