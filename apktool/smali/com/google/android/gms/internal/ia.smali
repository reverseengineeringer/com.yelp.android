.class public Lcom/google/android/gms/internal/ia;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ib;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/ViewGroup;

.field private d:Lcom/google/android/gms/ads/internal/overlay/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ib;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ia;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/ads/internal/overlay/j;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/ads/internal/overlay/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ia;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ia;->c:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/ia;->a:Lcom/google/android/gms/internal/ib;

    iput-object p4, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/internal/overlay/j;
    .locals 1

    const-string/jumbo v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    return-object v0
.end method

.method public a(IIII)V
    .locals 1

    const-string/jumbo v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/j;->a(IIII)V

    :cond_0
    return-void
.end method

.method public a(IIIII)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->x()Lcom/google/android/gms/internal/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/internal/ax;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ia;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ib;->w()Lcom/google/android/gms/internal/au;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "vpr"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/as;->a(Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->x()Lcom/google/android/gms/internal/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/internal/ax;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/as;->a(Lcom/google/android/gms/internal/ax;)Lcom/google/android/gms/internal/au;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/j;

    iget-object v1, p0, Lcom/google/android/gms/internal/ia;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ia;->a:Lcom/google/android/gms/internal/ib;

    iget-object v3, p0, Lcom/google/android/gms/internal/ia;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ib;->x()Lcom/google/android/gms/internal/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/internal/ax;

    move-result-object v4

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ib;ILcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/j;->a(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->l()Lcom/google/android/gms/internal/ic;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ic;->a(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const-string/jumbo v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/j;->h()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const-string/jumbo v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzcD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ia;->d:Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/j;->m()V

    :cond_0
    return-void
.end method
