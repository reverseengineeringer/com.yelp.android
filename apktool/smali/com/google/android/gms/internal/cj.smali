.class public Lcom/google/android/gms/internal/cj;
.super Lcom/google/android/gms/internal/gy;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ib;

.field final b:Lcom/google/android/gms/internal/cl;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ib;Lcom/google/android/gms/internal/cl;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/gy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cj;->a:Lcom/google/android/gms/internal/ib;

    iput-object p2, p0, Lcom/google/android/gms/internal/cj;->b:Lcom/google/android/gms/internal/cl;

    iput-object p3, p0, Lcom/google/android/gms/internal/cj;->c:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->t()Lcom/google/android/gms/internal/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ck;->a(Lcom/google/android/gms/internal/cj;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->b:Lcom/google/android/gms/internal/cl;

    iget-object v1, p0, Lcom/google/android/gms/internal/cj;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cl;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/internal/hd;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cj$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cj$1;-><init>(Lcom/google/android/gms/internal/cj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/hd;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/cj$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/cj$1;-><init>(Lcom/google/android/gms/internal/cj;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cj;->b:Lcom/google/android/gms/internal/cl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cl;->a()V

    return-void
.end method
