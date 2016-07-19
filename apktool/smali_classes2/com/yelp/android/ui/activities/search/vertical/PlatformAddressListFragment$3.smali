.class Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$3;
.super Ljava/lang/Object;
.source "PlatformAddressListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$3;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 190
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchDeliveryAddressListAdd:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 191
    invoke-static {}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a()Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$3;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->b(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;)V

    .line 193
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$3;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "add_address"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 194
    return-void
.end method
