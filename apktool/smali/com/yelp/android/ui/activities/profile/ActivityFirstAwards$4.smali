.class Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$4;
.super Ljava/lang/Object;
.source "ActivityFirstAwards.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;
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
        "Lcom/yelp/android/serializable/YelpBusinessReview;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

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
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;I)I

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;Ljava/util/List;)V

    .line 253
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
    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 246
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 242
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
