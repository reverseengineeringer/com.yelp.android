.class final Lcom/google/android/gms/internal/fx$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fx;->a(Landroid/content/Context;Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/fw;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field final synthetic c:Lcom/google/android/gms/internal/fz;

.field final synthetic d:Lcom/google/android/gms/internal/ax;

.field final synthetic e:Lcom/google/android/gms/internal/au;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/google/android/gms/internal/ah;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;Ljava/lang/String;Lcom/google/android/gms/internal/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/fx$3;->b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/fx$3;->c:Lcom/google/android/gms/internal/fz;

    iput-object p4, p0, Lcom/google/android/gms/internal/fx$3;->d:Lcom/google/android/gms/internal/ax;

    iput-object p5, p0, Lcom/google/android/gms/internal/fx$3;->e:Lcom/google/android/gms/internal/au;

    iput-object p6, p0, Lcom/google/android/gms/internal/fx$3;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/fx$3;->g:Lcom/google/android/gms/internal/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/internal/id;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$3;->a:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>()V

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/fx$3;->b:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v6, v4, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->k:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/id;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/j;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/ib;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->h()Lcom/google/android/gms/internal/gt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gt;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ib;->clearCache(Z)V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->a()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$3;->c:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fz;->a(Lcom/google/android/gms/internal/ib;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$3;->d:Lcom/google/android/gms/internal/ax;

    iget-object v2, p0, Lcom/google/android/gms/internal/fx$3;->e:Lcom/google/android/gms/internal/au;

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v5, "rwc"

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ax;->a(Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$3;->d:Lcom/google/android/gms/internal/ax;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ax;->a()Lcom/google/android/gms/internal/au;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fx$3;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fx$3;->d:Lcom/google/android/gms/internal/ax;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;)Lcom/google/android/gms/internal/ic$a;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v2

    const-string/jumbo v3, "/invalidRequest"

    iget-object v4, p0, Lcom/google/android/gms/internal/fx$3;->c:Lcom/google/android/gms/internal/fz;

    iget-object v4, v4, Lcom/google/android/gms/internal/fz;->c:Lcom/google/android/gms/internal/bz;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ic;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    const-string/jumbo v3, "/loadAdURL"

    iget-object v4, p0, Lcom/google/android/gms/internal/fx$3;->c:Lcom/google/android/gms/internal/fz;

    iget-object v4, v4, Lcom/google/android/gms/internal/fz;->d:Lcom/google/android/gms/internal/bz;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ic;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    const-string/jumbo v3, "/log"

    sget-object v4, Lcom/google/android/gms/internal/by;->i:Lcom/google/android/gms/internal/bz;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ic;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bz;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ic;->a(Lcom/google/android/gms/internal/ic$a;)V

    const-string/jumbo v1, "Loading the JS library."

    invoke-static {v1}, Lcom/google/android/gms/internal/gz;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$3;->g:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ah;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ib;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
