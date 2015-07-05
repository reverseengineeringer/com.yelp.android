.class public Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;
.super Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;
.source "WhoLikedThisTip.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/cv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/TipFeedback;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    const-string/jumbo v1, "TIP"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string/jumbo v1, "BUSINESS_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-static {v0, p3}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a(Landroid/content/Intent;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 40
    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/cu;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/cv;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;->a(Ljava/util/List;)V

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;->disableLoading()V

    .line 72
    return-void
.end method

.method public b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/cu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)",
            "Lcom/yelp/android/appdata/webrequests/cu;"
        }
    .end annotation

    .prologue
    .line 58
    check-cast p1, Lcom/yelp/android/appdata/webrequests/cu;

    .line 59
    if-nez p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "TIP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    new-instance p1, Lcom/yelp/android/appdata/webrequests/cu;

    invoke-direct {p1, p0, v0}, Lcom/yelp/android/appdata/webrequests/cu;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p1, p0}, Lcom/yelp/android/appdata/webrequests/cu;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 64
    return-object p1
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->TipLikes:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    const-string/jumbo v1, "business_id"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "BUSINESS_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v1, "quicktip_id"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "TIP"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object v0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cv;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/tips/WhoLikedThisTip;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cv;)V

    return-void
.end method
