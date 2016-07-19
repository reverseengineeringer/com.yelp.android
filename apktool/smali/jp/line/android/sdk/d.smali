.class final Ljp/line/android/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljp/line/android/sdk/b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Ljp/line/android/sdk/Phase;


# direct methods
.method constructor <init>(Ljp/line/android/sdk/b;Landroid/content/Context;ILjp/line/android/sdk/Phase;)V
    .locals 0

    iput-object p1, p0, Ljp/line/android/sdk/d;->a:Ljp/line/android/sdk/b;

    iput-object p2, p0, Ljp/line/android/sdk/d;->b:Landroid/content/Context;

    iput p3, p0, Ljp/line/android/sdk/d;->c:I

    iput-object p4, p0, Ljp/line/android/sdk/d;->d:Ljp/line/android/sdk/Phase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/yelp/android/cv/b;

    invoke-direct {v0}, Lcom/yelp/android/cv/b;-><init>()V

    iget-object v1, p0, Ljp/line/android/sdk/d;->a:Ljp/line/android/sdk/b;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljp/line/android/sdk/d;->b:Landroid/content/Context;

    iget v2, p0, Ljp/line/android/sdk/d;->c:I

    iget-object v3, p0, Ljp/line/android/sdk/d;->d:Ljp/line/android/sdk/Phase;

    new-instance v4, Ljp/line/android/sdk/c$a;

    invoke-direct {v4}, Ljp/line/android/sdk/c$a;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/cv/b;->a(Landroid/content/Context;ILjp/line/android/sdk/Phase;Ljp/line/android/sdk/b;)V

    :goto_0
    const-class v1, Ljp/line/android/sdk/c;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sput-object v0, Ljp/line/android/sdk/c;->b:Ljp/line/android/sdk/a;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v0, Ljp/line/android/sdk/c;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_0
    :try_start_2
    iget-object v1, p0, Ljp/line/android/sdk/d;->b:Landroid/content/Context;

    iget v2, p0, Ljp/line/android/sdk/d;->c:I

    iget-object v3, p0, Ljp/line/android/sdk/d;->d:Ljp/line/android/sdk/Phase;

    iget-object v4, p0, Ljp/line/android/sdk/d;->a:Ljp/line/android/sdk/b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/cv/b;->a(Landroid/content/Context;ILjp/line/android/sdk/Phase;Ljp/line/android/sdk/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ljp/line/android/sdk/c;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
