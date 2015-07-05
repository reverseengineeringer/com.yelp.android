package com.yelp.android.am;

import android.annotation.SuppressLint;
import android.content.Context;
import com.comscore.utils.m;
import com.comscore.utils.n;
import com.yelp.android.ak.c;
import com.yelp.android.ak.d;

@SuppressLint({"NewApi"})
public class a
{
  private String a;
  private String b;
  private m c;
  private Context d;
  private String e;
  private String f;
  private String g;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private Boolean k;
  
  public a(Context paramContext, m paramm)
  {
    d = paramContext;
    c = paramm;
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    if (paramString != null)
    {
      h = paramBoolean;
      String str = c.b("md5RawCrossPublisherId");
      if (g == null) {}
      for (paramBoolean = true;; paramBoolean = false)
      {
        g = n.a(paramString);
        if (!b(g)) {
          break;
        }
        a = c.b("crossPublisherId");
        return;
      }
      if ((h) && (str != null) && (!str.isEmpty()) && (str != g))
      {
        i = true;
        j = paramBoolean;
      }
      a = c(paramString);
      c.a("crossPublisherId", a);
      c.a("md5RawCrossPublisherId", g);
      return;
    }
    a = null;
    g = null;
  }
  
  private boolean b(String paramString)
  {
    String str = c.b("md5RawCrossPublisherId");
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
    c localc = d.c(d);
    if (localc == null)
    {
      h = true;
      a(null, false);
      return;
    }
    if ((localc.b() == 0) && (localc.c() == 0))
    {
      a(localc.a(), true);
      return;
    }
    a(localc.a(), false);
  }
  
  private void i()
  {
    if (c.a("vid").booleanValue()) {
      b = c.b("vid");
    }
    Object localObject;
    String str;
    do
    {
      return;
      localObject = d.d(d);
      str = ((c)localObject).a();
      localObject = "-cs" + ((c)localObject).d();
    } while (b != null);
    b = (n.a(new StringBuilder().append(str).append(d()).toString()) + (String)localObject);
    c.a("vid", b);
  }
  
  private boolean j()
  {
    boolean bool = d.b(d);
    if (k == null) {
      k = Boolean.valueOf(bool);
    }
    while (k.booleanValue() == bool) {
      return bool;
    }
    h();
    return bool;
  }
  
  public void a(String paramString)
  {
    e = paramString;
  }
  
  public boolean a()
  {
    return i;
  }
  
  public String b()
  {
    if (h)
    {
      if (j())
      {
        h();
        if ((i) && (!j)) {
          return "none";
        }
        return a;
      }
      return "none";
    }
    return a;
  }
  
  public String c()
  {
    return b;
  }
  
  public String d()
  {
    if (e == null) {
      e = "";
    }
    return e;
  }
  
  public boolean e()
  {
    return (e == null) || (e.length() == 0);
  }
  
  public void f()
  {
    if (e()) {
      return;
    }
    f = d.d(d).a();
    i();
    h();
  }
  
  public String g()
  {
    if ((h) && (j())) {
      return g;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.am.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */