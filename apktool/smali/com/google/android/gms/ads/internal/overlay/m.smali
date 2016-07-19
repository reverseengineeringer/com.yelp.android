.class public Lcom/google/android/gms/ads/internal/overlay/m;
.super Lcom/google/android/gms/ads/internal/overlay/i;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/internal/ib;ILcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;)Lcom/google/android/gms/ads/internal/overlay/h;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/c;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/s;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ib;->o()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ib;->u()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/s;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;)V

    invoke-direct {v6, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/s;)V

    move-object v0, v6

    goto :goto_0
.end method
