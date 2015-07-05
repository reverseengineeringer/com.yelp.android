.class public Lcom/yelp/android/services/ShareService;
.super Landroid/app/IntentService;
.source "ShareService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "ShareService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/services/ShareService$ShareObjectType;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/services/ShareService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    const-string/jumbo v1, "pending_shares"

    invoke-static {p3}, Lcom/yelp/android/util/f;->a(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 67
    const-string/jumbo v1, "yelp:object_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v1, "yelp:from_notification"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const-string/jumbo v1, "yelp:object_type"

    invoke-static {v0, v1, p1}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 70
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/dw;
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "yelp:object_type"

    const-class v1, Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 80
    sget-object v1, Lcom/yelp/android/services/k;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/services/ShareService$ShareObjectType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 90
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->g:Lcom/yelp/android/ui/activities/dw;

    goto :goto_0

    .line 84
    :pswitch_1
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->h:Lcom/yelp/android/ui/activities/dw;

    goto :goto_0

    .line 86
    :pswitch_2
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->i:Lcom/yelp/android/ui/activities/dw;

    goto :goto_0

    .line 88
    :pswitch_3
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->j:Lcom/yelp/android/ui/activities/dw;

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    instance-of v1, p0, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-nez v1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    check-cast p0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v1

    .line 249
    const/16 v2, 0x3f4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3f5

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lcom/yelp/android/services/ShareService$ShareObjectType;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/yelp/android/services/ShareService$ShareObjectType;",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 210
    const-string/jumbo v0, "yelp:object_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    sget-object v0, Lcom/yelp/android/services/k;->a:[I

    invoke-virtual {p2}, Lcom/yelp/android/services/ShareService$ShareObjectType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 221
    const-string/jumbo v0, "ShareService"

    const-string/jumbo v2, "Share service started with unknown share object type"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 223
    :goto_0
    return-object v0

    .line 213
    :pswitch_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/al;

    invoke-direct {v0, v2, p3, v1}, Lcom/yelp/android/appdata/webrequests/al;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Lcom/yelp/android/av/i;)V

    goto :goto_0

    .line 215
    :pswitch_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/z;

    invoke-direct {v0, v2, p3, v1}, Lcom/yelp/android/appdata/webrequests/z;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Lcom/yelp/android/av/i;)V

    goto :goto_0

    .line 217
    :pswitch_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ga;

    invoke-direct {v0, v2, p3, v1}, Lcom/yelp/android/appdata/webrequests/ga;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Lcom/yelp/android/av/i;)V

    goto :goto_0

    .line 219
    :pswitch_3
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fe;

    invoke-direct {v0, v2, p3, v1}, Lcom/yelp/android/appdata/webrequests/fe;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Lcom/yelp/android/av/i;)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method a(Landroid/content/Intent;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            "+",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    .line 149
    const-string/jumbo v0, "yelp:from_notification"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 151
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 153
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 154
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-static {v0}, Lcom/yelp/android/services/ShareService;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 160
    :goto_0
    if-eqz v0, :cond_1

    .line 161
    invoke-static {p1}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/dw;

    move-result-object v0

    iget v0, v0, Lcom/yelp/android/ui/activities/dw;->a:I

    .line 165
    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    const v5, 0x7f070686

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f07026a

    invoke-virtual {p0, v7}, Lcom/yelp/android/services/ShareService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v2

    const v7, 0x7f070621

    invoke-virtual {p0, v7}, Lcom/yelp/android/services/ShareService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/yelp/android/services/ShareService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/services/ShareService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/services/ShareService;->b(Landroid/content/Intent;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    .line 183
    if-eqz v4, :cond_4

    .line 184
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v1}, Lcom/yelp/android/services/ShareService;->startActivity(Landroid/content/Intent;)V

    .line 198
    :goto_3
    return-void

    .line 163
    :cond_1
    invoke-static {p1}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/dw;

    move-result-object v0

    iget v0, v0, Lcom/yelp/android/ui/activities/dw;->b:I

    goto :goto_1

    .line 168
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 170
    invoke-static {v0}, Lcom/yelp/android/services/ShareService;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    invoke-static {p1}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/dw;

    move-result-object v0

    iget v0, v0, Lcom/yelp/android/ui/activities/dw;->a:I

    move v1, v0

    .line 175
    :goto_4
    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->getNameStringResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/ShareService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/yelp/android/services/ShareService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 173
    :cond_3
    invoke-static {p1}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/dw;

    move-result-object v0

    iget v0, v0, Lcom/yelp/android/ui/activities/dw;->b:I

    move v1, v0

    goto :goto_4

    .line 187
    :cond_4
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f0202ce

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v4, v0, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 189
    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x14

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 190
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v2, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 192
    invoke-static {p1}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/dw;

    move-result-object v4

    iget v4, v4, Lcom/yelp/android/ui/activities/dw;->c:I

    invoke-virtual {p0, v4}, Lcom/yelp/android/services/ShareService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 195
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/ShareService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 196
    const-string/jumbo v1, "ShareService.notification_tag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_3

    :cond_5
    move v0, v3

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Intent;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            "+",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ">;>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 228
    const-string/jumbo v0, "yelp:object_type"

    const-class v1, Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 230
    const-string/jumbo v1, "yelp:object_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    sget-object v2, Lcom/yelp/android/services/k;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/services/ShareService$ShareObjectType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 241
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 233
    :pswitch_0
    invoke-static {p0, v1, p2}, Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-static {p0, v1, p2}, Lcom/yelp/android/ui/activities/ActivityRetryBusinessPhotoShare;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-static {p0, v1, p2}, Lcom/yelp/android/ui/activities/ActivityRetryTipShare;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 239
    :pswitch_3
    invoke-static {p0, v1, p2}, Lcom/yelp/android/ui/activities/ActivityRetryReviewShare;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v6, 0x0

    .line 99
    const-string/jumbo v0, "pending_shares"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/f;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v7

    .line 101
    const-string/jumbo v0, "yelp:object_type"

    const-class v1, Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/services/ShareService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/AppData;

    .line 105
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v5, v6

    .line 106
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 107
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 108
    const-string/jumbo v3, "ShareService"

    const-string/jumbo v4, "Sharing %s to: %s"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/services/ShareService$ShareObjectType;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v10, 0x1

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3, v4, v9}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-virtual {p0, p1, v0, v2}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;Lcom/yelp/android/services/ShareService$ShareObjectType;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v3

    .line 110
    const/4 v4, 0x0

    .line 112
    :try_start_0
    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v9

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v10, v11}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->executeSynchronously(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    if-eqz v4, :cond_0

    instance-of v3, v4, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v3, :cond_1

    move-object v3, v4

    check-cast v3, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v3

    const/16 v9, 0x3f7

    if-ne v3, v9, :cond_1

    .line 120
    :cond_0
    invoke-interface {v7, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :catch_0
    move-exception v3

    move-object v4, v3

    .line 114
    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v3

    sget v9, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorUnknown:I

    if-eq v3, v9, :cond_2

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v3

    sget v9, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    if-ne v3, v9, :cond_3

    :cond_2
    if-ge v5, v12, :cond_3

    .line 126
    add-int/lit8 v2, v5, 0x1

    .line 128
    const-wide/16 v4, 0x1388

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v5, v2

    .line 137
    goto :goto_0

    .line 133
    :cond_3
    invoke-interface {v7, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 134
    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 139
    invoke-virtual {p0, p1, v8}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;Ljava/util/List;)V

    .line 141
    :cond_5
    return-void

    .line 129
    :catch_1
    move-exception v3

    goto :goto_2
.end method
