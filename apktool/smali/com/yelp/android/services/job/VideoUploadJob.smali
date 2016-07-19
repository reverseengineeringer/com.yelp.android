.class public Lcom/yelp/android/services/job/VideoUploadJob;
.super Lcom/yelp/android/services/job/YelpJob;
.source "VideoUploadJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;
    }
.end annotation


# instance fields
.field private final mBusinessId:Ljava/lang/String;

.field private final mCaption:Ljava/lang/String;

.field private final mShouldDeleteFile:Z

.field private final mVideoFilePath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/path/android/jobqueue/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->a()Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->b()Lcom/path/android/jobqueue/d;

    move-result-object v0

    const-string/jumbo v1, "VideoUploadJob"

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/d;->a(Ljava/lang/String;)Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/d;)V

    .line 63
    iput-object p1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mCaption:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mBusinessId:Ljava/lang/String;

    .line 66
    iput-boolean p4, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mShouldDeleteFile:Z

    .line 67
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UploadVideoAttempt:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 68
    return-void
.end method

.method private a()Lcom/yelp/android/appdata/webrequests/ft$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ft;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mBusinessId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ft;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/ft;->a(Lcom/yelp/android/appdata/r;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ft$a;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    sget-object v1, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->UPLOAD_URL:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;Ljava/lang/String;)V

    .line 128
    throw v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 178
    new-instance v2, Lcom/yelp/android/util/t;

    iget-object v3, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/yelp/android/util/t;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Lcom/yelp/android/util/t;->c()I

    move-result v3

    .line 180
    invoke-virtual {v2}, Lcom/yelp/android/util/t;->d()I

    move-result v4

    .line 181
    invoke-virtual {v2}, Lcom/yelp/android/util/t;->b()J

    move-result-wide v6

    .line 182
    invoke-virtual {v2}, Lcom/yelp/android/util/t;->release()V

    .line 184
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 185
    const-string/jumbo v5, "duration_sec"

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/yelp/android/services/job/VideoUploadJob;->getTimeSinceCreation()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v5, "video_length_sec"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v5, "size_bytes"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string/jumbo v0, "width_pixels"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v0, "height_pixels"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v0, "business_id"

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mBusinessId:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v0, "wifi"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/l;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v0, "md5_hash"

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/yelp/android/util/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string/jumbo v0, "batch_size"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->aa()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string/jumbo v0, "video_id"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    return-object v2
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/ft$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fs;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/ft$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/appdata/webrequests/ft$a;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/fs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 141
    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/fs;->a(Lcom/yelp/android/appdata/r;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->UPLOAD_TO_S3:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/ft$a;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;Ljava/lang/String;)V

    .line 145
    throw v0
.end method

.method private a(Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 205
    invoke-direct {p0, p2}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "step"

    invoke-virtual {p1}, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v1, "batch_size"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/c;->aa()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->UploadVideoFailure:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 210
    return-void
.end method

.method private b(Lcom/yelp/android/appdata/webrequests/ft$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fr;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mBusinessId:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/ft$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mCaption:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/fr;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/fr;->a(Lcom/yelp/android/appdata/r;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UploadVideoSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/ft$a;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 162
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/User;->c(I)V

    .line 165
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;-><init>()V

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    sget-object v1, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->MARK_UPLOAD_COMPLETE:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/ft$a;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;Ljava/lang/String;)V

    .line 169
    throw v0
.end method

.method public static launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->w()Lcom/path/android/jobqueue/b;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/services/job/VideoUploadJob;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yelp/android/services/job/VideoUploadJob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/Job;)J

    .line 58
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mShouldDeleteFile:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const-string/jumbo v0, "VideoUploadJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to delete video file after onCancel is called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method

.method public onRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 87
    invoke-super {p0}, Lcom/yelp/android/services/job/YelpJob;->onRun()V

    .line 89
    invoke-direct {p0}, Lcom/yelp/android/services/job/VideoUploadJob;->a()Lcom/yelp/android/appdata/webrequests/ft$a;

    move-result-object v0

    .line 90
    iget-boolean v1, v0, Lcom/yelp/android/appdata/webrequests/ft$a;->c:Z

    if-eqz v1, :cond_1

    .line 91
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->UploadVideoDuplicate:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v0, v0, Lcom/yelp/android/appdata/webrequests/ft$a;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 92
    const-string/jumbo v0, "VideoUploadJob"

    const-string/jumbo v1, "Duplicate video."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Lcom/yelp/android/appdata/webrequests/ft$a;)V

    .line 98
    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/VideoUploadJob;->b(Lcom/yelp/android/appdata/webrequests/ft$a;)V

    .line 99
    iget-boolean v0, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mShouldDeleteFile:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const-string/jumbo v0, "VideoUploadJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to delete video file after successful video upload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0
.end method
