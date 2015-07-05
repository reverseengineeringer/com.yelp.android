.class Lcom/yelp/android/ui/activities/photoviewer/as;
.super Ljava/lang/Object;
.source "WhoLikedThisBizPhotoFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/PhotoFeedback;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/as;->a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/PhotoFeedback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/as;->a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;Ljava/util/ArrayList;)V

    .line 142
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
    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/as;->a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 137
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 132
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/as;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
