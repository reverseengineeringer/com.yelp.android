package com.facebook.internal;

import android.net.Uri;
import org.json.JSONArray;
import org.json.JSONObject;

public class u$a
{
  private String a;
  private String b;
  private Uri c;
  private int[] d;
  
  private u$a(String paramString1, String paramString2, Uri paramUri, int[] paramArrayOfInt)
  {
    a = paramString1;
    b = paramString2;
    c = paramUri;
    d = paramArrayOfInt;
  }
  
  private static int[] a(JSONArray paramJSONArray)
  {
    int[] arrayOfInt = null;
    if (paramJSONArray != null)
    {
      int m = paramJSONArray.length();
      arrayOfInt = new int[m];
      int j = 0;
      for (;;)
      {
        if (j < m)
        {
          int k = paramJSONArray.optInt(j, -1);
          int i = k;
          String str;
          if (k == -1)
          {
            str = paramJSONArray.optString(j);
            i = k;
            if (u.a(str)) {}
          }
          try
          {
            i = Integer.parseInt(str);
            arrayOfInt[j] = i;
            j += 1;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            for (;;)
            {
              u.a("FacebookSDK", localNumberFormatException);
              i = -1;
            }
          }
        }
      }
    }
    return arrayOfInt;
  }
  
  private static a b(JSONObject paramJSONObject)
  {
    Uri localUri = null;
    String str1 = paramJSONObject.optString("name");
    if (u.a(str1)) {}
    Object localObject;
    do
    {
      do
      {
        return null;
        localObject = str1.split("\\|");
      } while (localObject.length != 2);
      str1 = localObject[0];
      localObject = localObject[1];
    } while ((u.a(str1)) || (u.a((String)localObject)));
    String str2 = paramJSONObject.optString("url");
    if (!u.a(str2)) {
      localUri = Uri.parse(str2);
    }
    return new a(str1, (String)localObject, localUri, a(paramJSONObject.optJSONArray("versions")));
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public Uri c()
  {
    return c;
  }
  
  public int[] d()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.u.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */