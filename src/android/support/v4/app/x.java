package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;

public class x
{
  private static final g a = new j();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new i();
      return;
    }
    if (Build.VERSION.SDK_INT >= 20)
    {
      a = new h();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new o();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new n();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new m();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new l();
      return;
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      a = new k();
      return;
    }
  }
  
  private static void b(v paramv, ArrayList<a> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext()) {
      paramv.a((a)paramArrayList.next());
    }
  }
  
  private static void b(w paramw, p paramp)
  {
    if (paramp != null)
    {
      if (!(paramp instanceof c)) {
        break label37;
      }
      paramp = (c)paramp;
      ae.a(paramw, e, g, f, a);
    }
    label37:
    do
    {
      return;
      if ((paramp instanceof f))
      {
        paramp = (f)paramp;
        ae.a(paramw, e, g, f, a);
        return;
      }
    } while (!(paramp instanceof b));
    paramp = (b)paramp;
    ae.a(paramw, e, g, f, a, b, c);
  }
  
  public static class a
    extends aa.a
  {
    public static final aa.a.a d = new aa.a.a() {};
    public int a;
    public CharSequence b;
    public PendingIntent c;
    private final Bundle e;
    private final ag[] f;
    
    public a(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
    {
      this(paramInt, paramCharSequence, paramPendingIntent, new Bundle(), null);
    }
    
    private a(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, ag[] paramArrayOfag)
    {
      a = paramInt;
      b = x.d.d(paramCharSequence);
      c = paramPendingIntent;
      if (paramBundle != null) {}
      for (;;)
      {
        e = paramBundle;
        f = paramArrayOfag;
        return;
        paramBundle = new Bundle();
      }
    }
    
    public int a()
    {
      return a;
    }
    
    public CharSequence b()
    {
      return b;
    }
    
    public PendingIntent c()
    {
      return c;
    }
    
    public Bundle d()
    {
      return e;
    }
    
    public ag[] e()
    {
      return f;
    }
  }
  
  public static class b
    extends x.p
  {
    Bitmap a;
    Bitmap b;
    boolean c;
    
    public b a(Bitmap paramBitmap)
    {
      a = paramBitmap;
      return this;
    }
    
    public b a(CharSequence paramCharSequence)
    {
      f = x.d.d(paramCharSequence);
      g = true;
      return this;
    }
  }
  
  public static class c
    extends x.p
  {
    CharSequence a;
    
    public c a(CharSequence paramCharSequence)
    {
      a = x.d.d(paramCharSequence);
      return this;
    }
  }
  
  public static class d
  {
    Notification A;
    public Notification B = new Notification();
    public ArrayList<String> C;
    public Context a;
    public CharSequence b;
    public CharSequence c;
    PendingIntent d;
    PendingIntent e;
    RemoteViews f;
    public Bitmap g;
    public CharSequence h;
    public int i;
    int j;
    boolean k = true;
    public boolean l;
    public x.p m;
    public CharSequence n;
    int o;
    int p;
    boolean q;
    String r;
    boolean s;
    String t;
    public ArrayList<x.a> u = new ArrayList();
    boolean v = false;
    String w;
    Bundle x;
    int y = 0;
    int z = 0;
    
    public d(Context paramContext)
    {
      a = paramContext;
      B.when = System.currentTimeMillis();
      B.audioStreamType = -1;
      j = 0;
      C = new ArrayList();
    }
    
    private void a(int paramInt, boolean paramBoolean)
    {
      if (paramBoolean)
      {
        localNotification = B;
        flags |= paramInt;
        return;
      }
      Notification localNotification = B;
      flags &= (paramInt ^ 0xFFFFFFFF);
    }
    
    protected static CharSequence d(CharSequence paramCharSequence)
    {
      if (paramCharSequence == null) {}
      while (paramCharSequence.length() <= 5120) {
        return paramCharSequence;
      }
      return paramCharSequence.subSequence(0, 5120);
    }
    
    public Notification a()
    {
      return x.a().a(this, b());
    }
    
    public d a(int paramInt)
    {
      B.icon = paramInt;
      return this;
    }
    
    public d a(long paramLong)
    {
      B.when = paramLong;
      return this;
    }
    
    public d a(PendingIntent paramPendingIntent)
    {
      d = paramPendingIntent;
      return this;
    }
    
    public d a(Bitmap paramBitmap)
    {
      g = paramBitmap;
      return this;
    }
    
    public d a(x.a parama)
    {
      u.add(parama);
      return this;
    }
    
    public d a(x.p paramp)
    {
      if (m != paramp)
      {
        m = paramp;
        if (m != null) {
          m.a(this);
        }
      }
      return this;
    }
    
    public d a(CharSequence paramCharSequence)
    {
      b = d(paramCharSequence);
      return this;
    }
    
    public d a(boolean paramBoolean)
    {
      a(16, paramBoolean);
      return this;
    }
    
    public d b(int paramInt)
    {
      i = paramInt;
      return this;
    }
    
    public d b(CharSequence paramCharSequence)
    {
      c = d(paramCharSequence);
      return this;
    }
    
    protected x.e b()
    {
      return new x.e();
    }
    
    public d c(int paramInt)
    {
      B.defaults = paramInt;
      if ((paramInt & 0x4) != 0)
      {
        Notification localNotification = B;
        flags |= 0x1;
      }
      return this;
    }
    
    public d c(CharSequence paramCharSequence)
    {
      B.tickerText = d(paramCharSequence);
      return this;
    }
    
    public d d(int paramInt)
    {
      y = paramInt;
      return this;
    }
  }
  
  protected static class e
  {
    public Notification a(x.d paramd, w paramw)
    {
      return paramw.b();
    }
  }
  
  public static class f
    extends x.p
  {
    ArrayList<CharSequence> a = new ArrayList();
    
    public f a(CharSequence paramCharSequence)
    {
      f = x.d.d(paramCharSequence);
      g = true;
      return this;
    }
    
    public f b(CharSequence paramCharSequence)
    {
      a.add(x.d.d(paramCharSequence));
      return this;
    }
  }
  
  static abstract interface g
  {
    public abstract Notification a(x.d paramd, x.e parame);
  }
  
  static class h
    extends x.o
  {
    public Notification a(x.d paramd, x.e parame)
    {
      y.a locala = new y.a(a, B, b, c, h, f, i, d, e, g, o, p, q, k, l, j, n, v, C, x, r, s, t);
      x.a(locala, u);
      x.a(locala, m);
      return parame.a(paramd, locala);
    }
  }
  
  static class i
    extends x.h
  {
    public Notification a(x.d paramd, x.e parame)
    {
      z.a locala = new z.a(a, B, b, c, h, f, i, d, e, g, o, p, q, k, l, j, n, v, w, C, x, y, z, A, r, s, t);
      x.a(locala, u);
      x.a(locala, m);
      return parame.a(paramd, locala);
    }
  }
  
  static class j
    implements x.g
  {
    public Notification a(x.d paramd, x.e parame)
    {
      parame = B;
      parame.setLatestEventInfo(a, b, c, d);
      if (j > 0) {
        flags |= 0x80;
      }
      return parame;
    }
  }
  
  static class k
    extends x.j
  {
    public Notification a(x.d paramd, x.e parame)
    {
      parame = B;
      parame.setLatestEventInfo(a, b, c, d);
      parame = ab.a(parame, a, b, c, d, e);
      if (j > 0) {
        flags |= 0x80;
      }
      return parame;
    }
  }
  
  static class l
    extends x.j
  {
    public Notification a(x.d paramd, x.e parame)
    {
      return ac.a(a, B, b, c, h, f, i, d, e, g);
    }
  }
  
  static class m
    extends x.j
  {
    public Notification a(x.d paramd, x.e parame)
    {
      return parame.a(paramd, new ad.a(a, B, b, c, h, f, i, d, e, g, o, p, q));
    }
  }
  
  static class n
    extends x.j
  {
    public Notification a(x.d paramd, x.e parame)
    {
      ae.a locala = new ae.a(a, B, b, c, h, f, i, d, e, g, o, p, q, l, j, n, v, x, r, s, t);
      x.a(locala, u);
      x.a(locala, m);
      return parame.a(paramd, locala);
    }
  }
  
  static class o
    extends x.n
  {
    public Notification a(x.d paramd, x.e parame)
    {
      af.a locala = new af.a(a, B, b, c, h, f, i, d, e, g, o, p, q, k, l, j, n, v, C, x, r, s, t);
      x.a(locala, u);
      x.a(locala, m);
      return parame.a(paramd, locala);
    }
  }
  
  public static abstract class p
  {
    x.d d;
    CharSequence e;
    CharSequence f;
    boolean g = false;
    
    public void a(x.d paramd)
    {
      if (d != paramd)
      {
        d = paramd;
        if (d != null) {
          d.a(this);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */