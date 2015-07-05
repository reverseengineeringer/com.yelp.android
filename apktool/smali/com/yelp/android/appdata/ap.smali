.class public Lcom/yelp/android/appdata/ap;
.super Landroid/database/DataSetObservable;
.source "SearchSession.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

.field private final b:Lcom/yelp/android/ax/a;

.field private c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

.field private d:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
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

.field private final i:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/ax/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/yelp/android/ax/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 70
    new-instance v0, Lcom/yelp/android/appdata/aq;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/aq;-><init>(Lcom/yelp/android/appdata/ap;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/ap;->i:Lcom/yelp/android/appdata/webrequests/j;

    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Need a non null callback or else your search is going to be pretty useless"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    if-nez p2, :cond_1

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Need a non null Cache to perform a search, don\'t be wasteful of bandwidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    iput-object p2, p0, Lcom/yelp/android/appdata/ap;->b:Lcom/yelp/android/ax/a;

    .line 173
    iput-object p1, p0, Lcom/yelp/android/appdata/ap;->d:Lcom/yelp/android/appdata/webrequests/j;

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/ap;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/yelp/android/appdata/ap;->e:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/ap;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/appdata/ap;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/ap;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/j;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->d:Lcom/yelp/android/appdata/webrequests/j;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/appdata/ap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/appdata/ap;->g:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 383
    invoke-static {p0, p1, v0, v0}, Lcom/yelp/android/appdata/ap;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/SearchRequest;Landroid/content/Intent;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 397
    const-string/jumbo v0, "extra.query"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    const-string/jumbo v0, "extra.source"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 399
    const-string/jumbo v0, "extra.search_launch_method"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string/jumbo v0, "android.intent.action.SEARCH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/ap;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yelp/android/appdata/ap;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/analytics/iris/IriSource;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->f:Lcom/yelp/android/analytics/iris/IriSource;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/appdata/ap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/appdata/ap;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/appdata/ap;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/yelp/android/appdata/ap;->e:I

    return v0
.end method

.method private q()Z
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    if-nez v1, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/yelp/android/appdata/ap;->notifyInvalidated()V

    .line 214
    :cond_0
    :goto_1
    return v0

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/appdata/ap;->notifyChanged()V

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getUrlString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 181
    :cond_0
    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    const-string/jumbo v0, ""

    .line 429
    invoke-virtual {p0}, Lcom/yelp/android/appdata/ap;->h()Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    const-string/jumbo v0, ""

    .line 450
    :cond_0
    :goto_0
    return-object v0

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchTerms()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 434
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchTerms()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 437
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getCategory()Lcom/yelp/android/serializable/Category;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 438
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getCategory()Lcom/yelp/android/serializable/Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 442
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchOptions()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;->CHECK_IN_OFFERS:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    const v0, 0x7f070131

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_4
    const v0, 0x7f070123

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    iput-object p1, p0, Lcom/yelp/android/appdata/ap;->d:Lcom/yelp/android/appdata/webrequests/j;

    .line 460
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getBusinessSearchResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getBusinessSearchResults()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/serializable/BusinessSearchResult;->replaceBusiness(Ljava/util/List;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 236
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/ap;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    .line 309
    const-string/jumbo v0, "extra.query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iput-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 310
    const-string/jumbo v0, "extra.offset"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/appdata/ap;->e:I

    .line 312
    const-string/jumbo v0, "extra.source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/IriSource;

    iput-object v0, p0, Lcom/yelp/android/appdata/ap;->f:Lcom/yelp/android/analytics/iris/IriSource;

    .line 313
    const-string/jumbo v0, "extra.search_launch_method"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/ap;->g:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->b:Lcom/yelp/android/ax/a;

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->setCacheAdapter(Lcom/yelp/android/ax/a;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 317
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->i:Lcom/yelp/android/appdata/webrequests/j;

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/SearchRequest;

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/ap;->h()Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 372
    const-string/jumbo v0, "extra.query"

    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 373
    const-string/jumbo v0, "extra.offset"

    iget v1, p0, Lcom/yelp/android/appdata/ap;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    return-void
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/yelp/android/appdata/ap;->q()Z

    move-result v1

    .line 191
    if-eqz v1, :cond_0

    .line 192
    iget v2, p0, Lcom/yelp/android/appdata/ap;->e:I

    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getBusinessSearchResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 195
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yelp/android/appdata/ap;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    .line 196
    iget-object v2, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2, v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->setOffset(I)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->search()V

    .line 200
    :cond_0
    return v1

    .line 192
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/yelp/android/appdata/ap;->q()Z

    move-result v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/appdata/ap;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    .line 247
    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->search()V

    .line 249
    :cond_0
    return v0
.end method

.method public e()Z
    .locals 3

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/yelp/android/appdata/ap;->q()Z

    move-result v0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/appdata/ap;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    .line 261
    const/4 v1, 0x0

    iget v2, p0, Lcom/yelp/android/appdata/ap;->e:I

    add-int/lit8 v2, v2, -0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 262
    iget-object v2, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2, v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->setOffset(I)V

    .line 263
    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->search()V

    .line 267
    :cond_0
    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/yelp/android/appdata/ap;->h:Z

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/yelp/android/appdata/ap;->e:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Lcom/yelp/android/appdata/webrequests/fv;
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fv;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/fv;-><init>()V

    .line 348
    :goto_0
    return-object v0

    .line 338
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fv;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/fv;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getCategory()Lcom/yelp/android/serializable/Category;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getFormatMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchMode()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchTerms()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getTermNear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fv;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getRegion()[D

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fv;->a([D)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getSearchOptions()Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fv;->a(Ljava/util/EnumSet;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getFilter()Lcom/yelp/android/serializable/Filter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/fv;

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->cancel(Z)V

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/ap;->notifyInvalidated()V

    .line 363
    return-void
.end method

.method public k()Lcom/yelp/android/serializable/Filter;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getFilter()Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->a:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/yelp/android/appdata/ap;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getTermNear()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public n()[D
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->getRegion()[D

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/yelp/android/ax/a;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->b:Lcom/yelp/android/ax/a;

    return-object v0
.end method

.method public p()Lcom/yelp/android/appdata/webrequests/SearchRequest;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/yelp/android/appdata/ap;->c:Lcom/yelp/android/appdata/webrequests/SearchRequest;

    return-object v0
.end method
