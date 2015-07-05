package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.util.Map;

@ey
public final class cj
  implements cd
{
  private static int a(DisplayMetrics paramDisplayMetrics, Map<String, String> paramMap, String paramString, int paramInt)
  {
    paramMap = (String)paramMap.get(paramString);
    int i = paramInt;
    if (paramMap != null) {}
    try
    {
      i = gq.a(paramDisplayMetrics, Integer.parseInt(paramMap));
      return i;
    }
    catch (NumberFormatException paramDisplayMetrics)
    {
      gr.W("Could not parse " + paramString + " in a video GMSG: " + paramMap);
    }
    return paramInt;
  }
  
  public void a(gu paramgu, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("action");
    if (str == null)
    {
      gr.W("Action missing from video GMSG.");
      return;
    }
    Object localObject = paramgu.dC();
    if (localObject == null)
    {
      gr.W("Could not get ad overlay for a video GMSG.");
      return;
    }
    boolean bool1 = "new".equalsIgnoreCase(str);
    boolean bool2 = "position".equalsIgnoreCase(str);
    int i;
    int j;
    if ((bool1) || (bool2))
    {
      paramgu = paramgu.getContext().getResources().getDisplayMetrics();
      i = a(paramgu, paramMap, "x", 0);
      j = a(paramgu, paramMap, "y", 0);
      int k = a(paramgu, paramMap, "w", -1);
      int m = a(paramgu, paramMap, "h", -1);
      if ((bool1) && (((dp)localObject).ce() == null))
      {
        ((dp)localObject).c(i, j, k, m);
        return;
      }
      ((dp)localObject).b(i, j, k, m);
      return;
    }
    localObject = ((dp)localObject).ce();
    if (localObject == null)
    {
      dt.a(paramgu, "no_video_view", null);
      return;
    }
    if ("click".equalsIgnoreCase(str))
    {
      paramgu = paramgu.getContext().getResources().getDisplayMetrics();
      i = a(paramgu, paramMap, "x", 0);
      j = a(paramgu, paramMap, "y", 0);
      long l = SystemClock.uptimeMillis();
      paramgu = MotionEvent.obtain(l, l, 0, i, j, 0);
      ((dt)localObject).b(paramgu);
      paramgu.recycle();
      return;
    }
    if ("controls".equalsIgnoreCase(str))
    {
      paramgu = (String)paramMap.get("enabled");
      if (paramgu == null)
      {
        gr.W("Enabled parameter missing from controls video GMSG.");
        return;
      }
      ((dt)localObject).s(Boolean.parseBoolean(paramgu));
      return;
    }
    if ("currentTime".equalsIgnoreCase(str))
    {
      paramgu = (String)paramMap.get("time");
      if (paramgu == null)
      {
        gr.W("Time parameter missing from currentTime video GMSG.");
        return;
      }
      try
      {
        ((dt)localObject).seekTo((int)(Float.parseFloat(paramgu) * 1000.0F));
        return;
      }
      catch (NumberFormatException paramMap)
      {
        gr.W("Could not parse time parameter from currentTime video GMSG: " + paramgu);
        return;
      }
    }
    if ("hide".equalsIgnoreCase(str))
    {
      ((dt)localObject).setVisibility(4);
      return;
    }
    if ("load".equalsIgnoreCase(str))
    {
      ((dt)localObject).cq();
      return;
    }
    if ("pause".equalsIgnoreCase(str))
    {
      ((dt)localObject).pause();
      return;
    }
    if ("play".equalsIgnoreCase(str))
    {
      ((dt)localObject).play();
      return;
    }
    if ("show".equalsIgnoreCase(str))
    {
      ((dt)localObject).setVisibility(0);
      return;
    }
    if ("src".equalsIgnoreCase(str))
    {
      ((dt)localObject).C((String)paramMap.get("src"));
      return;
    }
    gr.W("Unknown video action: " + str);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */