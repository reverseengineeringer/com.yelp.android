.class public Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "EditExistingAddress.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$a;
.implements Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$a;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/location/Address;

.field d:Lcom/yelp/android/serializable/YelpBusinessAddresses;

.field e:Lcom/yelp/android/serializable/BusinessAttributes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;Lcom/yelp/android/serializable/BusinessAttributes;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 8

    .prologue
    .line 47
    const-string/jumbo v7, "Form"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a(Landroid/content/Context;Ljava/lang/String;Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;Lcom/yelp/android/serializable/BusinessAttributes;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;Lcom/yelp/android/serializable/BusinessAttributes;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    const-string/jumbo v1, "extra.address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    const-string/jumbo v1, "extra.business_addresses"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 97
    const-string/jumbo v1, "extra.business_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v1, "extra.business_attributes"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    const-string/jumbo v1, "extra.business_country"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string/jumbo v1, "extra.is_address_edit"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "FRAGMENT_TAB"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Landroid/location/Address;
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "extra.address"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;Lcom/yelp/android/serializable/BusinessAttributes;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 8

    .prologue
    .line 66
    const-string/jumbo v7, "Map"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a(Landroid/content/Context;Ljava/lang/String;Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;Lcom/yelp/android/serializable/BusinessAttributes;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessAddresses;
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "extra.business_addresses"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    return-object v0
.end method

.method private f()Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "Form"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "Map"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->b()Landroid/location/Address;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c:Landroid/location/Address;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/a;->a(Landroid/location/Address;Landroid/location/Address;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 133
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "extra.address"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c:Landroid/location/Address;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v1, "extra.business_addresses"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->d:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 138
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->setResult(ILandroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->finish()V

    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->f()Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c()Landroid/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c:Landroid/location/Address;

    .line 160
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->f()Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e()Lcom/yelp/android/serializable/YelpBusinessAddresses;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->d:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 161
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->e()V

    .line 162
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a()V

    .line 167
    return-void
.end method

.method public c()Landroid/location/Address;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c:Landroid/location/Address;

    return-object v0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.is_address_edit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c:Landroid/location/Address;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->d:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->e:Lcom/yelp/android/serializable/BusinessAttributes;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->b:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Landroid/location/Address;Ljava/lang/CharSequence;Lcom/yelp/android/serializable/YelpBusinessAddresses;Lcom/yelp/android/serializable/BusinessAttributes;Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    const v2, 0x7f0f020d

    const-string/jumbo v3, "Form"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 188
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    .line 192
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->f()Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_0

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c:Landroid/location/Address;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Landroid/location/Address;Ljava/lang/String;)Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    move-result-object v1

    .line 200
    const v2, 0x7f0f020d

    const-string/jumbo v3, "Map"

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 203
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_1

    .line 205
    invoke-static {v0}, Lcom/yelp/android/ui/util/as;->b(Landroid/view/View;)V

    .line 207
    :cond_1
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditAddress:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c:Landroid/location/Address;

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business_addresses"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->d:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business_attributes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessAttributes;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->e:Lcom/yelp/android/serializable/BusinessAttributes;

    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business_country"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->b:Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "FRAGMENT_TAB"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 116
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->d()V

    .line 123
    :goto_1
    return-void

    .line 116
    :pswitch_0
    const-string/jumbo v2, "Map"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->e()V

    goto :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x12d3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 151
    :pswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->onBackPressed()V

    .line 152
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
