.class public abstract Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityAbstractReviewPage.java"


# instance fields
.field protected a:Lcom/yelp/android/ui/util/bs;

.field protected b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/util/Locale;",
            "Lcom/yelp/android/ui/activities/reviewpage/bi;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/Locale;

.field protected e:Lcom/yelp/android/serializable/YelpBusiness;

.field protected f:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/lang/String;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

.field private n:I

.field private o:Lcom/yelp/android/ui/panels/PanelLoading;

.field private p:Landroid/view/ViewStub;

.field private q:Lcom/yelp/android/ui/activities/reviewpage/ak;

.field private final r:Landroid/content/BroadcastReceiver;

.field private final s:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 514
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/a;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r:Landroid/content/BroadcastReceiver;

    .line 528
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/b;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->s:Landroid/content/BroadcastReceiver;

    .line 682
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b(Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 653
    const v0, 0x7f0c016a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 655
    const v1, 0x7f070509

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setHint(I)V

    .line 656
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 659
    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/c;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 674
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->u()V

    return-void
.end method

.method private b(Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 485
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 487
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 488
    instance-of v3, v0, Lcom/yelp/android/ui/activities/reviewpage/ak;

    if-eqz v3, :cond_1

    .line 489
    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 490
    :cond_1
    instance-of v3, v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    if-eqz v3, :cond_0

    .line 491
    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 494
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 216
    const-string/jumbo v0, "NotLoadedLanguages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    .line 218
    const-string/jumbo v0, "AllLanguages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->g:Ljava/util/LinkedHashSet;

    .line 220
    const-string/jumbo v0, "LocaleList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i:Ljava/util/ArrayList;

    .line 223
    const-string/jumbo v0, "ReviewCounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->listToMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->h:Ljava/util/Map;

    .line 227
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Landroid/os/Bundle;)V

    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->d:Ljava/util/Locale;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b(Ljava/util/Locale;Ljava/util/Collection;)V

    .line 230
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 232
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 233
    const-string/jumbo v6, "ReviewList.%s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 235
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 236
    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Ljava/util/List;)V

    .line 237
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 245
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v0

    const/16 v4, 0x64

    if-le v0, v4, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFastScrollEnabled(Z)V

    .line 248
    const-string/jumbo v0, "search_term"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    .line 249
    const-string/jumbo v0, "search_result_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    .line 250
    return-void

    :cond_3
    move v0, v3

    .line 245
    goto :goto_1
.end method

.method private n()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->o:Lcom/yelp/android/ui/panels/PanelLoading;

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->createLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->o:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->o:Lcom/yelp/android/ui/panels/PanelLoading;

    const v1, 0x7f070342

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->b(I)V

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->o:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 297
    return-void
.end method

.method private o()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 319
    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 321
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fc;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v3

    new-instance v5, Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-direct {v5, p0}, Lcom/yelp/android/ui/activities/reviewpage/d;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/fc;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->disableLoading()V

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 380
    const v0, 0x7f0c01bf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    .line 381
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    const v1, 0x7f03016f

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    if-eq v0, v1, :cond_1

    .line 387
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->k:Landroid/view/View;

    if-nez v0, :cond_2

    .line 392
    const v0, 0x7f0c047a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->k:Landroid/view/View;

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 636
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 637
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 638
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 640
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 646
    :goto_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)Z

    .line 647
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n()V

    .line 648
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->s()V

    .line 649
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j()V

    .line 650
    return-void

    .line 643
    :cond_0
    const v0, 0x7f070508

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->setTitle(I)V

    goto :goto_0
.end method

.method private v()V
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    .line 678
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    .line 679
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->u()V

    .line 680
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/util/ArrayList;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation
.end method

.method protected abstract a(Landroid/os/Bundle;)V
.end method

.method protected abstract a(Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;>;)V"
        }
    .end annotation
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/ex;)V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->d:Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b(Ljava/util/Locale;Ljava/util/Collection;)V

    .line 444
    return-void
.end method

.method protected abstract a(Lcom/yelp/android/appdata/webrequests/ey;Lcom/yelp/android/appdata/webrequests/YelpException;)V
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/ez;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/ez;->c:Ljava/util/Locale;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/ez;->d:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b(Ljava/util/Locale;Ljava/util/Collection;)V

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelection(I)V

    .line 440
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/fd;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 577
    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/fd;->a:Ljava/util/List;

    .line 578
    iget v3, p1, Lcom/yelp/android/appdata/webrequests/fd;->b:I

    iput v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    .line 579
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 580
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v3, v2}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/util/Collection;)V

    .line 581
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviewpage/ak;->notifyDataSetChanged()V

    .line 583
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v3

    iget v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    if-ne v3, v4, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->t()V

    .line 590
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p()V

    .line 593
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    const v3, 0x7f0c0036

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    const v3, 0x7f0e0027

    iget v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    new-array v5, v0, [Ljava/lang/String;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {p0, v3, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/bv;->a(Ljava/lang/CharSequence;)V

    .line 596
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_4

    :goto_0
    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFastScrollEnabled(Z)V

    .line 598
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 599
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->m:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    if-nez v0, :cond_3

    .line 600
    const v0, 0x7f0c016a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->m:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 603
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 596
    goto :goto_0
.end method

.method protected abstract a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
.end method

.method protected a(Lcom/yelp/android/ui/util/bs;)V
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 470
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 612
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 620
    :goto_0
    return-void

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030173

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    .line 618
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    const-string/jumbo v2, "HEADER"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 619
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/List;Ljava/util/Map;Ljava/util/Locale;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 329
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 330
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 332
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTranslatedText()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 333
    invoke-virtual {v1, v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->setDisplayTranslatedText(Z)V

    move v1, v2

    :goto_1
    move v2, v1

    .line 339
    goto :goto_0

    :cond_0
    move v1, v4

    .line 337
    goto :goto_1

    :cond_1
    move v2, v3

    .line 341
    :cond_2
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Ljava/util/Collection;)V

    .line 342
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->notifyDataSetChanged()V

    .line 345
    :goto_2
    if-eqz v2, :cond_3

    .line 348
    const v1, 0x7f07062c

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Ljava/lang/String;)V

    .line 351
    :cond_3
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 352
    if-nez v1, :cond_4

    .line 353
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 355
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_9

    :goto_3
    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFastScrollEnabled(Z)V

    .line 357
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->getCount()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 362
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 363
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j()V

    .line 366
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 367
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 369
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->m:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    if-nez v0, :cond_8

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    const v1, 0x7f0c016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->m:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 375
    :cond_8
    return-void

    :cond_9
    move v4, v3

    .line 355
    goto :goto_3

    :cond_a
    move v2, v3

    goto :goto_2
.end method

.method protected abstract a(Ljava/util/Locale;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract b(Landroid/os/Bundle;)V
.end method

.method protected b(Ljava/util/Locale;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 450
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/reviewpage/bi;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->clear()V

    .line 454
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Z)V

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c0036

    const-string/jumbo v2, " "

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Ljava/util/Locale;Ljava/util/Collection;)V

    .line 462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Lcom/yelp/android/ui/util/bs;)V

    .line 464
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->g:Ljava/util/LinkedHashSet;

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->g:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 466
    return-void
.end method

.method protected abstract c()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->d()V

    .line 302
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j()V

    .line 303
    return-void
.end method

.method protected abstract f()V
.end method

.method public g()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 203
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 204
    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessReviews:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    const/4 v0, 0x0

    return-object v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    instance-of v0, v0, Lcom/yelp/android/appdata/webrequests/fc;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fc;

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/d;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fc;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 264
    :cond_0
    return-void
.end method

.method protected j()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->o()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    goto :goto_1
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected m()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onBackPressed()V

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->v()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    const-string/jumbo v2, "extra.business"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    .line 144
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->d:Ljava/util/Locale;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i:Ljava/util/ArrayList;

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->d:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->d:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f()V

    .line 159
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    .line 160
    new-instance v0, Ljava/util/TreeMap;

    new-instance v2, Lcom/yelp/android/appdata/z;

    invoke-direct {v2}, Lcom/yelp/android/appdata/z;-><init>()V

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    .line 162
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/ak;

    .line 164
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 166
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 167
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Landroid/util/SparseArray;)V

    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->h()V

    .line 171
    :cond_0
    if-eqz p1, :cond_1

    .line 172
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c(Landroid/os/Bundle;)V

    .line 178
    :goto_0
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/e;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;Lcom/yelp/android/ui/activities/reviewpage/a;)V

    .line 179
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->registerForContextMenu(Landroid/view/View;)V

    .line 184
    const-string/jumbo v0, "com.yelp.android.review.update"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 186
    const-string/jumbo v0, "com.yelp.android.review.translate"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 189
    return-void

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n()V

    .line 175
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    .line 544
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 545
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 547
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 551
    if-ltz v0, :cond_0

    .line 552
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/bs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 553
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v1, :cond_0

    .line 554
    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 555
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 556
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b(Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 560
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 255
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100027

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 196
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onDestroy()V

    .line 197
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 399
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_0

    .line 400
    check-cast p1, Lcom/yelp/android/appdata/webrequests/ey;

    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Lcom/yelp/android/appdata/webrequests/ey;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/ey;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j()V

    .line 416
    :cond_0
    :goto_0
    invoke-static {p0, p2}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 417
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->t()V

    goto :goto_0

    .line 413
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->t()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->setIntent(Landroid/content/Intent;)V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 287
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->clear()V

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->g()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 269
    const-string/jumbo v0, "LocaleList"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 271
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 273
    const-string/jumbo v1, "ReviewList.%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 275
    :cond_0
    const-string/jumbo v0, "ReviewCounts"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->h:Ljava/util/Map;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->mapToList(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 276
    const-string/jumbo v0, "NotLoadedLanguages"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 277
    const-string/jumbo v0, "AllLanguages"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 278
    const-string/jumbo v0, "search_result_count"

    iget v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b(Landroid/os/Bundle;)V

    .line 280
    return-void
.end method
