.class public Lcom/google/android/gms/internal/db;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/db$a;,
        Lcom/google/android/gms/internal/db$d;,
        Lcom/google/android/gms/internal/db$e;,
        Lcom/google/android/gms/internal/db$c;,
        Lcom/google/android/gms/internal/db$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

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

.field private f:Lcom/google/android/gms/internal/db$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/db$b",
            "<",
            "Lcom/google/android/gms/internal/cy;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/internal/db$e;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/db;->h:I

    iput-object p3, p0, Lcom/google/android/gms/internal/db;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    new-instance v0, Lcom/google/android/gms/internal/db$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/db$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/db$b;

    new-instance v0, Lcom/google/android/gms/internal/db$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/db$c;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->f:Lcom/google/android/gms/internal/db$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/db$b;Lcom/google/android/gms/internal/db$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/db$b",
            "<",
            "Lcom/google/android/gms/internal/cy;",
            ">;",
            "Lcom/google/android/gms/internal/db$b",
            "<",
            "Lcom/google/android/gms/internal/cy;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/db;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/db$b;

    iput-object p5, p0, Lcom/google/android/gms/internal/db;->f:Lcom/google/android/gms/internal/db$b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/db;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/db;->h:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/db;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/db$e;)Lcom/google/android/gms/internal/db$e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/db$e;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/db;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->d:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method private c()Lcom/google/android/gms/internal/db$e;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/db$e;

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->f:Lcom/google/android/gms/internal/db$b;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/db$e;-><init>(Lcom/google/android/gms/internal/db$b;)V

    new-instance v1, Lcom/google/android/gms/internal/db$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/db$1;-><init>(Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/db$e;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/hd;->a(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/db;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/db;)Lcom/google/android/gms/internal/db$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->e:Lcom/google/android/gms/internal/db$b;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/db;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/db;->h:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/db;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/db;)Lcom/google/android/gms/internal/db$e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/db$e;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/cy;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/da;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/da;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/j;)V

    return-object v0
.end method

.method protected a()Lcom/google/android/gms/internal/db$e;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/db;->c()Lcom/google/android/gms/internal/db$e;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/db$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/db$2;-><init>(Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/db$e;)V

    new-instance v2, Lcom/google/android/gms/internal/db$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/db$3;-><init>(Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/db$e;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/db$e;->a(Lcom/google/android/gms/internal/hu$c;Lcom/google/android/gms/internal/hu$a;)V

    return-object v0
.end method

.method public b()Lcom/google/android/gms/internal/db$d;
    .locals 4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/db;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/db$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/db$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db$e;->f()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/db;->h:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/db;->a()Lcom/google/android/gms/internal/db$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/db$e;

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/db$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db$e;->a()Lcom/google/android/gms/internal/db$d;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/db;->h:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/db$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db$e;->a()Lcom/google/android/gms/internal/db$d;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/db;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/db;->h:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/db;->a()Lcom/google/android/gms/internal/db$e;

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/db$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db$e;->a()Lcom/google/android/gms/internal/db$d;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/db;->h:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/db$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db$e;->a()Lcom/google/android/gms/internal/db$d;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/db;->g:Lcom/google/android/gms/internal/db$e;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db$e;->a()Lcom/google/android/gms/internal/db$d;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
