.class public Lcom/yelp/android/services/push/l;
.super Lcom/yelp/android/services/push/i;
.source "VideoLikePushNotificationHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/yelp/android/services/push/Notifier$NotificationType;->VideoLikes:Lcom/yelp/android/services/push/Notifier$NotificationType;

    const v1, 0x7f070678

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/yelp/android/services/push/i;-><init>(Landroid/content/Context;Lcom/yelp/android/services/push/Notifier$NotificationType;Ljava/lang/String;Landroid/net/Uri;)V

    .line 21
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/services/push/l;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityVideoUrlCatcher;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/services/push/l;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/push/l;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/services/push/l;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityVideoUrlCatcher;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/services/push/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/services/push/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MediaPayload;

    .line 39
    invoke-virtual {v0}, Lcom/yelp/android/serializable/MediaPayload;->e()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->f()Ljava/lang/String;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method
