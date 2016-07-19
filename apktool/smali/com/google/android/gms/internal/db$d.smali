.class public Lcom/google/android/gms/internal/db$d;
.super Lcom/google/android/gms/internal/hv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/db;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hv",
        "<",
        "Lcom/google/android/gms/internal/dc;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/internal/db$e;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/db$e;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/hv;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/db$d;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/db$d;->e:Lcom/google/android/gms/internal/db$e;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/db$d;)Lcom/google/android/gms/internal/db$e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db$d;->e:Lcom/google/android/gms/internal/db$e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/db$d;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/db$d;->f:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/db$d;->f:Z

    new-instance v0, Lcom/google/android/gms/internal/db$d$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/db$d$1;-><init>(Lcom/google/android/gms/internal/db$d;)V

    new-instance v2, Lcom/google/android/gms/internal/hu$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/hu$b;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/db$d;->a(Lcom/google/android/gms/internal/hu$c;Lcom/google/android/gms/internal/hu$a;)V

    new-instance v0, Lcom/google/android/gms/internal/db$d$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/db$d$2;-><init>(Lcom/google/android/gms/internal/db$d;)V

    new-instance v2, Lcom/google/android/gms/internal/db$d$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/db$d$3;-><init>(Lcom/google/android/gms/internal/db$d;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/db$d;->a(Lcom/google/android/gms/internal/hu$c;Lcom/google/android/gms/internal/hu$a;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
