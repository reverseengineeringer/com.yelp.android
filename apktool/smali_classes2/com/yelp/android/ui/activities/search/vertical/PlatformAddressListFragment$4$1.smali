.class Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4$1;
.super Ljava/lang/Object;
.source "PlatformAddressListFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4$1;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public q_()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4$1;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/ey;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4$1;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->c(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/ey;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;Lcom/yelp/android/appdata/webrequests/ey;)Lcom/yelp/android/appdata/webrequests/ey;

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4$1;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->d(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)Lcom/yelp/android/appdata/webrequests/ey;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4$1;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$4;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->H_()V

    .line 210
    return-void
.end method
