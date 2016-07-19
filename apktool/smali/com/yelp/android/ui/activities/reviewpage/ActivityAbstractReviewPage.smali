.class public abstract Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityAbstractReviewPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$a;,
        Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$b;
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/ui/util/aj;

.field protected b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/util/Locale;",
            "Lcom/yelp/android/ui/activities/reviewpage/e;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;"
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

.field private q:Lcom/yelp/android/ui/activities/reviewpage/c;

.field private final r:Landroid/content/BroadcastReceiver;

.field private final s:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 520
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r:Landroid/content/BroadcastReceiver;

    .line 535
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$2;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->s:Landroid/content/BroadcastReceiver;

    .line 711
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

.method private a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 681
    const v0, 0x7f0f0589

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 683
    const v1, 0x7f07050c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setHint(I)V

    .line 684
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 687
    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$3;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$3;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 703
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()V

    return-void
.end method

.method private b(Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 491
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 494
    instance-of v3, v0, Lcom/yelp/android/ui/activities/reviewpage/c;

    if-eqz v3, :cond_1

    .line 495
    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 496
    :cond_1
    instance-of v3, v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    if-eqz v3, :cond_0

    .line 497
    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 500
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

    .line 214
    const-string/jumbo v0, "NotLoadedLanguages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    .line 217
    const-string/jumbo v0, "AllLanguages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->g:Ljava/util/LinkedHashSet;

    .line 219
    const-string/jumbo v0, "LocaleList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i:Ljava/util/ArrayList;

    .line 221
    const-string/jumbo v0, "ReviewCounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 223
    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->a(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->h:Ljava/util/Map;

    .line 225
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Landroid/os/Bundle;)V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->d:Ljava/util/Locale;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b(Ljava/util/Locale;Ljava/util/Collection;)V

    .line 228
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 229
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

    .line 230
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/e;

    .line 231
    const-string/jumbo v6, "ReviewList.%s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 234
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 235
    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(Ljava/util/List;)V

    .line 236
    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 244
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->getCount()I

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

    .line 244
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

    const v1, 0x7f07037d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->a(I)V

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

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
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation

    .prologue
    .line 319
    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 321
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ea;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviewpage/c;->getCount()I

    move-result v3

    new-instance v5, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$a;

    invoke-direct {v5, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$a;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/ea;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    return-object v0
.end method

.method private p()V
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->disableLoading()V

    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 386
    const v0, 0x7f0f01ef

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    const v1, 0x7f0301de

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 388
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    if-eq v0, v1, :cond_1

    .line 393
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 397
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->k:Landroid/view/View;

    if-nez v0, :cond_2

    .line 398
    const v0, 0x7f0f0581

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->k:Landroid/view/View;

    .line 399
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->k:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Landroid/view/View;)V

    .line 401
    :cond_2
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->clear()V

    .line 664
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 665
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 666
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 668
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 674
    :goto_0
    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)Z

    .line 675
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n()V

    .line 676
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->t()V

    .line 677
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j()V

    .line 678
    return-void

    .line 671
    :cond_0
    const v0, 0x7f07050b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->setTitle(I)V

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    .line 707
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    .line 708
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q()V

    .line 709
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
            "<",
            "Ljava/lang/Void;",
            "**>;>;)V"
        }
    .end annotation
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/dx$a;)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->d:Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b(Ljava/util/Locale;Ljava/util/Collection;)V

    .line 450
    return-void
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/dy$a;)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->c:Ljava/util/Locale;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/dy$a;->d:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b(Ljava/util/Locale;Ljava/util/Collection;)V

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelection(I)V

    .line 446
    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/yelp/android/appdata/webrequests/dy;Lcom/yelp/android/appdata/webrequests/YelpException;)V
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ea$a;)V
    .locals 8

    .prologue
    const v7, 0x7f0f0589

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 587
    iget-object v2, p1, Lcom/yelp/android/appdata/webrequests/ea$a;->a:Ljava/util/List;

    .line 588
    iget v3, p1, Lcom/yelp/android/appdata/webrequests/ea$a;->b:I

    iput v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    .line 589
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 590
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v3, v2}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Ljava/util/Collection;)V

    .line 591
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviewpage/c;->notifyDataSetChanged()V

    .line 593
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/reviewpage/c;->getCount()I

    move-result v3

    iget v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    if-ne v3, v4, :cond_1

    .line 598
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a()V

    .line 600
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 601
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->p()V

    .line 621
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 622
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->m:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->k:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 626
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->k:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 628
    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :cond_3
    return-void

    .line 603
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    const v3, 0x7f0f003e

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    const v3, 0x7f08002a

    iget v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    new-array v5, v0, [Ljava/lang/String;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {p0, v3, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/aj$b;->a(Ljava/lang/CharSequence;)V

    .line 611
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v3}, Lcom/yelp/android/ui/util/aj;->getCount()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_5

    :goto_1
    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFastScrollEnabled(Z)V

    .line 614
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->m:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    if-nez v0, :cond_2

    .line 616
    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->m:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    goto :goto_0

    :cond_5
    move v0, v1

    .line 611
    goto :goto_1
.end method

.method protected abstract a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
.end method

.method protected a(Lcom/yelp/android/ui/util/aj;)V
    .locals 1

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 476
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 640
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 648
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301e4

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    .line 646
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    const-string/jumbo v2, "HEADER"

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 647
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Landroid/view/View;)V

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

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, p3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    .line 333
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 334
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
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

    .line 336
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->G()Lcom/yelp/android/serializable/TranslatedReview;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 337
    invoke-virtual {v1, v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Z)V

    move v1, v2

    :goto_1
    move v2, v1

    .line 343
    goto :goto_0

    :cond_0
    move v1, v4

    .line 341
    goto :goto_1

    :cond_1
    move v2, v3

    .line 345
    :cond_2
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(Ljava/util/Collection;)V

    .line 346
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->notifyDataSetChanged()V

    .line 349
    :goto_2
    if-eqz v2, :cond_3

    .line 352
    const v1, 0x7f070618

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(Ljava/lang/String;)V

    .line 355
    :cond_3
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 356
    if-nez v1, :cond_4

    .line 357
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 359
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v5}, Lcom/yelp/android/ui/util/aj;->getCount()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_9

    :goto_3
    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFastScrollEnabled(Z)V

    .line 362
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->getCount()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 367
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 368
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j()V

    .line 371
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 372
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 374
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->m:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    if-nez v0, :cond_8

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->l:Landroid/view/View;

    const v1, 0x7f0f0589

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->m:Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    .line 381
    :cond_8
    return-void

    :cond_9
    move v4, v3

    .line 359
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

.method protected abstract b()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;"
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
    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/reviewpage/e;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->clear()V

    .line 460
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Z)V

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0f003e

    const-string/jumbo v2, " "

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    .line 467
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Ljava/util/Locale;Ljava/util/Collection;)V

    .line 468
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Lcom/yelp/android/ui/util/aj;)V

    .line 470
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->g:Ljava/util/LinkedHashSet;

    .line 471
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->g:Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 472
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->c()V

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
    .line 200
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 201
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 202
    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 507
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessReviews:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    instance-of v0, v0, Lcom/yelp/android/appdata/webrequests/ea;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ea;

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$a;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$a;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ea;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

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

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

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

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

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
    .line 651
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
    .line 655
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected m()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n:I

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onBackPressed()V

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->u()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 141
    const-string/jumbo v2, "extra.business"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    .line 142
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->d:Ljava/util/Locale;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i:Ljava/util/ArrayList;

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->d:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->d:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f()V

    .line 157
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    .line 158
    new-instance v0, Ljava/util/TreeMap;

    new-instance v2, Lcom/yelp/android/appdata/LocaleSettings$b;

    invoke-direct {v2}, Lcom/yelp/android/appdata/LocaleSettings$b;-><init>()V

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    .line 160
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->q:Lcom/yelp/android/ui/activities/reviewpage/c;

    .line 162
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 164
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Landroid/util/SparseArray;)V

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->i()V

    .line 169
    :cond_0
    if-eqz p1, :cond_1

    .line 170
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c(Landroid/os/Bundle;)V

    .line 176
    :goto_0
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$b;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$1;)V

    .line 177
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->registerForContextMenu(Landroid/view/View;)V

    .line 182
    const-string/jumbo v0, "com.yelp.android.review.update"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 184
    const-string/jumbo v0, "com.yelp.android.review.translate"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 187
    return-void

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->n()V

    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    .line 552
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 553
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 555
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 559
    if-ltz v0, :cond_0

    .line 560
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/aj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 561
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v1, :cond_0

    .line 562
    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 563
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 564
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->O()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b(Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 570
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

    const v1, 0x7f10002b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->c:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 194
    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onDestroy()V

    .line 195
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
    .line 405
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_0

    .line 406
    check-cast p1, Lcom/yelp/android/appdata/webrequests/dy;

    .line 408
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Lcom/yelp/android/appdata/webrequests/dy;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    iget-object v1, p1, Lcom/yelp/android/appdata/webrequests/dy;->a:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 413
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j()V

    .line 422
    :cond_0
    :goto_0
    invoke-static {p0, p2}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 423
    return-void

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a()V

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a()V

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

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/e;

    .line 287
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->clear()V

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

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/e;->a()Ljava/util/List;

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

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->a(Ljava/util/Map;)Ljava/util/ArrayList;

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
