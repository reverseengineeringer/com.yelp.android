.class Lcom/yelp/android/services/t;
.super Ljava/lang/Object;
.source "VideoTrimService.java"

# interfaces
.implements Lcom/yelp/android/util/ffmpeg/f;


# instance fields
.field final synthetic a:Lcom/yelp/android/services/VideoTrimService;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/VideoTrimService;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/yelp/android/services/t;->a:Lcom/yelp/android/services/VideoTrimService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 244
    const-string/jumbo v0, "VideoTrimService"

    const-string/jumbo v1, "Trimming succeeded, creating video upload job."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/yelp/android/services/t;->a:Lcom/yelp/android/services/VideoTrimService;

    invoke-static {v0}, Lcom/yelp/android/services/VideoTrimService;->a(Lcom/yelp/android/services/VideoTrimService;)V

    .line 246
    iget-object v0, p0, Lcom/yelp/android/services/t;->a:Lcom/yelp/android/services/VideoTrimService;

    invoke-static {v0}, Lcom/yelp/android/services/VideoTrimService;->b(Lcom/yelp/android/services/VideoTrimService;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/t;->a:Lcom/yelp/android/services/VideoTrimService;

    invoke-static {v1}, Lcom/yelp/android/services/VideoTrimService;->c(Lcom/yelp/android/services/VideoTrimService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/services/t;->a:Lcom/yelp/android/services/VideoTrimService;

    invoke-static {v2}, Lcom/yelp/android/services/VideoTrimService;->d(Lcom/yelp/android/services/VideoTrimService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/services/job/VideoUploadJob;->launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yelp/android/services/t;->a:Lcom/yelp/android/services/VideoTrimService;

    invoke-static {v0}, Lcom/yelp/android/services/VideoTrimService;->e(Lcom/yelp/android/services/VideoTrimService;)V

    .line 252
    return-void
.end method
