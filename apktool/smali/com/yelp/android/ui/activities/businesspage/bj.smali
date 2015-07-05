.class Lcom/yelp/android/ui/activities/businesspage/bj;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/YelpBookmark;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 3450
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/bj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpBookmark;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->dismiss()V

    .line 3460
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->setBookmarked(Z)V

    .line 3461
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    .line 3462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/panels/businesspage/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesspage/b;->setBookmarkChecked(Z)V

    .line 3463
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)Z

    .line 3464
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
    .line 3454
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bj;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->x(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->dismiss()V

    .line 3455
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3450
    check-cast p2, Lcom/yelp/android/serializable/YelpBookmark;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/bj;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpBookmark;)V

    return-void
.end method
