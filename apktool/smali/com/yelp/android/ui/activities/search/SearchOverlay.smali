.class public Lcom/yelp/android/ui/activities/search/SearchOverlay;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "SearchOverlay.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/ay;


# instance fields
.field a:Landroid/view/View$OnFocusChangeListener;

.field b:Landroid/widget/TextView$OnEditorActionListener;

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/text/TextWatcher;

.field e:Landroid/widget/AdapterView$OnItemClickListener;

.field f:Landroid/widget/AdapterView$OnItemClickListener;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ListView;

.field private j:Lcom/yelp/android/ui/activities/search/as;

.field private k:Lcom/yelp/android/ui/activities/search/a;

.field private l:Lcom/yelp/android/ui/activities/search/z;

.field private m:Lcom/yelp/android/ui/activities/search/ab;

.field private n:Lcom/yelp/android/ui/activities/search/c;

.field private o:Lcom/yelp/android/ui/util/bs;

.field private p:Lcom/yelp/android/ui/util/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/bj",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/yelp/android/ui/util/aw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/aw",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/database/savedsearch/k;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/yelp/android/analytics/iris/IriSource;

.field private v:Z

.field private w:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 453
    new-instance v0, Lcom/yelp/android/ui/activities/search/ar;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/ar;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a:Landroid/view/View$OnFocusChangeListener;

    .line 508
    new-instance v0, Lcom/yelp/android/ui/activities/search/ae;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/ae;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b:Landroid/widget/TextView$OnEditorActionListener;

    .line 522
    new-instance v0, Lcom/yelp/android/ui/activities/search/af;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/af;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->c:Landroid/view/View$OnClickListener;

    .line 530
    new-instance v0, Lcom/yelp/android/ui/activities/search/ag;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/ag;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    .line 572
    new-instance v0, Lcom/yelp/android/ui/activities/search/ah;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/ah;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->e:Landroid/widget/AdapterView$OnItemClickListener;

    .line 653
    new-instance v0, Lcom/yelp/android/ui/activities/search/ai;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/ai;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->f:Landroid/widget/AdapterView$OnItemClickListener;

    .line 756
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/analytics/iris/IriSource;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 114
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-class v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Ljava/util/EnumSet;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;)Landroid/content/Intent;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/yelp/android/appdata/BusinessContributionType;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 105
    const-class v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Ljava/util/EnumSet;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/yelp/android/appdata/BusinessContributionType;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Ljava/util/EnumSet;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Ljava/util/EnumSet;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/yelp/android/appdata/BusinessContributionType;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;",
            ">;",
            "Lcom/yelp/android/analytics/iris/IriSource;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    const-class v1, Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 131
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    const-string/jumbo v1, "extra.locations_keyword"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 135
    const-string/jumbo v1, "extra.search_text"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v1, "extra.location"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v1, "extra.kickoff_search"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    if-nez p4, :cond_0

    .line 139
    const-string/jumbo v1, "extra.contribution.type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 141
    :cond_0
    const-string/jumbo v1, "extra.display_features"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v1, "extra.source"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->w:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Lcom/yelp/android/ui/activities/search/as;)Lcom/yelp/android/ui/activities/search/as;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->j:Lcom/yelp/android/ui/activities/search/as;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->s:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 449
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 451
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/widget/EditText;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q:Lcom/yelp/android/ui/util/aw;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/aw;->filter(Ljava/lang/CharSequence;)V

    .line 440
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->c()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 378
    const-string/jumbo v0, "yelp sucks"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    const-string/jumbo v0, "The club can\'t even handle me right now."

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 380
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/aq;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/aq;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.search_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.search.launch_method"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->setResult(ILandroid/content/Intent;)V

    .line 392
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->finish()V

    .line 393
    const v0, 0x7f040011

    const v1, 0x7f040012

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->overridePendingTransition(II)V

    .line 395
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.search"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    const-string/jumbo v1, "extra.search_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string/jumbo v1, "extra.location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->sendBroadcast(Landroid/content/Intent;)V

    .line 401
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->v:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.kickoff_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0, p3}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_0
    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->s:Ljava/util/List;

    return-object v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.search_text_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v1, "extra.search_text"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const-string/jumbo v1, "extra.location"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->sendBroadcast(Landroid/content/Intent;)V

    .line 425
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/c;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n:Lcom/yelp/android/ui/activities/search/c;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/z;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l:Lcom/yelp/android/ui/activities/search/z;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/util/List;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->t:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->k:Lcom/yelp/android/ui/activities/search/a;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d()V

    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/ab;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->m:Lcom/yelp/android/ui/activities/search/ab;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bs;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o:Lcom/yelp/android/ui/util/bs;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p:Lcom/yelp/android/ui/util/bj;

    return-object v0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/as;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->j:Lcom/yelp/android/ui/activities/search/as;

    return-object v0
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->w:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->v:Z

    return v0
.end method

.method static synthetic r(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/aw;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q:Lcom/yelp/android/ui/util/aw;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 227
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v7

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/yelp/android/database/q;->c()Lcom/yelp/android/database/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/l;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->t:Ljava/util/List;

    .line 230
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o:Lcom/yelp/android/ui/util/bs;

    .line 233
    new-instance v0, Lcom/yelp/android/ui/activities/search/z;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/z;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l:Lcom/yelp/android/ui/activities/search/z;

    .line 234
    new-instance v0, Lcom/yelp/android/ui/activities/search/c;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/c;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n:Lcom/yelp/android/ui/activities/search/c;

    .line 235
    new-instance v0, Lcom/yelp/android/ui/activities/search/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/search/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->k:Lcom/yelp/android/ui/activities/search/a;

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f07050e

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->k:Lcom/yelp/android/ui/activities/search/a;

    invoke-static {v2}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f070520

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n:Lcom/yelp/android/ui/activities/search/c;

    invoke-static {v2}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0704bb

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l:Lcom/yelp/android/ui/activities/search/z;

    invoke-static {v2}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 242
    new-instance v1, Lcom/yelp/android/ui/activities/search/an;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/an;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 258
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra.contribution.type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->v:Z

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->s:Ljava/util/List;

    .line 260
    invoke-virtual {v7}, Lcom/yelp/android/database/q;->b()Lcom/yelp/android/database/savedsearch/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/savedsearch/c;->a(Lcom/yelp/android/database/w;)V

    .line 263
    new-instance v0, Lcom/yelp/android/ui/util/bj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->t:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v5, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->v:Z

    new-instance v6, Lcom/yelp/android/ui/activities/search/ao;

    invoke-direct {v6, p0}, Lcom/yelp/android/ui/activities/search/ao;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/bj;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/yelp/android/ui/util/cc;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p:Lcom/yelp/android/ui/util/bj;

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/yelp/android/database/q;->e()Lcom/yelp/android/database/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/j;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 295
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->r:Ljava/util/ArrayList;

    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra.locations_keyword"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 300
    new-instance v0, Lcom/yelp/android/ui/activities/search/ab;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/ab;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->m:Lcom/yelp/android/ui/activities/search/ab;

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->m:Lcom/yelp/android/ui/activities/search/ab;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->k()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v4}, Lcom/yelp/android/ui/activities/search/ab;->a(Ljava/util/List;Z)V

    .line 303
    new-instance v0, Lcom/yelp/android/ui/util/aw;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->r:Ljava/util/ArrayList;

    iget-boolean v5, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->v:Z

    new-instance v6, Lcom/yelp/android/ui/activities/search/ap;

    invoke-direct {v6, p0}, Lcom/yelp/android/ui/activities/search/ap;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    move-object v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/aw;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/yelp/android/ui/util/cc;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q:Lcom/yelp/android/ui/util/aw;

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contribution.type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BusinessContributionType;

    .line 322
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_2

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p:Lcom/yelp/android/ui/util/bj;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddPhotoPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bj;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q:Lcom/yelp/android/ui/util/aw;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddPhotoPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aw;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 332
    :cond_0
    :goto_1
    return-void

    .line 258
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 325
    :cond_2
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->REVIEW:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_3

    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p:Lcom/yelp/android/ui/util/bj;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddReviewPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bj;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q:Lcom/yelp/android/ui/util/aw;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddReviewPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aw;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    goto :goto_1

    .line 328
    :cond_3
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p:Lcom/yelp/android/ui/util/bj;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->CheckInPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bj;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q:Lcom/yelp/android/ui/util/aw;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->CheckInPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aw;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/fv;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 736
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->u:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {p0, v0, v1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 738
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivity(Landroid/content/Intent;)V

    .line 739
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 355
    const-string/jumbo v1, "extra.search_text"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string/jumbo v1, "extra.location"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->setResult(ILandroid/content/Intent;)V

    .line 358
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 360
    const v0, 0x7f040011

    const v1, 0x7f040012

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->overridePendingTransition(II)V

    .line 361
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 731
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchOverlay:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 677
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 678
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    return-object v1
.end method

.method public l()Landroid/content/Context;
    .locals 0

    .prologue
    .line 743
    return-object p0
.end method

.method public m()[D
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 753
    const/16 v0, 0x3e8

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b()V

    .line 343
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 148
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f040011

    const v1, 0x7f040012

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->overridePendingTransition(II)V

    .line 150
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->setContentView(I)V

    .line 152
    const v0, 0x7f0c048a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/ad;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/ad;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/IriSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->u:Lcom/yelp/android/analytics/iris/IriSource;

    .line 160
    const v0, 0x7f0c0487

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i:Landroid/widget/ListView;

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 165
    const v0, 0x7f0c0486

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    .line 166
    const v0, 0x7f0c0488

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    .line 167
    const v0, 0x7f0c021a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 169
    new-instance v1, Lcom/yelp/android/ui/activities/search/ak;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/ak;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    if-nez p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.search_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.location"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra.display_features"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    .line 188
    if-eqz v0, :cond_1

    sget-object v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->NAME:Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 190
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 191
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 196
    :goto_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->LOCATION:Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/search/al;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/al;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    :goto_2
    const v0, 0x7f0c0093

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a()V

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/search/am;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/am;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 224
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    const-string/jumbo v1, "extra.search_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    const-string/jumbo v1, "extra.location"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 336
    const-string/jumbo v0, "extra.search_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string/jumbo v0, "extra.location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->c()Ljava/lang/String;

    move-result-object v1

    .line 349
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method
