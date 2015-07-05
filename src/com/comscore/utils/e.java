package com.comscore.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;

@SuppressLint({"NewApi"})
public class e
{
  private static HttpClient a = null;
  
  public static String a(Context paramContext)
  {
    if ((k.a(paramContext, "android.permission.ACCESS_WIFI_STATE").booleanValue()) && (((ConnectivityManager)paramContext.getSystemService("connectivity")).getNetworkInfo(1).isConnected()))
    {
      paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
      if (paramContext != null) {
        return paramContext.getSSID();
      }
    }
    return null;
  }
  
  public static HttpClient a()
  {
    if (a == null) {
      a = c();
    }
    return a;
  }
  
  public static boolean b()
  {
    return "sdk".equals(Build.PRODUCT);
  }
  
  public static boolean b(Context paramContext)
  {
    if (k.a(paramContext, "android.permission.ACCESS_NETWORK_STATE").booleanValue())
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getNetworkInfo(1);
      return (paramContext != null) && (paramContext.isConnected());
    }
    return false;
  }
  
  private static HttpClient c()
  {
    try
    {
      Object localObject = SSLSocketFactory.getSocketFactory();
      ((SSLSocketFactory)localObject).setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      localBasicHttpParams.setBooleanParameter("http.protocol.expect-continue", false);
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      localSchemeRegistry.register(new Scheme("https", (SocketFactory)localObject, 443));
      localObject = new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
      return (HttpClient)localObject;
    }
    catch (Exception localException)
    {
      c.b("comScore", localException.getMessage());
    }
    return new DefaultHttpClient();
  }
  
  public static boolean c(Context paramContext)
  {
    if (k.a(paramContext, "android.permission.ACCESS_NETWORK_STATE").booleanValue())
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getNetworkInfo(0);
      return (paramContext != null) && (paramContext.isConnected());
    }
    return false;
  }
  
  public static boolean d(Context paramContext)
  {
    if ((k.a(paramContext, "android.permission.ACCESS_NETWORK_STATE").booleanValue()) && (Build.VERSION.SDK_INT >= 13))
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getNetworkInfo(9);
      return (paramContext != null) && (paramContext.isConnected());
    }
    return false;
  }
  
  public static boolean e(Context paramContext)
  {
    if ((k.a(paramContext, "android.permission.ACCESS_NETWORK_STATE").booleanValue()) && (Build.VERSION.SDK_INT >= 13))
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getNetworkInfo(7);
      return (paramContext != null) && (paramContext.isConnected());
    }
    return false;
  }
  
  public static boolean f(Context paramContext)
  {
    if (k.a(paramContext, "android.permission.READ_PHONE_STATE").booleanValue())
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      return (paramContext.getDataActivity() == 3) || (paramContext.getDataActivity() == 1) || (paramContext.getDataActivity() == 2);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */