.class public Lcom/google/android/gms/ads/internal/e;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/cn;

.field public final b:Lcom/google/android/gms/ads/internal/overlay/i;

.field public final c:Lcom/google/android/gms/ads/internal/overlay/l;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cn;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/ads/internal/overlay/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/e;->a:Lcom/google/android/gms/internal/cn;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/e;->b:Lcom/google/android/gms/ads/internal/overlay/i;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/e;->c:Lcom/google/android/gms/ads/internal/overlay/l;

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/e;
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/internal/e;

    new-instance v1, Lcom/google/android/gms/internal/bw;

    invoke-direct {v1}, Lcom/google/android/gms/internal/bw;-><init>()V

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/overlay/m;-><init>()V

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/overlay/q;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/e;-><init>(Lcom/google/android/gms/internal/cn;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/ads/internal/overlay/l;)V

    return-object v0
.end method
