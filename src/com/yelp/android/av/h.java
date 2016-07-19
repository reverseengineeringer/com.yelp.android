package com.yelp.android.av;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.yelp.android.cr.d;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

public class h
  implements d<String>
{
  public String a(Context paramContext)
    throws Exception
  {
    long l = System.nanoTime();
    String str1 = "";
    Context localContext1 = null;
    Context localContext2 = null;
    Object localObject1 = null;
    Object localObject2 = null;
    for (;;)
    {
      try
      {
        paramContext = b(paramContext);
        localObject2 = paramContext;
        localContext1 = paramContext;
        localContext2 = paramContext;
        localObject1 = paramContext;
        String str2 = a(paramContext);
        localObject2 = str2;
        localObject1 = localObject2;
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        double d;
        localObject1 = localObject2;
        c.h().e("Beta", "Failed to find this app in the PackageManager", paramContext);
        localObject1 = str1;
        if (localObject2 == null) {
          continue;
        }
        try
        {
          ((ZipInputStream)localObject2).close();
          localObject1 = str1;
        }
        catch (IOException paramContext)
        {
          c.h().e("Beta", "Failed to close the APK file", paramContext);
          localObject1 = str1;
        }
        continue;
      }
      catch (FileNotFoundException paramContext)
      {
        localObject1 = localContext1;
        c.h().e("Beta", "Failed to find the APK file", paramContext);
        localObject1 = str1;
        if (localContext1 == null) {
          continue;
        }
        try
        {
          localContext1.close();
          localObject1 = str1;
        }
        catch (IOException paramContext)
        {
          c.h().e("Beta", "Failed to close the APK file", paramContext);
          localObject1 = str1;
        }
        continue;
      }
      catch (IOException paramContext)
      {
        localObject1 = localContext2;
        c.h().e("Beta", "Failed to read the APK file", paramContext);
        localObject1 = str1;
        if (localContext2 == null) {
          continue;
        }
        try
        {
          localContext2.close();
          localObject1 = str1;
        }
        catch (IOException paramContext)
        {
          c.h().e("Beta", "Failed to close the APK file", paramContext);
          localObject1 = str1;
        }
        continue;
      }
      finally
      {
        if (localObject1 == null) {
          break label327;
        }
      }
      try
      {
        paramContext.close();
        localObject1 = localObject2;
      }
      catch (IOException paramContext)
      {
        c.h().e("Beta", "Failed to close the APK file", paramContext);
        localObject1 = localObject2;
      }
    }
    d = (System.nanoTime() - l) / 1000000.0D;
    c.h().a("Beta", "Beta device token load took " + d + "ms");
    return (String)localObject1;
    try
    {
      ((ZipInputStream)localObject1).close();
      label327:
      throw paramContext;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        c.h().e("Beta", "Failed to close the APK file", localIOException);
      }
    }
  }
  
  String a(ZipInputStream paramZipInputStream)
    throws IOException
  {
    Object localObject;
    do
    {
      localObject = paramZipInputStream.getNextEntry();
      if (localObject == null) {
        break;
      }
      localObject = ((ZipEntry)localObject).getName();
    } while (!((String)localObject).startsWith("assets/com.crashlytics.android.beta/dirfactor-device-token="));
    return ((String)localObject).substring("assets/com.crashlytics.android.beta/dirfactor-device-token=".length(), ((String)localObject).length() - 1);
    return "";
  }
  
  ZipInputStream b(Context paramContext)
    throws PackageManager.NameNotFoundException, FileNotFoundException
  {
    return new ZipInputStream(new FileInputStream(getPackageManagergetApplicationInfogetPackageName0sourceDir));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.av.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */