.class Lcom/yelp/android/ui/activities/o;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

.field private b:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/yelp/android/ui/activities/o;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p2, p0, Lcom/yelp/android/ui/activities/o;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 497
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/yelp/android/ui/activities/o;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->g(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/yelp/android/ui/activities/o;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->g(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->dismiss()V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/o;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/o;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 505
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 509
    iget-object v0, p0, Lcom/yelp/android/ui/activities/o;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->g(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/yelp/android/ui/activities/o;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->g(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->dismiss()V

    .line 512
    :cond_0
    const v0, 0x7f070244

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 513
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 491
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/o;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
