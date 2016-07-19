.class public Lcom/yelp/android/appdata/o;
.super Landroid/database/DataSetObservable;
.source "SearchSession.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

.field private final b:Lcom/yelp/android/ca/a;

.field private c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

.field private d:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/yelp/android/analytics/iris/IriSource;

.field private g:Ljava/lang/String;

.field private h:Z

.field private final i:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/ca/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/yelp/android/ca/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 371
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 77
    new-instance v0, Lcom/yelp/android/appdata/o$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/o$1;-><init>(Lcom/yelp/android/appdata/o;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/o;->i:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 372
    if-nez p1, :cond_0

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Need a non null callback or else your search is going to be pretty useless"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    if-nez p2, :cond_1

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Need a non null Cache to perform a search, don\'t be wasteful of bandwidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_1
    iput-object p2, p0, Lcom/yelp/android/appdata/o;->b:Lcom/yelp/android/ca/a;

    .line 383
    iput-object p1, p0, Lcom/yelp/android/appdata/o;->d:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 384
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/o;I)I
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/yelp/android/appdata/o;->e:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/o;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yelp/android/appdata/o;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/o;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/k$b;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->d:Lcom/yelp/android/appdata/webrequests/k$b;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/appdata/o;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yelp/android/appdata/o;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 593
    invoke-static {p0, p1, v0, v0}, Lcom/yelp/android/appdata/o;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)V

    .line 594
    return-void
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 607
    const-string/jumbo v0, "extra.query"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 608
    const-string/jumbo v0, "extra.source"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 609
    const-string/jumbo v0, "extra.search_launch_method"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string/jumbo v0, "android.intent.action.SEARCH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/o;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/yelp/android/appdata/o;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/analytics/iris/IriSource;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->f:Lcom/yelp/android/analytics/iris/IriSource;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/appdata/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/appdata/o;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/appdata/o;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/yelp/android/appdata/o;->e:I

    return v0
.end method

.method static synthetic g(Lcom/yelp/android/appdata/o;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/appdata/o;->q()V

    return-void
.end method

.method private p()Z
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->u()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 417
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/yelp/android/appdata/o;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    if-nez v1, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/yelp/android/appdata/o;->notifyInvalidated()V

    .line 426
    :cond_0
    :goto_1
    return v0

    .line 416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/appdata/o;->notifyChanged()V

    goto :goto_1
.end method

.method private q()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 676
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->e()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v0

    .line 678
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->h(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 683
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/yelp/android/appdata/o;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    const-string/jumbo v0, ""

    .line 649
    :goto_0
    return-object v0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->E()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->G()Lcom/yelp/android/serializable/Category;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->G()Lcom/yelp/android/serializable/Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 649
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/k$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    iput-object p1, p0, Lcom/yelp/android/appdata/o;->d:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 658
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->a(Ljava/util/List;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 448
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/yelp/android/appdata/o;->p()Z

    move-result v1

    .line 401
    if-eqz v1, :cond_0

    .line 402
    iget v2, p0, Lcom/yelp/android/appdata/o;->e:I

    iget-object v0, p0, Lcom/yelp/android/appdata/o;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/o;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 407
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yelp/android/appdata/o;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    .line 408
    iget-object v2, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2, v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->a(I)V

    .line 409
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->y()V

    .line 412
    :cond_0
    return v1

    .line 402
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/o;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    .line 520
    const-string/jumbo v0, "extra.query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 521
    const-string/jumbo v0, "extra.offset"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/appdata/o;->e:I

    .line 523
    const-string/jumbo v0, "extra.source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/IriSource;

    iput-object v0, p0, Lcom/yelp/android/appdata/o;->f:Lcom/yelp/android/analytics/iris/IriSource;

    .line 524
    const-string/jumbo v0, "extra.search_launch_method"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/o;->g:Ljava/lang/String;

    .line 526
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/o;->b:Lcom/yelp/android/ca/a;

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->b(Lcom/yelp/android/ca/a;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 528
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/o;->i:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->b(Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/o;->g()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 582
    const-string/jumbo v0, "extra.query"

    iget-object v1, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 583
    const-string/jumbo v0, "extra.offset"

    iget v1, p0, Lcom/yelp/android/appdata/o;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 584
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/yelp/android/appdata/o;->p()Z

    move-result v0

    .line 457
    if-eqz v0, :cond_0

    .line 458
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/appdata/o;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    .line 459
    iget-object v1, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->y()V

    .line 461
    :cond_0
    return v0
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/yelp/android/appdata/o;->p()Z

    move-result v0

    .line 471
    if-eqz v0, :cond_0

    .line 472
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/appdata/o;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    .line 473
    const/4 v1, 0x0

    iget v2, p0, Lcom/yelp/android/appdata/o;->e:I

    add-int/lit8 v2, v2, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 474
    iget-object v2, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2, v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->a(I)V

    .line 475
    iget-object v1, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->y()V

    .line 478
    :cond_0
    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/yelp/android/appdata/o;->h:Z

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 496
    iget v0, p0, Lcom/yelp/android/appdata/o;->e:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/yelp/android/appdata/webrequests/eo;
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eo;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/eo;-><init>()V

    .line 558
    :goto_0
    return-object v0

    .line 549
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eo;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/eo;-><init>()V

    .line 550
    iget-object v1, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->G()Lcom/yelp/android/serializable/Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->J()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->D()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/eo;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->I()[D

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/eo;->a([D)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->H()Lcom/yelp/android/serializable/Filter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/eo;

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->a(Z)V

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/o;->notifyInvalidated()V

    .line 573
    return-void
.end method

.method public j()Lcom/yelp/android/serializable/Filter;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->H()Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/yelp/android/appdata/o;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->F()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public m()[D
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->I()[D

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/yelp/android/ca/a;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->b:Lcom/yelp/android/ca/a;

    return-object v0
.end method

.method public o()Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/yelp/android/appdata/o;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    return-object v0
.end method
