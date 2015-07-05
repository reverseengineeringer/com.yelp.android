.class public Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "ReviewSuggestionsPageFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/aa;


# instance fields
.field private a:Lcom/yelp/android/ui/util/bs;

.field private b:Lcom/yelp/android/ui/activities/reviews/ba;

.field private c:Lcom/yelp/android/ui/activities/reviews/x;

.field private d:Lcom/yelp/android/appdata/webrequests/fi;

.field private e:Lcom/yelp/android/appdata/webrequests/dr;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Lcom/yelp/android/util/ErrorType;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Landroid/widget/Button;

.field private u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

.field private final v:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;>;"
        }
    .end annotation
.end field

.field private final w:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;"
        }
    .end annotation
.end field

.field private final x:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lcom/yelp/android/ui/panels/at;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 431
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/bc;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/bc;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->v:Lcom/yelp/android/appdata/webrequests/m;

    .line 450
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/bd;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/bd;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->w:Lcom/yelp/android/appdata/webrequests/j;

    .line 475
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/be;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/be;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->x:Lcom/yelp/android/appdata/webrequests/j;

    .line 508
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/bf;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/bf;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->y:Lcom/yelp/android/ui/panels/at;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Lcom/yelp/android/util/ErrorType;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/util/ErrorType;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Lcom/yelp/android/util/ErrorType;)Lcom/yelp/android/util/ErrorType;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p1, v0}, Lcom/yelp/android/util/ErrorType;->isMoreImportant(Lcom/yelp/android/util/ErrorType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    .line 396
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->j:I

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 397
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 399
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Lcom/yelp/android/ui/util/bs;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/bs;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)I
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->j:I

    return v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)I
    .locals 2

    .prologue
    .line 56
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->k:I

    return v0
.end method

.method public static e()Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;-><init>()V

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const v5, 0x7f07059c

    const v4, 0x7f010160

    .line 258
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/bs;

    .line 259
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ba;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->y:Lcom/yelp/android/ui/panels/at;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ba;-><init>(Lcom/yelp/android/ui/panels/at;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b:Lcom/yelp/android/ui/activities/reviews/ba;

    .line 260
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030171

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 262
    const v0, 0x7f0c0454

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->t:Landroid/widget/Button;

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->t:Landroid/widget/Button;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/bb;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/bb;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/bs;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b:Lcom/yelp/android/ui/activities/reviews/ba;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bw;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 290
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/x;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviews/x;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c:Lcom/yelp/android/ui/activities/reviews/x;

    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0703d8

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c:Lcom/yelp/android/ui/activities/reviews/x;

    invoke-static {v2}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/util/bw;->a(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 296
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Z
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->k()Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/q;->g()Lcom/yelp/android/ax/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->x:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>(Lcom/yelp/android/ax/a;Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setFormatMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchTerms(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->q:Ljava/lang/String;

    const v1, 0x7f0701e6

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 323
    const v0, 0x7f0703d8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    .line 329
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->search()V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 334
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->copy()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->x:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    goto :goto_0

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setTermNear(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 327
    const v0, 0x7f07052d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l()V

    return-void
.end method

.method private h()I
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->r:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/fi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/fi;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fi;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fi;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->v:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/fi;-><init>(Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/fi;

    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/fi;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/fi;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fi;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dr;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dr;->isFetching()Z

    move-result v0

    if-nez v0, :cond_3

    .line 353
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dr;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->w:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/dr;-><init>(Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dr;

    .line 354
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dr;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dr;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dr;->executeWithLocation([Ljava/lang/Object;)V

    .line 357
    :cond_3
    return-void
.end method

.method private k()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 360
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    if-eqz v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 366
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 362
    goto :goto_0

    .line 365
    :cond_1
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    iget v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->k:I

    iget v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->j:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h()I

    move-result v4

    if-ne v3, v4, :cond_2

    :goto_1
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    .line 366
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 365
    goto :goto_1
.end method

.method private l()V
    .locals 2

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 373
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u()V

    .line 374
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->v()V

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    if-eq v0, v1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->y()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1, p0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 378
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Landroid/view/View;)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Landroid/widget/ListAdapter;)V

    .line 381
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->j()V

    .line 382
    return-void
.end method

.method private u()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 402
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i:Ljava/util/ArrayList;

    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 410
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b:Lcom/yelp/android/ui/activities/reviews/ba;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ba;->a(Ljava/util/List;)V

    .line 413
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->t:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 417
    :cond_2
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewSuggestionsViewed:Lcom/yelp/android/analytics/iris/ViewIri;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddReviewPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v1}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private v()V
    .locals 5

    .prologue
    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    :cond_0
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/util/ErrorType;)V

    .line 429
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c:Lcom/yelp/android/ui/activities/reviews/x;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/x;->a(Ljava/util/List;)V

    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0703d8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bv;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 200
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_0

    .line 201
    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 204
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    if-eqz v1, :cond_1

    .line 205
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SearchAddReviewSelect:Lcom/yelp/android/analytics/iris/EventIri;

    .line 206
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->SearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 212
    :goto_0
    const-string/jumbo v3, "id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 216
    :cond_0
    return-void

    .line 208
    :cond_1
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SearchNearbyAddReviewSelect:Lcom/yelp/android/analytics/iris/EventIri;

    .line 209
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->NearbySearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    .line 300
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    .line 301
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->q:Ljava/lang/String;

    .line 302
    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->r:Ljava/lang/String;

    .line 303
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g()V

    .line 304
    return-void
.end method

.method public a_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->j()V

    .line 221
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->x()V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 225
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    .line 226
    const v0, 0x7f0703d8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    .line 227
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    .line 229
    iput v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->j:I

    .line 230
    iput v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->k:I

    .line 231
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    .line 232
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    .line 233
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->n:Z

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/fi;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 236
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/fi;

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dr;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 238
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dr;

    .line 240
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    .line 241
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h:Ljava/util/ArrayList;

    .line 242
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i:Ljava/util/ArrayList;

    .line 244
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i()V

    .line 245
    return-void
.end method

.method public m_()V
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->x()V

    .line 251
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a_()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string/jumbo v0, "saved_suggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    .line 124
    const-string/jumbo v0, "saved_nearby"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h:Ljava/util/ArrayList;

    .line 125
    const-string/jumbo v0, "saved_requests_completed"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    .line 126
    const-string/jumbo v0, "saved_review_flow"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->n:Z

    .line 127
    const-string/jumbo v0, "saved_search_flow"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    .line 128
    const-string/jumbo v0, "saved_main_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ErrorType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    .line 129
    const-string/jumbo v0, "saved_search_header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "saved_search_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, "saved_location_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->q:Ljava/lang/String;

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f()V

    .line 136
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l()V

    .line 142
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Z)V

    .line 143
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a_()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    .line 113
    const v1, 0x102000a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a(Landroid/widget/ListView;)V

    .line 115
    :cond_0
    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroy()V

    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/fi;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dr;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 181
    const-string/jumbo v0, "ADD_REVIEW_SUGGESTIONS"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/fi;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 182
    const-string/jumbo v0, "ADD_REVIEW_NEARBY"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dr;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 183
    const-string/jumbo v0, "ADD_REVIEW_SEARCH"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 184
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 148
    const-string/jumbo v0, "ADD_REVIEW_SUGGESTIONS"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/fi;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->v:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fi;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/fi;

    .line 150
    const-string/jumbo v0, "ADD_REVIEW_NEARBY"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dr;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->w:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dr;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/dr;

    .line 152
    const-string/jumbo v0, "ADD_REVIEW_SEARCH"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->x:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 154
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->n:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a_()V

    .line 162
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    const-string/jumbo v0, "saved_suggestions"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 168
    const-string/jumbo v0, "saved_nearby"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 169
    const-string/jumbo v0, "saved_requests_completed"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    const-string/jumbo v0, "saved_review_flow"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const-string/jumbo v0, "saved_search_flow"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    const-string/jumbo v0, "saved_main_error"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 173
    const-string/jumbo v0, "saved_search_header"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v0, "saved_search_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string/jumbo v0, "saved_location_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method
