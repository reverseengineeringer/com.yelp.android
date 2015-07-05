.class public Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "AddAddressFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/yelp/android/ui/activities/support/o;
.implements Lcom/yelp/android/ui/util/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpFragment;",
        "Landroid/text/TextWatcher;",
        "Lcom/yelp/android/ui/activities/support/o;",
        "Lcom/yelp/android/ui/util/g",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Z

.field protected b:Z

.field private c:Lcom/yelp/android/serializable/YelpBusiness;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/location/Address;

.field private n:Landroid/location/Address;

.field private o:Landroid/widget/ImageButton;

.field private p:Ljava/util/Locale;

.field private q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

.field private r:Lcom/yelp/android/ui/dialogs/FlagsDialog;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/ui/dialogs/ap;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/yelp/android/ui/activities/mutatebiz/e;

.field private u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/BackgroundTaskFragment",
            "<",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;>;"
        }
    .end annotation
.end field

.field private final v:Lcom/yelp/android/ui/dialogs/ar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 626
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/d;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->v:Lcom/yelp/android/ui/dialogs/ar;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Landroid/location/Address;
    .locals 1

    .prologue
    .line 140
    const-string/jumbo v0, "address"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    return-object v0
.end method

.method public static a(Landroid/location/Address;Ljava/lang/CharSequence;Lcom/yelp/android/serializable/YelpBusinessAddresses;Z)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    const-string/jumbo v1, "business_name"

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v1, "business_addresses"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 135
    const-string/jumbo v1, "is_address_edit"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Lcom/yelp/android/ui/util/BackgroundTaskFragment;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;Ljava/util/Locale;I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Ljava/util/Locale;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/ap;

    .line 448
    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/ap;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/ap;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/ap;->a()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Ljava/util/Locale;I)V

    .line 453
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Locale;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 414
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->getFromCountry(Ljava/lang/String;)Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;

    move-result-object v0

    .line 416
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b:Z

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    iget v2, v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address1Primary:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 418
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    iget v2, v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address2Primary:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 419
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    iget v2, v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address1Alt:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 420
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->h:Landroid/widget/TextView;

    iget v0, v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address2Alt:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    iget v2, v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address1:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 432
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    iget v0, v0, Lcom/yelp/android/ui/activities/mutatebiz/AddressHint;->address2:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    const v1, 0x7f0700a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0
.end method

.method private a(Ljava/util/Locale;I)V
    .locals 5

    .prologue
    const v4, 0x7f0702e0

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 391
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 392
    iput-object p1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 393
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 394
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 396
    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 397
    const v0, 0x7f070344

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/appdata/LocaleSettings;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f07014c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 409
    :goto_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Ljava/util/Locale;)V

    .line 410
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Ljava/util/Locale;

    .line 411
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Landroid/location/Address;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Landroid/location/Address;

    return-object v0
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yelp/android/serializable/YelpBusinessAddresses;
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "business_addresses"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    return-object v0
.end method

.method public static c(Landroid/os/Bundle;)Landroid/location/Address;
    .locals 1

    .prologue
    .line 148
    const-string/jumbo v0, "geocoded"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    return-object v0
.end method

.method public static d(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 152
    const-string/jumbo v0, "is_address_edit"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "tag_request_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    .line 476
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/c;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    .line 553
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    const-string/jumbo v2, "tag_request_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->a(Landroid/support/v4/app/Fragment;)V

    .line 557
    return-void
.end method


# virtual methods
.method protected a()Landroid/location/Address;
    .locals 3

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Landroid/os/Bundle;)Landroid/location/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Landroid/os/Bundle;)Landroid/location/Address;

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    .line 314
    :cond_0
    new-instance v0, Landroid/location/Address;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 315
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 316
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 317
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Ljava/util/Locale;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 66
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->j()V

    .line 567
    if-eqz p1, :cond_0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 568
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->m:Landroid/location/Address;

    .line 569
    const v0, 0x7f07062a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 603
    :goto_0
    return-void

    .line 573
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 574
    const-string/jumbo v1, ""

    .line 575
    const-string/jumbo v2, ""

    .line 576
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    .line 577
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v4

    if-ltz v4, :cond_2

    .line 578
    invoke-virtual {v0, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    .line 579
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 580
    const-string/jumbo v1, ""

    .line 584
    :cond_2
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v4

    if-lt v4, v6, :cond_3

    .line 585
    invoke-virtual {v0, v6}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    .line 586
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 587
    const-string/jumbo v2, ""

    .line 591
    :cond_3
    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_4

    .line 594
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    .line 595
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 600
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Ljava/lang/String;)V

    .line 602
    :cond_5
    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->m:Landroid/location/Address;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 457
    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 460
    :cond_0
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a:Z

    .line 624
    return-void
.end method

.method public b(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method protected c()Lcom/yelp/android/serializable/YelpBusinessAddresses;
    .locals 6

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b:Z

    if-eqz v0, :cond_1

    .line 333
    new-instance v1, Lcom/yelp/android/serializable/YelpDetailedAddress;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-direct {v1, v0, v2, v3}, Lcom/yelp/android/serializable/YelpDetailedAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Lcom/yelp/android/serializable/YelpDetailedAddress;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-direct {v0, v3, v4, v5}, Lcom/yelp/android/serializable/YelpDetailedAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_0
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/yelp/android/serializable/YelpBusinessAddresses;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpDetailedAddress;Ljava/util/Map;)V

    .line 345
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessAddresses;-><init>()V

    goto :goto_0
.end method

.method protected d()Landroid/location/Address;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->m:Landroid/location/Address;

    return-object v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Ljava/util/Locale;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Ljava/util/Locale;)Lcom/yelp/android/ui/dialogs/FlagsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->v:Lcom/yelp/android/ui/dialogs/ar;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->a(Lcom/yelp/android/ui/dialogs/ar;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/FlagsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public f()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 469
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditAddress:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->f()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public k_()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 465
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 167
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/mutatebiz/e;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->t:Lcom/yelp/android/ui/activities/mutatebiz/e;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "AddAddress Fragments must be attached to an AddressFragmentListener"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a:Z

    .line 178
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Ljava/util/Locale;

    .line 180
    if-eqz p1, :cond_0

    .line 181
    const-string/jumbo v0, "dirty"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a:Z

    .line 182
    const-string/jumbo v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Ljava/util/Locale;

    .line 183
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c:Lcom/yelp/android/serializable/YelpBusiness;

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Landroid/os/Bundle;)Landroid/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Landroid/location/Address;

    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d(Landroid/os/Bundle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b:Z

    .line 190
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b(Landroid/os/Bundle;)Lcom/yelp/android/serializable/YelpBusinessAddresses;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 191
    invoke-static {}, Lcom/yelp/android/ui/dialogs/ao;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->s:Ljava/util/ArrayList;

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->setHasOptionsMenu(Z)V

    .line 197
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g()V

    .line 198
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c:Lcom/yelp/android/serializable/YelpBusiness;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 364
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 365
    const v0, 0x7f100018

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 366
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f0c04b0

    const v3, 0x7f0c04ac

    const v2, 0x7f0c04ab

    .line 202
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 203
    const v1, 0x7f030180

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 204
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v1, :cond_4

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 207
    :goto_0
    invoke-static {v1}, Lcom/yelp/android/appdata/LocaleSettings;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    .line 209
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    .line 210
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    .line 217
    :goto_1
    const v1, 0x7f0c04ae

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    .line 218
    const v1, 0x7f0c04af

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->h:Landroid/widget/TextView;

    .line 219
    const v1, 0x7f0c04aa

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->i:Landroid/widget/TextView;

    .line 220
    const v1, 0x7f0c04ad

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->j:Landroid/widget/TextView;

    .line 222
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    const v2, 0x7f0700a5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 223
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    const v2, 0x7f0700a6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 224
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    const v2, 0x7f070344

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 226
    const v1, 0x7f0c04a9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->l:Landroid/view/View;

    .line 228
    const v1, 0x7f0c049c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->o:Landroid/widget/ImageButton;

    .line 230
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->o:Landroid/widget/ImageButton;

    new-instance v2, Lcom/yelp/android/ui/activities/mutatebiz/a;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/mutatebiz/a;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Landroid/location/Address;

    if-eqz v1, :cond_6

    .line 239
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Landroid/location/Address;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Ljava/util/List;)V

    .line 240
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->getAlternateAddresses()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->getAlternateAddresses()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpDetailedAddress;

    .line 243
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDetailedAddress;->getAddress1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDetailedAddress;->getAddress2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c(Landroid/os/Bundle;)Landroid/location/Address;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->m:Landroid/location/Address;

    .line 253
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 254
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 257
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->l:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/mutatebiz/b;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/mutatebiz/b;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Landroid/location/Address;

    if-eqz v1, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070222

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 279
    :cond_1
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/appdata/LocaleSettings;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 283
    :cond_3
    return-object v0

    .line 204
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 212
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    .line 213
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    .line 214
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 248
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDetach()V

    .line 301
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 370
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04fd

    if-ne v0, v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->t:Lcom/yelp/android/ui/activities/mutatebiz/e;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "business_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/e;->a(Ljava/lang/String;)V

    .line 375
    const/4 v0, 0x1

    .line 377
    :goto_1
    return v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    const-string/jumbo v0, "dirty"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const-string/jumbo v0, "locale"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Ljava/util/Locale;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 291
    const-string/jumbo v0, "business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 292
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 618
    return-void
.end method
