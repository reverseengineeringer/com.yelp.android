.class public Lcom/yelp/android/services/push/v;
.super Lcom/yelp/android/services/push/r;
.source "VideoLikePushNotificationHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->VideoLikes:Lcom/yelp/android/services/push/Notifier$NotificationType;

    const v1, 0x7f0706a7

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/yelp/android/services/push/r;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 18
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/services/push/v;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityVideoUrlCatcher;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/services/push/v;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/v;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/services/push/v;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityVideoUrlCatcher;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/services/push/v;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/services/push/v;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->singleVideo(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->executeSynchronously()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dm;

    .line 35
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dm;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->getThumbnailUrl()Ljava/lang/String;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
