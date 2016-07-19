.class Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid$1;
.super Ljava/lang/Object;
.source "ActivityBusinessMediaGrid.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;
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
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->disableLoading()V

    .line 236
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a(Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->b(Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a(Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;)V

    .line 237
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->disableLoading()V

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 230
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
