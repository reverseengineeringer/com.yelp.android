.class Lcom/google/android/gms/ads/internal/overlay/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/ads/internal/overlay/j;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/t;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/t;->a:Lcom/google/android/gms/ads/internal/overlay/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/t;->b:Z

    sget-object v0, Lcom/google/android/gms/internal/hd;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/hd;->a:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/t;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/t;->a:Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/j;->n()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/t;->b()V

    :cond_0
    return-void
.end method
