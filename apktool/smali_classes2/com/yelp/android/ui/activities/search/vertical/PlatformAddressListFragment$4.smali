.class Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;
.super Ljava/lang/Object;
.source "PlatformAddressListFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;
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
        "Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

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
            "Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->l()V

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->e(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)Lcom/yelp/android/ui/activities/search/vertical/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/search/vertical/b;->a(Ljava/util/List;)V

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->b(Z)V

    .line 221
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
    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4$1;-><init>(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;)V

    invoke-virtual {v0, p2, v1}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 212
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 198
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
