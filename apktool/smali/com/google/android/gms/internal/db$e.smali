.class public Lcom/google/android/gms/internal/db$e;
.super Lcom/google/android/gms/internal/hv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hv",
        "<",
        "Lcom/google/android/gms/internal/cy;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Lcom/google/android/gms/internal/db$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/db$b",
            "<",
            "Lcom/google/android/gms/internal/cy;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/db$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/db$b",
            "<",
            "Lcom/google/android/gms/internal/cy;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/hv;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/db$e;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/db$e;->e:Lcom/google/android/gms/internal/db$b;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/db$e;->f:Z

    iput v1, p0, Lcom/google/android/gms/internal/db$e;->g:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/db$e;)Lcom/google/android/gms/internal/db$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db$e;->e:Lcom/google/android/gms/internal/db$b;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/db$d;
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/db$d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/db$d;-><init>(Lcom/google/android/gms/internal/db$e;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/db$e;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/db$e$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/db$e$1;-><init>(Lcom/google/android/gms/internal/db$e;Lcom/google/android/gms/internal/db$d;)V

    new-instance v3, Lcom/google/android/gms/internal/db$e$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/db$e$2;-><init>(Lcom/google/android/gms/internal/db$e;Lcom/google/android/gms/internal/db$d;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/db$e;->a(Lcom/google/android/gms/internal/hu$c;Lcom/google/android/gms/internal/hu$a;)V

    iget v0, p0, Lcom/google/android/gms/internal/db$e;->g:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/db$e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/db$e;->g:I

    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/db$e;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/db$e;->g:I

    if-lt v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    const-string/jumbo v0, "Releasing 1 reference for JS Engine"

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/db$e;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/db$e;->g:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/db$e;->d()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/db$e;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/db$e;->g:I

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    const-string/jumbo v0, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/db$e;->f:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/db$e;->d()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected d()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/db$e;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/db$e;->g:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/db$e;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/db$e;->g:I

    if-nez v0, :cond_1

    const-string/jumbo v0, "No reference is left (including root). Cleaning up engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/db$e$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/db$e$3;-><init>(Lcom/google/android/gms/internal/db$e;)V

    new-instance v2, Lcom/google/android/gms/internal/hu$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/hu$b;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/db$e;->a(Lcom/google/android/gms/internal/hu$c;Lcom/google/android/gms/internal/hu$a;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "There are still references to the engine. Not destroying."

    invoke-static {v0}, Lcom/google/android/gms/internal/gz;->e(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
