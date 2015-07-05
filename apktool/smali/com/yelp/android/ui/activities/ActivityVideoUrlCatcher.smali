.class public Lcom/yelp/android/ui/activities/ActivityVideoUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityVideoUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "biz_id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "video_id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityVideoUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityVideoUrlCatcher;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityVideoUrlCatcher;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 39
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 40
    :cond_0
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityVideoUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityVideoUrlCatcher;->finish()V

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v3

    new-instance v4, Lcom/yelp/android/analytics/o;

    invoke-direct {v4, v0}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 46
    invoke-static {v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->singleVideo(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v1, v0, v2, v5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 49
    const-string/jumbo v1, "yelp:external_request"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityVideoUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityVideoUrlCatcher;->finish()V

    goto :goto_0
.end method
