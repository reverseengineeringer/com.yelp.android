.class Lcom/yelp/android/ab/p;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/yelp/android/p/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yelp/android/ai/f;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ab/p;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/yelp/android/p/b;)Lcom/yelp/android/p/a;
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ab/p;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/p/a;

    .line 122
    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/yelp/android/p/a;

    invoke-direct {v0, p1}, Lcom/yelp/android/p/a;-><init>(Lcom/yelp/android/p/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_0
    monitor-exit p0

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/yelp/android/p/a;)V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/yelp/android/p/a;->h()V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ab/p;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
