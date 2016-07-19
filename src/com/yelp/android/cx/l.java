package com.yelp.android.cx;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.GZIPInputStream;
import jp.line.android.sdk.a;
import jp.line.android.sdk.c;
import org.json.JSONException;
import org.json.JSONObject;

public final class l
{
  private static String a;
  private static final AtomicBoolean b = new AtomicBoolean(false);
  
  private static String a()
  {
    StringBuilder localStringBuilder;
    Object localObject;
    if (a == null)
    {
      localStringBuilder = new StringBuilder();
      localObject = c.a().a();
    }
    for (;;)
    {
      try
      {
        localObject = ((Context)localObject).getPackageManager().getPackageInfo(((Context)localObject).getPackageName(), 128);
        if (localObject != null)
        {
          localStringBuilder.append(packageName).append("/").append(versionName);
          localStringBuilder.append(" ChannelSDK/").append(c.a().j());
          localStringBuilder.append(" (Linux; U; Android ").append(Build.VERSION.RELEASE).append("; ");
          localObject = Locale.getDefault();
          localStringBuilder.append(((Locale)localObject).getLanguage()).append("-").append(((Locale)localObject).getCountry()).append("; ").append(Build.MODEL).append(" Build/").append(Build.ID).append(")");
          a = localStringBuilder.toString();
          return a;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        throw new RuntimeException(localNameNotFoundException);
      }
      localNameNotFoundException.append("UNK/UNK");
    }
  }
  
  public static final HttpURLConnection a(String paramString)
    throws MalformedURLException, IOException
  {
    paramString = (HttpURLConnection)new URL(paramString).openConnection();
    paramString.setInstanceFollowRedirects(true);
    paramString.setRequestProperty("User-Agent", a());
    paramString.setRequestProperty("Accept-Encoding", "gzip");
    paramString.setConnectTimeout(90000);
    paramString.setReadTimeout(90000);
    System.setProperty("http.keepAlive", "false");
    return paramString;
  }
  
  public static final JSONObject a(HttpURLConnection paramHttpURLConnection)
    throws UnsupportedEncodingException, IOException, JSONException
  {
    return new JSONObject(b(paramHttpURLConnection));
  }
  
  private static String b(HttpURLConnection paramHttpURLConnection)
    throws UnsupportedEncodingException, IOException
  {
    int k = 0;
    Object localObject = (List)paramHttpURLConnection.getHeaderFields().get("Content-Encoding");
    int j = k;
    int i;
    if (localObject != null)
    {
      i = 0;
      j = k;
      if (i < ((List)localObject).size())
      {
        if (!((String)((List)localObject).get(i)).equals("gzip")) {
          break label170;
        }
        j = 1;
      }
    }
    StringBuilder localStringBuilder = new StringBuilder();
    String str = null;
    localObject = str;
    for (;;)
    {
      try
      {
        if (paramHttpURLConnection.getResponseCode() >= 400) {
          break label177;
        }
        localObject = str;
        paramHttpURLConnection = paramHttpURLConnection.getInputStream();
        if (j == 0) {
          break label189;
        }
        localObject = str;
        paramHttpURLConnection = new BufferedReader(new InputStreamReader(new GZIPInputStream(paramHttpURLConnection), "UTF-8"));
        localObject = paramHttpURLConnection;
        str = paramHttpURLConnection.readLine();
        if (str == null) {
          break label214;
        }
        localObject = paramHttpURLConnection;
        localStringBuilder.append(str);
        continue;
        i += 1;
      }
      finally
      {
        if (localObject != null) {
          ((BufferedReader)localObject).close();
        }
      }
      label170:
      break;
      label177:
      localObject = str;
      paramHttpURLConnection = paramHttpURLConnection.getErrorStream();
      continue;
      label189:
      localObject = str;
      paramHttpURLConnection = new BufferedReader(new InputStreamReader(paramHttpURLConnection, "UTF-8"));
    }
    label214:
    paramHttpURLConnection.close();
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cx.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */