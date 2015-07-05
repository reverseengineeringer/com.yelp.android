.class public Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
.super Lcom/yelp/android/ui/util/au;
.source "BusinessAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/ui/panels/businesssearch/f;",
        ">",
        "Lcom/yelp/android/ui/util/au",
        "<TT;>;",
        "Lcom/yelp/android/ui/util/i;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/bumptech/glide/j;

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

.field private final i:Lcom/yelp/android/ui/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/x",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/yelp/android/ui/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/x",
            "<TT;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final k:Lcom/yelp/android/ui/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/x",
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
    .line 200
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;Z)V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 224
    if-eqz p2, :cond_0

    const-string/jumbo v1, "use_caching"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;Z)V

    .line 226
    if-eqz p2, :cond_1

    .line 227
    const-string/jumbo v0, "features"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    .line 229
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c(Ljava/util/Collection;)V

    .line 230
    const-string/jumbo v0, "contents"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Ljava/util/List;)V

    .line 232
    :cond_1
    return-void

    .line 224
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 487
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/a;-><init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->i:Lcom/yelp/android/ui/util/x;

    .line 509
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/b;-><init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->j:Lcom/yelp/android/ui/util/x;

    .line 534
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesssearch/c;-><init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->k:Lcom/yelp/android/ui/util/x;

    .line 207
    const-class v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    .line 208
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->e:Landroid/util/SparseArray;

    .line 209
    iput-boolean p2, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    .line 210
    invoke-static {p1}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a:Lcom/bumptech/glide/j;

    .line 211
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->b:Landroid/content/Context;

    .line 213
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->i:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/util/x;)V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->j:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/util/x;)V

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->k:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/util/x;)V

    .line 218
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->g:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->g:Landroid/location/Location;

    return-object p1
.end method

.method private a(Lcom/yelp/android/ui/panels/businesssearch/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 469
    sget v1, Lcom/yelp/android/appdata/ao;->n:I

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 470
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/cq;

    move-result-object v0

    .line 471
    iput v3, v0, Lcom/yelp/android/ui/util/cq;->b:I

    .line 472
    iget-object v1, p1, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;Lcom/yelp/android/ui/util/cq;)V

    .line 473
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 474
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/e;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 475
    const v1, 0x7f0c0376

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 477
    :cond_0
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 478
    const/4 v1, 0x1

    iget-object v2, p1, Lcom/yelp/android/ui/panels/businesssearch/e;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 479
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 480
    iget-object v1, p1, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 482
    iget-object v0, p1, Lcom/yelp/android/ui/panels/businesssearch/e;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/cq;

    move-result-object v0

    .line 483
    sget v1, Lcom/yelp/android/appdata/ao;->m:I

    iput v1, v0, Lcom/yelp/android/ui/util/cq;->b:I

    .line 484
    iget-object v1, p1, Lcom/yelp/android/ui/panels/businesssearch/e;->e:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;Lcom/yelp/android/ui/util/cq;)V

    .line 485
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->g:Landroid/location/Location;

    .line 661
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 662
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 284
    .line 285
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 286
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 287
    if-nez p3, :cond_0

    .line 288
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ed

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 290
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/e;

    invoke-direct {v0, p3}, Lcom/yelp/android/ui/panels/businesssearch/e;-><init>(Landroid/view/View;)V

    .line 293
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/e;

    .line 297
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/e;->a()V

    .line 300
    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->a:Landroid/widget/TextView;

    .line 301
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 302
    iget-boolean v4, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    :cond_1
    invoke-virtual {p1, v7}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayNameForBusinessSearchResult(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 306
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

    .line 308
    const v4, 0x7f070410

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

    .line 314
    :cond_2
    iget-object v4, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 315
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a:Lcom/bumptech/glide/j;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    sget-object v3, Lcom/yelp/android/util/RemoteImageExceptionCallback;->INSTANCE:Lcom/yelp/android/util/RemoteImageExceptionCallback;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/request/c;)Lcom/bumptech/glide/c;

    move-result-object v1

    const v3, 0x7f020090

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/c;->b(I)Lcom/bumptech/glide/c;

    move-result-object v1

    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 322
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ALTERNATE_NAMES:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->b:Landroid/widget/TextView;

    .line 324
    invoke-virtual {p1, v7}, Lcom/yelp/android/serializable/YelpBusiness;->getAlternateNameString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 326
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 335
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->d:Landroid/widget/TextView;

    .line 336
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v3

    .line 337
    const v4, 0x7f0e0022

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v3

    invoke-static {v1, v3}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/TextView;F)V

    .line 339
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 344
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->i:Landroid/widget/TextView;

    .line 345
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getAddressForBusinessSearchResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CATEGORY:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 351
    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->g:Landroid/widget/TextView;

    .line 352
    iget-boolean v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->i:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p2, v7, v4}, Lcom/yelp/android/ui/util/x;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CLOSES_IN:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 359
    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->h:Landroid/widget/TextView;

    .line 361
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getHours()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/yelp/android/serializable/YelpHoursPair;

    .line 362
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 364
    invoke-static {v7, v1, v4}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Lcom/yelp/android/services/s;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Lcom/yelp/android/services/s;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v1}, Lcom/yelp/android/services/s;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 366
    invoke-virtual {v1}, Lcom/yelp/android/services/s;->g()J

    move-result-wide v4

    long-to-int v1, v4

    .line 367
    const v4, 0x7f0e0002

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v2, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    :cond_7
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->PRICE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 375
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->e:Landroid/widget/TextView;

    .line 376
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getPrice()I

    move-result v2

    .line 377
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v3

    .line 378
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v2, v4}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 381
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    :cond_8
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DISTANCE:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 385
    iget-boolean v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->j:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v7, v2}, Lcom/yelp/android/ui/util/x;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    move-object v2, v1

    .line 388
    :goto_2
    if-eqz v2, :cond_12

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 389
    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v3, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 392
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    if-eqz v1, :cond_9

    .line 393
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/yelp/android/ui/widgets/CompassIndicator;->a(DDLjava/lang/String;)V

    .line 395
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/CompassIndicator;->setVisibility(I)V

    .line 415
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->AD:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 416
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->l:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    :cond_a
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 420
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->isBookmarked()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 423
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->r:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/ui/panels/businesssearch/e;)V

    .line 430
    :cond_b
    :goto_4
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CHECKINS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 431
    iget-boolean v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->k:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v7, v2}, Lcom/yelp/android/ui/util/x;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 433
    :goto_5
    if-eqz v1, :cond_c

    .line 434
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/e;->b()Landroid/view/View;

    .line 435
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->p:Landroid/widget/TextView;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->q:Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a:Lcom/bumptech/glide/j;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/util/RemoteImageExceptionCallback;->INSTANCE:Lcom/yelp/android/util/RemoteImageExceptionCallback;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/request/c;)Lcom/bumptech/glide/c;

    move-result-object v1

    const v2, 0x7f02009c

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/c;->b(I)Lcom/bumptech/glide/c;

    move-result-object v1

    iget-object v2, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->o:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 444
    :cond_c
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->DIVIDER:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 445
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->u:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :cond_d
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK_BUTTON:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 449
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->t:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->t:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->t:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 452
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->isBookmarked()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 453
    iget-object v0, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->t:Landroid/widget/ImageView;

    const v1, 0x7f02009f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    :cond_e
    :goto_6
    return-object p3

    .line 328
    :cond_f
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 352
    :cond_10
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->i:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v7, v4}, Lcom/yelp/android/ui/util/x;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_1

    .line 385
    :cond_11
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->j:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/yelp/android/ui/util/x;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    move-object v2, v1

    goto/16 :goto_2

    .line 398
    :cond_12
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 399
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    if-eqz v1, :cond_9

    .line 400
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/CompassIndicator;->setVisibility(I)V

    goto/16 :goto_3

    .line 405
    :cond_13
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_14

    .line 406
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->f:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    :cond_14
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    if-eqz v1, :cond_9

    .line 409
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->k:Lcom/yelp/android/ui/widgets/CompassIndicator;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/CompassIndicator;->setVisibility(I)V

    goto/16 :goto_3

    .line 426
    :cond_15
    iget-object v1, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->r:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 431
    :cond_16
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->k:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/yelp/android/ui/util/x;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto/16 :goto_5

    .line 455
    :cond_17
    iget-object v0, v0, Lcom/yelp/android/ui/panels/businesssearch/e;->t:Landroid/widget/ImageView;

    const v1, 0x7f02009e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6
.end method

.method public a(I)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 629
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/f;

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/businesssearch/f;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 278
    const-string/jumbo v0, "contents"

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 279
    const-string/jumbo v0, "features"

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 280
    const-string/jumbo v0, "use_caching"

    iget-boolean v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->h:Landroid/view/View$OnClickListener;

    .line 464
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 655
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;)V

    .line 656
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->b()V

    .line 657
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 0

    .prologue
    .line 648
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;Z)V

    .line 649
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->b()V

    .line 650
    return-void
.end method

.method public varargs a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V
    .locals 4

    .prologue
    .line 240
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 241
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 642
    iput p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->f:I

    .line 643
    return-void
.end method

.method public varargs b([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V
    .locals 4

    .prologue
    .line 260
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 261
    iget-object v3, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
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
    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 252
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 592
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    .line 605
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getRecentCheckInFriends()Lcom/yelp/android/serializable/RecentFriendCheckIns;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->isBookmarked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    const/4 v0, 0x3

    .line 616
    :goto_0
    return v0

    .line 610
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getRecentCheckInFriends()Lcom/yelp/android/serializable/RecentFriendCheckIns;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 611
    const/4 v0, 0x2

    goto :goto_0

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->c:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->BOOKMARK:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->isBookmarked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    const/4 v0, 0x1

    goto :goto_0

    .line 616
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Lcom/yelp/android/serializable/YelpBusiness;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method
