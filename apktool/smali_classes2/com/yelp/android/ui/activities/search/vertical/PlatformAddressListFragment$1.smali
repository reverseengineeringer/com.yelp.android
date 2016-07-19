.class Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$1;
.super Ljava/lang/Object;
.source "PlatformAddressListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a(Lcom/yelp/android/ui/util/aj;)V
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
    .line 105
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 108
    const v0, 0x7f0f00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchDeliveryAddressListSelected:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "different_address"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$1;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;->a(Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;)V

    .line 114
    return-void
.end method
