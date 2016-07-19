.class public Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
.super Lcom/yelp/android/ui/util/w;
.source "BusinessAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;,
        Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/ui/panels/businesssearch/a;",
        ">",
        "Lcom/yelp/android/ui/util/w",
        "<TT;>;",
        "Lcom/yelp/android/ui/util/f;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/yelp/android/ui/util/t;

.field protected final b:Landroid/content/Context;

.field private final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Landroid/location/Location;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;

.field private final j:Lcom/yelp/android/ui/util/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/m",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/yelp/android/ui/util/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/m",
            "<TT;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final l:Lcom/yelp/android/ui/util/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/m",
            "<TT;[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;Z)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 267
    if-eqz p2, :cond_0

    const-string/jumbo v1, "use_caching"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;Z)V

    .line 271
    if-eqz p2, :cond_1

    .line 272
    const-string/jumbo v0, "features"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    .line 274
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c(Ljava/util/Collection;)V

    .line 275
    const-string/jumbo v0, "contents"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    .line 277
    :cond_1
    return-void

    .line 267
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 578
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$1;-><init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->j:Lcom/yelp/android/ui/util/m;

    .line 601
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$2;-><init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->k:Lcom/yelp/android/ui/util/m;

    .line 634
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$3;-><init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->l:Lcom/yelp/android/ui/util/m;

    .line 250
    const-class v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    .line 251
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->e:Landroid/util/SparseArray;

    .line 252
    iput-boolean p2, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    .line 253
    invoke-static {p1}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a:Lcom/yelp/android/ui/util/t;

    .line 254
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->b:Landroid/content/Context;

    .line 256
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->j:Lcom/yelp/android/ui/util/m;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/util/m;)V

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->k:Lcom/yelp/android/ui/util/m;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/util/m;)V

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->l:Lcom/yelp/android/ui/util/m;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/util/m;)V

    .line 261
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->g:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->g:Landroid/location/Location;

    return-object p1
.end method

.method private a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 558
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 560
    sget v1, Lcom/yelp/android/appdata/n;->n:I

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/yelp/android/appdata/n;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 561
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/ar$a;

    move-result-object v0

    .line 562
    iput v3, v0, Lcom/yelp/android/ui/util/ar$a;->b:I

    .line 563
    iget-object v1, p1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;Lcom/yelp/android/ui/util/ar$a;)V

    .line 564
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 566
    const v1, 0x7f0f0454

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 568
    :cond_0
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 569
    iget-object v1, p1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 570
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 571
    iget-object v1, p1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 573
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/ar$a;

    move-result-object v0

    .line 574
    sget v1, Lcom/yelp/android/appdata/n;->m:I

    iput v1, v0, Lcom/yelp/android/ui/util/ar$a;->b:I

    .line 575
    iget-object v1, p1, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->e:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;Lcom/yelp/android/ui/util/ar$a;)V

    .line 576
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->g:Landroid/location/Location;

    .line 784
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 785
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 330
    .line 331
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 332
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 333
    if-nez p3, :cond_0

    .line 334
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 337
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;

    invoke-direct {v0, p3}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;-><init>(Landroid/view/View;)V

    .line 340
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 343
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;

    .line 344
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->a()V

    .line 347
    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->a:Landroid/widget/TextView;

    .line 348
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 349
    iget-boolean v4, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    :cond_1
    invoke-virtual {p1, v7}, Lcom/yelp/android/serializable/YelpBusiness;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 353
    iget-object v4, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v5, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->NUMBERED:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v5, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->AD:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 355
    const v4, 0x7f070447

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v8, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->f:I

    add-int/2addr v8, p2

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v7, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 362
    :cond_2
    iget-object v4, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 363
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a:Lcom/yelp/android/ui/util/t;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    const v3, 0x7f0200bb

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 367
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ALTERNATE_NAMES:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->b:Landroid/widget/TextView;

    .line 369
    invoke-virtual {p1, v7}, Lcom/yelp/android/serializable/YelpBusiness;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 371
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 380
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->d:Landroid/widget/TextView;

    .line 381
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v3

    .line 382
    const v4, 0x7f080025

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 384
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 389
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->i:Landroid/widget/TextView;

    .line 390
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 396
    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->g:Landroid/widget/TextView;

    .line 397
    iget-boolean v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->j:Lcom/yelp/android/ui/util/m;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p2, v7, v4}, Lcom/yelp/android/ui/util/m;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CLOSES_IN:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 405
    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->h:Landroid/widget/TextView;

    .line 407
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aM()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/yelp/android/serializable/YelpHoursPair;

    .line 408
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->d()Ljava/util/TimeZone;

    move-result-object v4

    .line 410
    invoke-static {v7, v1, v4}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Lcom/yelp/android/services/f$a;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Lcom/yelp/android/services/f$a;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->r()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1}, Lcom/yelp/android/services/f$a;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 412
    invoke-virtual {v1}, Lcom/yelp/android/services/f$a;->g()J

    move-result-wide v4

    long-to-int v1, v4

    .line 413
    const v4, 0x7f080002

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    :cond_7
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 422
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->e:Landroid/widget/TextView;

    .line 423
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->M()I

    move-result v2

    .line 424
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v3

    .line 425
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->ar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v2, v4}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 429
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    :cond_8
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 433
    iget-boolean v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->k:Lcom/yelp/android/ui/util/m;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v7, v2}, Lcom/yelp/android/ui/util/m;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    move-object v2, v1

    .line 437
    :goto_2
    if-eqz v2, :cond_13

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 438
    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    if-eqz v1, :cond_9

    .line 442
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->R()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->Q()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/yelp/android/ui/widgets/CompassIndicator;->a(DDLjava/lang/String;)V

    .line 444
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/CompassIndicator;->setVisibility(I)V

    .line 464
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->AD:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 465
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    :cond_a
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 469
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 472
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->r:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;)V

    .line 479
    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CHECKINS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 480
    iget-boolean v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->l:Lcom/yelp/android/ui/util/m;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v7, v2}, Lcom/yelp/android/ui/util/m;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 484
    :goto_5
    if-eqz v1, :cond_c

    .line 485
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->b()Landroid/view/View;

    .line 486
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->p:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->q:Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a:Lcom/yelp/android/ui/util/t;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->o:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 495
    :cond_c
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->REVIEW_EXCERPT:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->Y()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 497
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->Y()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    .line 498
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->c()Landroid/view/View;

    .line 500
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->x:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/WebImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 502
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->x:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/WebImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a012a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 504
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->A:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->B()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->z:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->A()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->B:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->r()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 508
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->C:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->C:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070281

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    :goto_6
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->y:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->O()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->x:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v3, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->DEFAULT:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    .line 519
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->x:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->N()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200c7

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 521
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->D:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 524
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->v:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    :cond_d
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DIVIDER:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 528
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->u:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_e
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK_BUTTON:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 532
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->t:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->t:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->t:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 535
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 536
    iget-object v0, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->t:Landroid/widget/ImageView;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    :cond_f
    :goto_7
    return-object p3

    .line 373
    :cond_10
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 397
    :cond_11
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->j:Lcom/yelp/android/ui/util/m;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lcom/yelp/android/ui/util/m;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_1

    .line 433
    :cond_12
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->k:Lcom/yelp/android/ui/util/m;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/yelp/android/ui/util/m;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    move-object v2, v1

    goto/16 :goto_2

    .line 447
    :cond_13
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    if-eqz v1, :cond_9

    .line 449
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/CompassIndicator;->setVisibility(I)V

    goto/16 :goto_3

    .line 454
    :cond_14
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    .line 455
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->f:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    :cond_15
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    if-eqz v1, :cond_9

    .line 458
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/CompassIndicator;->setVisibility(I)V

    goto/16 :goto_3

    .line 475
    :cond_16
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->r:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 480
    :cond_17
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->l:Lcom/yelp/android/ui/util/m;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/yelp/android/ui/util/m;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto/16 :goto_5

    .line 514
    :cond_18
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->C:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 538
    :cond_19
    iget-object v0, v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$a;->t:Landroid/widget/ImageView;

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7
.end method

.method public a(I)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 752
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/a;

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/businesssearch/a;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 323
    const-string/jumbo v0, "contents"

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 324
    const-string/jumbo v0, "features"

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 325
    const-string/jumbo v0, "use_caching"

    iget-boolean v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->h:Landroid/view/View$OnClickListener;

    .line 547
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 778
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->a(Ljava/util/List;)V

    .line 779
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->b()V

    .line 780
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 771
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/w;->a(Ljava/util/List;Z)V

    .line 772
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->b()V

    .line 773
    return-void
.end method

.method public varargs a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V
    .locals 4

    .prologue
    .line 285
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 286
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 765
    iput p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->f:I

    .line 766
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->i:Landroid/view/View$OnClickListener;

    .line 551
    return-void
.end method

.method public varargs b([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V
    .locals 4

    .prologue
    .line 305
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 306
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-void
.end method

.method public c(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 297
    return-void
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 554
    const v0, 0x7f030147

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->f:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 714
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    .line 727
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 728
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aG()Lcom/yelp/android/serializable/RecentFriendCheckIns;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    const/4 v0, 0x3

    .line 739
    :goto_0
    return v0

    .line 733
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aG()Lcom/yelp/android/serializable/RecentFriendCheckIns;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 734
    const/4 v0, 0x2

    goto :goto_0

    .line 736
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    const/4 v0, 0x1

    goto :goto_0

    .line 739
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/serializable/YelpBusiness;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 747
    const/4 v0, 0x0

    return v0
.end method
