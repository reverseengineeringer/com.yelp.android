.class Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;
.super Ljava/lang/Object;
.source "ActivityUserFollowing.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;
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
        "Lcom/yelp/android/appdata/webrequests/fg$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fg$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/fg$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;Z)Z

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->disableLoading()V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/fg$a;->a:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ap;->a(Ljava/util/Collection;Z)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;)Lcom/yelp/android/ui/util/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ap;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;I)I

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    iget v1, p2, Lcom/yelp/android/appdata/webrequests/fg$a;->b:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->b(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;I)I

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->b(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;)I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->c(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a()V

    .line 134
    :cond_0
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
    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;Z)Z

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->disableLoading()V

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 121
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 115
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fg$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserFollowing$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fg$a;)V

    return-void
.end method
