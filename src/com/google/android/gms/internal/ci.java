package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.overlay.j;
import com.google.android.gms.ads.internal.util.client.a;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONObject;

@fv
public final class ci
  implements bz
{
  private final Map<ib, Integer> a = new WeakHashMap();
  
  private static int a(Context paramContext, Map<String, String> paramMap, String paramString, int paramInt)
  {
    paramMap = (String)paramMap.get(paramString);
    int i = paramInt;
    if (paramMap != null) {}
    try
    {
      i = v.a().a(paramContext, Integer.parseInt(paramMap));
      return i;
    }
    catch (NumberFormatException paramContext)
    {
      gz.d("Could not parse " + paramString + " in a video GMSG: " + paramMap);
    }
    return paramInt;
  }
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    Object localObject2 = (String)paramMap.get("action");
    if (localObject2 == null) {
      gz.d("Action missing from video GMSG.");
    }
    int i;
    int j;
    for (;;)
    {
      return;
      if (gz.a(3))
      {
        localObject1 = new JSONObject(paramMap);
        ((JSONObject)localObject1).remove("google.afma.Notify_dt");
        gz.a("Video GMSG: " + (String)localObject2 + " " + ((JSONObject)localObject1).toString());
      }
      if ("background".equals(localObject2))
      {
        paramMap = (String)paramMap.get("color");
        if (TextUtils.isEmpty(paramMap))
        {
          gz.d("Color parameter missing from color video GMSG.");
          return;
        }
        try
        {
          i = Color.parseColor(paramMap);
          paramMap = paramib.v();
          if (paramMap != null)
          {
            paramMap = paramMap.a();
            if (paramMap != null)
            {
              paramMap.setBackgroundColor(i);
              return;
            }
          }
        }
        catch (IllegalArgumentException paramib)
        {
          gz.d("Invalid color parameter in video GMSG.");
          return;
        }
        a.put(paramib, Integer.valueOf(i));
        return;
      }
      localObject1 = paramib.v();
      if (localObject1 == null)
      {
        gz.d("Could not get underlay container for a video GMSG.");
        return;
      }
      boolean bool1 = "new".equals(localObject2);
      boolean bool2 = "position".equals(localObject2);
      if ((bool1) || (bool2))
      {
        localObject2 = paramib.getContext();
        j = a((Context)localObject2, paramMap, "x", 0);
        int k = a((Context)localObject2, paramMap, "y", 0);
        int m = a((Context)localObject2, paramMap, "w", -1);
        int n = a((Context)localObject2, paramMap, "h", -1);
        try
        {
          i = Integer.parseInt((String)paramMap.get("player"));
          if ((bool1) && (((ia)localObject1).a() == null))
          {
            ((ia)localObject1).a(j, k, m, n, i);
            if (!a.containsKey(paramib)) {
              continue;
            }
            i = ((Integer)a.get(paramib)).intValue();
            paramib = ((ia)localObject1).a();
            paramib.setBackgroundColor(i);
            paramib.l();
          }
        }
        catch (NumberFormatException paramMap)
        {
          for (;;)
          {
            i = 0;
          }
          ((ia)localObject1).a(j, k, m, n);
          return;
        }
      }
    }
    Object localObject1 = ((ia)localObject1).a();
    if (localObject1 == null)
    {
      j.a(paramib);
      return;
    }
    if ("click".equals(localObject2))
    {
      paramib = paramib.getContext();
      i = a(paramib, paramMap, "x", 0);
      j = a(paramib, paramMap, "y", 0);
      long l = SystemClock.uptimeMillis();
      paramib = MotionEvent.obtain(l, l, 0, i, j, 0);
      ((j)localObject1).a(paramib);
      paramib.recycle();
      return;
    }
    if ("currentTime".equals(localObject2))
    {
      paramib = (String)paramMap.get("time");
      if (paramib == null)
      {
        gz.d("Time parameter missing from currentTime video GMSG.");
        return;
      }
      try
      {
        ((j)localObject1).a((int)(Float.parseFloat(paramib) * 1000.0F));
        return;
      }
      catch (NumberFormatException paramMap)
      {
        gz.d("Could not parse time parameter from currentTime video GMSG: " + paramib);
        return;
      }
    }
    if ("hide".equals(localObject2))
    {
      ((j)localObject1).setVisibility(4);
      return;
    }
    if ("load".equals(localObject2))
    {
      ((j)localObject1).g();
      return;
    }
    if ("mimetype".equals(localObject2))
    {
      ((j)localObject1).setMimeType((String)paramMap.get("mimetype"));
      return;
    }
    if ("muted".equals(localObject2))
    {
      if (Boolean.parseBoolean((String)paramMap.get("muted")))
      {
        ((j)localObject1).j();
        return;
      }
      ((j)localObject1).k();
      return;
    }
    if ("pause".equals(localObject2))
    {
      ((j)localObject1).h();
      return;
    }
    if ("play".equals(localObject2))
    {
      ((j)localObject1).i();
      return;
    }
    if ("show".equals(localObject2))
    {
      ((j)localObject1).setVisibility(0);
      return;
    }
    if ("src".equals(localObject2))
    {
      ((j)localObject1).a((String)paramMap.get("src"));
      return;
    }
    if ("volume".equals(localObject2))
    {
      paramib = (String)paramMap.get("volume");
      if (paramib == null)
      {
        gz.d("Level parameter missing from volume video GMSG.");
        return;
      }
      try
      {
        ((j)localObject1).a(Float.parseFloat(paramib));
        return;
      }
      catch (NumberFormatException paramMap)
      {
        gz.d("Could not parse volume parameter from volume video GMSG: " + paramib);
        return;
      }
    }
    if ("watermark".equals(localObject2))
    {
      ((j)localObject1).l();
      return;
    }
    gz.d("Unknown video action: " + (String)localObject2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */