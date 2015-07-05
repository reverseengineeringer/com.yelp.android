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

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;
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
            ">;>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityRetryShare;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 43
    const-class v1, Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/dw;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;->g:Lcom/yelp/android/ui/activities/dw;

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

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method
