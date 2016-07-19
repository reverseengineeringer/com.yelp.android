.class public Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "AddAddressFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b$e;
.implements Lcom/yelp/android/ui/util/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpFragment;",
        "Lcom/yelp/android/ui/activities/support/b$e;",
        "Lcom/yelp/android/ui/util/d$a",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/location/Address;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field private c:Lcom/yelp/android/serializable/YelpBusiness;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/location/Address;

.field private n:Ljava/lang/String;

.field private o:Landroid/view/View;

.field private p:Z

.field private q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

.field private r:Lcom/yelp/android/serializable/BusinessAttributes;

.field private s:Lcom/yelp/android/appdata/webrequests/w;

.field private t:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$a;

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

.field private final v:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/BusinessAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 671
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$3;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->v:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 697
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$4;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->w:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;Lcom/yelp/android/serializable/BusinessAttributes;)Lcom/yelp/android/serializable/BusinessAttributes;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/serializable/BusinessAttributes;

    return-object p1
.end method

.method public static a(Landroid/location/Address;Ljava/lang/CharSequence;Lcom/yelp/android/serializable/YelpBusinessAddresses;Lcom/yelp/android/serializable/BusinessAttributes;Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;-><init>()V

    .line 112
    invoke-static/range {p0 .. p5}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b(Landroid/location/Address;Ljava/lang/CharSequence;Lcom/yelp/android/serializable/YelpBusinessAddresses;Lcom/yelp/android/serializable/BusinessAttributes;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->setArguments(Landroid/os/Bundle;)V

    .line 120
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Lcom/yelp/android/ui/util/BackgroundTaskFragment;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;Z)Z
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Z

    return p1
.end method

.method public static b(Landroid/location/Address;Ljava/lang/CharSequence;Lcom/yelp/android/serializable/YelpBusinessAddresses;Lcom/yelp/android/serializable/BusinessAttributes;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 130
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 131
    const-string/jumbo v0, "address"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 132
    const-string/jumbo v2, "business_name"

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v0, "business_addresses"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 135
    const-string/jumbo v0, "business_attributes"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 136
    const-string/jumbo v0, "business_country"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, "is_address_edit"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    return-object v1

    .line 132
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Lcom/yelp/android/serializable/BusinessAttributes;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/serializable/BusinessAttributes;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f0f05b4

    const v7, 0x7f0f05b3

    const v6, 0x7f0706c4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 458
    const-string/jumbo v2, ""

    .line 459
    const-string/jumbo v1, ""

    .line 460
    const-string/jumbo v0, ""

    .line 461
    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 463
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 464
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 466
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    .line 468
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    .line 469
    const v0, 0x7f0f05b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    .line 477
    :goto_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Z

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 479
    const v0, 0x7f0f05bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    .line 480
    const v0, 0x7f0f05ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 485
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessAttributes;->i()Lcom/yelp/android/serializable/AddressAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/AddressAttribute;->b()Lcom/yelp/android/serializable/AddressExample;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/AddressExample;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessAttributes;->i()Lcom/yelp/android/serializable/AddressAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/AddressAttribute;->b()Lcom/yelp/android/serializable/AddressExample;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/AddressExample;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 495
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0701c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 504
    :goto_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessAttributes;->i()Lcom/yelp/android/serializable/AddressAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AddressAttribute;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 505
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessAttributes;->i()Lcom/yelp/android/serializable/AddressAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/AddressAttribute;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    :goto_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g()V

    .line 514
    return-void

    .line 471
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    .line 472
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    .line 473
    const v0, 0x7f0f05b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    goto/16 :goto_1

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    const v0, 0x7f0f05ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessAttributes;->h()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessAttribute;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->i:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->l:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 518
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Z

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessAttributes;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AddressAttribute;

    .line 522
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AddressAttribute;->b()Lcom/yelp/android/serializable/AddressExample;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/AddressExample;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AddressAttribute;->b()Lcom/yelp/android/serializable/AddressExample;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/AddressExample;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->o:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AddressAttribute;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDetailedAddress;

    .line 535
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDetailedAddress;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDetailedAddress;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private h()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "tag_request_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    .line 554
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$2;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    .line 657
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    const-string/jumbo v2, "tag_request_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->u:Lcom/yelp/android/ui/util/BackgroundTaskFragment;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/BackgroundTaskFragment;->a(Lcom/yelp/android/ui/util/d$a;)V

    .line 664
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditAddress:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
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
    .locals 8
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->l()V

    .line 313
    if-eqz p1, :cond_0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 314
    :cond_0
    const v0, 0x7f070616

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 371
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 319
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 320
    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->f()V

    .line 325
    :cond_2
    const-string/jumbo v1, ""

    .line 326
    const-string/jumbo v2, ""

    .line 327
    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v4

    if-ltz v4, :cond_3

    .line 329
    invoke-virtual {v0, v6}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 331
    const-string/jumbo v1, ""

    .line 335
    :cond_3
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v4

    if-lt v4, v7, :cond_7

    .line 336
    invoke-virtual {v0, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 338
    const-string/jumbo v0, ""

    .line 341
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    const v1, 0x7f0706c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 351
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_5

    .line 352
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 353
    new-instance v1, Lcom/yelp/android/serializable/YelpDetailedAddress;

    invoke-virtual {v0, v6}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-direct {v1, v2, v4, v5}, Lcom/yelp/android/serializable/YelpDetailedAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->a()Ljava/util/Map;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 367
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :cond_5
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c()Landroid/location/Address;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->m:Landroid/location/Address;

    goto/16 :goto_0

    .line 348
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 297
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 302
    return-void
.end method

.method protected c()Landroid/location/Address;
    .locals 4

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 411
    :goto_0
    return-object v0

    .line 400
    :cond_0
    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v0, Landroid/location/Address;

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 405
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 406
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 407
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected e()Lcom/yelp/android/serializable/YelpBusinessAddresses;
    .locals 6

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Z

    if-eqz v0, :cond_0

    .line 421
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

    .line 426
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 428
    new-instance v0, Lcom/yelp/android/serializable/YelpDetailedAddress;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-direct {v0, v3, v4, v5}, Lcom/yelp/android/serializable/YelpDetailedAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/yelp/android/serializable/YelpBusinessAddresses;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpDetailedAddress;Ljava/util/Map;)V

    .line 440
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusinessAddresses;-><init>()V

    goto :goto_0
.end method

.method protected f()V
    .locals 3

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->H_()V

    .line 445
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yelp/android/appdata/webrequests/v;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->v:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/v;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->s:Lcom/yelp/android/appdata/webrequests/w;

    .line 451
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->s:Lcom/yelp/android/appdata/webrequests/w;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/w;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 452
    return-void

    .line 445
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/u;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->v:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/u;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    goto :goto_0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 149
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->t:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "AddAddress Fragments must be attached to an AddressFragmentListener"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b:Z

    .line 161
    if-eqz p1, :cond_0

    .line 162
    const-string/jumbo v0, "dirty"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b:Z

    .line 163
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c:Lcom/yelp/android/serializable/YelpBusiness;

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->m:Landroid/location/Address;

    .line 169
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business_addresses"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->q:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business_attributes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessAttributes;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/serializable/BusinessAttributes;

    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business_country"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->n:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "is_address_edit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a:Z

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->r:Lcom/yelp/android/serializable/BusinessAttributes;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessAttributes;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Z

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->setHasOptionsMenu(Z)V

    .line 181
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->h()V

    .line 182
    return-void

    .line 165
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
    .line 274
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 275
    const v0, 0x7f10001c

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 276
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 187
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 188
    const v1, 0x7f0301fb

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 190
    const v1, 0x7f0f05b8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->f:Landroid/widget/TextView;

    .line 191
    const v1, 0x7f0f05b9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->g:Landroid/widget/TextView;

    .line 192
    const v1, 0x7f0f05b2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->i:Landroid/widget/TextView;

    .line 193
    const v1, 0x7f0f05b6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->j:Landroid/widget/TextView;

    .line 194
    const v1, 0x7f0f05b1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->l:Landroid/view/View;

    .line 195
    const v1, 0x7f0f05b7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->o:Landroid/view/View;

    .line 197
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c(Landroid/view/View;)V

    .line 198
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->m:Landroid/location/Address;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->m:Landroid/location/Address;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Ljava/util/List;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->l:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$1;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->m:Landroid/location/Address;

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070271

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    .line 228
    :cond_1
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->p:Z

    if-nez v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 232
    :cond_2
    return-object v0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 265
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDetach()V

    .line 270
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 280
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0607

    if-ne v0, v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->t:Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$a;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "business_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment$a;->a(Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_1
    return v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 253
    const-string/jumbo v0, "business_attributes"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->s:Lcom/yelp/android/appdata/webrequests/w;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 254
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 243
    const-string/jumbo v0, "business_attributes"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->s:Lcom/yelp/android/appdata/webrequests/w;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->v:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/w;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->s:Lcom/yelp/android/appdata/webrequests/w;

    .line 248
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 259
    const-string/jumbo v0, "dirty"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    const-string/jumbo v0, "business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddAddressFragment;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 261
    return-void
.end method
