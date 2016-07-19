.class Lcom/google/android/gms/internal/db$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/db;->a()Lcom/google/android/gms/internal/db$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/db$e;

.field final synthetic b:Lcom/google/android/gms/internal/db;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/db$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/db$3;->b:Lcom/google/android/gms/internal/db;

    iput-object p2, p0, Lcom/google/android/gms/internal/db$3;->a:Lcom/google/android/gms/internal/db$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/db$3;->b:Lcom/google/android/gms/internal/db;

    invoke-static {v0}, Lcom/google/android/gms/internal/db;->c(Lcom/google/android/gms/internal/db;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/db$3;->b:Lcom/google/android/gms/internal/db;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/db;->a(Lcom/google/android/gms/internal/db;I)I

    const-string/jumbo v0, "Failed loading new engine. Marking new engine destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/db$3;->a:Lcom/google/android/gms/internal/db$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db$e;->c()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
