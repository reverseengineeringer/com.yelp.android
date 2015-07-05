package com.kahuna.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import javax.security.auth.x500.X500Principal;
import org.json.JSONArray;

public class aj
{
  private static Object a = new Object();
  private static Map<String, Pattern> b = new HashMap();
  
  protected static String a(String paramString1, String paramString2, boolean paramBoolean)
  {
    int i = 0;
    if ((paramString1 == null) || ("".equals(paramString1))) {
      return "";
    }
    String str = paramString1;
    if (paramBoolean) {
      str = paramString1.toLowerCase();
    }
    Object localObject = null;
    paramString1 = "SHA-1";
    try
    {
      if ("MD5".equals(paramString2)) {
        paramString1 = "MD5";
      }
      paramString1 = MessageDigest.getInstance(paramString1);
      paramString2 = str.getBytes("UTF-8");
      paramString1.update(paramString2, 0, paramString2.length);
      paramString1 = paramString1.digest();
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        i = 1;
        paramString1 = (String)localObject;
      }
    }
    if (i != 0) {
      return "";
    }
    return a(paramString1);
  }
  
  private static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int m = paramArrayOfByte.length;
    int i = 0;
    int n;
    int j;
    int k;
    if (i < m)
    {
      n = paramArrayOfByte[i];
      j = n >>> 4 & 0xF;
      k = 0;
    }
    for (;;)
    {
      if ((j >= 0) && (j <= 9)) {}
      for (char c = (char)(j + 48);; c = (char)(j - 10 + 97))
      {
        localStringBuilder.append(c);
        if (k < 1) {
          break label91;
        }
        i += 1;
        break;
      }
      return localStringBuilder.toString();
      label91:
      k += 1;
      j = n & 0xF;
    }
  }
  
  protected static void a()
  {
    synchronized (a)
    {
      b.clear();
      return;
    }
  }
  
  protected static boolean a(Context paramContext)
  {
    boolean bool3 = false;
    bool1 = false;
    boolean bool2 = bool3;
    try
    {
      paramContext = getPackageManagergetPackageInfogetPackageName64signatures;
      bool2 = bool3;
      CertificateFactory localCertificateFactory = CertificateFactory.getInstance("X.509");
      int i = 0;
      for (;;)
      {
        bool2 = bool1;
        if (i >= paramContext.length) {
          break;
        }
        bool2 = bool1;
        bool1 = ((X509Certificate)localCertificateFactory.generateCertificate(new ByteArrayInputStream(paramContext[i].toByteArray()))).getSubjectX500Principal().getName().startsWith("CN=Android Debug,O=Android");
        if (bool1) {
          return bool1;
        }
        i += 1;
      }
      return bool1;
    }
    catch (Exception paramContext)
    {
      return bool2;
    }
  }
  
  public static boolean a(String paramString)
  {
    return (paramString == null) || ("".equals(paramString));
  }
  
  protected static boolean a(String paramString1, String paramString2)
  {
    if ((a(paramString1)) || (a(paramString2))) {
      return false;
    }
    Pattern localPattern1 = null;
    try
    {
      synchronized (a)
      {
        if (b.containsKey(paramString1)) {
          localPattern1 = (Pattern)b.get(paramString1);
        }
        Pattern localPattern2 = localPattern1;
        if (localPattern1 == null)
        {
          localPattern2 = Pattern.compile(paramString1, 2);
          b.put(paramString1, localPattern2);
        }
        boolean bool = localPattern2.matcher(paramString2).matches();
        return bool;
      }
      return false;
    }
    catch (PatternSyntaxException paramString1)
    {
      if (h.a) {
        Log.d("KahunaAnalytics", "Caught invalid regex Pattern exception: " + paramString1);
      }
    }
  }
  
  public static boolean a(List<?> paramList)
  {
    return (paramList == null) || (paramList.size() == 0);
  }
  
  public static boolean a(JSONArray paramJSONArray)
  {
    return (paramJSONArray == null) || (paramJSONArray.length() == 0);
  }
  
  protected static String b(String paramString)
  {
    String str = "";
    try
    {
      if (!a(paramString)) {
        str = Base64.encodeToString(paramString.getBytes("UTF-8"), 8);
      }
      return str;
    }
    catch (UnsupportedEncodingException paramString)
    {
      if (h.p()) {
        paramString.printStackTrace();
      }
    }
    return "";
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */