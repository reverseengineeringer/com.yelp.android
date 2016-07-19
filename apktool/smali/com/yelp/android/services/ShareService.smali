.class public Lcom/yelp/android/services/ShareService;
.super Landroid/app/IntentService;
.source "ShareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/services/ShareService$1;,
        Lcom/yelp/android/services/ShareService$ShareObjectType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "ShareService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/services/ShareService$ShareObjectType;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.check_in_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Z)Landroid/content/Intent;
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
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/services/ShareService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string/jumbo v1, "award_share_types"

    invoke-static {p3}, Lcom/yelp/android/util/d;->a(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 80
    const-string/jumbo v1, "content_share_types"

    invoke-static {p4}, Lcom/yelp/android/util/d;->a(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 81
    const-string/jumbo v1, "extra.object_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v1, "extra.from_notification"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "extra.object_type"

    invoke-static {v0, v1, p1}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 84
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;
    .locals 6
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
    .line 93
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/ActivityRetryShare$a;
    .locals 2

    .prologue
    .line 115
    const-string/jumbo v0, "extra.object_type"

    const-class v1, Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 117
    sget-object v1, Lcom/yelp/android/services/ShareService$1;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/services/ShareService$ShareObjectType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 129
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 119
    :pswitch_0
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->i:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    goto :goto_0

    .line 121
    :pswitch_1
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->j:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    goto :goto_0

    .line 123
    :pswitch_2
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->k:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    goto :goto_0

    .line 125
    :pswitch_3
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->l:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    goto :goto_0

    .line 127
    :pswitch_4
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryShare;->m:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 333
    instance-of v1, p0, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 336
    :cond_1
    check-cast p0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v1

    .line 337
    const/16 v2, 0x3f4

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3f5

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lcom/yelp/android/services/ShareService$ShareObjectType;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Z)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/yelp/android/services/ShareService$ShareObjectType;",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            "Z)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 287
    const-string/jumbo v0, "extra.object_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 288
    sget-object v0, Lcom/yelp/android/services/ShareService$1;->a:[I

    invoke-virtual {p2}, Lcom/yelp/android/services/ShareService$ShareObjectType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 301
    const-string/jumbo v0, "ShareService"

    const-string/jumbo v2, "Share service started with unknown share object type"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 303
    :goto_0
    return-object v0

    .line 290
    :pswitch_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/al;

    invoke-direct {v0, v2, p3, p4, v1}, Lcom/yelp/android/appdata/webrequests/al;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    goto :goto_0

    .line 292
    :pswitch_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ac;

    invoke-direct {v0, v2, p3, v1}, Lcom/yelp/android/appdata/webrequests/ac;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    goto :goto_0

    .line 294
    :pswitch_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/er;

    invoke-direct {v0, v2, p3, p4, v1}, Lcom/yelp/android/appdata/webrequests/er;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    goto :goto_0

    .line 296
    :pswitch_3
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eb;

    invoke-direct {v0, v2, p3, p4, v1}, Lcom/yelp/android/appdata/webrequests/eb;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    goto :goto_0

    .line 298
    :pswitch_4
    const-string/jumbo v0, "extra.check_in_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 299
    new-instance v0, Lcom/yelp/android/appdata/webrequests/q;

    invoke-direct {v0, v2, v3, p3, v1}, Lcom/yelp/android/appdata/webrequests/q;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    goto :goto_0

    .line 288
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method a(Landroid/content/Intent;Ljava/util/List;Ljava/util/Collection;)V
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
            ">;>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    .line 213
    const-string/jumbo v0, "extra.from_notification"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 215
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 217
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 218
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-static {v0}, Lcom/yelp/android/services/ShareService;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 224
    :goto_0
    if-eqz v0, :cond_1

    .line 225
    invoke-static {p1}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    move-result-object v0

    iget v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;->a:I

    .line 229
    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    const v5, 0x7f070667

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f0702c1

    invoke-virtual {p0, v7}, Lcom/yelp/android/services/ShareService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v2

    const v7, 0x7f07060d

    invoke-virtual {p0, v7}, Lcom/yelp/android/services/ShareService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p0, v5, v6}, Lcom/yelp/android/services/ShareService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/services/ShareService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/services/ShareService;->b(Landroid/content/Intent;Ljava/util/List;Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v1

    .line 254
    if-eqz v4, :cond_4

    .line 255
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0, v1}, Lcom/yelp/android/services/ShareService;->startActivity(Landroid/content/Intent;)V

    .line 275
    :goto_3
    return-void

    .line 227
    :cond_1
    invoke-static {p1}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    move-result-object v0

    iget v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;->b:I

    goto :goto_1

    .line 237
    :cond_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 239
    invoke-static {v0}, Lcom/yelp/android/services/ShareService;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-static {p1}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    move-result-object v0

    iget v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;->a:I

    move v1, v0

    .line 244
    :goto_4
    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->getNameStringResource()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/ShareService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p0, v1, v5}, Lcom/yelp/android/services/ShareService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 242
    :cond_3
    invoke-static {p1}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    move-result-object v0

    iget v0, v0, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;->b:I

    move v1, v0

    goto :goto_4

    .line 258
    :cond_4
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p0, v2, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 260
    new-instance v4, Landroid/support/v7/app/m$a;

    invoke-direct {v4, p0}, Landroid/support/v7/app/m$a;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    move-result-object v5

    iget v5, v5, Lcom/yelp/android/ui/activities/ActivityRetryShare$a;->c:I

    invoke-virtual {p0, v5}, Lcom/yelp/android/services/ShareService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/app/m$a;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$d;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/app/x$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$d;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/app/x$d;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$d;

    move-result-object v0

    const v4, 0x7f0203e5

    invoke-virtual {v0, v4}, Landroid/support/v4/app/x$d;->a(I)Landroid/support/v4/app/x$d;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/x$d;->a(J)Landroid/support/v4/app/x$d;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/x$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/x$d;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/x$d;->a(Z)Landroid/support/v4/app/x$d;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/x$d;->c(I)Landroid/support/v4/app/x$d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/x$d;->a()Landroid/app/Notification;

    move-result-object v1

    .line 272
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/ShareService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string/jumbo v3, "ShareService.notification_tag"

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_3

    :cond_5
    move v0, v3

    goto/16 :goto_0
.end method

.method public b(Landroid/content/Intent;Ljava/util/List;Ljava/util/Collection;)Landroid/content/Intent;
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
            ">;>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 313
    const-string/jumbo v0, "extra.object_type"

    const-class v1, Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 315
    const-string/jumbo v1, "extra.object_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    sget-object v2, Lcom/yelp/android/services/ShareService$1;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/services/ShareService$ShareObjectType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 329
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 318
    :pswitch_0
    invoke-static {p0, v1, p2, p3}, Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 321
    :pswitch_1
    invoke-static {p0, v1, p2}, Lcom/yelp/android/ui/activities/ActivityRetryBusinessPhotoShare;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 323
    :pswitch_2
    invoke-static {p0, v1, p2, p3}, Lcom/yelp/android/ui/activities/ActivityRetryTipShare;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 325
    :pswitch_3
    invoke-static {p0, v1, p2, p3}, Lcom/yelp/android/ui/activities/ActivityRetryReviewShare;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 327
    :pswitch_4
    invoke-static {p0, v1, p2}, Lcom/yelp/android/ui/activities/ActivityRetryBadgeShare;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 139
    const-string/jumbo v0, "award_share_types"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/d;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v7

    .line 143
    const-string/jumbo v0, "content_share_types"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/d;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v2

    .line 147
    const-string/jumbo v0, "extra.object_type"

    const-class v1, Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/services/ShareService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/AppData;

    .line 152
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 157
    invoke-static {v2, v7}, Lcom/yelp/android/util/d;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    move v5, v6

    .line 159
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 160
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 161
    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 163
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;Lcom/yelp/android/services/ShareService$ShareObjectType;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Z)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v3

    .line 165
    const/4 v4, 0x0

    .line 167
    :try_start_0
    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v11

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v11, v12, v13}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/appdata/r;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_1
    if-eqz v4, :cond_0

    instance-of v3, v4, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v3, :cond_1

    move-object v3, v4

    check-cast v3, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v3

    const/16 v11, 0x3f7

    if-ne v3, v11, :cond_1

    .line 177
    :cond_0
    invoke-interface {v10, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :catch_0
    move-exception v3

    move-object v4, v3

    .line 169
    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v3

    sget v11, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorUnknown:I

    if-eq v3, v11, :cond_2

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v3

    sget v11, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    if-ne v3, v11, :cond_3

    :cond_2
    const/4 v3, 0x2

    if-ge v5, v3, :cond_3

    .line 184
    add-int/lit8 v5, v5, 0x1

    .line 186
    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v5

    :goto_2
    move v5, v2

    .line 198
    goto :goto_0

    .line 187
    :catch_1
    move-exception v2

    move v2, v5

    .line 189
    goto :goto_2

    .line 191
    :cond_3
    invoke-interface {v10, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 192
    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    move v2, v5

    goto :goto_2

    .line 199
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 200
    invoke-virtual {p0, p1, v8, v9}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Intent;Ljava/util/List;Ljava/util/Collection;)V

    .line 202
    :cond_6
    return-void
.end method
