.class public Lcom/yelp/android/ai/b;
.super Ljava/io/InputStream;
.source "ExceptionCatchingInputStream.java"


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/yelp/android/ai/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

.field private c:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yelp/android/ai/f;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ai/b;->a:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    return-void
.end method

.method public static a(Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;)Lcom/yelp/android/ai/b;
    .locals 2

    .prologue
    .line 25
    sget-object v1, Lcom/yelp/android/ai/b;->a:Ljava/util/Queue;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/yelp/android/ai/b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ai/b;

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/yelp/android/ai/b;

    invoke-direct {v0}, Lcom/yelp/android/ai/b;-><init>()V

    .line 31
    :cond_0
    invoke-virtual {v0, p0}, Lcom/yelp/android/ai/b;->b(Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;)V

    .line 32
    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->a()V

    .line 125
    return-void
.end method

.method public available()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->available()I

    move-result v0

    return v0
.end method

.method public b()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/ai/b;->c:Ljava/io/IOException;

    return-object v0
.end method

.method b(Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 48
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/yelp/android/ai/b;->c:Ljava/io/IOException;

    .line 133
    iput-object v0, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    .line 134
    sget-object v1, Lcom/yelp/android/ai/b;->a:Ljava/util/Queue;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lcom/yelp/android/ai/b;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->close()V

    .line 58
    return-void
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->mark(I)V

    .line 63
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    iput-object v0, p0, Lcom/yelp/android/ai/b;->c:Ljava/io/IOException;

    .line 118
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 1

    .prologue
    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 79
    :goto_0
    return v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    iput-object v0, p0, Lcom/yelp/android/ai/b;->c:Ljava/io/IOException;

    .line 77
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    iput-object v0, p0, Lcom/yelp/android/ai/b;->c:Ljava/io/IOException;

    .line 89
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ai/b;->b:Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 108
    :goto_0
    return-wide v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    iput-object v0, p0, Lcom/yelp/android/ai/b;->c:Ljava/io/IOException;

    .line 106
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
