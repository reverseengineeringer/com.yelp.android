.class Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$3;
.super Ljava/lang/Object;
.source "WhoLikedThisBizPhotoFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;
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
        "Lcom/yelp/android/serializable/VideoFeedback;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$3;->a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;

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
            "Lcom/yelp/android/serializable/VideoFeedback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$3;->a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;Ljava/util/ArrayList;)V

    .line 159
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
    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$3;->a:Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 154
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
