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
    .line 35
    new-instance v0, Lcom/path/android/jobqueue/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/h;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/h;->a()Lcom/path/android/jobqueue/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/h;->b()Lcom/path/android/jobqueue/h;

    move-result-object v0

    const-string/jumbo v1, "BusinessPhotoUploadJob"

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/h;->a(Ljava/lang/String;)Lcom/path/android/jobqueue/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/h;)V

    .line 39
    iput-object p1, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mBusinessId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mCaption:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mShareTypes:Ljava/util/List;

    .line 43
    return-void
.end method

.method public static launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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
    .line 29
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->r()Lcom/path/android/jobqueue/c;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/Job;)J

    .line 31
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->getCreationTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/util/x;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/util/l;->c(Ljava/lang/String;)Z

    .line 75
    return-void
.end method

.method public onRun()V
    .locals 6

    .prologue
    .line 56
    new-instance v0, Lcom/yelp/android/appdata/webrequests/aa;

    iget-object v1, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mBusinessId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mCaption:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/aa;->executeSynchronously()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 58
    iget-object v1, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mBusinessId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->getCreationTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/yelp/android/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 60
    iget-object v1, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mImageFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mBusinessId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/yelp/android/services/job/BusinessPhotoUploadJob;->mShareTypes:Ljava/util/List;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/util/x;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 64
    return-void
.end method
