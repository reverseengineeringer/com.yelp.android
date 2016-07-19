.class Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$4;
.super Ljava/lang/Object;
.source "ActivityUserProfile.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;
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
        "Lcom/yelp/android/appdata/webrequests/fk$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fk$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/fk$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;)Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i()V

    .line 497
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->hideLoadingDialog()V

    .line 498
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
    .line 490
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$4;->a:Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 491
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 486
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fk$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fk$a;)V

    return-void
.end method
