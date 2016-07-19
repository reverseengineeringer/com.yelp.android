package com.yelp.android.as;

import android.annotation.SuppressLint;
import android.content.Context;
import com.comscore.applications.EventType;
import com.comscore.utils.m;
import com.comscore.utils.n;
import com.yelp.android.aq.c;
import com.yelp.android.aq.d;
import java.util.HashMap;

@SuppressLint({"NewApi"})
public class b
{
  private com.comscore.analytics.a a;
  private String b;
  private String c;
  private m d;
  private Context e;
  private String f;
  private String g;
  private String h;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private Boolean l;
  private a m;
  
  public b(Context paramContext, m paramm, com.comscore.analytics.a parama)
  {
    e = paramContext;
    d = paramm;
    a = parama;
    m = new a(e, paramm);
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    if (paramString != null)
    {
      i = paramBoolean;
      String str = d.b("md5RawCrossPublisherId");
      if (h == null) {}
      for (paramBoolean = true;; paramBoolean = false)
      {
        h = n.a(paramString);
        if (!b(h)) {
          break;
        }
        b = d.b("crossPublisherId");
        return;
      }
      if ((i) && (str != null) && (!str.isEmpty()) && (str != h))
      {
        j = true;
        k = paramBoolean;
      }
      b = c(paramString);
      d.a("crossPublisherId", b);
      d.a("md5RawCrossPublisherId", h);
      return;
    }
    b = null;
    h = null;
  }
  
  private boolean b(String paramString)
  {
    String str = d.b("md5RawCrossPublisherId");
    return (str != null) && (str.equals(paramString));
  }
  
  private String c(String paramString)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramString != null)
    {
      localObject1 = localObject2;
      if (paramString.length() <= 0) {}
    }
    try
    {
      localObject1 = n.b(paramString);
      return (String)localObject1;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  private void h()
  {
    c localc = d.c(e);
    if (localc == null)
    {
      i = true;
      a(null, false);
      return;
    }
    if ((localc.b() == 0) && (localc.c() == 0))
    {
      a(localc.a(), true);
      return;
    }
    String str = d.b("md5RawCrossPublisherId");
    if (!m.a(str))
    {
      d.c("md5RawCrossPublisherId");
      d.c("crossPublisherId");
      b = null;
      h = null;
    }
    a(localc.a(), false);
  }
  
  private void i()
  {
    Object localObject1;
    if (d.a("vid").booleanValue())
    {
      c = d.b("vid");
      if (!m.a())
      {
        localObject1 = new HashMap();
        ((HashMap)localObject1).put("cs_c12u", d.b("vid"));
        a.a(EventType.AGGREGATE, (HashMap)localObject1, true);
        d.c("vid");
        c = null;
      }
    }
    else
    {
      Object localObject2 = d.f(e);
      localObject1 = ((c)localObject2).a();
      localObject2 = "-cs" + ((c)localObject2).d();
      if (c == null)
      {
        c = (n.a(new StringBuilder().append((String)localObject1).append(d()).toString()) + (String)localObject2);
        d.a("vid", c);
      }
    }
  }
  
  private boolean j()
  {
    boolean bool = d.b(e);
    if (l == null) {
      l = Boolean.valueOf(bool);
    }
    while (l.booleanValue() == bool) {
      return bool;
    }
    h();
    return bool;
  }
  
  public void a(String paramString)
  {
    f = paramString;
  }
  
  public boolean a()
  {
    return j;
  }
  
  public String b()
  {
    if (i)
    {
      if (j())
      {
        h();
        if ((j) && (!k)) {
          return "none";
        }
        return b;
      }
      return "none";
    }
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    if (f == null) {
      f = "";
    }
    return f;
  }
  
  public boolean e()
  {
    return (f == null) || (f.length() == 0);
  }
  
  public void f()
  {
    if (e()) {
      return;
    }
    g = d.f(e).a();
    i();
    h();
  }
  
  public String g()
  {
    if ((i) && (j())) {
      return h;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.as.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */