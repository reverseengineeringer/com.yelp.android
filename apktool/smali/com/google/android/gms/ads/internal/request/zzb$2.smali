.class Lcom/google/android/gms/ads/internal/request/zzb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/zzb;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/hu;

.field final synthetic b:Lcom/google/android/gms/ads/internal/request/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/zzb;Lcom/google/android/gms/internal/hu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->b:Lcom/google/android/gms/ads/internal/request/zzb;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->a:Lcom/google/android/gms/internal/hu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->b:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/request/zzb;->a(Lcom/google/android/gms/ads/internal/request/zzb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->b:Lcom/google/android/gms/ads/internal/request/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->b:Lcom/google/android/gms/ads/internal/request/zzb;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->b:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/request/zzb;->b(Lcom/google/android/gms/ads/internal/request/zzb;)Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel$a;->j:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->a:Lcom/google/android/gms/internal/hu;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/ads/internal/request/zzb;->a(Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/hu;)Lcom/google/android/gms/internal/hf;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/ads/internal/request/zzb;->a:Lcom/google/android/gms/internal/hf;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->b:Lcom/google/android/gms/ads/internal/request/zzb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/zzb;->a:Lcom/google/android/gms/internal/hf;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->b:Lcom/google/android/gms/ads/internal/request/zzb;

    const/4 v2, 0x0

    const-string/jumbo v3, "Could not start the ad request service."

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/ads/internal/request/zzb;->a(Lcom/google/android/gms/ads/internal/request/zzb;ILjava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/hd;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/zzb$2;->b:Lcom/google/android/gms/ads/internal/request/zzb;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/request/zzb;->c(Lcom/google/android/gms/ads/internal/request/zzb;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
