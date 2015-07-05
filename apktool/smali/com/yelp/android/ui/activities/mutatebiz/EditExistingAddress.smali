.class public Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;
.super Lcom/yelp/android/ui/activities/support/YelpTabActivity;
.source "EditExistingAddress.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/yelp/android/ui/activities/mutatebiz/ad;
.implements Lcom/yelp/android/ui/activities/mutatebiz/e;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/location/Address;

.field c:Lcom/yelp/android/serializable/YelpBusinessAddresses;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const-string/jumbo v1, "ADDRESS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "BUSINESS_ADDRESSES"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "BUSINESS_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string/jumbo v1, "IS_ADDRESS_EDIT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Landroid/location/Address;
    .locals 1

    .prologue
    .line 107
    const-string/jumbo v0, "ADDRESS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Landroid/location/Address;
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "GEOCODED"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    return-object v0
.end method

.method public static c(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessAddresses;
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "BUSINESS_ADDRESSES"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    return-object v0
.end method

.method private d()Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "Form"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    return-object v0
.end method

.method private e()Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "Map"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->d()Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a()Landroid/location/Address;

    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c()Lcom/yelp/android/serializable/YelpBusinessAddresses;

    move-result-object v2

    .line 63
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->e()Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    move-result-object v3

    .line 64
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b()Landroid/location/Address;

    move-result-object v3

    .line 71
    invoke-static {v3, v1}, Lcom/yelp/android/ui/activities/mutatebiz/f;->a(Landroid/location/Address;Landroid/location/Address;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    invoke-virtual {v3}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Address;->setLatitude(D)V

    .line 73
    invoke-virtual {v3}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Address;->setLongitude(D)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 77
    const-string/jumbo v4, "ADDRESS"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "GEOCODED"

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d()Landroid/location/Address;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v0, "BUSINESS_ADDRESSES"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->setResult(ILandroid/content/Intent;)V

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->finish()V

    .line 82
    return-void
.end method

.method public a(Landroid/location/Address;)V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a()V

    .line 126
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTab(I)V

    .line 121
    return-void
.end method

.method public b()Landroid/location/Address;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->b:Landroid/location/Address;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditAddress:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f030193

    const/4 v7, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ADDRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->b:Landroid/location/Address;

    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BUSINESS_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BUSINESS_ADDRESSES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "IS_ADDRESS_EDIT"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c()Landroid/support/v4/app/FragmentTabHost;

    move-result-object v2

    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v0, v8, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 43
    const v3, 0x7f070222

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 44
    const-string/jumbo v3, "Form"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-class v3, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->b:Landroid/location/Address;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-static {v4, v5, v6, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Landroid/location/Address;Ljava/lang/CharSequence;Lcom/yelp/android/serializable/YelpBusinessAddresses;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 50
    const v1, 0x7f0700aa

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 51
    const-string/jumbo v1, "Map"

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->b:Landroid/location/Address;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Landroid/location/Address;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 55
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 91
    const-string/jumbo v0, "Map"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->d()Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a()Landroid/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->b:Landroid/location/Address;

    .line 94
    :cond_0
    return-void
.end method
