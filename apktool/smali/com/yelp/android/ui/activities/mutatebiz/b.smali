.class Lcom/yelp/android/ui/activities/mutatebiz/b;
.super Ljava/lang/Object;
.source "AddAddressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 260
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    const/4 v2, 0x1

    const v3, 0x7f0703f3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/o;ZI)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/b;->a:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->b()V

    .line 270
    :cond_1
    return-void
.end method
