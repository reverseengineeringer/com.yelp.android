.class public Lcom/google/android/gms/internal/id;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/j;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/ib;
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/id;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/j;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/ib;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/j;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/ib;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ie;

    invoke-static/range {p1 .. p8}, Lcom/google/android/gms/internal/if;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/j;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/if;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ie;-><init>(Lcom/google/android/gms/internal/ib;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/internal/he;

    move-result-object v1

    invoke-virtual {v1, v0, p4}, Lcom/google/android/gms/internal/he;->a(Lcom/google/android/gms/internal/ib;Z)Lcom/google/android/gms/internal/ic;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ib;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->g()Lcom/google/android/gms/internal/he;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/he;->c(Lcom/google/android/gms/internal/ib;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ib;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-object v0
.end method
