.class public Lcom/yelp/android/services/job/VideoUploadJob;
.super Lcom/yelp/android/services/job/YelpJob;
.source "VideoUploadJob.java"


# instance fields
.field private final mBusinessId:Ljava/lang/String;

.field private final mCaption:Ljava/lang/String;

.field private final mShouldDeleteFile:Z

.field private final mVideoFilePath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/path/android/jobqueue/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/h;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/h;->a()Lcom/path/android/jobqueue/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/h;->b()Lcom/path/android/jobqueue/h;

    move-result-object v0

    const-string/jumbo v1, "VideoUploadJob"

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/h;->a(Ljava/lang/String;)Lcom/path/android/jobqueue/h;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/h;)V

    .line 60
    iput-object p1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mCaption:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mBusinessId:Ljava/lang/String;

    .line 63
    iput-boolean p4, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mShouldDeleteFile:Z

    .line 64
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UploadVideoAttempt:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 65
    return-void
.end method

.method private a()Lcom/yelp/android/appdata/webrequests/hd;
    .locals 4

    .prologue
    .line 122
    new-instance v0, Lcom/yelp/android/appdata/webrequests/hc;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mBusinessId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/hc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/hc;->executeSynchronously(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/hd;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    sget-object v1, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->UPLOAD_URL:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;Ljava/lang/String;)V

    .line 129
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
    .line 170
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 171
    new-instance v2, Lcom/yelp/android/util/aj;

    iget-object v3, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/yelp/android/util/aj;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Lcom/yelp/android/util/aj;->c()I

    move-result v3

    .line 173
    invoke-virtual {v2}, Lcom/yelp/android/util/aj;->d()I

    move-result v4

    .line 174
    invoke-virtual {v2}, Lcom/yelp/android/util/aj;->b()J

    move-result-wide v6

    .line 175
    invoke-virtual {v2}, Lcom/yelp/android/util/aj;->release()V

    .line 177
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 178
    const-string/jumbo v5, "duration_sec"

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/yelp/android/services/job/VideoUploadJob;->getTimeSinceCreation()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v5, "video_length_sec"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v5, "size_bytes"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v0, "width_pixels"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v0, "height_pixels"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v0, "business_id"

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mBusinessId:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v0, "wifi"

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/s;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v0, "md5_hash"

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/yelp/android/util/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const-string/jumbo v0, "video_id"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    return-object v2
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/hd;)V
    .locals 4

    .prologue
    .line 138
    new-instance v0, Lcom/yelp/android/appdata/webrequests/hb;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/hd;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/appdata/webrequests/hd;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/hb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 141
    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/hb;->executeSynchronously(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    sget-object v1, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->UPLOAD_TO_S3:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/hd;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;Ljava/lang/String;)V

    .line 145
    throw v0
.end method

.method private a(Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 196
    invoke-direct {p0, p2}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 197
    const-string/jumbo v1, "step"

    invoke-virtual {p1}, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->UploadVideoFailure:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 199
    return-void
.end method

.method private b(Lcom/yelp/android/appdata/webrequests/hd;)V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ha;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mBusinessId:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/hd;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mCaption:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/ha;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/ha;->executeSynchronously(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UploadVideoSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/hd;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    sget-object v1, Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;->MARK_UPLOAD_COMPLETE:Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;

    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/hd;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Lcom/yelp/android/services/job/VideoUploadJob$UploadStep;Ljava/lang/String;)V

    .line 162
    throw v0
.end method

.method public static launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->r()Lcom/path/android/jobqueue/c;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/services/job/VideoUploadJob;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yelp/android/services/job/VideoUploadJob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/Job;)J

    .line 52
    return-void
.end method


# virtual methods
.method protected getRetryLimit()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0xe

    return v0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mShouldDeleteFile:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
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

    .line 107
    :cond_0
    return-void
.end method

.method public onRun()V
    .locals 3

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/yelp/android/services/job/VideoUploadJob;->a()Lcom/yelp/android/appdata/webrequests/hd;

    move-result-object v0

    .line 85
    iget-boolean v1, v0, Lcom/yelp/android/appdata/webrequests/hd;->c:Z

    if-eqz v1, :cond_1

    .line 86
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->UploadVideoDuplicate:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v0, v0, Lcom/yelp/android/appdata/webrequests/hd;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/VideoUploadJob;->a(Lcom/yelp/android/appdata/webrequests/hd;)V

    .line 92
    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/VideoUploadJob;->b(Lcom/yelp/android/appdata/webrequests/hd;)V

    .line 93
    iget-boolean v0, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mShouldDeleteFile:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/services/job/VideoUploadJob;->mVideoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
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
