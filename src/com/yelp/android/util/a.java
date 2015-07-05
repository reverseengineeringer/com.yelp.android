package com.yelp.android.util;

import android.util.Log;
import com.yelp.android.services.x;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class a
{
  public static String a(Map<String, String> paramMap)
  {
    Cipher localCipher;
    try
    {
      localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      StringBuilder localStringBuilder = new StringBuilder(500);
      paramMap = paramMap.entrySet().iterator();
      for (int i = 1; paramMap.hasNext(); i = 0)
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        if (i == 0) {
          localStringBuilder.append('&');
        }
        localStringBuilder.append((String)localEntry.getKey()).append('=').append((String)localEntry.getValue());
      }
      paramMap = localStringBuilder.toString();
    }
    catch (GeneralSecurityException paramMap)
    {
      Log.e("HTTP_UTILS", "Could not initialize efs cipher");
      throw new IllegalArgumentException("EFS is not supported by this system", paramMap);
    }
    try
    {
      localCipher.init(1, new SecretKeySpec(new BigInteger(x.i(), 16).toByteArray(), "AES"), new IvParameterSpec(new byte[16]));
      paramMap = String.valueOf(com.yelp.android.services.a.a(localCipher.doFinal(paramMap.getBytes())));
      return paramMap;
    }
    catch (GeneralSecurityException paramMap)
    {
      Log.e("HTTP_UTILS", "efs encountered an issue encoding parameter", paramMap);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */