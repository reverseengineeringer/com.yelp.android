package com.yelp.android.cz;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.da.b;
import com.yelp.android.db.f;
import com.yelp.android.db.i;
import jp.line.android.sdk.c;
import jp.line.android.sdk.login.LineLoginFuture.ProgressOfLogin;

public class g
{
  private static g a;
  private boolean b;
  private long c;
  private LineLoginFuture.ProgressOfLogin d;
  private f e;
  private i f;
  
  public static g a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new g();
      }
      return a;
    }
    finally {}
  }
  
  private final void b(d paramd)
  {
    if (paramd == null)
    {
      c = -1L;
      d = LineLoginFuture.ProgressOfLogin.STARTED;
      e = null;
      f = null;
      b = false;
      return;
    }
    c = paramd.b();
    d = paramd.d();
    e = paramd.e();
    f = paramd.f();
    b = paramd.a();
  }
  
  public static void c()
  {
    SharedPreferences.Editor localEditor = d().edit();
    localEditor.clear();
    localEditor.commit();
  }
  
  private static SharedPreferences d()
  {
    return c.a().a().getSharedPreferences("linesdk-1", 0);
  }
  
  public final void a(d paramd)
  {
    int j = 1;
    if (paramd != null) {}
    for (;;)
    {
      try
      {
        if (c != paramd.b()) {
          break label344;
        }
        Object localObject1 = d;
        Object localObject2 = paramd.d();
        if (localObject1 != localObject2) {
          break label344;
        }
        i = 1;
        if (i != 0)
        {
          i = j;
          if (i != 0) {}
        }
        else
        {
          try
          {
            localObject1 = d().edit();
            ((SharedPreferences.Editor)localObject1).clear();
            ((SharedPreferences.Editor)localObject1).putBoolean("9", paramd.a());
            ((SharedPreferences.Editor)localObject1).putLong("1", paramd.b());
            ((SharedPreferences.Editor)localObject1).putInt("2", dcode);
            localObject2 = b.a();
            Context localContext = c.a().a();
            f localf = paramd.e();
            if (localf != null)
            {
              ((SharedPreferences.Editor)localObject1).putString("3", ((com.yelp.android.da.a)localObject2).a(localContext, 32454345, b));
              ((SharedPreferences.Editor)localObject1).putString("4", ((com.yelp.android.da.a)localObject2).a(localContext, 32454345, a));
            }
            paramd = paramd.f();
            if (paramd != null)
            {
              ((SharedPreferences.Editor)localObject1).putString("5", ((com.yelp.android.da.a)localObject2).a(localContext, 32454345, a));
              ((SharedPreferences.Editor)localObject1).putLong("6", b);
              ((SharedPreferences.Editor)localObject1).putString("7", ((com.yelp.android.da.a)localObject2).a(localContext, 32454345, c));
              ((SharedPreferences.Editor)localObject1).putBoolean("8", d);
            }
            ((SharedPreferences.Editor)localObject1).commit();
          }
          catch (Throwable paramd)
          {
            b(null);
            continue;
          }
          return;
          b(paramd);
          i = 0;
          continue;
        }
        boolean bool = b;
      }
      finally {}
      long l = c;
      paramd = d;
      paramd = e;
      paramd = f;
      continue;
      label344:
      int i = 0;
    }
  }
  
  public final d b()
  {
    long l;
    try
    {
      if ((c > 0L) && (c + 3600000L < System.currentTimeMillis()))
      {
        localObject1 = new d(c, d, e, f, b);
        return (d)localObject1;
      }
      Object localObject1 = d();
      l = ((SharedPreferences)localObject1).getLong("1", -1L);
      if ((l < 0L) || (3600000L + l < System.currentTimeMillis()))
      {
        if (l > 0L) {
          c();
        }
        return null;
      }
    }
    finally {}
    boolean bool1 = ((SharedPreferences)localObject2).getBoolean("9", false);
    LineLoginFuture.ProgressOfLogin localProgressOfLogin = LineLoginFuture.ProgressOfLogin.findValueByCode(((SharedPreferences)localObject2).getInt("2", -1));
    com.yelp.android.da.a locala = b.a();
    Context localContext = c.a().a();
    Object localObject4 = locala.b(localContext, 32454345, ((SharedPreferences)localObject2).getString("3", null));
    String str = locala.b(localContext, 32454345, ((SharedPreferences)localObject2).getString("4", null));
    if ((localObject4 != null) && (str != null)) {}
    for (localObject4 = new f(str, (String)localObject4);; localObject4 = null)
    {
      str = locala.b(localContext, 32454345, ((SharedPreferences)localObject2).getString("5", null));
      boolean bool2 = ((SharedPreferences)localObject2).getBoolean("8", false);
      Object localObject3;
      if (str != null) {
        if (bool2) {
          localObject3 = i.a(str, ((SharedPreferences)localObject2).getLong("6", -1L), locala.b(localContext, 32454345, ((SharedPreferences)localObject2).getString("7", null)));
        }
      }
      for (;;)
      {
        localObject3 = new d(l, localProgressOfLogin, (f)localObject4, (i)localObject3, bool1);
        b((d)localObject3);
        return (d)localObject3;
        localObject3 = i.a(str);
        continue;
        localObject3 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cz.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */