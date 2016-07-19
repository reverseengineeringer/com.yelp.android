.class public Lcom/yelp/android/services/job/BusinessPhotoUploadJob;
.super Lcom/yelp/android/services/job/YelpJob;
.source "BusinessPhotoUploadJob.java"


# instance fields
.field private final mBusinessId:Ljava/lang/String;

.field private final mCaption:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mShareTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/path/android/jobqueue/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->a()Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->b()Lcom/path/android/jobqueue/d;

    move-result-object v0

    const-string/jumbo v1, "BusinessPhotoUploadJob"

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/d;->a(Ljava/lang/String;)Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/d;)V

    .line 45
    iput-object p1, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mBusinessId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mCaption:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mShareTypes:Ljava/util/List;

    .line 49
    return-void
.end method

.method public static launchJob(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/yelp/android/util/n;->a(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->w()Lcom/path/android/jobqueue/b;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/Job;)J

    .line 40
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->getCreationTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/util/n;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/util/e;->c(Ljava/lang/String;)Z

    .line 87
    return-void
.end method

.method public onRun()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 62
    const-string/jumbo v0, "BusinessPhotoUploadJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ad;

    iget-object v1, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mBusinessId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mCaption:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ad;->i()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/yelp/android/serializable/Photo;

    .line 66
    iget-object v0, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mBusinessId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mCaption:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->getCreationTimeMillis()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mBusinessId:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mShareTypes:Ljava/util/List;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Photo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/n;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/util/e;->c(Ljava/lang/String;)Z

    .line 75
    const-string/jumbo v0, "BusinessPhotoUploadJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method
