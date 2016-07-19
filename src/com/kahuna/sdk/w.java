package com.kahuna.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Color;
import android.util.Base64;
import android.util.Log;
import com.kahuna.sdk.inapp.RichInAppMessage;
import com.kahuna.sdk.inapp.a;
import com.kahuna.sdk.inapp.b;
import com.kahuna.sdk.inapp.d;
import com.kahuna.sdk.inapp.e;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import javax.security.auth.x500.X500Principal;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class w
{
  private static Object a = new Object();
  private static Map<String, Pattern> b = new HashMap();
  
  public static String a(Object paramObject)
  {
    if (paramObject == null) {
      return "(null)";
    }
    return paramObject.toString();
  }
  
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
  
  static boolean a(int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= 255);
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
  
  public static boolean a(i parami)
  {
    return (parami == null) || (parami.b());
  }
  
  public static boolean a(RichInAppMessage paramRichInAppMessage)
  {
    return paramRichInAppMessage == null;
  }
  
  public static boolean a(a parama)
  {
    return (parama == null) || (a(parama.b()));
  }
  
  public static boolean a(b paramb)
  {
    return (paramb == null) || (a(paramb.a()));
  }
  
  public static boolean a(d paramd)
  {
    return paramd == null;
  }
  
  public static boolean a(e parame)
  {
    return (parame == null) || (a(parame.a()));
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
      if (l.a) {
        Log.d("Kahuna", "Caught invalid regex Pattern exception: " + paramString1);
      }
    }
  }
  
  public static boolean a(List<?> paramList)
  {
    return (paramList == null) || (paramList.size() == 0);
  }
  
  public static boolean a(Map<?, ?> paramMap)
  {
    return (paramMap == null) || (paramMap.isEmpty());
  }
  
  protected static boolean a(Map<String, Set<String>> paramMap1, Map<String, Set<String>> paramMap2)
  {
    if ((a(paramMap1)) || (a(paramMap2))) {
      return false;
    }
    Object localObject1 = new HashSet(paramMap1.keySet());
    ((Set)localObject1).retainAll(paramMap2.keySet());
    if (((Set)localObject1).isEmpty()) {
      return false;
    }
    paramMap1 = paramMap1.entrySet().iterator();
    while (paramMap1.hasNext())
    {
      Object localObject2 = (Map.Entry)paramMap1.next();
      localObject1 = (String)((Map.Entry)localObject2).getKey();
      localObject2 = (Set)((Map.Entry)localObject2).getValue();
      localObject1 = (Set)paramMap2.get(localObject1);
      if ((!a((Set)localObject2)) && (!a((Set)localObject1)))
      {
        localObject2 = new HashSet((Collection)localObject2);
        ((Set)localObject2).retainAll((Collection)localObject1);
        if (!((Set)localObject2).isEmpty()) {
          return true;
        }
      }
    }
    return false;
  }
  
  public static boolean a(Set<?> paramSet)
  {
    return (paramSet == null) || (paramSet.size() == 0);
  }
  
  public static boolean a(JSONArray paramJSONArray)
  {
    return (paramJSONArray == null) || (paramJSONArray.length() == 0);
  }
  
  public static boolean a(JSONObject paramJSONObject)
  {
    return (paramJSONObject == null) || (paramJSONObject.length() == 0);
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
      if (l.u()) {
        paramString.printStackTrace();
      }
    }
    return "";
  }
  
  protected static Map<String, String> b(JSONObject paramJSONObject)
    throws JSONException
  {
    Object localObject = new HashMap();
    if (paramJSONObject != JSONObject.NULL) {
      localObject = c(paramJSONObject);
    }
    return (Map<String, String>)localObject;
  }
  
  protected static Map<String, String> c(JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject == null) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      String str2 = paramJSONObject.optString(str1);
      if (str2 != null) {
        localHashMap.put(str1, str2);
      }
    }
    return localHashMap;
  }
  
  protected static boolean c(String paramString)
  {
    if (a(paramString)) {}
    do
    {
      return false;
      try
      {
        Pattern.compile(paramString, 2);
        return true;
      }
      catch (PatternSyntaxException localPatternSyntaxException) {}
    } while (!l.a);
    Log.d("Kahuna", "Can't process invalid key regular expression: " + paramString);
    return false;
  }
  
  public static boolean d(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return true;
    }
    Map localMap = j.i().d().a();
    Iterator localIterator = paramJSONObject.keys();
    if (localIterator.hasNext()) {}
    for (;;)
    {
      try
      {
        Object localObject = (String)localIterator.next();
        String str = paramJSONObject.optString((String)localObject);
        if ((a((String)localObject)) || (a(str))) {
          break;
        }
        localObject = (Set)localMap.get(localObject);
        if (a((Set)localObject)) {
          break;
        }
        bool = ((Set)localObject).contains(str);
        if (!bool) {
          break;
        }
        bool = true;
      }
      catch (Exception paramJSONObject)
      {
        if (!l.a) {
          continue;
        }
        Log.e("Kahuna", "Caught exception processing credential restrictions: " + paramJSONObject.getMessage());
        bool = false;
        continue;
      }
      return bool;
      boolean bool = false;
    }
  }
  
  public static Integer e(JSONObject paramJSONObject)
  {
    if ((!a(paramJSONObject)) && (paramJSONObject.has("r")) && (paramJSONObject.has("g")) && (paramJSONObject.has("b")) && (paramJSONObject.has("a")))
    {
      int i = paramJSONObject.optInt("a");
      int j = paramJSONObject.optInt("r");
      int k = paramJSONObject.optInt("g");
      int m = paramJSONObject.optInt("b");
      if ((a(j)) && (a(k)) && (a(m)) && (a(i))) {
        return Integer.valueOf(Color.argb(i, j, k, m));
      }
    }
    if (l.u()) {
      Log.e("Kahuna", "Invalid Rich In App Color Object: " + paramJSONObject);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */