package com.yelp.android.cy;

import android.content.Context;
import android.util.SparseArray;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import jp.line.android.sdk.util.Lspg;

public final class b
  implements com.yelp.android.da.a
{
  private final SparseArray<byte[]> a = new SparseArray();
  
  private final byte[] a(Context paramContext, int paramInt)
  {
    try
    {
      byte[] arrayOfByte = (byte[])a.get(paramInt);
      if (arrayOfByte != null) {
        return arrayOfByte;
      }
    }
    finally {}
    paramContext = Lspg.gk(paramContext, paramInt);
    try
    {
      a.put(paramInt, paramContext);
      return paramContext;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public final String a(Context paramContext, int paramInt, String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramContext = a.a(a(paramContext, paramInt, paramString.getBytes("UTF-8")));
      return paramContext;
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  public final byte[] a(Context paramContext, int paramInt, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    try
    {
      Cipher localCipher = Cipher.getInstance("AES");
      localCipher.init(1, new SecretKeySpec(a(paramContext, paramInt), "AES"));
      paramContext = localCipher.doFinal(paramArrayOfByte);
      return paramContext;
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  public final String b(Context paramContext, int paramInt, String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramContext = new String(b(paramContext, paramInt, a.a(paramString)), "UTF-8");
      return paramContext;
    }
    catch (Throwable paramContext) {}
    return null;
  }
  
  public final byte[] b(Context paramContext, int paramInt, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    try
    {
      Cipher localCipher = Cipher.getInstance("AES");
      localCipher.init(2, new SecretKeySpec(a(paramContext, paramInt), "AES"));
      paramContext = localCipher.doFinal(paramArrayOfByte);
      return paramContext;
    }
    catch (Throwable paramContext) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cy.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */