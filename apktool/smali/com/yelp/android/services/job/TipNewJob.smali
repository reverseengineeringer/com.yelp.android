.class public Lcom/yelp/android/services/job/TipNewJob;
.super Lcom/yelp/android/services/job/YelpJob;
.source "TipNewJob.java"


# instance fields
.field private final mBusinessId:Ljava/lang/String;

.field private final mImage:Ljava/io/File;

.field private final mRemovePhotoWhenComplete:Z

.field private final mShareFacebook:Z

.field private final mShareTwitter:Z

.field private final mTempTipId:Ljava/lang/String;

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZZ)V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/path/android/jobqueue/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/d;-><init>(I)V

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->b()Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/path/android/jobqueue/d;->a()Lcom/path/android/jobqueue/d;

    move-result-object v0

    const-string/jumbo v1, "TipNewJob"

    invoke-virtual {v0, v1}, Lcom/path/android/jobqueue/d;->a(Ljava/lang/String;)Lcom/path/android/jobqueue/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/services/job/YelpJob;-><init>(Lcom/path/android/jobqueue/d;)V

    .line 84
    iput-object p1, p0, Lcom/yelp/android/services/job/TipNewJob;->mBusinessId:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/yelp/android/services/job/TipNewJob;->mTempTipId:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/yelp/android/services/job/TipNewJob;->mText:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/yelp/android/services/job/TipNewJob;->mImage:Ljava/io/File;

    .line 88
    iput-boolean p5, p0, Lcom/yelp/android/services/job/TipNewJob;->mShareFacebook:Z

    .line 89
    iput-boolean p6, p0, Lcom/yelp/android/services/job/TipNewJob;->mShareTwitter:Z

    .line 90
    iput-boolean p7, p0, Lcom/yelp/android/services/job/TipNewJob;->mRemovePhotoWhenComplete:Z

    .line 91
    return-void
.end method

.method public static launchJob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZZ)V
    .locals 9

    .prologue
    .line 63
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->w()Lcom/path/android/jobqueue/b;

    move-result-object v8

    new-instance v0, Lcom/yelp/android/services/job/TipNewJob;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/services/job/TipNewJob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZZ)V

    invoke-virtual {v8, v0}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/Job;)J

    .line 73
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Lcom/yelp/android/services/job/YelpJob;->onCancel()V

    .line 144
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->TipSaveFailure:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "quicktip_state"

    const-string/jumbo v2, "new"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    new-instance v0, Lcom/yelp/android/serializable/Tip$TempTip;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Tip$TempTip;-><init>()V

    .line 147
    iget-object v1, p0, Lcom/yelp/android/services/job/TipNewJob;->mTempTipId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Tip;->c(Ljava/lang/String;)V

    .line 148
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.tips.delete"

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/services/job/TipNewJob;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method public onRun()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 95
    invoke-super {p0}, Lcom/yelp/android/services/job/YelpJob;->onRun()V

    .line 97
    new-instance v0, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;

    iget-object v1, p0, Lcom/yelp/android/services/job/TipNewJob;->mBusinessId:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/services/job/TipNewJob;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/services/job/TipNewJob;->mImage:Ljava/io/File;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 98
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/SaveTipRequest;->i()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/yelp/android/serializable/Tip;

    .line 99
    iget-object v0, p0, Lcom/yelp/android/services/job/TipNewJob;->mTempTipId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/yelp/android/serializable/Tip;->c(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v1, "com.yelp.android.tips.update"

    invoke-direct {v0, v3, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/services/job/TipNewJob;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 106
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-boolean v0, p0, Lcom/yelp/android/services/job/TipNewJob;->mShareFacebook:Z

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/services/job/TipNewJob;->mShareTwitter:Z

    if-eqz v0, :cond_1

    .line 111
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/services/job/TipNewJob;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/yelp/android/services/job/TipNewJob;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/services/ShareService$ShareObjectType;->TIP:Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/services/job/TipNewJob;->mImage:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/yelp/android/services/job/TipNewJob;->mRemovePhotoWhenComplete:Z

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/yelp/android/services/job/TipNewJob;->mImage:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 138
    :cond_3
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->TipSaveSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "quicktip_state"

    const-string/jumbo v2, "new"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    return-void

    .line 124
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/services/job/TipNewJob;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/services/job/TipNewJob;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/services/ShareService$ShareObjectType;->TIP:Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
