.class public Lcom/yelp/android/services/TipUploadService;
.super Landroid/app/IntentService;
.source "TipUploadService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "TipUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private a(Landroid/content/Intent;)Landroid/app/Notification;
    .locals 6

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f0202ce

    const v3, 0x7f070602

    invoke-virtual {p0, v3}, Lcom/yelp/android/services/TipUploadService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 136
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x14

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 137
    sget-object v2, Lcom/yelp/android/ui/activities/ActivityRetryShare;->i:Lcom/yelp/android/ui/activities/dw;

    iget v2, v2, Lcom/yelp/android/ui/activities/dw;->c:I

    invoke-virtual {p0, v2}, Lcom/yelp/android/services/TipUploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070603

    invoke-virtual {p0, v3}, Lcom/yelp/android/services/TipUploadService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 140
    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;ZZZZLjava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/Photo;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase",
            "<*>;ZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/Photo;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/services/TipUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const-string/jumbo v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    const-string/jumbo v1, "cleanup_when_complete"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    const-string/jumbo v1, "share_fb"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "share_twitter"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    const-string/jumbo v1, "is_edit"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    const-string/jumbo v1, "tip_id"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v1, "original_text"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v1, "original_photo"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    return-object v0
.end method

.method private b(Landroid/content/Intent;)Landroid/app/Notification;
    .locals 7

    .prologue
    const v6, 0x7f070604

    .line 145
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-static {p0, v0, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 147
    new-instance v1, Landroid/app/Notification;

    const v2, 0x1080088

    const-string/jumbo v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 149
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 150
    invoke-virtual {p0, v6}, Lcom/yelp/android/services/TipUploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 151
    invoke-virtual {p0, v6}, Lcom/yelp/android/services/TipUploadService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 152
    return-object v1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 60
    if-nez p1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    long-to-int v0, v0

    .line 64
    invoke-direct {p0, p1}, Lcom/yelp/android/services/TipUploadService;->b(Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/services/TipUploadService;->startForeground(ILandroid/app/Notification;)V

    .line 65
    const-string/jumbo v0, "request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/services/TipUploadService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/AppData;

    .line 67
    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->p()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->setHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 69
    const-string/jumbo v2, "tip_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    const-string/jumbo v2, "original_text"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    const-string/jumbo v2, "original_photo"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/Photo;

    .line 72
    const-string/jumbo v5, "is_edit"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 75
    :try_start_0
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->setupEntity()V

    .line 76
    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v6

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v1, v7}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->executeSynchronously(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 78
    if-nez v5, :cond_1

    .line 79
    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/Tip;->setTempId(Ljava/lang/String;)V

    .line 83
    :cond_1
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v6, "com.yelp.android.tips.update"

    invoke-direct {v1, v0, v6}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->isFirstTip()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v5, :cond_2

    .line 87
    sget-object v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->FirstToTip:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getBusinessName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v1, v6}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/services/TipUploadService;->startActivity(Landroid/content/Intent;)V

    .line 90
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 91
    const-string/jumbo v6, "share_fb"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    sget-object v6, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_3
    const-string/jumbo v6, "share_twitter"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 95
    sget-object v6, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_4
    sget-object v6, Lcom/yelp/android/services/ShareService$ShareObjectType;->TIP:Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {p0, v6, v0, v1, v7}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/TipUploadService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/TipUploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 102
    const-string/jumbo v1, "TipUploadService"

    invoke-direct {p0, p1}, Lcom/yelp/android/services/TipUploadService;->a(Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v0, v1, v8, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 104
    new-instance v0, Lcom/yelp/android/serializable/Tip$TempTip;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Tip$TempTip;-><init>()V

    .line 105
    if-eqz v5, :cond_5

    .line 111
    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/Tip;->setId(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v4}, Lcom/yelp/android/serializable/Tip;->setText(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/Tip;->setPhoto(Lcom/yelp/android/serializable/Photo;)V

    .line 114
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.tips.update"

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 122
    :cond_5
    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/Tip;->setTempId(Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.tips.delete"

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
