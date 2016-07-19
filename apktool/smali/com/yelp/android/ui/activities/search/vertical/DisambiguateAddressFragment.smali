.class public Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "DisambiguateAddressFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/bf;

.field private b:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

.field private c:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

.field private final d:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/bf$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 143
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$1;-><init>(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->d:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 213
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$2;-><init>(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->e:Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;

    .line 223
    return-void
.end method

.method protected static a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "SOURCE"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->E()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->E()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)Lcom/yelp/android/serializable/PlatformDeliveryAddress;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->c:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->e:Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->c:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    .line 128
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    .line 123
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bf;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->d:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/appdata/webrequests/bf;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/bf;

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/bf;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bf;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->D()V

    .line 141
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string/jumbo v0, "saved_last_reverse_geocoded_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->c:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    .line 88
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 111
    const-string/jumbo v0, "request_disambiguate"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/bf;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 112
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 93
    const-string/jumbo v0, "request_disambiguate"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/bf;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->d:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/bf;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/bf;

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/bf;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bf;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a:Lcom/yelp/android/appdata/webrequests/bf;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "tag_did_you_mean"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;

    .line 103
    if-eqz v0, :cond_1

    .line 104
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->e:Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;)V

    .line 106
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    const-string/jumbo v0, "saved_last_reverse_geocoded_address"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->c:Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    return-void
.end method
