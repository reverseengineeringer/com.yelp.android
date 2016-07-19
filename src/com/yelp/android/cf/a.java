package com.yelp.android.cf;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.WebView;
import com.yelp.android.appdata.f;
import com.yelp.android.ui.activities.support.JavaScriptEventInterface;
import com.yelp.android.ui.activities.support.JavaScriptEventInterface.b;
import com.yelp.android.util.YelpLog;
import java.util.Locale;

public class a
{
  public static Uri a(Intent paramIntent, Context paramContext)
  {
    if ((paramIntent == null) || (paramIntent.getExtras() == null) || (!paramIntent.getAction().equals("android.intent.action.SEND"))) {
      paramIntent = null;
    }
    String str2;
    do
    {
      Uri localUri;
      do
      {
        String str1;
        do
        {
          return paramIntent;
          try
          {
            localUri = (Uri)paramIntent.getExtras().get("android.intent.extra.STREAM");
            if (localUri == null) {
              return null;
            }
          }
          catch (ClassCastException paramIntent)
          {
            YelpLog.remoteError(paramIntent);
            return null;
          }
          str1 = localUri.getScheme();
          paramIntent = localUri.getHost();
          str2 = localUri.getPath();
          Object localObject = new ContextWrapper(paramContext);
          paramContext = getApplicationInfodataDir;
          localObject = ((ContextWrapper)localObject).getPackageName();
          if (("content".equals(str1)) && (paramIntent != null) && (paramIntent.startsWith((String)localObject))) {
            break;
          }
          paramIntent = localUri;
        } while (!"file".equals(str1));
        paramIntent = localUri;
      } while (str2 == null);
      paramIntent = localUri;
    } while (!str2.startsWith(paramContext));
    return null;
  }
  
  public static boolean a(Uri paramUri)
  {
    return a(paramUri, com.yelp.android.a.a, false);
  }
  
  static boolean a(Uri paramUri, String[] paramArrayOfString, boolean paramBoolean)
  {
    if (paramUri == null) {}
    for (;;)
    {
      return false;
      String str = paramUri.getScheme();
      if ((str != null) && ("yelp".equals(str))) {
        return true;
      }
      paramUri = paramUri.getHost();
      if (paramUri != null)
      {
        paramUri = paramUri.toLowerCase(Locale.US);
        int j = paramArrayOfString.length;
        int i = 0;
        while (i < j)
        {
          if (paramArrayOfString[i].equals(paramUri)) {
            return true;
          }
          i += 1;
        }
        if (paramBoolean)
        {
          j = paramArrayOfString.length;
          i = 0;
          while (i < j)
          {
            str = paramArrayOfString[i];
            if ((str.startsWith("*.")) && (str.length() > 2) && (paramUri.endsWith(str.substring(1)))) {
              return true;
            }
            i += 1;
          }
        }
      }
    }
  }
  
  public static boolean a(WebView paramWebView, JavaScriptEventInterface.b paramb, String paramString, Uri paramUri)
  {
    if ((f.a(17)) && (a(paramUri))) {
      paramWebView.addJavascriptInterface(new JavaScriptEventInterface(new Handler(), paramb), paramString);
    }
    return false;
  }
  
  public static Uri b(Uri paramUri)
  {
    Uri localUri = paramUri;
    if (paramUri != null)
    {
      localUri = paramUri;
      if (paramUri.getScheme().equals("yelp"))
      {
        localUri = paramUri;
        if (paramUri.getHost().equals("biz"))
        {
          paramUri = paramUri.toString();
          localUri = Uri.parse("yelp:///" + paramUri.substring("yelp://".length()));
        }
      }
    }
    return localUri;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cf.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */