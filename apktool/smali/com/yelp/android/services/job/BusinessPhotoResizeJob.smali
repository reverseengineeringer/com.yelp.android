.class public Lcom/yelp/android/services/job/BusinessPhotoResizeJob;
.super Lcom/yelp/android/services/job/YelpJob;
.source "BusinessPhotoResizeJob.java"


# instance fields
.field private final mBusinessId:Ljava/lang/String;

.field private final mCaption:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageSource:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

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
.method private constructor <init>(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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
    .line 61
    new-instance v0, Lcom/path/android/jobqueue/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->b()Lcom/path/android/jobqueue/d;

    move-result-object v0

    const-string/jumbo v1, "BusinessResizeUploadJob"

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/d;->a(Ljava/lang/String;)Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/d;)V

    .line 62
    iput-object p1, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mBusinessId:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mImageSource:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 64
    iput-object p3, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mCaption:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mImageFilePath:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mShareTypes:Ljava/util/List;

    .line 67
    return-void
.end method

.method public static launchJob(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
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
    .line 40
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->c:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0, p1, p2, p3, p4}, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->launchJob(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 53
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->w()Lcom/path/android/jobqueue/b;

    move-result-object v6

    new-instance v0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/Job;)J

    goto :goto_0
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mImageFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->getCreationTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/util/n;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mImageFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/util/e;->c(Ljava/lang/String;)Z

    .line 95
    return-void
.end method

.method public onRun()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    invoke-super {p0}, Lcom/yelp/android/services/job/YelpJob;->onRun()V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mImageFilePath:Ljava/lang/String;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mBusinessId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mImageSource:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iget-object v3, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mCaption:Ljava/lang/String;

    iget-object v4, p0, Lcom/yelp/android/services/job/BusinessPhotoResizeJob;->mShareTypes:Ljava/util/List;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->launchJob(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 83
    return-void
.end method

.method public shouldReRunOnThrowable(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "Unable to scale image, cancelling upload."

    check-cast p1, Ljava/lang/Exception;

    invoke-static {v0, p1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 88
    const/4 v0, 0x0

    return v0
.end method
