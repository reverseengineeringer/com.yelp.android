.class public Lcom/yelp/android/services/push/f;
.super Lcom/yelp/android/services/push/i;
.source "PhotoLikePushNotificationHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->PhotoLikes:Lcom/yelp/android/services/push/Notifier$NotificationType;

    const v1, 0x7f070676

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/yelp/android/services/push/i;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/services/push/f;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityPhotoUrlCatcher;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/services/push/f;->a:Lcom/yelp/android/services/push/Notifier$NotificationType;

    invoke-virtual {v0}, Lcom/yelp/android/services/push/Notifier$NotificationType;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/f;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/services/push/f;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityPhotoUrlCatcher;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/services/push/f;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityPhotoUrlCatcher;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/services/push/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(Lcom/yelp/android/appdata/r;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaPayload;

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaPayload;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->s()Ljava/lang/String;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PhotoLikePushNotificationHandler PhotoUrl error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v0, v1

    .line 63
    goto :goto_0
.end method
