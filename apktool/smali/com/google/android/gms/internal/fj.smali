.class public Lcom/google/android/gms/internal/fj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/fj$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ib;

.field protected b:Z

.field protected c:Z

.field private final d:Landroid/os/Handler;

.field private final e:J

.field private f:J

.field private g:Lcom/google/android/gms/internal/ic$a;

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ic$a;Lcom/google/android/gms/internal/ib;II)V
    .locals 10

    const-wide/16 v6, 0xc8

    const-wide/16 v8, 0x32

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/fj;-><init>(Lcom/google/android/gms/internal/ic$a;Lcom/google/android/gms/internal/ib;IIJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ic$a;Lcom/google/android/gms/internal/ib;IIJJ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p5, p0, Lcom/google/android/gms/internal/fj;->e:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/fj;->f:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/fj;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/fj;->a:Lcom/google/android/gms/internal/ib;

    iput-object p1, p0, Lcom/google/android/gms/internal/fj;->g:Lcom/google/android/gms/internal/ic$a;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/fj;->b:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/fj;->c:Z

    iput p4, p0, Lcom/google/android/gms/internal/fj;->h:I

    iput p3, p0, Lcom/google/android/gms/internal/fj;->i:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/fj;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fj;->i:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/fj;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/fj;->h:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/fj;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/fj;->f:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/fj;->f:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/fj;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/fj;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/fj;)Lcom/google/android/gms/internal/ic$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->g:Lcom/google/android/gms/internal/ic$a;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/fj;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/fj;->e:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/fj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->d:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/google/android/gms/internal/fj;->e:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ik;

    iget-object v1, p0, Lcom/google/android/gms/internal/fj;->a:Lcom/google/android/gms/internal/ib;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->q:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ik;-><init>(Lcom/google/android/gms/internal/fj;Lcom/google/android/gms/internal/ib;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fj;->a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/ik;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/ik;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ib;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->a:Lcom/google/android/gms/internal/ib;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v5

    :goto_0
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ib;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->e()Lcom/google/android/gms/internal/hd;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/fj;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/fj;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/fj;->c:Z

    return v0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->a:Lcom/google/android/gms/internal/ib;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/fj;->g:Lcom/google/android/gms/internal/ic$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/fj;->a:Lcom/google/android/gms/internal/ib;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ic$a;->a(Lcom/google/android/gms/internal/ib;Z)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/fj$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/fj;->a:Lcom/google/android/gms/internal/ib;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ib;->a()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/fj$a;-><init>(Lcom/google/android/gms/internal/fj;Landroid/webkit/WebView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fj$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
