.class public Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;
.super Landroid/app/Fragment;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/EditText;

.field private d:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private e:Lcom/google/android/gms/location/places/AutocompleteFilter;

.field private f:Lcom/google/android/gms/location/places/ui/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->b()V

    return-void
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, -0x1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/location/places/ui/a$a;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lcom/google/android/gms/location/places/ui/a$a;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->d:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/places/ui/a$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/ui/a$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->e:Lcom/google/android/gms/location/places/AutocompleteFilter;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/places/ui/a$a;->a(Lcom/google/android/gms/location/places/AutocompleteFilter;)Lcom/google/android/gms/location/places/ui/a$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/places/ui/a$a;->a(Ljava/lang/String;)Lcom/google/android/gms/location/places/ui/a$a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/places/ui/a$a;->a(I)Lcom/google/android/gms/location/places/ui/a$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/places/ui/a$a;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;II)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I

    move-result v2

    const-string/jumbo v3, "Places"

    const-string/jumbo v4, "Could not open autocomplete activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    iget v2, v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->errorCode:I

    const-string/jumbo v3, "Places"

    const-string/jumbo v4, "Could not open autocomplete activity"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->a()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/location/places/ui/a;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/location/places/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->f:Lcom/google/android/gms/location/places/ui/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->f:Lcom/google/android/gms/location/places/ui/b;

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/places/ui/b;->a(Lcom/google/android/gms/location/places/a;)V

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/location/places/a;->a()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->a(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/location/places/ui/a;->b(Landroid/content/Context;Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->f:Lcom/google/android/gms/location/places/ui/b;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->f:Lcom/google/android/gms/location/places/ui/b;

    invoke-interface {v1, v0}, Lcom/google/android/gms/location/places/ui/b;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/yelp/android/ba/a$d;->place_autocomplete_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/yelp/android/ba/a$c;->place_autocomplete_search_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->a:Landroid/view/View;

    sget v0, Lcom/yelp/android/ba/a$c;->place_autocomplete_clear_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->b:Landroid/view/View;

    sget v0, Lcom/yelp/android/ba/a$c;->place_autocomplete_search_input:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->c:Landroid/widget/EditText;

    new-instance v0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment$1;-><init>(Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->b:Landroid/view/View;

    new-instance v2, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment$2;-><init>(Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->a()V

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/location/places/ui/PlaceAutocompleteFragment;->c:Landroid/widget/EditText;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method
