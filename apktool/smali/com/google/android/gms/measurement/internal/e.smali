.class public Lcom/google/android/gms/measurement/internal/e;
.super Lcom/google/android/gms/measurement/internal/aj;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:J

.field private final c:Ljava/lang/Runnable;

.field private final d:Lcom/google/android/gms/measurement/internal/p;

.field private final e:Lcom/google/android/gms/measurement/internal/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ag;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/aj;-><init>(Lcom/google/android/gms/measurement/internal/ag;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/e$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/e$1;-><init>(Lcom/google/android/gms/measurement/internal/e;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->c:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/measurement/internal/e$2;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->n:Lcom/google/android/gms/measurement/internal/ag;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/e$2;-><init>(Lcom/google/android/gms/measurement/internal/e;Lcom/google/android/gms/measurement/internal/ag;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->d:Lcom/google/android/gms/measurement/internal/p;

    new-instance v0, Lcom/google/android/gms/measurement/internal/e$3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->n:Lcom/google/android/gms/measurement/internal/ag;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/e$3;-><init>(Lcom/google/android/gms/measurement/internal/e;Lcom/google/android/gms/measurement/internal/ag;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->e:Lcom/google/android/gms/measurement/internal/p;

    return-void
.end method

.method private a(J)V
    .locals 9

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->f()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/e;->w()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->d:Lcom/google/android/gms/measurement/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->e:Lcom/google/android/gms/measurement/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->s()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z;->z()Lcom/google/android/gms/measurement/internal/z$a;

    move-result-object v0

    const-string/jumbo v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/e;->b:J

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->l()Lcom/google/android/gms/internal/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/jt;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ad;->i:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ad$b;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ad;->k:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ad$b;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ad;->j:Lcom/google/android/gms/measurement/internal/ad$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ad$a;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ad;->l:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/ad$b;->a(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ad;->j:Lcom/google/android/gms/measurement/internal/ad$a;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ad$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->d:Lcom/google/android/gms/measurement/internal/p;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ad;->h:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ad$b;->a()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ad;->l:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ad$b;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/p;->a(J)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->e:Lcom/google/android/gms/measurement/internal/p;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ad;->l:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ad$b;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/p;->a(J)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/e;->x()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/e;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/e;->a(J)V

    return-void
.end method

.method private b(J)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->f()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/e;->w()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->d:Lcom/google/android/gms/measurement/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->e:Lcom/google/android/gms/measurement/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->s()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z;->z()Lcom/google/android/gms/measurement/internal/z$a;

    move-result-object v0

    const-string/jumbo v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ad;->l:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ad;->l:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ad$b;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/e;->b:J

    sub-long v4, p1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ad$b;->a(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ad;->k:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->l()Lcom/google/android/gms/internal/jt;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/jt;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ad$b;->a(J)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ad;->j:Lcom/google/android/gms/measurement/internal/ad$a;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ad$a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/e;->y()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/e;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/e;->b(J)V

    return-void
.end method

.method private w()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/os/Handler;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private x()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->l()Lcom/google/android/gms/internal/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/jt;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->s()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z;->z()Lcom/google/android/gms/measurement/internal/z$a;

    move-result-object v2

    const-string/jumbo v3, "Session started, time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ad;->j:Lcom/google/android/gms/measurement/internal/ad$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ad$a;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->h()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    const-string/jumbo v1, "auto"

    const-string/jumbo v2, "_s"

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private y()V
    .locals 12

    const-wide/32 v10, 0x36ee80

    const-wide/16 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->l()Lcom/google/android/gms/internal/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/jt;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/e;->b:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    sub-long v2, v0, v10

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/e;->b:J

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ad;->l:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ad$b;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/e;->b:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/ad;->l:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/measurement/internal/ad$b;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->s()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/z;->z()Lcom/google/android/gms/measurement/internal/z$a;

    move-result-object v4

    const-string/jumbo v5, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/z$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "_et"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->h()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    const-string/jumbo v3, "auto"

    const-string/jumbo v5, "_e"

    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ad;->l:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/measurement/internal/ad$b;->a(J)V

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/e;->b:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->e:Lcom/google/android/gms/measurement/internal/p;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ad;->l:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ad$b;->a()J

    move-result-wide v2

    sub-long v2, v10, v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/p;->a(J)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/e;->w()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->l()Lcom/google/android/gms/internal/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/jt;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->r()Lcom/google/android/gms/measurement/internal/af;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/e$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/e$4;-><init>(Lcom/google/android/gms/measurement/internal/e;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/af;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected c()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->l()Lcom/google/android/gms/internal/jt;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/jt;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->r()Lcom/google/android/gms/measurement/internal/af;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/e$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/e$5;-><init>(Lcom/google/android/gms/measurement/internal/e;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/af;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic d()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->d()V

    return-void
.end method

.method public bridge synthetic e()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->e()V

    return-void
.end method

.method public bridge synthetic f()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->f()V

    return-void
.end method

.method public bridge synthetic g()Lcom/google/android/gms/measurement/internal/m;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->g()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->h()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Lcom/google/android/gms/measurement/internal/x;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->i()Lcom/google/android/gms/measurement/internal/x;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Lcom/google/android/gms/measurement/internal/q;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->j()Lcom/google/android/gms/measurement/internal/q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Lcom/google/android/gms/measurement/internal/d;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->k()Lcom/google/android/gms/measurement/internal/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Lcom/google/android/gms/internal/jt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->l()Lcom/google/android/gms/internal/jt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->m()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Lcom/google/android/gms/measurement/internal/o;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->n()Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Lcom/google/android/gms/measurement/internal/k;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->o()Lcom/google/android/gms/measurement/internal/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Lcom/google/android/gms/measurement/internal/ae;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->p()Lcom/google/android/gms/measurement/internal/ae;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->q()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Lcom/google/android/gms/measurement/internal/af;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->r()Lcom/google/android/gms/measurement/internal/af;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Lcom/google/android/gms/measurement/internal/z;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->s()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Lcom/google/android/gms/measurement/internal/ad;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Lcom/google/android/gms/measurement/internal/n;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/aj;->u()Lcom/google/android/gms/measurement/internal/n;

    move-result-object v0

    return-object v0
.end method

.method public v()V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->f()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->s()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z;->y()Lcom/google/android/gms/measurement/internal/z$a;

    move-result-object v0

    const-string/jumbo v1, "Application backgrounded. Logging engagement"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z$a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ad;->l:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ad$b;->a()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "_et"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->h()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    const-string/jumbo v1, "auto"

    const-string/jumbo v3, "_e"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->t()Lcom/google/android/gms/measurement/internal/ad;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ad;->l:Lcom/google/android/gms/measurement/internal/ad$b;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/ad$b;->a(J)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/e;->s()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/z;->c()Lcom/google/android/gms/measurement/internal/z$a;

    move-result-object v2

    const-string/jumbo v3, "Not logging non-positive engagement time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
