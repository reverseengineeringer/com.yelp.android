package com.comscore.applications;

import com.comscore.utils.InstallReferrerReceiver;
import com.comscore.utils.l;
import com.comscore.utils.m;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class b
  extends c
{
  protected b(com.comscore.analytics.a parama, EventType paramEventType, String paramString, boolean paramBoolean)
  {
    super(parama, paramEventType, paramString, paramBoolean, true, true);
    b(new com.yelp.android.al.a("ns_ap_gs", String.valueOf(parama.H()), Boolean.valueOf(false)));
    b(new com.yelp.android.al.a("ns_ap_install", String.valueOf(parama.G()), Boolean.valueOf(false)));
    b(new com.yelp.android.al.a("ns_ap_runs", String.valueOf(parama.F()), Boolean.valueOf(false)));
    if (paramBoolean) {
      b(new com.yelp.android.al.a("ns_ap_csf", "1", Boolean.valueOf(false)));
    }
    paramEventType = "0";
    if (l.a()) {
      paramEventType = "1";
    }
    b(new com.yelp.android.al.a("ns_ap_jb", paramEventType, Boolean.valueOf(false)));
    b(new com.yelp.android.al.a("ns_ap_lastrun", String.valueOf(parama.Y()), Boolean.valueOf(false)));
    paramEventType = parama.L();
    if ((paramEventType != null) && (paramEventType.length() > 0)) {
      b(new com.yelp.android.al.a("ns_ap_updated", paramEventType, Boolean.valueOf(false)));
    }
    paramEventType = parama.r().b("exception_ocurrences");
    if ((paramEventType != null) && (paramEventType.length() > 0) && (!paramEventType.equals("0")))
    {
      b(new com.yelp.android.al.a("ns_ap_er", paramEventType, Boolean.valueOf(false)));
      parama.r().c("exception_ocurrences");
    }
    if (paramBoolean)
    {
      parama = InstallReferrerReceiver.a(parama.N());
      if (parama != null)
      {
        paramEventType = parama.keySet().iterator();
        while (paramEventType.hasNext())
        {
          paramString = (String)paramEventType.next();
          a(paramString, (String)parama.get(paramString));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.applications.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */