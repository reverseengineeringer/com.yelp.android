package com.ooyala.android;

import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

class OoyalaAPIHelper
{
  public static Map<String, String> cookies = new HashMap();
  
  private static String jsonForAPI(URL paramURL)
  {
    Log.d(OoyalaAPIHelper.class.getName(), "Sending Request: " + paramURL.toString());
    StringBuffer localStringBuffer = new StringBuffer();
    Object localObject;
    String str;
    try
    {
      paramURL = paramURL.openConnection();
      localObject = new BufferedReader(new InputStreamReader(paramURL.getInputStream()), 8192);
      for (;;)
      {
        str = ((BufferedReader)localObject).readLine();
        if (str == null) {
          break;
        }
        localStringBuffer.append(str);
      }
      return localStringBuffer.toString();
    }
    catch (Exception paramURL)
    {
      paramURL.printStackTrace();
    }
    ((BufferedReader)localObject).close();
    int i = 1;
    for (;;)
    {
      localObject = paramURL.getHeaderFieldKey(i);
      if (localObject == null) {
        break;
      }
      if (((String)localObject).equals("Set-Cookie"))
      {
        localObject = paramURL.getHeaderField(i);
        Log.d(OoyalaAPIHelper.class.getName(), "FOUND COOKIE: " + (String)localObject);
        if (((String)localObject).indexOf(";") > 0)
        {
          str = ((String)localObject).substring(0, ((String)localObject).indexOf(";"));
          localObject = str.substring(0, str.indexOf("="));
          str = str.substring(str.indexOf("=") + 1, str.length());
          cookies.put(localObject, str);
        }
      }
      i += 1;
    }
  }
  
  public static JSONObject objectForAPI(String paramString1, String paramString2, Map<String, String> paramMap)
  {
    paramString1 = Utils.makeURL(paramString1, paramString2, paramMap);
    if (paramString1 == null) {
      return null;
    }
    return objectForAPI(paramString1);
  }
  
  public static JSONObject objectForAPI(URL paramURL)
  {
    return Utils.objectFromJSON(jsonForAPI(paramURL));
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaAPIHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */