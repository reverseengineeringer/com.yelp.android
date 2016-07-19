package bolts;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class b
{
  private Context a;
  private String b;
  private Bundle c;
  
  private b(Context paramContext, String paramString, Bundle paramBundle)
  {
    a = paramContext.getApplicationContext();
    b = paramString;
    c = paramBundle;
  }
  
  private static Bundle a(Context paramContext, String paramString, Bundle paramBundle, Intent paramIntent)
  {
    Bundle localBundle = new Bundle();
    paramContext = paramIntent.resolveActivity(paramContext.getPackageManager());
    if (paramContext != null) {
      localBundle.putString("class", paramContext.getShortClassName());
    }
    if ("al_nav_out".equals(paramString))
    {
      if (paramContext != null) {
        localBundle.putString("package", paramContext.getPackageName());
      }
      if (paramIntent.getData() != null) {
        localBundle.putString("outputURL", paramIntent.getData().toString());
      }
      if (paramIntent.getScheme() != null) {
        localBundle.putString("outputURLScheme", paramIntent.getScheme());
      }
      paramContext = paramBundle.keySet().iterator();
    }
    for (;;)
    {
      if (!paramContext.hasNext()) {
        break label402;
      }
      paramString = (String)paramContext.next();
      paramIntent = paramBundle.get(paramString);
      if ((paramIntent instanceof Bundle))
      {
        Iterator localIterator = ((Bundle)paramIntent).keySet().iterator();
        for (;;)
        {
          if (!localIterator.hasNext()) {
            break label346;
          }
          String str1 = (String)localIterator.next();
          String str2 = a(((Bundle)paramIntent).get(str1));
          if (paramString.equals("referer_app_link"))
          {
            if (str1.equalsIgnoreCase("url"))
            {
              localBundle.putString("refererURL", str2);
              continue;
              if (!"al_nav_in".equals(paramString)) {
                break;
              }
              if (paramIntent.getData() != null) {
                localBundle.putString("inputURL", paramIntent.getData().toString());
              }
              if (paramIntent.getScheme() == null) {
                break;
              }
              localBundle.putString("inputURLScheme", paramIntent.getScheme());
              break;
            }
            if (str1.equalsIgnoreCase("app_name"))
            {
              localBundle.putString("refererAppName", str2);
              continue;
            }
            if (str1.equalsIgnoreCase("package"))
            {
              localBundle.putString("sourceApplication", str2);
              continue;
            }
          }
          localBundle.putString(paramString + "/" + str1, str2);
        }
      }
      else
      {
        label346:
        paramIntent = a(paramIntent);
        if (paramString.equals("target_url"))
        {
          paramString = Uri.parse(paramIntent);
          localBundle.putString("targetURL", paramString.toString());
          localBundle.putString("targetURLHost", paramString.getHost());
        }
        else
        {
          localBundle.putString(paramString, paramIntent);
        }
      }
    }
    label402:
    return localBundle;
  }
  
  private static String a(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    if (((paramObject instanceof JSONArray)) || ((paramObject instanceof JSONObject))) {
      return paramObject.toString();
    }
    try
    {
      if ((paramObject instanceof Collection)) {
        return new JSONArray((Collection)paramObject).toString();
      }
      if ((paramObject instanceof Map)) {
        return new JSONObject((Map)paramObject).toString();
      }
      paramObject = paramObject.toString();
      return (String)paramObject;
    }
    catch (Exception paramObject) {}
    return null;
  }
  
  private void a()
  {
    if (b == null) {
      Log.d(getClass().getName(), "Event name is required");
    }
    try
    {
      Object localObject1 = Class.forName("android.support.v4.content.m");
      Object localObject2 = ((Class)localObject1).getMethod("getInstance", new Class[] { Context.class });
      localObject1 = ((Class)localObject1).getMethod("sendBroadcast", new Class[] { Intent.class });
      localObject2 = ((Method)localObject2).invoke(null, new Object[] { a });
      Intent localIntent = new Intent("com.parse.bolts.measurement_event");
      localIntent.putExtra("event_name", b);
      localIntent.putExtra("event_args", c);
      ((Method)localObject1).invoke(localObject2, new Object[] { localIntent });
      return;
    }
    catch (Exception localException)
    {
      Log.d(getClass().getName(), "LocalBroadcastManager in android support library is required to raise bolts event.");
    }
  }
  
  static void a(Context paramContext, String paramString, Intent paramIntent, Map<String, String> paramMap)
  {
    Object localObject1 = new Bundle();
    Object localObject2;
    if (paramIntent != null)
    {
      localObject2 = a.a(paramIntent);
      if (localObject2 == null) {}
    }
    label190:
    for (paramIntent = a(paramContext, paramString, (Bundle)localObject2, paramIntent);; paramIntent = (Intent)localObject1)
    {
      if (paramMap != null)
      {
        localObject1 = paramMap.keySet().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (String)((Iterator)localObject1).next();
          paramIntent.putString((String)localObject2, (String)paramMap.get(localObject2));
          continue;
          localObject2 = paramIntent.getData();
          if (localObject2 != null) {
            ((Bundle)localObject1).putString("intentData", ((Uri)localObject2).toString());
          }
          paramIntent = paramIntent.getExtras();
          if (paramIntent == null) {
            break label190;
          }
          localObject2 = paramIntent.keySet().iterator();
          while (((Iterator)localObject2).hasNext())
          {
            String str = (String)((Iterator)localObject2).next();
            ((Bundle)localObject1).putString(str, a(paramIntent.get(str)));
          }
        }
      }
      new b(paramContext, paramString, paramIntent).a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bolts.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */