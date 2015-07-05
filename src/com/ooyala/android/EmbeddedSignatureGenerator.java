package com.ooyala.android;

import android.util.Base64;
import java.io.PrintStream;
import java.security.MessageDigest;

class EmbeddedSignatureGenerator
  implements SignatureGenerator
{
  private String _secret = null;
  
  public EmbeddedSignatureGenerator(String paramString)
  {
    _secret = paramString;
  }
  
  public String sign(String paramString)
  {
    try
    {
      paramString = _secret + paramString;
      String str = Base64.encodeToString(MessageDigest.getInstance("SHA-256").digest(paramString.getBytes()), 0);
      paramString = str;
      if (str.length() > 43) {
        paramString = str.substring(0, 43);
      }
      paramString = paramString.replaceAll("=", "");
      return paramString;
    }
    catch (Exception paramString)
    {
      System.out.println("Exception generating signature: " + paramString);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.EmbeddedSignatureGenerator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */