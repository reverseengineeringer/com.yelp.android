.class public Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivitySelectPlatformAddress.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const-string/jumbo v1, "extra.address_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "extra.show_and_select_current_location"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const v1, 0x7f0f020d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    const-string/jumbo v1, "extra.disambiguated_address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;->setResult(ILandroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;->finish()V

    .line 101
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 77
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchDeliveryAddressAddCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;->a()Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.address_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.show_and_select_current_location"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a(Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    const v2, 0x7f0f020d

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 72
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 84
    :pswitch_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchDeliveryAddressAddCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
