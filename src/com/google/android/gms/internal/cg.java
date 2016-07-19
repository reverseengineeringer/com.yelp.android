package com.google.android.gms.internal;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.f;
import com.google.android.gms.ads.internal.overlay.AdLauncherIntentInfoParcel;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@fv
public final class cg
  implements bz
{
  private final cb a;
  private final f b;
  private final ej c;
  
  public cg(cb paramcb, f paramf, ej paramej)
  {
    a = paramcb;
    b = paramf;
    c = paramej;
  }
  
  private void a(boolean paramBoolean)
  {
    if (c != null) {
      c.a(paramBoolean);
    }
  }
  
  private static boolean a(Map<String, String> paramMap)
  {
    return "1".equals(paramMap.get("custom_close"));
  }
  
  private static int b(Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("o");
    if (paramMap != null)
    {
      if ("p".equalsIgnoreCase(paramMap)) {
        return s.g().b();
      }
      if ("l".equalsIgnoreCase(paramMap)) {
        return s.g().a();
      }
      if ("c".equalsIgnoreCase(paramMap)) {
        return s.g().c();
      }
    }
    return -1;
  }
  
  private static void b(ib paramib, Map<String, String> paramMap)
  {
    paramMap = (String)paramMap.get("u");
    if (TextUtils.isEmpty(paramMap))
    {
      gz.d("Destination url cannot be empty.");
      return;
    }
    new a(paramib, paramMap).g();
  }
  
  private static void c(ib paramib, Map<String, String> paramMap)
  {
    Context localContext = paramib.getContext();
    if (TextUtils.isEmpty((String)paramMap.get("u")))
    {
      gz.d("Destination url cannot be empty.");
      return;
    }
    ic localic = paramib.l();
    paramib = new b(paramib).a(localContext, paramMap);
    try
    {
      localic.a(new AdLauncherIntentInfoParcel(paramib));
      return;
    }
    catch (ActivityNotFoundException paramib)
    {
      gz.d(paramib.getMessage());
    }
  }
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("a");
    if (str == null) {
      gz.d("Action missing from an open GMSG.");
    }
    ic localic;
    do
    {
      return;
      if ((b != null) && (!b.b()))
      {
        b.a((String)paramMap.get("u"));
        return;
      }
      localic = paramib.l();
      if ("expand".equalsIgnoreCase(str))
      {
        if (paramib.p())
        {
          gz.d("Cannot expand WebView that is already expanded.");
          return;
        }
        a(false);
        localic.a(a(paramMap), b(paramMap));
        return;
      }
      if ("webapp".equalsIgnoreCase(str))
      {
        paramib = (String)paramMap.get("u");
        a(false);
        if (paramib != null)
        {
          localic.a(a(paramMap), b(paramMap), paramib);
          return;
        }
        localic.a(a(paramMap), b(paramMap), (String)paramMap.get("html"), (String)paramMap.get("baseurl"));
        return;
      }
      if (!"in_app_purchase".equalsIgnoreCase(str)) {
        break;
      }
      paramib = (String)paramMap.get("product_id");
      paramMap = (String)paramMap.get("report_urls");
    } while (a == null);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = paramMap.split(" ");
      a.a(paramib, new ArrayList(Arrays.asList(paramMap)));
      return;
    }
    a.a(paramib, new ArrayList());
    return;
    if (("app".equalsIgnoreCase(str)) && ("true".equalsIgnoreCase((String)paramMap.get("play_store"))))
    {
      b(paramib, paramMap);
      return;
    }
    if (("app".equalsIgnoreCase(str)) && ("true".equalsIgnoreCase((String)paramMap.get("system_browser"))))
    {
      a(true);
      c(paramib, paramMap);
      return;
    }
    a(true);
    str = (String)paramMap.get("u");
    if (!TextUtils.isEmpty(str)) {}
    for (paramib = s.e().a(paramib, str);; paramib = str)
    {
      localic.a(new AdLauncherIntentInfoParcel((String)paramMap.get("i"), paramib, (String)paramMap.get("m"), (String)paramMap.get("p"), (String)paramMap.get("c"), (String)paramMap.get("f"), (String)paramMap.get("e")));
      return;
    }
  }
  
  public static class a
    extends gy
  {
    private final String a = "play.google.com";
    private final String b = "market";
    private final int c = 10;
    private final String d;
    private final ib e;
    
    public a(ib paramib, String paramString)
    {
      e = paramib;
      d = paramString;
    }
    
    public Intent a(String paramString)
    {
      paramString = Uri.parse(paramString);
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.addFlags(268435456);
      localIntent.setData(paramString);
      return localIntent;
    }
    
    public void a()
    {
      int i = 0;
      Object localObject1 = d;
      if (i < 10) {}
      for (;;)
      {
        try
        {
          localObject2 = new URL((String)localObject1);
          boolean bool = "play.google.com".equalsIgnoreCase(((URL)localObject2).getHost());
          if (!bool) {
            continue;
          }
        }
        catch (IndexOutOfBoundsException localIndexOutOfBoundsException1)
        {
          Object localObject2;
          HttpURLConnection localHttpURLConnection;
          gz.d("Error while parsing ping URL: " + (String)localObject1, localIndexOutOfBoundsException1);
          continue;
        }
        catch (IOException localIOException1)
        {
          gz.d("Error while pinging URL: " + (String)localObject1, localIOException1);
          continue;
        }
        catch (RuntimeException localRuntimeException1)
        {
          gz.d("Error while pinging URL: " + (String)localObject1, localRuntimeException1);
          continue;
          Object localObject4 = "";
          continue;
        }
        localObject1 = a((String)localObject1);
        s.e().a(e.getContext(), (Intent)localObject1);
        return;
        if (!"market".equalsIgnoreCase(((URL)localObject2).getProtocol()))
        {
          localHttpURLConnection = (HttpURLConnection)((URL)localObject2).openConnection();
          try
          {
            s.e().a(e.getContext(), e.o().b, false, localHttpURLConnection);
            int j = localHttpURLConnection.getResponseCode();
            Map localMap = localHttpURLConnection.getHeaderFields();
            if ((j >= 300) && (j <= 399))
            {
              localObject2 = null;
              if (localMap.containsKey("Location"))
              {
                localObject2 = (List)localMap.get("Location");
                if ((localObject2 == null) || (((List)localObject2).size() <= 0)) {
                  continue;
                }
                localObject2 = (String)((List)localObject2).get(0);
                if (TextUtils.isEmpty((CharSequence)localObject2))
                {
                  gz.d("Arrived at landing page, this ideally should not happen. Will open it in browser.");
                  localHttpURLConnection.disconnect();
                }
              }
              else
              {
                if (!localMap.containsKey("location")) {
                  continue;
                }
                localObject2 = (List)localMap.get("location");
                continue;
              }
            }
          }
          finally
          {
            try
            {
              localHttpURLConnection.disconnect();
              i += 1;
              localObject1 = localObject2;
            }
            catch (RuntimeException localRuntimeException2)
            {
              localObject1 = localRuntimeException1;
              localObject4 = localRuntimeException2;
              continue;
            }
            catch (IOException localIOException2)
            {
              localObject1 = localObject4;
              localObject4 = localIOException2;
              continue;
            }
            catch (IndexOutOfBoundsException localIndexOutOfBoundsException2)
            {
              localObject1 = localObject4;
              localObject4 = localIndexOutOfBoundsException2;
              continue;
            }
            localObject3 = finally;
            localHttpURLConnection.disconnect();
          }
        }
      }
    }
    
    public void b() {}
  }
  
  public static class b
  {
    private final ib a;
    
    public b(ib paramib)
    {
      a = paramib;
    }
    
    public Intent a(Context paramContext, Map<String, String> paramMap)
    {
      Object localObject1 = null;
      Object localObject3 = (ActivityManager)paramContext.getSystemService("activity");
      Object localObject2 = (String)paramMap.get("u");
      if (TextUtils.isEmpty((CharSequence)localObject2))
      {
        paramMap = (Map<String, String>)localObject1;
        return paramMap;
      }
      localObject1 = localObject2;
      if (a != null) {
        localObject1 = s.e().a(a, (String)localObject2);
      }
      localObject1 = Uri.parse((String)localObject1);
      boolean bool1 = Boolean.parseBoolean((String)paramMap.get("use_first_package"));
      boolean bool2 = Boolean.parseBoolean((String)paramMap.get("use_running_process"));
      if ("http".equalsIgnoreCase(((Uri)localObject1).getScheme())) {
        paramMap = ((Uri)localObject1).buildUpon().scheme("https").build();
      }
      for (;;)
      {
        localObject2 = new ArrayList();
        Intent localIntent = a((Uri)localObject1);
        paramMap = a(paramMap);
        localObject1 = a(paramContext, localIntent, (ArrayList)localObject2);
        if (localObject1 != null)
        {
          return a(localIntent, (ResolveInfo)localObject1);
          if ("https".equalsIgnoreCase(((Uri)localObject1).getScheme())) {
            paramMap = ((Uri)localObject1).buildUpon().scheme("http").build();
          }
        }
        else
        {
          if (paramMap != null)
          {
            paramMap = a(paramContext, paramMap);
            if (paramMap != null)
            {
              localObject1 = a(localIntent, paramMap);
              paramMap = (Map<String, String>)localObject1;
              if (a(paramContext, (Intent)localObject1) != null) {
                break;
              }
            }
          }
          if (((ArrayList)localObject2).size() == 0) {
            return localIntent;
          }
          if ((bool2) && (localObject3 != null))
          {
            paramContext = ((ActivityManager)localObject3).getRunningAppProcesses();
            if (paramContext != null)
            {
              do
              {
                paramMap = ((ArrayList)localObject2).iterator();
                while (!((Iterator)localObject3).hasNext())
                {
                  if (!paramMap.hasNext()) {
                    break;
                  }
                  localObject1 = (ResolveInfo)paramMap.next();
                  localObject3 = paramContext.iterator();
                }
              } while (!nextprocessName.equals(activityInfo.packageName));
              return a(localIntent, (ResolveInfo)localObject1);
            }
          }
          if (bool1) {
            return a(localIntent, (ResolveInfo)((ArrayList)localObject2).get(0));
          }
          return localIntent;
        }
        paramMap = null;
      }
    }
    
    public Intent a(Intent paramIntent, ResolveInfo paramResolveInfo)
    {
      paramIntent = new Intent(paramIntent);
      paramIntent.setClassName(activityInfo.packageName, activityInfo.name);
      return paramIntent;
    }
    
    public Intent a(Uri paramUri)
    {
      if (paramUri == null) {
        return null;
      }
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.addFlags(268435456);
      localIntent.setData(paramUri);
      localIntent.setAction("android.intent.action.VIEW");
      return localIntent;
    }
    
    public ResolveInfo a(Context paramContext, Intent paramIntent)
    {
      return a(paramContext, paramIntent, new ArrayList());
    }
    
    public ResolveInfo a(Context paramContext, Intent paramIntent, ArrayList<ResolveInfo> paramArrayList)
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext == null) {
        return null;
      }
      List localList = paramContext.queryIntentActivities(paramIntent, 65536);
      paramContext = paramContext.resolveActivity(paramIntent, 65536);
      int i;
      if ((localList != null) && (paramContext != null))
      {
        i = 0;
        if (i < localList.size())
        {
          paramIntent = (ResolveInfo)localList.get(i);
          if ((paramContext == null) || (!activityInfo.name.equals(activityInfo.name))) {}
        }
      }
      for (;;)
      {
        paramArrayList.addAll(localList);
        return paramContext;
        i += 1;
        break;
        paramContext = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */