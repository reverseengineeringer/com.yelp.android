.class public Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ReverseGeoLocateUserAddressFragment.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/dr;

.field private b:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

.field private c:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

.field private final d:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dr$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$2;-><init>(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->d:Lcom/yelp/android/appdata/webrequests/k$b;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/appdata/webrequests/dr;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/dr;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;Lcom/yelp/android/appdata/webrequests/dr;)Lcom/yelp/android/appdata/webrequests/dr;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/dr;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/appdata/webrequests/k$b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->d:Lcom/yelp/android/appdata/webrequests/k$b;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->E()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->E()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->E()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->c:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->c:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    .line 67
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;)V
    .locals 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment$1;-><init>(Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;->setListenerForGeolocateButton(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 44
    const-string/jumbo v0, "request_reverse_geocode"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/dr;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 33
    const-string/jumbo v0, "request_reverse_geocode"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/dr;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->d:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dr;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/dr;

    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/dr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/dr;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dr;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/dr;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 39
    :cond_0
    return-void
.end method
