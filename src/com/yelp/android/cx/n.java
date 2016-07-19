package com.yelp.android.cx;

import java.util.EnumMap;
import java.util.Map;
import jp.line.android.sdk.api.ApiType;

public final class n
  implements com.yelp.android.cw.b
{
  private final Map<ApiType, a<?>> a = new EnumMap(ApiType.class);
  
  public n()
  {
    a.put(ApiType.GET_OTP, new g());
    a.put(ApiType.GET_ACCESS_TOKEN, new b());
    a.put(ApiType.LOGOUT, new h());
    a.put(ApiType.REFRESH_ACCESS_TOKEN, j.a());
    a.put(ApiType.GET_MY_PROFILE, new f());
    a.put(ApiType.POST_EVENT, new i());
    a.put(ApiType.UPLOAD_PROFILE_IMAGE, new k());
    c localc = new c();
    a.put(ApiType.GET_FAVORITE_FRIENDS, localc);
    a.put(ApiType.GET_FRIENDS, localc);
    a.put(ApiType.GET_PROFILES, localc);
    a.put(ApiType.GET_SAME_CHANNEL_FRIENDS, localc);
    a.put(ApiType.GET_GROUPS, new e());
    a.put(ApiType.GET_GROUP_MEMBERS, new d());
  }
  
  public final <RO> void a(com.yelp.android.cw.c paramc, com.yelp.android.cw.d<RO> paramd)
  {
    for (;;)
    {
      try
      {
        locala = (a)a.get(a);
        if (locala == null) {
          break label123;
        }
        if (!locala.a(paramc, paramd)) {
          break;
        }
        com.yelp.android.cw.d locald = new com.yelp.android.cw.d();
        j.a().a(new com.yelp.android.cw.c(ApiType.REFRESH_ACCESS_TOKEN), locald);
        switch (1.a[locald.b().ordinal()])
        {
        case 1: 
          paramd.a(locald.d());
          return;
        }
      }
      catch (Throwable paramc)
      {
        a locala;
        paramd.a(paramc);
        return;
      }
      locala.a(paramc, paramd);
      return;
      paramd.e();
      return;
      label123:
      paramd.a(new NullPointerException("Not implemented"));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cx.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */