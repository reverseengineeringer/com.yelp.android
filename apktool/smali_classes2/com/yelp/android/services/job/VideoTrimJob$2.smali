.class Lcom/yelp/android/services/job/VideoTrimJob$2;
.super Ljava/lang/Object;
.source "VideoTrimJob.java"

# interfaces
.implements Lcom/yelp/android/util/ffmpeg/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/services/job/VideoTrimJob;->initializeCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/services/job/VideoTrimJob;

.field private b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/yelp/android/services/job/VideoTrimJob;)V
    .locals 1

    .prologue
    .line 305
    iput-object p1, p0, Lcom/yelp/android/services/job/VideoTrimJob$2;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob$2;->b:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "VideoTrimJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "chunk encoded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob$2;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob$2;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoTrimJob$2;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v1}, Lcom/yelp/android/services/job/VideoTrimJob;->access$500(Lcom/yelp/android/services/job/VideoTrimJob;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob$2;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v0}, Lcom/yelp/android/services/job/VideoTrimJob;->access$500(Lcom/yelp/android/services/job/VideoTrimJob;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    .line 315
    iget-object v1, p0, Lcom/yelp/android/services/job/VideoTrimJob$2;->b:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 316
    new-instance v1, Lcom/yelp/android/util/ffmpeg/a;

    iget-object v2, p0, Lcom/yelp/android/services/job/VideoTrimJob$2;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v2}, Lcom/yelp/android/services/job/VideoTrimJob;->access$100(Lcom/yelp/android/services/job/VideoTrimJob;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ffmpeg/a;-><init>([Ljava/io/File;Ljava/io/File;)V

    .line 318
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob$2;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v0}, Lcom/yelp/android/services/job/VideoTrimJob;->access$600(Lcom/yelp/android/services/job/VideoTrimJob;)Lcom/yelp/android/util/ffmpeg/d$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/util/ffmpeg/a;->a(Lcom/yelp/android/util/ffmpeg/d$a;)V

    .line 319
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob$2;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v0}, Lcom/yelp/android/services/job/VideoTrimJob;->access$700(Lcom/yelp/android/services/job/VideoTrimJob;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 320
    const-string/jumbo v0, "VideoTrimJob"

    const-string/jumbo v1, "concatenation started"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_0
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 326
    const-string/jumbo v0, "VideoTrimJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "chunk failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob$2;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v0}, Lcom/yelp/android/services/job/VideoTrimJob;->access$400(Lcom/yelp/android/services/job/VideoTrimJob;)V

    .line 328
    return-void
.end method
