.class public abstract Lcom/google/android/gms/internal/gf;
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
.method public abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
.end method

.method protected a(Lcom/google/android/gms/internal/fz;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fz;->c()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fz;->a()Lcom/google/android/gms/internal/db$d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/fz;->a()Lcom/google/android/gms/internal/db$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db$d;->a()V

    :cond_0
    return-void
.end method
