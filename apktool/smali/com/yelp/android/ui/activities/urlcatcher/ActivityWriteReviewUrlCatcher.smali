.class public Lcom/yelp/android/ui/activities/urlcatcher/ActivityWriteReviewUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityWriteReviewUrlCatcher.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    .line 33
    const-string/jumbo v0, "ActivityWriteReviewUrlCatcher"

    iput-object v0, p0, Lcom/yelp/android/ui/activities/urlcatcher/ActivityWriteReviewUrlCatcher;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/net/Uri;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 70
    const-string/jumbo v1, "rating"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Lorg/apache/commons/lang3/b;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 73
    if-nez v2, :cond_0

    .line 74
    const-string/jumbo v2, "ActivityWriteReviewUrlCatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The rating value was not a number. Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :goto_0
    return v0

    .line 79
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    if-ltz v1, :cond_1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    move v0, v1

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    const-string/jumbo v2, "ActivityWriteReviewUrlCatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The rating value was smaller than 0 or bigger than 5. Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/net/Uri;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 3

    .prologue
    .line 98
    const-string/jumbo v0, "se"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "utm_medium"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_0

    const-string/jumbo v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->getReviewSource(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->FromWebsite:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityWriteReviewUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ae;->a(Landroid/content/Intent;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "http"

    const-string/jumbo v3, "/writeareview/biz/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    const-string/jumbo v2, "https"

    const-string/jumbo v3, "/writeareview/biz/"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/util/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ae;->a()Lcom/yelp/android/ui/util/ae;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityWriteReviewUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 52
    const-string/jumbo v2, "biz"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityWriteReviewUrlCatcher;->a(Landroid/net/Uri;)I

    move-result v2

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityWriteReviewUrlCatcher;->b(Landroid/net/Uri;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    move-result-object v3

    invoke-static {p0, v0, v2, v1, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/analytics/n;

    invoke-direct {v3, v1}, Lcom/yelp/android/analytics/n;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityWriteReviewUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityWriteReviewUrlCatcher;->finish()V

    .line 62
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/urlcatcher/ActivityWriteReviewUrlCatcher;->finish()V

    goto :goto_0
.end method
