.class Lcom/yelp/android/ui/activities/profile/UserProfileFragment$2;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$2;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 578
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$2;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/serializable/User;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$2;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->T()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/User;->f(Z)V

    .line 579
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$2;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->c(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V

    .line 580
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$2;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->d(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/ui/activities/profile/UserProfileView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$2;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->d(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/ui/activities/profile/UserProfileView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$2;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->T()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Z)V

    .line 583
    :cond_0
    return-void

    .line 578
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 574
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 569
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
