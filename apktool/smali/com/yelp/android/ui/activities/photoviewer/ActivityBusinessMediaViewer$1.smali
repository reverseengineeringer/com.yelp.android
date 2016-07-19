.class Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer$1;
.super Ljava/lang/Object;
.source "ActivityBusinessMediaViewer.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/PhotoAdsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer$1;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/PhotoAdsResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/PhotoAdsResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer$1;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;Lcom/yelp/android/serializable/PhotoAdsResponse;)Lcom/yelp/android/serializable/PhotoAdsResponse;

    .line 513
    invoke-virtual {p2}, Lcom/yelp/android/serializable/PhotoAdsResponse;->c()Lcom/yelp/android/serializable/BusinessLocalAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer$1;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/PhotoAdsResponse;->c()Lcom/yelp/android/serializable/BusinessLocalAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessLocalAd;->n()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/u$a;->a()V

    .line 518
    :cond_0
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 503
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 499
    check-cast p2, Lcom/yelp/android/serializable/PhotoAdsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/PhotoAdsResponse;)V

    return-void
.end method
