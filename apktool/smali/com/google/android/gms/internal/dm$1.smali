.class Lcom/google/android/gms/internal/dm$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dm;->a(JJ)Lcom/google/android/gms/internal/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dl;

.field final synthetic b:Lcom/google/android/gms/internal/dm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dm;Lcom/google/android/gms/internal/dl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    iput-object p2, p0, Lcom/google/android/gms/internal/dm$1;->a:Lcom/google/android/gms/internal/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    invoke-static {v0}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dm;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    invoke-static {v0}, Lcom/google/android/gms/internal/dm;->b(Lcom/google/android/gms/internal/dm;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    iget-object v2, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    invoke-static {v2}, Lcom/google/android/gms/internal/dm;->c(Lcom/google/android/gms/internal/dm;)Lcom/google/android/gms/internal/dt;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dm;Lcom/google/android/gms/internal/dt;)Lcom/google/android/gms/internal/dt;

    iget-object v0, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    invoke-static {v0}, Lcom/google/android/gms/internal/dm;->d(Lcom/google/android/gms/internal/dm;)Lcom/google/android/gms/internal/dt;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dm;->a(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    invoke-static {v0}, Lcom/google/android/gms/internal/dm;->e(Lcom/google/android/gms/internal/dm;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dm;I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring adapter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    invoke-static {v2}, Lcom/google/android/gms/internal/dm;->f(Lcom/google/android/gms/internal/dm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " as delayed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " impression is not supported"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dm;->a(I)V

    monitor-exit v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/dm$1;->a:Lcom/google/android/gms/internal/dl;

    iget-object v2, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/internal/dn$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dm$1;->b:Lcom/google/android/gms/internal/dm;

    iget-object v2, p0, Lcom/google/android/gms/internal/dm$1;->a:Lcom/google/android/gms/internal/dl;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/dm;->a(Lcom/google/android/gms/internal/dm;Lcom/google/android/gms/internal/dl;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
