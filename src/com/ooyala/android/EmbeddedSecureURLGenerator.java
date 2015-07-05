package com.ooyala.android;

import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

class EmbeddedSecureURLGenerator
  implements SecureURLGenerator
{
  private String _apiKey = null;
  private SignatureGenerator _signatureGenerator = null;
  
  public EmbeddedSecureURLGenerator(String paramString, SignatureGenerator paramSignatureGenerator)
  {
    _apiKey = paramString;
    _signatureGenerator = paramSignatureGenerator;
  }
  
  public EmbeddedSecureURLGenerator(String paramString1, String paramString2)
  {
    _apiKey = paramString1;
    _signatureGenerator = new EmbeddedSignatureGenerator(paramString2);
  }
  
  private String genStringToSign(String paramString1, Map<String, String> paramMap, String paramString2)
  {
    paramMap = Utils.getParamsString(paramMap, "", false);
    return paramString2 + paramString1 + paramMap;
  }
  
  public URL secureURL(String paramString1, String paramString2, Map<String, String> paramMap)
  {
    Object localObject;
    if (paramMap == null)
    {
      localObject = new HashMap();
      ((Map)localObject).put("api_key", _apiKey);
      ((Map)localObject).put("expires", Long.toString(new Date().getTime() / 1000L + 300L));
      ((Map)localObject).put("signature", _signatureGenerator.sign(genStringToSign(paramString2, (Map)localObject, "GET")));
    }
    for (;;)
    {
      return Utils.makeURL(paramString1, paramString2, (Map)localObject);
      HashMap localHashMap = new HashMap(paramMap);
      localObject = localHashMap;
      if (!paramMap.containsKey("signature"))
      {
        if (!paramMap.containsKey("api_key")) {
          localHashMap.put("api_key", _apiKey);
        }
        if (!paramMap.containsKey("expires")) {
          localHashMap.put("expires", Long.toString(new Date().getTime() / 1000L + 300L));
        }
        localHashMap.put("signature", _signatureGenerator.sign(genStringToSign(paramString2, localHashMap, "GET")));
        localObject = localHashMap;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.EmbeddedSecureURLGenerator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */