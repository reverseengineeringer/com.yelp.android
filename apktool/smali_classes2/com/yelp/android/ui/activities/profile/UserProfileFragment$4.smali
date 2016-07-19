.class Lcom/yelp/android/ui/activities/profile/UserProfileFragment$4;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
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
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$4;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/User;",
            ")V"
        }
    .end annotation

    .prologue
    .line 609
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$4;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->f(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$b;->a(Lcom/yelp/android/serializable/User;)V

    .line 610
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 612
    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/serializable/User;)V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$4;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/serializable/User;)V

    .line 616
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$4;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l()V

    .line 617
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$4;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->g(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V

    .line 618
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
    .line 622
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$4;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 623
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 605
    check-cast p2, Lcom/yelp/android/serializable/User;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/User;)V

    return-void
.end method
