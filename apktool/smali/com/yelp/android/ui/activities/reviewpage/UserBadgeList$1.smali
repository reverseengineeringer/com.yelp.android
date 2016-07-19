.class Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;
.super Ljava/lang/Object;
.source "UserBadgeList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;->b:Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;->b:Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;->b:Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;->b:Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a(Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a(Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;->b:Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a(Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;->b:Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a(Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;->b:Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList$1;->b:Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->a(Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/UserBadgeList;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 66
    :cond_0
    return-void
.end method
