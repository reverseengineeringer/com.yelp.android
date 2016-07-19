.class public final Lcom/yelp/android/cw/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/line/android/sdk/api/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/cw/a$1;,
        Lcom/yelp/android/cw/a$a;,
        Lcom/yelp/android/cw/a$c;,
        Lcom/yelp/android/cw/a$b;
    }
.end annotation


# instance fields
.field final a:Lcom/yelp/android/cw/b;

.field private b:Lcom/yelp/android/cw/e;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/cw/d",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/cw/a;->c:Ljava/util/Map;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cw/a;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/yelp/android/cx/n;

    invoke-direct {v0}, Lcom/yelp/android/cx/n;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/cw/a;->a:Lcom/yelp/android/cw/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/cw/a;->b:Lcom/yelp/android/cw/e;

    return-void
.end method

.method private a(Lcom/yelp/android/cw/c;Ljp/line/android/sdk/api/c;)Ljp/line/android/sdk/api/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/android/cw/c;",
            "Ljp/line/android/sdk/api/c",
            "<TRO;>;)",
            "Ljp/line/android/sdk/api/b",
            "<TRO;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/yelp/android/cw/a$a;->a(Lcom/yelp/android/cw/c;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/cw/a;->c:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/cw/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    :goto_0
    if-nez v2, :cond_4

    :try_start_1
    new-instance v0, Lcom/yelp/android/cw/d;

    invoke-direct {v0}, Lcom/yelp/android/cw/d;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/cw/a;->b:Lcom/yelp/android/cw/e;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yelp/android/cw/a;->b:Lcom/yelp/android/cw/e;

    invoke-interface {v2}, Lcom/yelp/android/cw/e;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/yelp/android/cw/a$c;

    iget-object v4, p0, Lcom/yelp/android/cw/a;->b:Lcom/yelp/android/cw/e;

    invoke-direct {v2, p1, v4}, Lcom/yelp/android/cw/a$c;-><init>(Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/e;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/cw/d;->a(Ljp/line/android/sdk/api/c;)Z

    :cond_1
    iget-object v2, p0, Lcom/yelp/android/cw/a;->c:Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/cw/a;->d:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/yelp/android/cw/a$b;

    invoke-direct {v2, p0, v3, p1, v1}, Lcom/yelp/android/cw/a$b;-><init>(Lcom/yelp/android/cw/a;Ljava/lang/String;Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/d;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v1, p2}, Lcom/yelp/android/cw/d;->a(Ljp/line/android/sdk/api/c;)Z

    :cond_3
    return-object v1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/yelp/android/cw/e;
    .locals 1

    iget-object v0, p0, Lcom/yelp/android/cw/a;->b:Lcom/yelp/android/cw/e;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljp/line/android/sdk/api/c;)Ljp/line/android/sdk/api/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljp/line/android/sdk/api/c",
            "<",
            "Lcom/yelp/android/db/a;",
            ">;)",
            "Ljp/line/android/sdk/api/b",
            "<",
            "Lcom/yelp/android/db/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/yelp/android/cw/c;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->GET_ACCESS_TOKEN:Ljp/line/android/sdk/api/ApiType;

    invoke-direct {v0, v1}, Lcom/yelp/android/cw/c;-><init>(Ljp/line/android/sdk/api/ApiType;)V

    invoke-virtual {v0, p1}, Lcom/yelp/android/cw/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/yelp/android/cw/c;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/cw/a;->a(Lcom/yelp/android/cw/c;Ljp/line/android/sdk/api/c;)Ljp/line/android/sdk/api/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljp/line/android/sdk/api/c;)Ljp/line/android/sdk/api/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljp/line/android/sdk/api/c",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljp/line/android/sdk/api/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/yelp/android/cw/c;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->LOGOUT:Ljp/line/android/sdk/api/ApiType;

    invoke-direct {v0, v1}, Lcom/yelp/android/cw/c;-><init>(Ljp/line/android/sdk/api/ApiType;)V

    invoke-virtual {v0, p1}, Lcom/yelp/android/cw/c;->c(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/cw/a;->a(Lcom/yelp/android/cw/c;Ljp/line/android/sdk/api/c;)Ljp/line/android/sdk/api/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljp/line/android/sdk/api/c;)Ljp/line/android/sdk/api/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/line/android/sdk/api/c",
            "<",
            "Lcom/yelp/android/db/f;",
            ">;)",
            "Ljp/line/android/sdk/api/b",
            "<",
            "Lcom/yelp/android/db/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/yelp/android/cw/c;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->GET_OTP:Ljp/line/android/sdk/api/ApiType;

    invoke-direct {v0, v1}, Lcom/yelp/android/cw/c;-><init>(Ljp/line/android/sdk/api/ApiType;)V

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/cw/a;->a(Lcom/yelp/android/cw/c;Ljp/line/android/sdk/api/c;)Ljp/line/android/sdk/api/b;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/cw/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljp/line/android/sdk/api/c;)Ljp/line/android/sdk/api/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/line/android/sdk/api/c",
            "<",
            "Lcom/yelp/android/db/h;",
            ">;)",
            "Ljp/line/android/sdk/api/b",
            "<",
            "Lcom/yelp/android/db/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/yelp/android/cw/c;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->GET_MY_PROFILE:Ljp/line/android/sdk/api/ApiType;

    invoke-direct {v0, v1}, Lcom/yelp/android/cw/c;-><init>(Ljp/line/android/sdk/api/ApiType;)V

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/cw/a;->a(Lcom/yelp/android/cw/c;Ljp/line/android/sdk/api/c;)Ljp/line/android/sdk/api/b;

    move-result-object v0

    return-object v0
.end method
