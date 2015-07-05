package com.comscore.utils;

import java.security.Key;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.spec.KeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;

public class n
{
  public static int a(String paramString, int paramInt)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString) {}
    return paramInt;
  }
  
  public static long a(String paramString, long paramLong)
  {
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return paramLong;
  }
  
  public static String a(String paramString)
  {
    paramString = paramString.getBytes();
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).reset();
      ((MessageDigest)localObject).update(paramString);
      paramString = ((MessageDigest)localObject).digest();
      localObject = new StringBuffer();
      int i = 0;
      while (i < paramString.length)
      {
        String str = Integer.toHexString(paramString[i] & 0xFF);
        if (str.length() == 1) {
          ((StringBuffer)localObject).append('0');
        }
        ((StringBuffer)localObject).append(str);
        i += 1;
      }
      paramString = localObject + "";
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static HashMap<String, String> a(Map paramMap)
  {
    HashMap localHashMap = new HashMap();
    if (paramMap != null)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        if ((localObject != null) && (paramMap.get(localObject) != null))
        {
          String str = localObject.toString();
          if (str.length() > 0) {
            localHashMap.put(str, paramMap.get(localObject).toString());
          }
        }
      }
    }
    return localHashMap;
  }
  
  public static boolean a(String paramString, boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    if (paramString != null)
    {
      if ((!paramString.equalsIgnoreCase("yes")) && (!paramString.equalsIgnoreCase("true"))) {
        break label28;
      }
      bool = true;
    }
    label28:
    do
    {
      return bool;
      if (paramString.equalsIgnoreCase("no")) {
        break;
      }
      bool = paramBoolean;
    } while (!paramString.equalsIgnoreCase("false"));
    return false;
  }
  
  public static String b(String paramString)
  {
    Object localObject = new X509EncodedKeySpec(f.b);
    localObject = KeyFactory.getInstance("RSA").generatePublic((KeySpec)localObject);
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1PADDING");
    localCipher.init(1, (Key)localObject);
    localObject = new String(b.a(localCipher.doFinal(paramString.getBytes())));
    c.a(n.class, "encrypt(" + paramString + ")=" + (String)localObject);
    return (String)localObject;
  }
  
  public static long c(String paramString)
  {
    return a(paramString, 0L);
  }
  
  public static int d(String paramString)
  {
    return a(paramString, 0);
  }
  
  public static boolean e(String paramString)
  {
    return a(paramString, false);
  }
  
  public static boolean f(String paramString)
  {
    return (paramString != null) && (paramString.length() > 0);
  }
  
  public static boolean g(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */