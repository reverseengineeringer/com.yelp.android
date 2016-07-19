.class Lcom/google/android/gms/internal/ie;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/gms/internal/ib;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ib;

.field private final b:Lcom/google/android/gms/internal/ia;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ib;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ib;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    new-instance v0, Lcom/google/android/gms/internal/ia;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ib;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/internal/ia;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ib;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ie;->b:Lcom/google/android/gms/internal/ia;

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ic;->a(Lcom/google/android/gms/internal/ib;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ie;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public A()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->A()Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->a()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->a(I)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/ax;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ib;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/ax;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->a(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->a(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/o;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ib;->a(Lcom/google/android/gms/internal/o;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ib;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->a(Z)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->b(I)V

    return-void
.end method

.method public b(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->b(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ib;->b(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ib;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->b(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->c()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->c(Z)V

    return-void
.end method

.method public clearCache(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->clearCache(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->d()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->destroy()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->e()V

    return-void
.end method

.method public f()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->f()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->g()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/android/gms/ads/internal/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->h()Lcom/google/android/gms/ads/internal/e;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->i()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->j()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->k()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v0

    return-object v0
.end method

.method public l()Lcom/google/android/gms/internal/ic;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ib;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ib;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->m()Z

    move-result v0

    return v0
.end method

.method public n()Lcom/google/android/gms/internal/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->n()Lcom/google/android/gms/internal/j;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->o()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->b:Lcom/google/android/gms/internal/ia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ia;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->onResume()V

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->p()Z

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->q()I

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->r()Z

    move-result v0

    return v0
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->b:Lcom/google/android/gms/internal/ia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ia;->c()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->s()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->setBackgroundColor(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ib;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->stopLoading()V

    return-void
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->t()Z

    move-result v0

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/google/android/gms/internal/ia;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->b:Lcom/google/android/gms/internal/ia;

    return-object v0
.end method

.method public w()Lcom/google/android/gms/internal/au;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->w()Lcom/google/android/gms/internal/au;

    move-result-object v0

    return-object v0
.end method

.method public x()Lcom/google/android/gms/internal/aw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->x()Lcom/google/android/gms/internal/aw;

    move-result-object v0

    return-object v0
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->y()V

    return-void
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ie;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->z()V

    return-void
.end method
