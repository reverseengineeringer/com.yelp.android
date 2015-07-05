.class public abstract Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ChangeBusinessAttributes.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;
.implements Lcom/yelp/android/ui/activities/mutatebiz/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;",
        "Lcom/yelp/android/ui/activities/mutatebiz/af",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Lcom/yelp/android/ui/activities/mutatebiz/ah;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

.field protected h:Lcom/yelp/android/ui/activities/mutatebiz/ah;

.field protected i:Lcom/yelp/android/ui/activities/mutatebiz/ah;

.field protected j:Lcom/yelp/android/ui/activities/mutatebiz/ah;

.field protected k:Lcom/yelp/android/ui/activities/mutatebiz/ah;

.field protected l:Lcom/yelp/android/ui/activities/mutatebiz/ah;

.field protected m:Lcom/yelp/android/ui/activities/mutatebiz/ah;

.field protected n:Lcom/yelp/android/serializable/YelpBusiness;

.field protected o:Ljava/lang/CharSequence;

.field protected p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

.field private q:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 591
    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 582
    :pswitch_0
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 572
    :pswitch_1
    const/16 v0, 0x3fc

    goto :goto_0

    .line 574
    :pswitch_2
    const/16 v0, 0x3fa

    goto :goto_0

    .line 576
    :pswitch_3
    const/16 v0, 0x3fb

    goto :goto_0

    .line 578
    :pswitch_4
    const/16 v0, 0x3fd

    goto :goto_0

    .line 580
    :pswitch_5
    const/16 v0, 0x3f9

    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c009c
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;Landroid/view/View;)I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 86
    const-string/jumbo v1, "extra.categories"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 87
    return-object v0
.end method

.method private a(Landroid/content/Intent;)Landroid/location/Address;
    .locals 1

    .prologue
    .line 397
    invoke-static {p1}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->a(Landroid/content/Intent;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    return-object v0
.end method

.method private a(ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/ah;

    .line 416
    invoke-interface {v0, p2, p2}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 417
    return-void
.end method

.method private b(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessAddresses;
    .locals 1

    .prologue
    .line 401
    invoke-static {p1}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->c(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessAddresses;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Intent;)Landroid/location/Address;
    .locals 1

    .prologue
    .line 405
    invoke-static {p1}, Lcom/yelp/android/ui/activities/mutatebiz/EditExistingAddress;->b(Landroid/content/Intent;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 142
    const v0, 0x7f0c00a3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/ah;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->m:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    .line 143
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/o;

    const v1, 0x7f07040a

    sget-object v2, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MULTILINE_TEXT:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/o;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;)V

    .line 145
    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/o;->a(I)V

    .line 146
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->m:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 150
    const v0, 0x7f0c00a2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/ah;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/o;

    const v2, 0x7f07022b

    sget-object v3, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->MENU_URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/mutatebiz/o;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 156
    const v0, 0x7f0c00a1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/ah;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->k:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->k:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/o;

    const v2, 0x7f07022e

    sget-object v3, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->URI:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/mutatebiz/o;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 162
    const v0, 0x7f0c00a0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/ah;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->j:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->j:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/o;

    const v2, 0x7f07022c

    sget-object v3, Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;->PHONE:Lcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/activities/mutatebiz/o;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;ILcom/yelp/android/ui/activities/mutatebiz/EditField$InputType;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 167
    const v0, 0x7f0c009f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/ah;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/g;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/g;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 179
    const v0, 0x7f0c009e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/ah;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/h;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/h;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 198
    const v0, 0x7f0c009d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/ah;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/i;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/i;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 218
    const v0, 0x7f0c009c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mutatebiz/ah;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->b:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->b:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/j;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/j;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
.end method

.method protected abstract a(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;
.end method

.method protected abstract a(Ljava/util/Map;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/analytics/iris/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")",
            "Lcom/yelp/android/analytics/iris/b;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;)",
            "Lcom/yelp/android/appdata/webrequests/w;"
        }
    .end annotation
.end method

.method protected a(Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 698
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->isAlternateAddressEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 701
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->getAddress()Lcom/yelp/android/serializable/YelpDetailedAddress;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Ljava/lang/String;Lcom/yelp/android/serializable/YelpDetailedAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->getAlternateAddresses()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 705
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDetailedAddress;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Ljava/lang/String;Lcom/yelp/android/serializable/YelpDetailedAddress;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    :cond_0
    const-string/jumbo v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 708
    const v0, 0x7f07021b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 712
    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v0, "\n"

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/f;->a(Ljava/lang/CharSequence;Landroid/location/Address;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Lcom/yelp/android/serializable/YelpDetailedAddress;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 722
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    .line 723
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 724
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpDetailedAddress;->getAddress1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpDetailedAddress;->getAddress2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 730
    :cond_0
    const-string/jumbo v2, ""

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 731
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 722
    :cond_1
    const-string/jumbo v0, ", "

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->hideLoadingDialog()V

    .line 491
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/w;

    if-eqz v0, :cond_0

    .line 492
    check-cast p1, Lcom/yelp/android/appdata/webrequests/w;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/w;->a()Ljava/util/Collection;

    move-result-object v0

    .line 493
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 494
    const-string/jumbo v2, "changed"

    const-string/jumbo v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Ljava/util/Map;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/analytics/iris/b;

    move-result-object v0

    .line 496
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 497
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 498
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Ljava/lang/CharSequence;

    .line 499
    const v0, 0x7f0705df

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->showDialog(I)V

    .line 501
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Category;)V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    return-void

    .line 478
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lcom/yelp/android/serializable/Category;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Lcom/yelp/android/serializable/Category;)V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/ae;

    new-instance v2, Lcom/yelp/android/ui/activities/mutatebiz/n;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/m;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->q:[Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/yelp/android/ui/activities/mutatebiz/n;-><init>(Lcom/yelp/android/database/m;[Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    check-cast v0, Landroid/view/View;

    aput-object v0, v4, v5

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/yelp/android/ui/activities/mutatebiz/ae;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ag;Lcom/yelp/android/ui/activities/mutatebiz/af;Landroid/view/View;[Landroid/view/View;)V

    .line 393
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yelp/android/serializable/Category;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ae;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 394
    return-void
.end method

.method protected abstract b()Z
.end method

.method protected abstract c()Lcom/yelp/android/analytics/iris/b;
.end method

.method protected abstract d()Lcom/yelp/android/analytics/iris/b;
.end method

.method protected e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 646
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 651
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 655
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 659
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_7

    .line 663
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getName()Ljava/lang/String;

    move-result-object v1

    .line 664
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getAlternateNames()Lcom/yelp/android/serializable/AlternateBusinessNames;

    move-result-object v2

    .line 666
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 667
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_4
    if-eqz v2, :cond_7

    .line 671
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getPrimary()Ljava/lang/String;

    move-result-object v1

    .line 672
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 673
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_5
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getSecondary()Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 678
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    :cond_6
    invoke-virtual {v2}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getRomanized()Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 683
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_7
    const v1, 0x7f07021b

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 239
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 240
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a:Z

    .line 242
    packed-switch p1, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 304
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->updateOptionsMenu()V

    .line 305
    return-void

    .line 244
    :pswitch_0
    const v0, 0x7f0c00a2

    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    :pswitch_1
    const v0, 0x7f0c00a3

    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 250
    :pswitch_2
    const v0, 0x7f0c00a0

    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    :pswitch_3
    const v0, 0x7f0c00a1

    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditField;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 256
    :pswitch_4
    const-string/jumbo v2, "name"

    invoke-static {p3, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    .line 257
    const-string/jumbo v2, "yomi_name"

    invoke-static {p3, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    .line 258
    const-string/jumbo v2, "english_name"

    invoke-static {p3, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    .line 259
    const-string/jumbo v2, "romaji_name"

    invoke-static {p3, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e()Ljava/lang/String;

    move-result-object v2

    .line 263
    const v3, 0x7f0c009c

    invoke-direct {p0, v3, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(ILjava/lang/CharSequence;)V

    .line 268
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 271
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->performClick()Z

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 268
    goto :goto_1

    .line 277
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/content/Intent;)Landroid/location/Address;

    move-result-object v2

    .line 278
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c(Landroid/content/Intent;)Landroid/location/Address;

    move-result-object v3

    .line 279
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->b(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessAddresses;

    move-result-object v4

    iput-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 280
    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {p0, v2, v4}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Landroid/location/Address;Lcom/yelp/android/serializable/YelpBusinessAddresses;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 282
    iget-object v5, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/os/Parcelable;

    aput-object v2, v6, v1

    aput-object v3, v6, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    aput-object v1, v6, v0

    invoke-interface {v5, v4, v6}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;[Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 286
    :pswitch_6
    const-string/jumbo v0, "extra.categories"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 288
    const-string/jumbo v1, ", "

    new-instance v2, Lcom/yelp/android/serializable/w;

    invoke-direct {v2}, Lcom/yelp/android/serializable/w;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/ag;)Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v2, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 290
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 293
    :pswitch_7
    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    const v0, 0x7f070475

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 298
    :goto_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v2, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x3f6
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a:Z

    if-eqz v0, :cond_0

    .line 422
    const v0, 0x7f070645

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->showDialog(I)V

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c()Lcom/yelp/android/analytics/iris/b;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 425
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 95
    const-string/jumbo v0, "changed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a:Z

    .line 96
    const-string/jumbo v0, "status message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Ljava/lang/CharSequence;

    .line 97
    const-string/jumbo v0, "business_addresses"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->setContentView(I)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a:Z

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->q:[Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->m()V

    .line 104
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l()V

    .line 105
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->k()V

    .line 106
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i()V

    .line 107
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->j()V

    .line 108
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h()V

    .line 109
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g()V

    .line 110
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f()V

    .line 111
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 431
    sparse-switch p1, :sswitch_data_0

    .line 473
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 433
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07008d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070336

    new-instance v2, Lcom/yelp/android/ui/activities/mutatebiz/l;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/mutatebiz/l;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070594

    new-instance v2, Lcom/yelp/android/ui/activities/mutatebiz/k;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/mutatebiz/k;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 456
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07041b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 462
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/m;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/m;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 431
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0705df -> :sswitch_1
        0x7f070645 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 315
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->hideLoadingDialog()V

    .line 484
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->showInfoDialog(Ljava/lang/CharSequence;)V

    .line 485
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d()Lcom/yelp/android/analytics/iris/b;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 486
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04fd

    if-ne v0, v1, :cond_b

    .line 328
    invoke-virtual {p0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/w;

    move-result-object v1

    .line 336
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    move v0, v3

    .line 340
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->d(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->c(Ljava/lang/String;)V

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->d(Ljava/lang/String;)V

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->e(Ljava/lang/String;)V

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getParcelableArrayData()[Landroid/os/Parcelable;

    move-result-object v2

    .line 355
    if-eqz v2, :cond_5

    .line 357
    aget-object v0, v2, v4

    check-cast v0, Landroid/location/Address;

    aget-object v2, v2, v3

    if-eqz v2, :cond_9

    move v2, v3

    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/w;->a(Landroid/location/Address;Z)V

    .line 360
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    if-eqz v0, :cond_6

    .line 361
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessAddresses;->getAlternateAddresses()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->a(Ljava/util/Map;)V

    .line 363
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->h:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getParcelableArrayListData()Ljava/util/ArrayList;

    move-result-object v0

    .line 364
    if-nez v0, :cond_7

    .line 365
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 367
    :cond_7
    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->a(Ljava/util/Collection;)V

    .line 368
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->l:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->c(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->k:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->b(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->m:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->f(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->i:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->e(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->j:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getCharSequenceData()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->a(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->a(Landroid/location/Location;)V

    .line 375
    instance-of v0, v1, Lcom/yelp/android/appdata/webrequests/co;

    if-eqz v0, :cond_a

    move-object v0, v1

    .line 376
    check-cast v0, Lcom/yelp/android/appdata/webrequests/co;

    invoke-static {v0}, Lcom/yelp/android/services/job/HoursPhotoUploadJob;->launchJob(Lcom/yelp/android/appdata/webrequests/co;)V

    .line 378
    const v0, 0x7f070394

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Ljava/lang/CharSequence;

    .line 379
    const v0, 0x7f0705df

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->showDialog(I)V

    .line 386
    :goto_2
    return v3

    :cond_8
    move v0, v4

    .line 336
    goto/16 :goto_0

    :cond_9
    move v2, v4

    .line 357
    goto :goto_1

    .line 381
    :cond_a
    new-array v0, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/w;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 382
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 386
    :cond_b
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 321
    const v0, 0x7f0c04fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f07054e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 322
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    const-string/jumbo v0, "business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    const-string/jumbo v0, "business_addresses"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    const-string/jumbo v0, "changed"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    const-string/jumbo v0, "status message"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->o:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Landroid/util/Pair;)V

    return-void
.end method
