.class Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$1;
.super Ljava/lang/Object;
.source "AddAddressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    const/4 v2, 0x1

    const v3, 0x7f070428

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/b$e;ZI)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$1;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->b()V

    .line 219
    :cond_1
    return-void
.end method
