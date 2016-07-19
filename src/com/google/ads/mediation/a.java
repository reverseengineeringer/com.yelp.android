package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.d.a;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.im;
import com.yelp.android.bc.g;
import com.yelp.android.bc.h;
import com.yelp.android.bc.j;
import com.yelp.android.bc.k;
import com.yelp.android.bc.l;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;

@fv
public abstract class a
  implements im, com.yelp.android.bc.c, g, com.yelp.android.bf.a
{
  protected AdView a;
  protected com.google.android.gms.ads.f b;
  final com.yelp.android.be.b c = new com.yelp.android.be.b()
  {
    public void a()
    {
      a.a(a.this).b(a.this);
    }
    
    public void a(int paramAnonymousInt)
    {
      a.a(a.this).a(a.this, paramAnonymousInt);
    }
    
    public void a(com.yelp.android.be.a paramAnonymousa)
    {
      a.a(a.this).a(a.this, paramAnonymousa);
    }
    
    public void b()
    {
      a.a(a.this).c(a.this);
    }
    
    public void c()
    {
      a.a(a.this).d(a.this);
    }
    
    public void d()
    {
      a.a(a.this).e(a.this);
      a.a(a.this, null);
    }
    
    public void e()
    {
      a.a(a.this).f(a.this);
    }
  };
  private com.google.android.gms.ads.b d;
  private Context e;
  private com.google.android.gms.ads.f f;
  private com.yelp.android.bf.b g;
  private String h;
  
  protected abstract Bundle a(Bundle paramBundle1, Bundle paramBundle2);
  
  com.google.android.gms.ads.b.a a(Context paramContext, String paramString)
  {
    return new com.google.android.gms.ads.b.a(paramContext, paramString);
  }
  
  com.google.android.gms.ads.c a(Context paramContext, com.yelp.android.bc.a parama, Bundle paramBundle1, Bundle paramBundle2)
  {
    com.google.android.gms.ads.c.a locala = new com.google.android.gms.ads.c.a();
    Object localObject = parama.a();
    if (localObject != null) {
      locala.a((Date)localObject);
    }
    int i = parama.b();
    if (i != 0) {
      locala.a(i);
    }
    localObject = parama.c();
    if (localObject != null)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        locala.a((String)((Iterator)localObject).next());
      }
    }
    localObject = parama.d();
    if (localObject != null) {
      locala.a((Location)localObject);
    }
    if (parama.f()) {
      locala.b(v.a().a(paramContext));
    }
    if (parama.e() != -1) {
      if (parama.e() != 1) {
        break label209;
      }
    }
    label209:
    for (boolean bool = true;; bool = false)
    {
      locala.a(bool);
      locala.b(parama.g());
      locala.a(AdMobAdapter.class, a(paramBundle1, paramBundle2));
      return locala.a();
    }
  }
  
  public String a(Bundle paramBundle)
  {
    return paramBundle.getString("pubid");
  }
  
  public void a()
  {
    if (a != null)
    {
      a.c();
      a = null;
    }
    if (b != null) {
      b = null;
    }
    if (d != null) {
      d = null;
    }
    if (f != null) {
      f = null;
    }
  }
  
  public void a(Context paramContext, com.yelp.android.bc.a parama, String paramString, com.yelp.android.bf.b paramb, Bundle paramBundle1, Bundle paramBundle2)
  {
    e = paramContext.getApplicationContext();
    h = paramString;
    g = paramb;
    g.a(this);
  }
  
  public void a(Context paramContext, com.yelp.android.bc.d paramd, Bundle paramBundle1, com.google.android.gms.ads.d paramd1, com.yelp.android.bc.a parama, Bundle paramBundle2)
  {
    a = new AdView(paramContext);
    a.setAdSize(new com.google.android.gms.ads.d(paramd1.b(), paramd1.a()));
    a.setAdUnitId(a(paramBundle1));
    a.setAdListener(new c(this, paramd));
    a.a(a(paramContext, parama, paramBundle2, paramBundle1));
  }
  
  public void a(Context paramContext, com.yelp.android.bc.f paramf, Bundle paramBundle1, com.yelp.android.bc.a parama, Bundle paramBundle2)
  {
    b = new com.google.android.gms.ads.f(paramContext);
    b.a(a(paramBundle1));
    b.a(new d(this, paramf));
    b.a(a(paramContext, parama, paramBundle2, paramBundle1));
  }
  
  public void a(Context paramContext, h paramh, Bundle paramBundle1, l paraml, Bundle paramBundle2)
  {
    paramh = new e(this, paramh);
    com.google.android.gms.ads.b.a locala = a(paramContext, paramBundle1.getString("pubid")).a(paramh);
    com.google.android.gms.ads.formats.b localb = paraml.h();
    if (localb != null) {
      locala.a(localb);
    }
    if (paraml.i()) {
      locala.a(paramh);
    }
    if (paraml.j()) {
      locala.a(paramh);
    }
    d = locala.a();
    d.a(a(paramContext, paraml, paramBundle2, paramBundle1));
  }
  
  public void a(com.yelp.android.bc.a parama, Bundle paramBundle1, Bundle paramBundle2)
  {
    if ((e == null) || (g == null))
    {
      gz.b("AdMobAdapter.loadAd called before initialize.");
      return;
    }
    f = new com.google.android.gms.ads.f(e);
    f.a(true);
    f.a(a(paramBundle1));
    f.a(c);
    f.b(h);
    f.a(a(e, parama, paramBundle2, paramBundle1));
  }
  
  public void b()
  {
    if (a != null) {
      a.b();
    }
  }
  
  public void c()
  {
    if (a != null) {
      a.a();
    }
  }
  
  public View d()
  {
    return a;
  }
  
  public void e()
  {
    b.a();
  }
  
  public Bundle f()
  {
    return new com.yelp.android.bc.b.a().a(1).a();
  }
  
  public void g()
  {
    f.a();
  }
  
  public boolean h()
  {
    return g != null;
  }
  
  static class a
    extends j
  {
    private final com.google.android.gms.ads.formats.c d;
    
    public a(com.google.android.gms.ads.formats.c paramc)
    {
      d = paramc;
      a(paramc.b().toString());
      a(paramc.c());
      b(paramc.d().toString());
      a(paramc.e());
      c(paramc.f().toString());
      a(paramc.g().doubleValue());
      d(paramc.h().toString());
      e(paramc.i().toString());
      a(true);
      b(true);
    }
    
    public void a(View paramView)
    {
      if ((paramView instanceof NativeAdView)) {
        ((NativeAdView)paramView).setNativeAd(d);
      }
    }
  }
  
  static class b
    extends k
  {
    private final com.google.android.gms.ads.formats.d d;
    
    public b(com.google.android.gms.ads.formats.d paramd)
    {
      d = paramd;
      a(paramd.b().toString());
      a(paramd.c());
      b(paramd.d().toString());
      a(paramd.e());
      c(paramd.f().toString());
      d(paramd.g().toString());
      a(true);
      b(true);
    }
    
    public void a(View paramView)
    {
      if ((paramView instanceof NativeAdView)) {
        ((NativeAdView)paramView).setNativeAd(d);
      }
    }
  }
  
  static final class c
    extends com.google.android.gms.ads.a
    implements com.google.android.gms.ads.internal.client.a
  {
    final a a;
    final com.yelp.android.bc.d b;
    
    public c(a parama, com.yelp.android.bc.d paramd)
    {
      a = parama;
      b = paramd;
    }
    
    public void a()
    {
      b.a(a);
    }
    
    public void a(int paramInt)
    {
      b.a(a, paramInt);
    }
    
    public void b()
    {
      b.b(a);
    }
    
    public void c()
    {
      b.c(a);
    }
    
    public void d()
    {
      b.d(a);
    }
    
    public void e()
    {
      b.e(a);
    }
  }
  
  static final class d
    extends com.google.android.gms.ads.a
    implements com.google.android.gms.ads.internal.client.a
  {
    final a a;
    final com.yelp.android.bc.f b;
    
    public d(a parama, com.yelp.android.bc.f paramf)
    {
      a = parama;
      b = paramf;
    }
    
    public void a()
    {
      b.a(a);
    }
    
    public void a(int paramInt)
    {
      b.a(a, paramInt);
    }
    
    public void b()
    {
      b.b(a);
    }
    
    public void c()
    {
      b.c(a);
    }
    
    public void d()
    {
      b.d(a);
    }
    
    public void e()
    {
      b.e(a);
    }
  }
  
  static final class e
    extends com.google.android.gms.ads.a
    implements com.google.android.gms.ads.formats.c.a, d.a, com.google.android.gms.ads.internal.client.a
  {
    final a a;
    final h b;
    
    public e(a parama, h paramh)
    {
      a = parama;
      b = paramh;
    }
    
    public void a() {}
    
    public void a(int paramInt)
    {
      b.a(a, paramInt);
    }
    
    public void a(com.google.android.gms.ads.formats.c paramc)
    {
      b.a(a, new a.a(paramc));
    }
    
    public void a(com.google.android.gms.ads.formats.d paramd)
    {
      b.a(a, new a.b(paramd));
    }
    
    public void b()
    {
      b.a(a);
    }
    
    public void c()
    {
      b.b(a);
    }
    
    public void d()
    {
      b.c(a);
    }
    
    public void e()
    {
      b.d(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */