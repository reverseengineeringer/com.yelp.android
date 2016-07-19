.class public Lcom/yelp/android/services/job/TipEditJob;
.super Lcom/yelp/android/services/job/YelpJob;
.source "TipEditJob.java"


# instance fields
.field private final mImage:Ljava/io/File;

.field private final mOriginalPhoto:Lcom/yelp/android/serializable/Photo;

.field private final mOriginalText:Ljava/lang/String;

.field private final mRemovePhotoWhenComplete:Z

.field private final mText:Ljava/lang/String;

.field private final mTipId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;Lcom/yelp/android/serializable/Photo;)V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/path/android/jobqueue/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->b()Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->a()Lcom/path/android/jobqueue/d;

    move-result-object v0

    const-string/jumbo v1, "TipEditJob"

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/d;->a(Ljava/lang/String;)Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/d;)V

    .line 73
    iput-object p1, p0, Lcom/yelp/android/services/job/TipEditJob;->mTipId:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/yelp/android/services/job/TipEditJob;->mText:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/yelp/android/services/job/TipEditJob;->mImage:Ljava/io/File;

    .line 76
    iput-boolean p4, p0, Lcom/yelp/android/services/job/TipEditJob;->mRemovePhotoWhenComplete:Z

    .line 77
    iput-object p5, p0, Lcom/yelp/android/services/job/TipEditJob;->mOriginalText:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lcom/yelp/android/services/job/TipEditJob;->mOriginalPhoto:Lcom/yelp/android/serializable/Photo;

    .line 79
    return-void
.end method

.method public static launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;Lcom/yelp/android/serializable/Photo;)V
    .locals 8

    .prologue
    .line 54
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->w()Lcom/path/android/jobqueue/b;

    move-result-object v7

    new-instance v0, Lcom/yelp/android/services/job/TipEditJob;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/services/job/TipEditJob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZLjava/lang/String;Lcom/yelp/android/serializable/Photo;)V

    invoke-virtual {v7, v0}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/Job;)J

    .line 63
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/yelp/android/services/job/YelpJob;->onCancel()V

    .line 100
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->TipSaveFailure:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "quicktip_state"

    const-string/jumbo v2, "edited"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    new-instance v0, Lcom/yelp/android/serializable/Tip$TempTip;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Tip$TempTip;-><init>()V

    .line 104
    iget-object v1, p0, Lcom/yelp/android/services/job/TipEditJob;->mTipId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Tip;->d(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/yelp/android/services/job/TipEditJob;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Tip;->a(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/yelp/android/services/job/TipEditJob;->mOriginalPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Tip;->a(Lcom/yelp/android/serializable/Photo;)V

    .line 107
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.tips.update"

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/services/job/TipEditJob;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public onRun()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 83
    invoke-super {p0}, Lcom/yelp/android/services/job/YelpJob;->onRun()V

    .line 85
    new-instance v0, Lcom/yelp/android/appdata/webrequests/EditTipRequest;

    iget-object v1, p0, Lcom/yelp/android/services/job/TipEditJob;->mTipId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/TipEditJob;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/services/job/TipEditJob;->mImage:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/EditTipRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 86
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/EditTipRequest;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 88
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.tips.update"

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/services/job/TipEditJob;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/services/job/TipEditJob;->mImage:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/services/job/TipEditJob;->mRemovePhotoWhenComplete:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/yelp/android/services/job/TipEditJob;->mImage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 94
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->TipSaveSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "quicktip_state"

    const-string/jumbo v2, "edited"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void
.end method
