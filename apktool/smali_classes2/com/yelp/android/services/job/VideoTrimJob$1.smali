.class Lcom/yelp/android/services/job/VideoTrimJob$1;
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


# direct methods
.method constructor <init>(Lcom/yelp/android/services/job/VideoTrimJob;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/yelp/android/services/job/VideoTrimJob$1;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 287
    const-string/jumbo v0, "VideoTrimJob"

    const-string/jumbo v1, "Trimming succeeded, creating video upload job."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob$1;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v0}, Lcom/yelp/android/services/job/VideoTrimJob;->access$000(Lcom/yelp/android/services/job/VideoTrimJob;)V

    .line 289
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/VideoTrimJob$1;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v2}, Lcom/yelp/android/services/job/VideoTrimJob;->access$100(Lcom/yelp/android/services/job/VideoTrimJob;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "video/webm"

    aput-object v3, v2, v4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 294
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob$1;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v0}, Lcom/yelp/android/services/job/VideoTrimJob;->access$100(Lcom/yelp/android/services/job/VideoTrimJob;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoTrimJob$1;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v1}, Lcom/yelp/android/services/job/VideoTrimJob;->access$200(Lcom/yelp/android/services/job/VideoTrimJob;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/services/job/VideoTrimJob$1;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v2}, Lcom/yelp/android/services/job/VideoTrimJob;->access$300(Lcom/yelp/android/services/job/VideoTrimJob;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lcom/yelp/android/services/job/VideoUploadJob;->launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/yelp/android/services/job/VideoTrimJob$1;->a:Lcom/yelp/android/services/job/VideoTrimJob;

    invoke-static {v0}, Lcom/yelp/android/services/job/VideoTrimJob;->access$400(Lcom/yelp/android/services/job/VideoTrimJob;)V

    .line 301
    return-void
.end method
