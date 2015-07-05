.class public Lcom/yelp/android/ui/activities/ActivityPhotoUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityPhotoUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const-string/jumbo v0, ""

    .line 55
    :goto_0
    return-object v0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "biz"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 55
    if-eqz v0, :cond_1

    const-string/jumbo v0, "biz_id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string/jumbo v0, ""

    .line 68
    :goto_0
    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v1, "biz"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 68
    if-eqz v0, :cond_1

    const-string/jumbo v0, "photo_id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "select"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityPhotoUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 78
    invoke-static {v6}, Lcom/yelp/android/ui/activities/ActivityPhotoUrlCatcher;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v6}, Lcom/yelp/android/ui/activities/ActivityPhotoUrlCatcher;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    const-string/jumbo v1, "yelp"

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-static {v4, v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->singlePhoto(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v4, v0, v1, v5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 101
    :goto_0
    const-string/jumbo v1, "yelp:external_request"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/analytics/o;

    invoke-direct {v2, v6}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityPhotoUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityPhotoUrlCatcher;->finish()V

    .line 106
    return-void

    .line 91
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v4, v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_2
    const v0, 0x7f07047b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityPhotoUrlCatcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/16 v0, 0x14

    invoke-direct {v3, v4, v5, v0}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;II)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->a(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/List;Z)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
