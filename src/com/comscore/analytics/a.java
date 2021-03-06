package com.comscore.analytics;

import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.comscore.applications.EventType;
import com.comscore.utils.ConnectivityChangeReceiver;
import com.comscore.utils.DispatchQueue;
import com.comscore.utils.TransmissionMode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicInteger;

public class a
{
  protected AtomicInteger A = new AtomicInteger(0);
  protected long B;
  protected long C;
  protected long D;
  protected long E;
  protected long F;
  protected long G;
  protected long H;
  protected long I;
  protected long J;
  protected SessionState K = SessionState.INACTIVE;
  protected long L;
  protected long M;
  protected long N;
  protected int O;
  protected int P;
  protected int Q;
  protected long R;
  protected long S;
  protected long T;
  protected int U;
  protected long V;
  protected long W;
  protected Runnable X;
  protected String Y;
  String Z;
  com.comscore.utils.j a;
  Context aa;
  protected final HashMap<String, String> ab = new HashMap();
  protected final HashMap<String, String> ac = new HashMap();
  boolean ad = true;
  protected long ae = 0L;
  protected boolean af = false;
  protected Thread.UncaughtExceptionHandler ag = Thread.getDefaultUncaughtExceptionHandler();
  boolean ah;
  TransmissionMode ai;
  TransmissionMode aj;
  String[] ak;
  private com.yelp.android.as.b al;
  private boolean am = true;
  private boolean an;
  com.comscore.utils.m b;
  com.comscore.applications.d c;
  com.comscore.utils.d d;
  @Deprecated
  DispatchQueue e;
  com.yelp.android.at.a f;
  com.yelp.android.ar.c g;
  ConnectivityChangeReceiver h;
  protected Runnable i;
  protected Runnable j;
  protected long k;
  protected boolean l = true;
  protected boolean m = true;
  boolean n = false;
  AtomicInteger o = new AtomicInteger();
  long p;
  AtomicInteger q = new AtomicInteger(0);
  long r;
  long s;
  String t;
  String u;
  boolean v = true;
  String w;
  protected ApplicationState x = ApplicationState.INACTIVE;
  protected AtomicInteger y = new AtomicInteger(0);
  protected AtomicInteger z = new AtomicInteger(0);
  
  public a()
  {
    a();
  }
  
  private String a(String paramString, Properties paramProperties, boolean paramBoolean)
  {
    if (paramProperties != null)
    {
      paramProperties = paramProperties.getProperty(paramString);
      if (paramProperties != null)
      {
        b.a(paramString, paramProperties);
        return paramProperties;
      }
    }
    if ((paramBoolean) && (b.a(paramString).booleanValue())) {
      return b.b(paramString);
    }
    return null;
  }
  
  private void a(TransmissionMode paramTransmissionMode)
  {
    if (!am) {
      return;
    }
    ai = paramTransmissionMode;
  }
  
  private void ap()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("lastApplicationAccumulationTimestamp");
    localArrayList.add("lastSessionAccumulationTimestamp");
    a("lastActivityTime", localArrayList);
    a("ns_ap_fg", "foregroundTransitionsCount");
    a("installTime", "installId");
    a("ns_ap_ver", "previousVersion");
  }
  
  private void b(TransmissionMode paramTransmissionMode)
  {
    if (!am) {
      return;
    }
    aj = paramTransmissionMode;
  }
  
  private void b(String paramString1, String paramString2)
  {
    if (!am) {
      return;
    }
    ab.put(paramString1, paramString2);
  }
  
  private void c(String paramString)
  {
    if (!am) {}
    while (al == null) {
      return;
    }
    al.a(paramString);
    al.f();
  }
  
  private void d(String paramString)
  {
    if (!am) {}
    do
    {
      return;
      Z = paramString;
    } while (b == null);
    b.a("appName", Z);
  }
  
  private void e(String paramString)
  {
    if (!am) {
      return;
    }
    if (ae()) {}
    for (String str = "https://sb.scorecardresearch.com/p2?";; str = "http://b.scorecardresearch.com/p2?")
    {
      b(str);
      b("c2", paramString);
      return;
    }
  }
  
  protected void A()
  {
    if (!am) {
      return;
    }
    long l1 = com.comscore.utils.h.a();
    if (l1 - T >= 300000L) {
      Q += 1;
    }
    T = l1;
  }
  
  protected void B()
  {
    if (!am) {
      return;
    }
    long l1 = com.comscore.utils.h.a();
    if (l1 - S >= 300000L) {
      P += 1;
    }
    S = l1;
  }
  
  protected void C()
  {
    a(true);
  }
  
  protected void D()
  {
    b(true);
  }
  
  public ApplicationState E()
  {
    return x;
  }
  
  public int F()
  {
    return o.get();
  }
  
  public long G()
  {
    return r;
  }
  
  public long H()
  {
    return s;
  }
  
  public long I()
  {
    return p;
  }
  
  public int J()
  {
    return q.get();
  }
  
  public String K()
  {
    return t;
  }
  
  public String L()
  {
    String str = u;
    if ((u != null) && (u.length() > 0))
    {
      b.c("previousVersion");
      u = null;
    }
    return str;
  }
  
  public long M()
  {
    return k;
  }
  
  public Context N()
  {
    return aa;
  }
  
  public String O()
  {
    return w;
  }
  
  public boolean P()
  {
    return ad;
  }
  
  public String Q()
  {
    return Y;
  }
  
  public String R()
  {
    if (al == null) {
      return null;
    }
    return al.b();
  }
  
  public String S()
  {
    if (al == null) {
      return null;
    }
    return al.c();
  }
  
  public com.yelp.android.as.b T()
  {
    return al;
  }
  
  public String U()
  {
    if (al == null) {
      return "";
    }
    return al.d();
  }
  
  public String V()
  {
    Object localObject;
    PackageManager localPackageManager;
    if (((Z == null) || (Z.length() == 0)) && (aa != null))
    {
      localObject = aa.getPackageName();
      localPackageManager = aa.getPackageManager();
    }
    try
    {
      localObject = localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo((String)localObject, 0));
      if (localObject != null) {
        c(localObject.toString(), false);
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        Z = b.b("appName");
      }
    }
    return Z;
  }
  
  public String W()
  {
    return "3.1508.28";
  }
  
  public long X()
  {
    return H;
  }
  
  public long Y()
  {
    return I;
  }
  
  public HashMap<String, String> Z()
  {
    return ab;
  }
  
  protected com.yelp.android.ar.b a(EventType paramEventType, HashMap<String, String> paramHashMap, String paramString)
  {
    return com.comscore.applications.c.a(this, paramEventType, paramHashMap, paramString);
  }
  
  protected com.yelp.android.as.b a(Context paramContext, com.comscore.utils.m paramm)
  {
    return new com.yelp.android.as.b(paramContext, paramm, this);
  }
  
  public void a()
  {
    ai = TransmissionMode.DEFAULT;
    aj = TransmissionMode.DEFAULT;
    ah = false;
    ak = com.comscore.utils.f.c;
    x = ApplicationState.INACTIVE;
    K = SessionState.INACTIVE;
    n = false;
    o.set(0);
    p = -1L;
    q.set(0);
    s = -1L;
    r = -1L;
    t = null;
    u = null;
    y.set(0);
    z.set(0);
    B = 0L;
    C = 0L;
    D = 0L;
    E = 0L;
    F = 0L;
    G = 0L;
    L = 0L;
    N = 0L;
    M = 0L;
    H = -1L;
    I = 0L;
    Q = -1;
    P = -1;
    U = 0;
    V = -1L;
    J = -1L;
    W = -1L;
    R = -1L;
    S = -1L;
    T = -1L;
    r = -1L;
    s = -1L;
    ai();
    if (j != null)
    {
      f.b(j);
      j = null;
    }
    if (X != null)
    {
      f.b(X);
      X = null;
    }
    if (c != null) {
      c.e();
    }
    if (d != null) {
      d.h();
    }
    if (f != null) {
      f.c();
    }
    if (b != null) {
      b.d();
    }
  }
  
  void a(int paramInt, boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      return;
      ak();
      int i1 = paramInt;
      if (paramInt < 60) {
        i1 = 60;
      }
      l = paramBoolean;
      k = (i1 * 1000);
      if (x == ApplicationState.FOREGROUND)
      {
        aj();
        return;
      }
    } while ((x != ApplicationState.BACKGROUND_UX_ACTIVE) || (l));
    aj();
  }
  
  public void a(Context paramContext)
  {
    if ((aa != null) || (paramContext == null)) {
      return;
    }
    aa = paramContext;
    f = e();
    f.a(new h(this), true);
  }
  
  protected void a(ApplicationState paramApplicationState)
  {
    com.comscore.utils.c.a(this, "Leaving application state: " + paramApplicationState);
    switch (d.a[paramApplicationState.ordinal()])
    {
    default: 
      return;
    case 1: 
      h.a();
      c.a(3000);
      aa.registerReceiver(h, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
      d.a();
      return;
    case 2: 
      ak();
      return;
    }
    a(null);
    ak();
  }
  
  protected void a(ApplicationState paramApplicationState1, ApplicationState paramApplicationState2)
  {
    if (!am) {}
    while ((paramApplicationState2 == ApplicationState.INACTIVE) || (!ad()) || (n)) {
      return;
    }
    a(EventType.START, ac, false);
  }
  
  protected void a(SessionState paramSessionState)
  {
    if (!am) {}
    long l1;
    do
    {
      return;
      com.comscore.utils.c.a(this, "Leaving session state: " + paramSessionState);
      l1 = com.comscore.utils.h.a();
      switch (d.b[paramSessionState.ordinal()])
      {
      default: 
        return;
      case 1: 
        if (X != null)
        {
          f.b(X);
          X = null;
        }
        T = l1;
      case 2: 
        S = l1;
      case 3: 
        R = l1;
        return;
      }
    } while (z());
    long l2 = L;
    L = (l1 - W + l2);
  }
  
  protected void a(SessionState paramSessionState1, SessionState paramSessionState2) {}
  
  void a(EventType paramEventType, HashMap<String, String> paramHashMap)
  {
    if (!am) {}
    do
    {
      return;
      if (an())
      {
        al();
        return;
      }
      am();
      if ((!n) && (paramEventType != EventType.START)) {
        g.a(a(EventType.START, new HashMap(), Y), false);
      }
    } while (paramEventType == EventType.CLOSE);
    g.a(a(paramEventType, com.comscore.utils.n.a(paramHashMap), Y), false);
  }
  
  public void a(EventType paramEventType, HashMap<String, String> paramHashMap, boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      return;
      if (!paramBoolean)
      {
        a(paramEventType, paramHashMap);
        return;
      }
    } while (f == null);
    f.a(new v(this, paramEventType, paramHashMap), paramBoolean);
  }
  
  public void a(TransmissionMode paramTransmissionMode, boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      do
      {
        return;
      } while (paramTransmissionMode == null);
      if (!paramBoolean)
      {
        a(paramTransmissionMode);
        return;
      }
    } while ((f == null) || (ab() == paramTransmissionMode));
    f.a(new p(this, paramTransmissionMode), paramBoolean);
  }
  
  protected void a(com.comscore.utils.m paramm)
  {
    ap();
    g.a();
  }
  
  public void a(String paramString)
  {
    w = paramString;
  }
  
  void a(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString2);
    a(paramString1, localArrayList);
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      return;
      if (!paramBoolean)
      {
        b(paramString1, paramString2);
        return;
      }
    } while (f == null);
    f.a(new n(this, paramString1, paramString2), paramBoolean);
  }
  
  void a(String paramString, ArrayList<String> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      String str1 = (String)paramArrayList.next();
      String str2 = b.b(paramString);
      String str3 = b.b(str1);
      if ((com.comscore.utils.n.f(str2)) && (com.comscore.utils.n.g(str3))) {
        b.a(str1, str2);
      }
    }
    b.c(paramString);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      do
      {
        return;
      } while ((paramString == null) || (paramString.length() == 0));
      if (!paramBoolean)
      {
        b(paramString);
        return;
      }
    } while (f == null);
    f.a(new i(this, paramString), paramBoolean);
  }
  
  protected void a(boolean paramBoolean)
  {
    if (!am) {
      return;
    }
    long l1 = com.comscore.utils.h.a();
    long l2 = l1 - J;
    switch (d.a[x.ordinal()])
    {
    }
    for (;;)
    {
      J = l1;
      if (!paramBoolean) {
        break;
      }
      b.a("lastApplicationAccumulationTimestamp", Long.toString(J));
      b.a("foregroundTransitionsCount", Long.toString(A.get()));
      b.a("accumulatedForegroundTime", Long.toString(F));
      b.a("accumulatedBackgroundTime", Long.toString(E));
      b.a("accumulatedInactiveTime", Long.toString(G));
      b.a("totalForegroundTime", Long.toString(B));
      b.a("totalBackgroundTime", Long.toString(C));
      b.a("totalInactiveTime", Long.toString(D));
      return;
      F += l2;
      B = (l2 + B);
      continue;
      E += l2;
      C = (l2 + C);
      continue;
      G += l2;
      D = (l2 + D);
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!am) {}
    do
    {
      return;
      if (!paramBoolean2)
      {
        r(paramBoolean1);
        return;
      }
    } while (f == null);
    f.a(new j(this, paramBoolean1), paramBoolean2);
  }
  
  public void a(String[] paramArrayOfString, boolean paramBoolean)
  {
    if (!am) {}
    while ((f == null) || (paramArrayOfString == ak) || (paramArrayOfString == null) || (paramArrayOfString.length <= 0)) {
      return;
    }
    f.a(new s(this, paramArrayOfString), paramBoolean);
  }
  
  public String aa()
  {
    return (String)Z().get("c2");
  }
  
  public TransmissionMode ab()
  {
    return ai;
  }
  
  public TransmissionMode ac()
  {
    return aj;
  }
  
  public boolean ad()
  {
    return v;
  }
  
  public boolean ae()
  {
    return ah;
  }
  
  public long af()
  {
    return ae;
  }
  
  public String[] ag()
  {
    return ak;
  }
  
  public void ah()
  {
    t(true);
  }
  
  public void ai()
  {
    if (!am) {
      return;
    }
    ak();
    l = true;
    k = -1L;
  }
  
  protected void aj()
  {
    if (!am) {}
    do
    {
      return;
      ak();
    } while (k < 60000L);
    i = new u(this);
    f.a(i, k, true, k);
  }
  
  protected void ak()
  {
    if (!am) {}
    while (i == null) {
      return;
    }
    f.b(i);
    i = null;
  }
  
  protected void al() {}
  
  protected void am() {}
  
  boolean an()
  {
    return (aa == null) || (al.e()) || (Y == null) || (Y.length() == 0);
  }
  
  public boolean ao()
  {
    return am;
  }
  
  protected void b()
  {
    b = c();
    g = f();
    a(b);
    e = d();
    c = g();
    a = h();
    d = i();
    h = j();
    k();
    al = a(aa, b);
  }
  
  protected void b(ApplicationState paramApplicationState)
  {
    if (!am) {}
    for (;;)
    {
      return;
      com.comscore.utils.c.a(this, "Entering application state: " + paramApplicationState);
      switch (d.a[paramApplicationState.ordinal()])
      {
      default: 
        return;
      case 1: 
        h.b();
        c.d();
        d.h();
      }
      try
      {
        aa.unregisterReceiver(h);
        ak();
        return;
        if (l) {
          continue;
        }
        aj();
        return;
        aj();
        A.getAndIncrement();
        return;
      }
      catch (IllegalArgumentException paramApplicationState)
      {
        for (;;) {}
      }
    }
  }
  
  protected void b(SessionState paramSessionState)
  {
    if (!am) {
      return;
    }
    com.comscore.utils.c.a(this, "Entering session state: " + paramSessionState);
    switch (d.b[paramSessionState.ordinal()])
    {
    default: 
      return;
    case 1: 
      A();
      y();
    case 2: 
      B();
    }
    z();
  }
  
  public void b(TransmissionMode paramTransmissionMode, boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      do
      {
        return;
      } while (paramTransmissionMode == null);
      if (!paramBoolean)
      {
        b(paramTransmissionMode);
        return;
      }
    } while ((f == null) || (ac() == paramTransmissionMode));
    f.a(new q(this, paramTransmissionMode), paramBoolean);
  }
  
  void b(String paramString)
  {
    if (!am) {
      return;
    }
    int i2 = paramString.indexOf('?');
    if (i2 >= 0)
    {
      localObject = paramString;
      if (i2 < paramString.length() - 1)
      {
        localObject = paramString.substring(i2 + 1).split("&");
        int i3 = localObject.length;
        int i1 = 0;
        if (i1 < i3)
        {
          String[] arrayOfString = localObject[i1].split("=");
          if (arrayOfString.length == 2) {
            a(arrayOfString[0], arrayOfString[1], false);
          }
          for (;;)
          {
            i1 += 1;
            break;
            if (arrayOfString.length == 1) {
              a("name", arrayOfString[0], false);
            }
          }
        }
      }
    }
    for (Object localObject = paramString.substring(0, i2 + 1);; localObject = paramString + '?')
    {
      Y = ((String)localObject);
      return;
    }
  }
  
  public void b(String paramString, boolean paramBoolean)
  {
    if (!am) {}
    while ((paramString == null) || (paramString.length() == 0) || (f == null)) {
      return;
    }
    f.a(new l(this, paramString), paramBoolean);
  }
  
  protected void b(boolean paramBoolean)
  {
    if (!am) {
      return;
    }
    long l1 = com.comscore.utils.h.a();
    long l2 = l1 - W;
    switch (d.b[K.ordinal()])
    {
    }
    for (;;)
    {
      W = l1;
      if (!paramBoolean) {
        break;
      }
      b.a("lastSessionAccumulationTimestamp", Long.toString(W));
      b.a("lastApplicationSessionTimestamp", Long.toString(R));
      b.a("lastUserSessionTimestamp", Long.toString(S));
      b.a("lastActiveUserSessionTimestamp", Long.toString(T));
      b.a("accumulatedApplicationSessionTime", Long.toString(L));
      b.a("accumulatedActiveUserSessionTime", Long.toString(N));
      b.a("accumulatedUserSessionTime", Long.toString(M));
      b.a("activeUserSessionCount", Long.toString(Q));
      b.a("userSessionCount", Long.toString(P));
      b.a("lastUserInteractionTimestamp", Long.toString(V));
      b.a("userInteractionCount", Integer.toString(U));
      b.a("previousGenesis", Long.toString(I));
      b.a("genesis", Long.toString(H));
      b.a("applicationSessionCountKey", Integer.toString(O));
      return;
      N += l2;
      T = l1;
      M += l2;
      S = l1;
      L = (l2 + L);
      R = l1;
    }
  }
  
  public void b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!am) {}
    do
    {
      return;
      if (!paramBoolean2)
      {
        ah = paramBoolean1;
        return;
      }
    } while (f == null);
    f.a(new r(this, paramBoolean1), paramBoolean2);
  }
  
  public int c(boolean paramBoolean)
  {
    int i1 = A.get();
    if ((paramBoolean) && (am))
    {
      A.set(0);
      b.a("foregroundTransitionsCount", Long.toString(A.get()));
    }
    return i1;
  }
  
  protected com.comscore.utils.m c()
  {
    return new com.comscore.utils.m(aa);
  }
  
  public void c(String paramString, boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      return;
      if (!paramBoolean)
      {
        d(paramString);
        return;
      }
    } while (f == null);
    f.a(new m(this, paramString), paramBoolean);
  }
  
  public long d(boolean paramBoolean)
  {
    long l1 = B;
    if ((paramBoolean) && (am))
    {
      B = 0L;
      b.a("totalForegroundTime", Long.toString(B));
    }
    return l1;
  }
  
  @Deprecated
  protected DispatchQueue d()
  {
    return new DispatchQueue(this);
  }
  
  public void d(String paramString, boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      do
      {
        return;
      } while ((paramString == null) || (paramString.length() == 0));
      if (!paramBoolean)
      {
        e(paramString);
        return;
      }
    } while (f == null);
    f.a(new o(this, paramString), paramBoolean);
  }
  
  public long e(boolean paramBoolean)
  {
    long l1 = F;
    if ((paramBoolean) && (am))
    {
      F = 0L;
      b.a("accumulatedForegroundTime", Long.toString(F));
    }
    return l1;
  }
  
  protected com.yelp.android.at.a e()
  {
    return new com.yelp.android.at.a(this);
  }
  
  public long f(boolean paramBoolean)
  {
    long l1 = C;
    if ((paramBoolean) && (am))
    {
      C = 0L;
      b.a("totalBackgroundTime", Long.toString(C));
    }
    return l1;
  }
  
  protected com.yelp.android.ar.c f()
  {
    return new com.yelp.android.ar.c(this);
  }
  
  public long g(boolean paramBoolean)
  {
    long l1 = E;
    if ((paramBoolean) && (am))
    {
      E = 0L;
      b.a("accumulatedBackgroundTime", Long.toString(E));
    }
    return l1;
  }
  
  protected com.comscore.applications.d g()
  {
    return new com.comscore.applications.d(this, 86400000L);
  }
  
  public long h(boolean paramBoolean)
  {
    long l1 = D;
    if ((paramBoolean) && (am))
    {
      D = 0L;
      b.a("totalInactiveTime", Long.toString(D));
    }
    return l1;
  }
  
  protected com.comscore.utils.j h()
  {
    return new com.comscore.utils.j(this);
  }
  
  public long i(boolean paramBoolean)
  {
    long l1 = G;
    if ((paramBoolean) && (am))
    {
      G = 0L;
      b.a("accumulatedInactiveTime", Long.toString(G));
    }
    return l1;
  }
  
  protected com.comscore.utils.d i()
  {
    return new com.comscore.utils.d(this);
  }
  
  public long j(boolean paramBoolean)
  {
    long l1 = L;
    if ((paramBoolean) && (am))
    {
      L = 0L;
      b.a("accumulatedApplicationSessionTime", Long.toString(L));
    }
    return l1;
  }
  
  protected ConnectivityChangeReceiver j()
  {
    return new ConnectivityChangeReceiver(this);
  }
  
  public long k(boolean paramBoolean)
  {
    long l1 = N;
    if ((paramBoolean) && (am))
    {
      N = 0L;
      b.a("accumulatedActiveUserSessionTime", Long.toString(N));
    }
    return l1;
  }
  
  protected void k()
  {
    J = com.comscore.utils.n.a(b.b("lastApplicationAccumulationTimestamp"), -1L);
    W = com.comscore.utils.n.a(b.b("lastSessionAccumulationTimestamp"), -1L);
    R = com.comscore.utils.n.a(b.b("lastApplicationSessionTimestamp"), -1L);
    S = com.comscore.utils.n.a(b.b("lastUserSessionTimestamp"), -1L);
    T = com.comscore.utils.n.a(b.b("lastActiveUserSessionTimestamp"), -1L);
    A.set(com.comscore.utils.n.d(b.b("foregroundTransitionsCount")));
    F = com.comscore.utils.n.c(b.b("accumulatedForegroundTime"));
    E = com.comscore.utils.n.c(b.b("accumulatedBackgroundTime"));
    G = com.comscore.utils.n.c(b.b("accumulatedInactiveTime"));
    B = com.comscore.utils.n.c(b.b("totalForegroundTime"));
    C = com.comscore.utils.n.c(b.b("totalBackgroundTime"));
    D = com.comscore.utils.n.c(b.b("totalInactiveTime"));
    L = com.comscore.utils.n.c(b.b("accumulatedApplicationSessionTime"));
    N = com.comscore.utils.n.c(b.b("accumulatedActiveUserSessionTime"));
    M = com.comscore.utils.n.c(b.b("accumulatedUserSessionTime"));
    Q = com.comscore.utils.n.a(b.b("activeUserSessionCount"), -1);
    P = com.comscore.utils.n.a(b.b("userSessionCount"), -1);
    V = com.comscore.utils.n.a(b.b("lastUserInteractionTimestamp"), -1L);
    U = com.comscore.utils.n.a(b.b("userInteractionCount"), 0);
    O = com.comscore.utils.n.a(b.b("applicationSessionCountKey"), 0);
    t = m();
    I = com.comscore.utils.n.a(b.b("previousGenesis"), 0L);
    H = com.comscore.utils.n.a(b.b("genesis"), -1L);
    if (H < 0L)
    {
      H = com.comscore.utils.h.a();
      I = 0L;
      R = H;
      O += 1;
    }
    for (;;)
    {
      s = com.comscore.utils.n.a(b.b("firstInstallId"), -1L);
      if (s >= 0L) {
        break;
      }
      s = H;
      r = H;
      b.a("currentVersion", t);
      b.a("firstInstallId", String.valueOf(s));
      b.a("installId", String.valueOf(r));
      b.a("genesis", Long.toString(H));
      b.a("previousGenesis", Long.toString(I));
      long l1 = com.comscore.utils.h.a();
      if (J >= 0L)
      {
        long l2 = l1 - J;
        G += l2;
        b.a("accumulatedInactiveTime", Long.toString(G));
        D = (l2 + D);
        b.a("totalInactiveTime", Long.toString(D));
      }
      J = l1;
      W = l1;
      b.a("lastApplicationAccumulationTimestamp", Long.toString(J));
      b.a("lastSessionAccumulationTimestamp", Long.toString(W));
      b.a("lastApplicationSessionTimestamp", Long.toString(R));
      if (!b.a("runs").booleanValue()) {
        b.a("runs", "0");
      }
      o.set(com.comscore.utils.n.d(b.b("runs")));
      q.set(com.comscore.utils.n.d(b.b("coldStartCount")));
      return;
      if (!z())
      {
        L += com.comscore.utils.h.a() - W;
        b.a("accumulatedApplicationSessionTime", Long.toString(L));
      }
      R = H;
    }
    if (b.a("previousVersion").booleanValue()) {
      u = b.b("previousVersion");
    }
    String str = b.b("currentVersion");
    if (!str.equals(t))
    {
      u = str;
      b.a("previousVersion", u);
      r = H;
      b.a("installId", String.valueOf(r));
    }
    for (;;)
    {
      b.a("currentVersion", t);
      break;
      r = com.comscore.utils.n.a(b.b("installId"), -1L);
    }
  }
  
  public long l(boolean paramBoolean)
  {
    long l1 = M;
    if ((paramBoolean) && (am))
    {
      M = 0L;
      b.a("accumulatedUserSessionTime", Long.toString(M));
    }
    return l1;
  }
  
  public void l()
  {
    if (!am) {
      return;
    }
    o.getAndIncrement();
    b.a("runs", Long.toString(o.get()));
  }
  
  public int m(boolean paramBoolean)
  {
    int i1 = O;
    if ((paramBoolean) && (am))
    {
      O = 0;
      b.a("applicationSessionCountKey", Integer.toString(O));
    }
    return i1;
  }
  
  protected String m()
  {
    String str = aa.getPackageName();
    try
    {
      str = aa.getPackageManager().getPackageInfo(str, 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return "0";
  }
  
  public int n(boolean paramBoolean)
  {
    int i1 = -1;
    if (Q >= 0)
    {
      int i2 = Q;
      i1 = i2;
      if (paramBoolean)
      {
        i1 = i2;
        if (am)
        {
          Q = 0;
          b.a("activeUserSessionCount", Integer.toString(Q));
          i1 = i2;
        }
      }
    }
    return i1;
  }
  
  public boolean n()
  {
    if (!am) {}
    while (n) {
      return false;
    }
    n = true;
    q.getAndIncrement();
    b.a("coldStartCount", String.valueOf(q));
    p = com.comscore.utils.h.a();
    return true;
  }
  
  public int o(boolean paramBoolean)
  {
    int i1 = -1;
    if (P >= 0)
    {
      int i2 = P;
      i1 = i2;
      if (paramBoolean)
      {
        i1 = i2;
        if (am)
        {
          P = 0;
          b.a("userSessionCount", Integer.toString(P));
          i1 = i2;
        }
      }
    }
    return i1;
  }
  
  /* Error */
  protected void o()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 311	com/comscore/analytics/a:aa	Landroid/content/Context;
    //   4: ifnull +569 -> 573
    //   7: aload_0
    //   8: getfield 311	com/comscore/analytics/a:aa	Landroid/content/Context;
    //   11: invokevirtual 857	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   14: invokevirtual 863	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   17: astore 5
    //   19: aload 5
    //   21: ldc_w 865
    //   24: invokevirtual 871	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   27: astore 6
    //   29: new 161	java/util/Properties
    //   32: dup
    //   33: invokespecial 872	java/util/Properties:<init>	()V
    //   36: astore 5
    //   38: aload 5
    //   40: aload 6
    //   42: invokevirtual 876	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   45: aload_0
    //   46: ldc_w 878
    //   49: aload 5
    //   51: iconst_0
    //   52: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   55: invokestatic 882	com/comscore/utils/n:e	(Ljava/lang/String;)Z
    //   58: putstatic 884	com/comscore/utils/f:a	Z
    //   61: aload_0
    //   62: aload_0
    //   63: ldc_w 886
    //   66: aload 5
    //   68: iconst_0
    //   69: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   72: invokestatic 882	com/comscore/utils/n:e	(Ljava/lang/String;)Z
    //   75: putfield 378	com/comscore/analytics/a:ah	Z
    //   78: aload_0
    //   79: ldc_w 888
    //   82: aload 5
    //   84: iconst_1
    //   85: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   88: astore 6
    //   90: aload 6
    //   92: ifnull +9 -> 101
    //   95: aload_0
    //   96: aload 6
    //   98: invokespecial 191	com/comscore/analytics/a:c	(Ljava/lang/String;)V
    //   101: aload_0
    //   102: ldc_w 890
    //   105: aload 5
    //   107: iconst_1
    //   108: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   111: astore 6
    //   113: aload 6
    //   115: ifnull +9 -> 124
    //   118: aload_0
    //   119: aload 6
    //   121: invokespecial 232	com/comscore/analytics/a:d	(Ljava/lang/String;)V
    //   124: aload_0
    //   125: ldc_w 892
    //   128: aload 5
    //   130: iconst_0
    //   131: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   134: astore 6
    //   136: aload 6
    //   138: ifnull +9 -> 147
    //   141: aload_0
    //   142: aload 6
    //   144: invokespecial 242	com/comscore/analytics/a:e	(Ljava/lang/String;)V
    //   147: aload_0
    //   148: ldc_w 894
    //   151: aload 5
    //   153: iconst_0
    //   154: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   157: astore 6
    //   159: aload 6
    //   161: ifnull +9 -> 170
    //   164: aload_0
    //   165: aload 6
    //   167: invokevirtual 260	com/comscore/analytics/a:b	(Ljava/lang/String;)V
    //   170: aload_0
    //   171: ldc_w 896
    //   174: aload 5
    //   176: iconst_0
    //   177: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   180: astore 6
    //   182: aload 6
    //   184: ifnull +12 -> 196
    //   187: aload_0
    //   188: getfield 682	com/comscore/analytics/a:a	Lcom/comscore/utils/j;
    //   191: aload 6
    //   193: invokevirtual 897	com/comscore/utils/j:b	(Ljava/lang/String;)V
    //   196: aload_0
    //   197: ldc_w 899
    //   200: aload 5
    //   202: iconst_0
    //   203: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   206: astore 6
    //   208: aload 6
    //   210: ifnull +18 -> 228
    //   213: aload_0
    //   214: aload 6
    //   216: invokestatic 905	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   219: invokevirtual 909	java/lang/String:toUpperCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   222: invokestatic 912	com/comscore/utils/TransmissionMode:valueOf	(Ljava/lang/String;)Lcom/comscore/utils/TransmissionMode;
    //   225: putfield 196	com/comscore/analytics/a:ai	Lcom/comscore/utils/TransmissionMode;
    //   228: aload_0
    //   229: ldc_w 914
    //   232: aload 5
    //   234: iconst_0
    //   235: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   238: astore 6
    //   240: aload 6
    //   242: ifnull +18 -> 260
    //   245: aload_0
    //   246: aload 6
    //   248: invokestatic 905	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   251: invokevirtual 909	java/lang/String:toUpperCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   254: invokestatic 912	com/comscore/utils/TransmissionMode:valueOf	(Ljava/lang/String;)Lcom/comscore/utils/TransmissionMode;
    //   257: putfield 234	com/comscore/analytics/a:aj	Lcom/comscore/utils/TransmissionMode;
    //   260: aload_0
    //   261: aload_0
    //   262: ldc_w 916
    //   265: aload 5
    //   267: iconst_0
    //   268: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   271: iconst_1
    //   272: invokestatic 919	com/comscore/utils/n:a	(Ljava/lang/String;Z)Z
    //   275: putfield 148	com/comscore/analytics/a:ad	Z
    //   278: aload_0
    //   279: ldc_w 921
    //   282: aload 5
    //   284: iconst_0
    //   285: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   288: iconst_m1
    //   289: invokestatic 821	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   292: istore_1
    //   293: iload_1
    //   294: iflt +11 -> 305
    //   297: aload_0
    //   298: getfield 682	com/comscore/analytics/a:a	Lcom/comscore/utils/j;
    //   301: iload_1
    //   302: invokevirtual 922	com/comscore/utils/j:a	(I)V
    //   305: aload_0
    //   306: ldc_w 924
    //   309: aload 5
    //   311: iconst_0
    //   312: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   315: iconst_m1
    //   316: invokestatic 821	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   319: istore_1
    //   320: iload_1
    //   321: iflt +11 -> 332
    //   324: aload_0
    //   325: getfield 682	com/comscore/analytics/a:a	Lcom/comscore/utils/j;
    //   328: iload_1
    //   329: invokevirtual 926	com/comscore/utils/j:b	(I)V
    //   332: aload_0
    //   333: ldc_w 928
    //   336: aload 5
    //   338: iconst_0
    //   339: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   342: iconst_m1
    //   343: invokestatic 821	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   346: istore_1
    //   347: iload_1
    //   348: iflt +11 -> 359
    //   351: aload_0
    //   352: getfield 682	com/comscore/analytics/a:a	Lcom/comscore/utils/j;
    //   355: iload_1
    //   356: invokevirtual 930	com/comscore/utils/j:c	(I)V
    //   359: aload_0
    //   360: ldc_w 932
    //   363: aload 5
    //   365: iconst_0
    //   366: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   369: iconst_m1
    //   370: invokestatic 821	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   373: istore_1
    //   374: iload_1
    //   375: iflt +11 -> 386
    //   378: aload_0
    //   379: getfield 682	com/comscore/analytics/a:a	Lcom/comscore/utils/j;
    //   382: iload_1
    //   383: invokevirtual 934	com/comscore/utils/j:d	(I)V
    //   386: aload_0
    //   387: ldc_w 936
    //   390: aload 5
    //   392: iconst_0
    //   393: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   396: iconst_m1
    //   397: invokestatic 821	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   400: istore_1
    //   401: iload_1
    //   402: iflt +11 -> 413
    //   405: aload_0
    //   406: getfield 682	com/comscore/analytics/a:a	Lcom/comscore/utils/j;
    //   409: iload_1
    //   410: invokevirtual 938	com/comscore/utils/j:e	(I)V
    //   413: aload_0
    //   414: ldc_w 940
    //   417: aload 5
    //   419: iconst_0
    //   420: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   423: ldc2_w 388
    //   426: invokestatic 812	com/comscore/utils/n:a	(Ljava/lang/String;J)J
    //   429: lstore_2
    //   430: lload_2
    //   431: lconst_0
    //   432: lcmp
    //   433: iflt +22 -> 455
    //   436: aload_0
    //   437: lload_2
    //   438: putfield 118	com/comscore/analytics/a:ae	J
    //   441: aload_0
    //   442: getfield 438	com/comscore/analytics/a:d	Lcom/comscore/utils/d;
    //   445: ifnull +10 -> 455
    //   448: aload_0
    //   449: getfield 438	com/comscore/analytics/a:d	Lcom/comscore/utils/d;
    //   452: invokevirtual 941	com/comscore/utils/d:d	()V
    //   455: aload_0
    //   456: aload_0
    //   457: ldc_w 943
    //   460: aload 5
    //   462: iconst_0
    //   463: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   466: invokestatic 882	com/comscore/utils/n:e	(Ljava/lang/String;)Z
    //   469: invokevirtual 945	com/comscore/analytics/a:q	(Z)V
    //   472: aload_0
    //   473: aload_0
    //   474: ldc_w 947
    //   477: aload 5
    //   479: iconst_0
    //   480: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   483: iconst_1
    //   484: invokestatic 919	com/comscore/utils/n:a	(Ljava/lang/String;Z)Z
    //   487: putfield 103	com/comscore/analytics/a:v	Z
    //   490: aload_0
    //   491: ldc_w 949
    //   494: aload 5
    //   496: iconst_0
    //   497: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   500: iconst_1
    //   501: invokestatic 919	com/comscore/utils/n:a	(Ljava/lang/String;Z)Z
    //   504: istore 4
    //   506: aload_0
    //   507: ldc_w 951
    //   510: aload 5
    //   512: iconst_0
    //   513: invokespecial 880	com/comscore/analytics/a:a	(Ljava/lang/String;Ljava/util/Properties;Z)Ljava/lang/String;
    //   516: iconst_m1
    //   517: invokestatic 821	com/comscore/utils/n:a	(Ljava/lang/String;I)I
    //   520: istore_1
    //   521: iload_1
    //   522: bipush 60
    //   524: if_icmplt +49 -> 573
    //   527: aload_0
    //   528: iload_1
    //   529: iload 4
    //   531: invokevirtual 953	com/comscore/analytics/a:a	(IZ)V
    //   534: return
    //   535: astore 6
    //   537: aload_0
    //   538: getstatic 376	com/comscore/utils/TransmissionMode:DEFAULT	Lcom/comscore/utils/TransmissionMode;
    //   541: putfield 196	com/comscore/analytics/a:ai	Lcom/comscore/utils/TransmissionMode;
    //   544: goto -316 -> 228
    //   547: astore 5
    //   549: getstatic 884	com/comscore/utils/f:a	Z
    //   552: ifeq +21 -> 573
    //   555: aload 5
    //   557: invokestatic 956	com/comscore/utils/c:a	(Ljava/lang/Exception;)V
    //   560: return
    //   561: astore 6
    //   563: aload_0
    //   564: getstatic 376	com/comscore/utils/TransmissionMode:DEFAULT	Lcom/comscore/utils/TransmissionMode;
    //   567: putfield 234	com/comscore/analytics/a:aj	Lcom/comscore/utils/TransmissionMode;
    //   570: goto -310 -> 260
    //   573: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	574	0	this	a
    //   292	237	1	i1	int
    //   429	9	2	l1	long
    //   504	26	4	bool	boolean
    //   17	494	5	localObject1	Object
    //   547	9	5	localIOException	java.io.IOException
    //   27	220	6	localObject2	Object
    //   535	1	6	localIllegalArgumentException1	IllegalArgumentException
    //   561	1	6	localIllegalArgumentException2	IllegalArgumentException
    // Exception table:
    //   from	to	target	type
    //   213	228	535	java/lang/IllegalArgumentException
    //   19	90	547	java/io/IOException
    //   95	101	547	java/io/IOException
    //   101	113	547	java/io/IOException
    //   118	124	547	java/io/IOException
    //   124	136	547	java/io/IOException
    //   141	147	547	java/io/IOException
    //   147	159	547	java/io/IOException
    //   164	170	547	java/io/IOException
    //   170	182	547	java/io/IOException
    //   187	196	547	java/io/IOException
    //   196	208	547	java/io/IOException
    //   213	228	547	java/io/IOException
    //   228	240	547	java/io/IOException
    //   245	260	547	java/io/IOException
    //   260	293	547	java/io/IOException
    //   297	305	547	java/io/IOException
    //   305	320	547	java/io/IOException
    //   324	332	547	java/io/IOException
    //   332	347	547	java/io/IOException
    //   351	359	547	java/io/IOException
    //   359	374	547	java/io/IOException
    //   378	386	547	java/io/IOException
    //   386	401	547	java/io/IOException
    //   405	413	547	java/io/IOException
    //   413	430	547	java/io/IOException
    //   436	455	547	java/io/IOException
    //   455	521	547	java/io/IOException
    //   527	534	547	java/io/IOException
    //   537	544	547	java/io/IOException
    //   563	570	547	java/io/IOException
    //   245	260	561	java/lang/IllegalArgumentException
  }
  
  public int p(boolean paramBoolean)
  {
    int i1 = U;
    if ((paramBoolean) && (am))
    {
      U = 0;
      b.a("userInteractionCount", Integer.toString(U));
    }
    return i1;
  }
  
  public com.comscore.utils.j p()
  {
    return a;
  }
  
  public ConnectivityChangeReceiver q()
  {
    return h;
  }
  
  public void q(boolean paramBoolean)
  {
    if (!am) {}
    do
    {
      return;
      af = paramBoolean;
      if (paramBoolean)
      {
        Thread.setDefaultUncaughtExceptionHandler(new com.comscore.utils.g(this));
        return;
      }
    } while (Thread.getDefaultUncaughtExceptionHandler() == ag);
    Thread.setDefaultUncaughtExceptionHandler(ag);
  }
  
  public com.comscore.utils.m r()
  {
    return b;
  }
  
  void r(boolean paramBoolean)
  {
    ad = paramBoolean;
  }
  
  public com.yelp.android.at.a s()
  {
    return f;
  }
  
  public void s(boolean paramBoolean)
  {
    if (!am) {}
    while (f == null) {
      return;
    }
    f.a(new t(this), paramBoolean);
  }
  
  public com.yelp.android.ar.c t()
  {
    return g;
  }
  
  public void t(boolean paramBoolean)
  {
    if (!am) {
      return;
    }
    if (f.a(j))
    {
      f.b(j);
      j.run();
      j = null;
    }
    a(paramBoolean);
    b(paramBoolean);
  }
  
  public com.comscore.applications.d u()
  {
    return c;
  }
  
  public void u(boolean paramBoolean)
  {
    f.a(new c(this, paramBoolean), true);
  }
  
  public void v()
  {
    if (!am) {}
    while (f == null) {
      return;
    }
    f.a(new e(this), true);
  }
  
  public void w()
  {
    if (!am) {}
    while (f == null) {
      return;
    }
    f.a(new f(this), true);
  }
  
  protected void x()
  {
    if (!am) {
      return;
    }
    if (f.a(j))
    {
      f.b(j);
      j = null;
    }
    long l1 = com.comscore.utils.h.a();
    ApplicationState localApplicationState1;
    label57:
    SessionState localSessionState1;
    if (y.get() > 0)
    {
      localApplicationState1 = ApplicationState.FOREGROUND;
      if (l1 - V >= 300000L) {
        break label175;
      }
      localSessionState1 = SessionState.ACTIVE_USER;
    }
    for (;;)
    {
      ApplicationState localApplicationState2 = x;
      SessionState localSessionState2 = K;
      if ((localApplicationState1 == localApplicationState2) && (localSessionState1 == localSessionState2)) {
        break;
      }
      j = new g(this, localApplicationState2, localApplicationState1, localSessionState2, localSessionState1);
      if ((!m) || (localApplicationState1 == ApplicationState.FOREGROUND)) {
        break label216;
      }
      f.a(j, 300L);
      return;
      if (z.get() > 0)
      {
        localApplicationState1 = ApplicationState.BACKGROUND_UX_ACTIVE;
        break label57;
      }
      localApplicationState1 = ApplicationState.INACTIVE;
      break label57;
      label175:
      if (z.get() > 0) {
        localSessionState1 = SessionState.USER;
      } else if (y.get() > 0) {
        localSessionState1 = SessionState.APPLICATION;
      } else {
        localSessionState1 = SessionState.INACTIVE;
      }
    }
    label216:
    j.run();
    j = null;
  }
  
  protected void y()
  {
    if (!am) {
      return;
    }
    if (X != null)
    {
      f.b(X);
      X = null;
    }
    X = new b(this);
    f.a(X, 300000L);
  }
  
  protected boolean z()
  {
    boolean bool = false;
    if (!am) {
      return false;
    }
    long l1 = com.comscore.utils.h.a();
    if (l1 - R > 1800000L)
    {
      I = H;
      H = l1;
      O += 1;
      bool = true;
    }
    R = l1;
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.comscore.analytics.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */