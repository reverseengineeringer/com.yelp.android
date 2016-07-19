.class Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$1;
.super Ljava/lang/Object;
.source "ReverseGeoLocateUserAddressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/appdata/webrequests/dr;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/appdata/webrequests/dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dr;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/dr;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->b(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/appdata/webrequests/k$b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/dr;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;Lcom/yelp/android/appdata/webrequests/dr;)Lcom/yelp/android/appdata/webrequests/dr;

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/appdata/webrequests/dr;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dr;->a([Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/appdata/webrequests/dr;

    move-result-object v1

    const v2, 0x7f0702d3

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 60
    :cond_1
    return-void
.end method
