.class Lcom/google/android/gms/measurement/internal/d$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/d$a;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/w;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/d$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/d$a;Lcom/google/android/gms/measurement/internal/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d$a$1;->b:Lcom/google/android/gms/measurement/internal/d$a;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/d$a$1;->a:Lcom/google/android/gms/measurement/internal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d$a$1;->b:Lcom/google/android/gms/measurement/internal/d$a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d$a$1;->b:Lcom/google/android/gms/measurement/internal/d$a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/d$a;->a(Lcom/google/android/gms/measurement/internal/d$a;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d$a$1;->b:Lcom/google/android/gms/measurement/internal/d$a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d$a;->a:Lcom/google/android/gms/measurement/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d$a$1;->b:Lcom/google/android/gms/measurement/internal/d$a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d$a;->a:Lcom/google/android/gms/measurement/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->s()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z;->z()Lcom/google/android/gms/measurement/internal/z$a;

    move-result-object v0

    const-string/jumbo v2, "Connected to service"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d$a$1;->b:Lcom/google/android/gms/measurement/internal/d$a;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/d$a;->a:Lcom/google/android/gms/measurement/internal/d;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d$a$1;->a:Lcom/google/android/gms/measurement/internal/w;

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/d;->a(Lcom/google/android/gms/measurement/internal/d;Lcom/google/android/gms/measurement/internal/w;)V

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
