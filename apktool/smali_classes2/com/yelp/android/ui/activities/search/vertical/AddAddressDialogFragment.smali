.class public Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "AddAddressDialogFragment.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

.field private b:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

.field private c:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;)Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;)V
    .locals 1

    .prologue
    .line 115
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->c:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;)V

    .line 121
    :cond_0
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchDeliveryAddressAdd:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f070115

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "disambiguate_address_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    if-nez v0, :cond_0

    .line 48
    const-string/jumbo v0, "add_address"

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a(Ljava/lang/String;)Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    const-string/jumbo v2, "disambiguate_address_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->c:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;)V

    .line 58
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "get_address_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    .line 62
    if-nez v0, :cond_1

    .line 63
    new-instance v0, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    const-string/jumbo v2, "get_address_fragment"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/o;->a()I

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;)V

    .line 70
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReverseGeoLocateUserAddressFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)V

    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->e()Landroid/support/v7/app/d$a;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView;

    sget v2, Lcom/yelp/android/appdata/n;->a:I

    sget v3, Lcom/yelp/android/appdata/n;->j:I

    sget v4, Lcom/yelp/android/appdata/n;->a:I

    sget v5, Lcom/yelp/android/appdata/n;->j:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/d$a;->a(Landroid/view/View;IIII)Landroid/support/v7/app/d$a;

    .line 80
    invoke-virtual {v0, v6}, Landroid/support/v7/app/d$a;->a(I)Landroid/support/v7/app/d$a;

    .line 83
    invoke-virtual {v0, v6, v7}, Landroid/support/v7/app/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    .line 84
    const v1, 0x7f0706cd

    invoke-virtual {v0, v1, v7}, Landroid/support/v7/app/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    .line 85
    invoke-virtual {v0}, Landroid/support/v7/app/d$a;->b()Landroid/support/v7/app/d;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onStart()V

    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/d;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/d;->a(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment$1;-><init>(Lcom/yelp/android/ui/activities/search/vertical/AddAddressDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method
