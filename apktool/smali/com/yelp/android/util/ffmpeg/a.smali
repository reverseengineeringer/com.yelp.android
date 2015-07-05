.class public Lcom/yelp/android/util/ffmpeg/a;
.super Ljava/lang/Object;
.source "ConcatenateTask.java"

# interfaces
.implements Lcom/yelp/android/util/ffmpeg/e;


# instance fields
.field private final a:[Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private d:Lcom/yelp/android/util/ffmpeg/f;


# direct methods
.method public constructor <init>([Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/util/ffmpeg/a;->a:[Ljava/io/File;

    .line 26
    iput-object p2, p0, Lcom/yelp/android/util/ffmpeg/a;->c:Ljava/io/File;

    .line 27
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/util/ffmpeg/a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".txt"

    invoke-static {v1, v2}, Lcom/yelp/android/util/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/util/ffmpeg/a;->b:Ljava/io/File;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/util/ffmpeg/f;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yelp/android/util/ffmpeg/a;->d:Lcom/yelp/android/util/ffmpeg/f;

    .line 69
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 35
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/yelp/android/util/ffmpeg/a;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 36
    iget-object v2, p0, Lcom/yelp/android/util/ffmpeg/a;->a:[Ljava/io/File;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 37
    const-string/jumbo v5, "file \'%s\'"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 41
    new-instance v0, Lcom/yelp/android/util/ffmpeg/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/util/ffmpeg/a;->c:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ffmpeg/d;-><init>(Ljava/io/File;Ljava/io/File;)V

    iget-object v1, p0, Lcom/yelp/android/util/ffmpeg/a;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/io/File;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    const-string/jumbo v1, "copy"

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Ljava/lang/String;)Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/util/ffmpeg/d;->a()Lcom/yelp/android/util/ffmpeg/d;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ffmpeg/d;->a(Landroid/content/Context;)Ljava/lang/Process;

    move-result-object v0

    .line 50
    if-nez v0, :cond_2

    const/4 v0, -0x1

    .line 51
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/util/ffmpeg/a;->d:Lcom/yelp/android/util/ffmpeg/f;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/a;->d:Lcom/yelp/android/util/ffmpeg/f;

    iget-object v1, p0, Lcom/yelp/android/util/ffmpeg/a;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/yelp/android/util/ffmpeg/f;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 65
    :cond_1
    :goto_2
    return-void

    .line 50
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 62
    :goto_3
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/a;->d:Lcom/yelp/android/util/ffmpeg/f;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/a;->d:Lcom/yelp/android/util/ffmpeg/f;

    iget-object v1, p0, Lcom/yelp/android/util/ffmpeg/a;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/yelp/android/util/ffmpeg/f;->b(Ljava/io/File;)V

    goto :goto_2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    :try_start_2
    const-string/jumbo v1, "ConcatenateTask"

    const-string/jumbo v2, "Unable to concatenate video chunks together"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 57
    :catch_1
    move-exception v0

    .line 58
    :try_start_3
    const-string/jumbo v1, "ConcatenateTask"

    const-string/jumbo v2, "Unable to concatenate video chunks together"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    iget-object v0, p0, Lcom/yelp/android/util/ffmpeg/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/yelp/android/util/ffmpeg/a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method
