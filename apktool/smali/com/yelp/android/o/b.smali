.class Lcom/yelp/android/o/b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/o/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/o/a;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/yelp/android/o/b;->a:Lcom/yelp/android/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Lcom/yelp/android/o/b;->a:Lcom/yelp/android/o/a;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/o/b;->a:Lcom/yelp/android/o/a;

    invoke-static {v0}, Lcom/yelp/android/o/a;->a(Lcom/yelp/android/o/a;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    monitor-exit v1

    .line 172
    :goto_0
    return-object v3

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/o/b;->a:Lcom/yelp/android/o/a;

    invoke-static {v0}, Lcom/yelp/android/o/a;->b(Lcom/yelp/android/o/a;)V

    .line 167
    iget-object v0, p0, Lcom/yelp/android/o/b;->a:Lcom/yelp/android/o/a;

    invoke-static {v0}, Lcom/yelp/android/o/a;->c(Lcom/yelp/android/o/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/yelp/android/o/b;->a:Lcom/yelp/android/o/a;

    invoke-static {v0}, Lcom/yelp/android/o/a;->d(Lcom/yelp/android/o/a;)V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/o/b;->a:Lcom/yelp/android/o/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yelp/android/o/a;->a(Lcom/yelp/android/o/a;I)I

    .line 171
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/o/b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
