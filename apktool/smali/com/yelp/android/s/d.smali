.class public Lcom/yelp/android/s/d;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Lcom/yelp/android/s/a;


# static fields
.field private static a:Lcom/yelp/android/s/d;


# instance fields
.field private final b:Lcom/yelp/android/s/k;

.field private final c:Ljava/io/File;

.field private final d:I

.field private e:Lcom/yelp/android/o/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/yelp/android/s/d;->a:Lcom/yelp/android/s/d;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;I)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/yelp/android/s/d;->c:Ljava/io/File;

    .line 52
    iput p2, p0, Lcom/yelp/android/s/d;->d:I

    .line 53
    new-instance v0, Lcom/yelp/android/s/k;

    invoke-direct {v0}, Lcom/yelp/android/s/k;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/s/d;->b:Lcom/yelp/android/s/k;

    .line 54
    return-void
.end method

.method private declared-synchronized a()Lcom/yelp/android/o/a;
    .locals 6

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/s/d;->e:Lcom/yelp/android/o/a;

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/yelp/android/s/d;->c:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget v3, p0, Lcom/yelp/android/s/d;->d:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/yelp/android/o/a;->a(Ljava/io/File;IIJ)Lcom/yelp/android/o/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/s/d;->e:Lcom/yelp/android/o/a;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/s/d;->e:Lcom/yelp/android/o/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized a(Ljava/io/File;I)Lcom/yelp/android/s/a;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/yelp/android/s/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yelp/android/s/d;->a:Lcom/yelp/android/s/d;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/yelp/android/s/d;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/s/d;-><init>(Ljava/io/File;I)V

    sput-object v0, Lcom/yelp/android/s/d;->a:Lcom/yelp/android/s/d;

    .line 47
    :cond_0
    sget-object v0, Lcom/yelp/android/s/d;->a:Lcom/yelp/android/s/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b;)Ljava/io/File;
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/s/d;->b:Lcom/yelp/android/s/k;

    invoke-virtual {v0, p1}, Lcom/yelp/android/s/k;->a(Lcom/bumptech/glide/load/b;)Ljava/lang/String;

    move-result-object v1

    .line 66
    const/4 v0, 0x0

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/yelp/android/s/d;->a()Lcom/yelp/android/o/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yelp/android/o/a;->a(Ljava/lang/String;)Lcom/yelp/android/o/e;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/o/e;->a(I)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    const-string/jumbo v2, "DiskLruCacheWrapper"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string/jumbo v2, "DiskLruCacheWrapper"

    const-string/jumbo v3, "Unable to get from disk cache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/b;Lcom/yelp/android/s/b;)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/s/d;->b:Lcom/yelp/android/s/k;

    invoke-virtual {v0, p1}, Lcom/yelp/android/s/k;->a(Lcom/bumptech/glide/load/b;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/yelp/android/s/d;->a()Lcom/yelp/android/o/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/o/a;->b(Ljava/lang/String;)Lcom/yelp/android/o/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    if-eqz v1, :cond_1

    .line 91
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/yelp/android/o/c;->a(I)Ljava/io/File;

    move-result-object v0

    .line 92
    invoke-interface {p2, v0}, Lcom/yelp/android/s/b;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v1}, Lcom/yelp/android/o/c;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Lcom/yelp/android/o/c;->c()V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 96
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/yelp/android/o/c;->c()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string/jumbo v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    const-string/jumbo v1, "DiskLruCacheWrapper"

    const-string/jumbo v2, "Unable to put to disk cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/load/b;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/s/d;->b:Lcom/yelp/android/s/k;

    invoke-virtual {v0, p1}, Lcom/yelp/android/s/k;->a(Lcom/bumptech/glide/load/b;)Ljava/lang/String;

    move-result-object v0

    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/yelp/android/s/d;->a()Lcom/yelp/android/o/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/o/a;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string/jumbo v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string/jumbo v1, "DiskLruCacheWrapper"

    const-string/jumbo v2, "Unable to delete from disk cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
