package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import java.util.Map;

public class ch
  implements bz
{
  private final a a;
  
  public ch(a parama)
  {
    a = parama;
  }
  
  public static void a(ib paramib, a parama)
  {
    paramib.l().a("/reward", new ch(parama));
  }
  
  private void a(Map<String, String> paramMap)
  {
    try
    {
      int i = Integer.parseInt((String)paramMap.get("amount"));
      paramMap = (String)paramMap.get("type");
      if (!TextUtils.isEmpty(paramMap))
      {
        paramMap = new RewardItemParcel(paramMap, i);
        a.b(paramMap);
        return;
      }
    }
    catch (NumberFormatException paramMap)
    {
      for (;;)
      {
        gz.d("Unable to parse reward amount.", paramMap);
        paramMap = null;
      }
    }
  }
  
  private void b(Map<String, String> paramMap)
  {
    a.E();
  }
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    paramib = (String)paramMap.get("action");
    if ("grant".equals(paramib)) {
      a(paramMap);
    }
    while (!"video_start".equals(paramib)) {
      return;
    }
    b(paramMap);
  }
  
  public static abstract interface a
  {
    public abstract void E();
    
    public abstract void b(RewardItemParcel paramRewardItemParcel);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */