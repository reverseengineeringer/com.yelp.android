.class Lcom/google/android/gms/internal/ic$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ic;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ic;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ic;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ic$1;->a:Lcom/google/android/gms/internal/ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ic$1;->a:Lcom/google/android/gms/internal/ic;

    iget-object v0, v0, Lcom/google/android/gms/internal/ic;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->y()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ic$1;->a:Lcom/google/android/gms/internal/ic;

    iget-object v0, v0, Lcom/google/android/gms/internal/ic;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ib;->i()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->m()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ic$1;->a:Lcom/google/android/gms/internal/ic;

    invoke-static {v0}, Lcom/google/android/gms/internal/ic;->d(Lcom/google/android/gms/internal/ic;)Lcom/google/android/gms/internal/ic$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ic$1;->a:Lcom/google/android/gms/internal/ic;

    invoke-static {v0}, Lcom/google/android/gms/internal/ic;->d(Lcom/google/android/gms/internal/ic;)Lcom/google/android/gms/internal/ic$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ic$b;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ic$1;->a:Lcom/google/android/gms/internal/ic;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ic;->a(Lcom/google/android/gms/internal/ic;Lcom/google/android/gms/internal/ic$b;)Lcom/google/android/gms/internal/ic$b;

    :cond_1
    return-void
.end method
