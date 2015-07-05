.class public Lcom/yelp/android/an/b;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private b:Ljava/lang/Object;

.field private c:Lcom/yelp/android/an/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/an/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/an/b;->a:Z

    iput-object p1, p0, Lcom/yelp/android/an/b;->c:Lcom/yelp/android/an/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/an/b;->b:Ljava/lang/Object;

    return-void
.end method

.method private a(J)V
    .locals 3

    iget-object v1, p0, Lcom/yelp/android/an/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/an/b;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yelp/android/an/b;->a:Z

    return v0
.end method

.method b()V
    .locals 2

    iget-object v1, p0, Lcom/yelp/android/an/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/an/b;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c()V
    .locals 4

    iget-object v0, p0, Lcom/yelp/android/an/b;->c:Lcom/yelp/android/an/a;

    invoke-virtual {v0}, Lcom/yelp/android/an/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/an/b;->a(J)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/an/b;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/an/b;->c:Lcom/yelp/android/an/a;

    invoke-virtual {v0}, Lcom/yelp/android/an/a;->b()Lcom/yelp/android/an/c;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/yelp/android/an/c;->run()V

    iget-object v0, p0, Lcom/yelp/android/an/b;->c:Lcom/yelp/android/an/a;

    invoke-virtual {v0, v5}, Lcom/yelp/android/an/a;->a(Lcom/yelp/android/an/c;)V

    invoke-virtual {v5}, Lcom/yelp/android/an/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/an/b;->c:Lcom/yelp/android/an/a;

    invoke-virtual {v5}, Lcom/yelp/android/an/c;->e()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v5}, Lcom/yelp/android/an/c;->d()J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/yelp/android/an/c;->c()Z

    move-result v4

    invoke-virtual {v5}, Lcom/yelp/android/an/c;->d()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/an/a;->a(Ljava/lang/Runnable;JZJ)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/an/b;->c()V

    goto :goto_0

    :cond_2
    return-void
.end method
