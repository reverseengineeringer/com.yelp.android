.class public Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;
.super Lcom/yelp/android/ui/activities/ActivityRetryShare;
.source "ActivityRetryCheckInShare.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityRetryShare;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Collection;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
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
    .line 37
    invoke-static {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    const-class v1, Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/ActivityRetryShare$a;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;->i:Lcom/yelp/android/ui/activities/ActivityRetryShare$a;

    return-object v0
.end method

.method b()Lcom/yelp/android/services/ShareService$ShareObjectType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/services/ShareService$ShareObjectType;->CHECKIN:Lcom/yelp/android/services/ShareService$ShareObjectType;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method
