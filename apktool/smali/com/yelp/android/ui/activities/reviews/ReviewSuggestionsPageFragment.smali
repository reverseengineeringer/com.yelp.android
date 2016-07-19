.class public Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "ReviewSuggestionsPageFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# instance fields
.field private a:Lcom/yelp/android/ui/util/aj;

.field private b:Lcom/yelp/android/ui/activities/reviews/d;

.field private c:Lcom/yelp/android/ui/activities/reviews/a;

.field private d:Lcom/yelp/android/appdata/webrequests/ee;

.field private e:Lcom/yelp/android/appdata/webrequests/cv;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
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

.field private final v:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewSuggestion;",
            ">;>;"
        }
    .end annotation
.end field

.field private final w:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;"
        }
    .end annotation
.end field

.field private final x:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lcom/yelp/android/ui/panels/g$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 445
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$2;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->v:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 469
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$3;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->w:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 495
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$4;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 537
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$5;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->y:Lcom/yelp/android/ui/panels/g$a;

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
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    return-object p1
.end method

.method private b(Lcom/yelp/android/util/ErrorType;)V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p1, v0}, Lcom/yelp/android/util/ErrorType;->isMoreImportant(Lcom/yelp/android/util/ErrorType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    .line 408
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->j:I

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p0, v0, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 411
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Lcom/yelp/android/ui/util/aj;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/aj;

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

.method public static f()Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;-><init>()V

    return-object v0
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
    .locals 6

    .prologue
    const v5, 0x7f0705aa

    const v4, 0x7f0101ce

    .line 261
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/aj;

    .line 262
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->y:Lcom/yelp/android/ui/panels/g$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/reviews/d;-><init>(Lcom/yelp/android/ui/panels/g$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b:Lcom/yelp/android/ui/activities/reviews/d;

    .line 263
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301e0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 267
    const v0, 0x7f0f0545

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->t:Landroid/widget/Button;

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->t:Landroid/widget/Button;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment$1;-><init>(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/aj;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b:Lcom/yelp/android/ui/activities/reviews/d;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 299
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviews/a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c:Lcom/yelp/android/ui/activities/reviews/a;

    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f07040a

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c:Lcom/yelp/android/ui/activities/reviews/a;

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 305
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->t()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/g;->e()Lcom/yelp/android/ca/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>(Lcom/yelp/android/ca/a;Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->q:Ljava/lang/String;

    const v1, 0x7f070231

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 333
    const v0, 0x7f07040a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    .line 339
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->y()V

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->clear()V

    .line 344
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->B()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    goto :goto_0

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->e(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 337
    const v0, 0x7f07052c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    goto :goto_1
.end method

.method private i()I
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->r:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/ee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/ee;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ee;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ee;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->v:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/ee;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/ee;

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/ee;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/ee;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ee;->a([Ljava/lang/Object;)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cv;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cv;->u()Z

    move-result v0

    if-nez v0, :cond_3

    .line 364
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cv;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->w:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/cv;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cv;

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cv;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cv;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cv;->a([Ljava/lang/Object;)V

    .line 368
    :cond_3
    return-void
.end method

.method private k()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    if-eqz v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 378
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 373
    goto :goto_0

    .line 376
    :cond_1
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    iget v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->k:I

    iget v4, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->j:I

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i()I

    move-result v4

    if-ne v3, v4, :cond_2

    :goto_1
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    .line 378
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 376
    goto :goto_1
.end method

.method private t()V
    .locals 2

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->clear()V

    .line 385
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u()V

    .line 386
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->v()V

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    if-eq v0, v1, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->A()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1, p0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 390
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Landroid/view/View;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Landroid/widget/ListAdapter;)V

    .line 393
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l()V

    .line 394
    return-void
.end method

.method private u()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 414
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i:Ljava/util/ArrayList;

    .line 419
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 423
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b:Lcom/yelp/android/ui/activities/reviews/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/d;->a(Ljava/util/List;)V

    .line 426
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    .line 427
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->t:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 430
    :cond_2
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->AddReviewPage:Lcom/yelp/android/analytics/iris/IriSource;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/IriSource;Ljava/util/List;)V

    goto :goto_0
.end method

.method private v()V
    .locals 5

    .prologue
    .line 434
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Lcom/yelp/android/util/ErrorType;)V

    .line 443
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c:Lcom/yelp/android/ui/activities/reviews/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/a;->a(Ljava/util/List;)V

    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f07040a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj$b;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 203
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_0

    .line 204
    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 207
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    if-eqz v1, :cond_1

    .line 208
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SearchAddReviewSelect:Lcom/yelp/android/analytics/iris/EventIri;

    .line 209
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->SearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 215
    :goto_0
    const-string/jumbo v3, "id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 219
    :cond_0
    return-void

    .line 211
    :cond_1
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SearchNearbyAddReviewSelect:Lcom/yelp/android/analytics/iris/EventIri;

    .line 212
    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->NearbySearchAddReviewBusiness:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    .line 309
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    .line 310
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->q:Ljava/lang/String;

    .line 311
    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->r:Ljava/lang/String;

    .line 312
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h()V

    .line 313
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    if-eqz p1, :cond_0

    .line 122
    const-string/jumbo v0, "saved_suggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f:Ljava/util/ArrayList;

    .line 123
    const-string/jumbo v0, "saved_nearby"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    .line 124
    const-string/jumbo v0, "saved_requests_completed"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    .line 125
    const-string/jumbo v0, "saved_review_flow"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->n:Z

    .line 126
    const-string/jumbo v0, "saved_search_flow"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    .line 127
    const-string/jumbo v0, "saved_main_error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ErrorType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    .line 128
    const-string/jumbo v0, "saved_search_header"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "saved_search_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, "saved_location_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->q:Ljava/lang/String;

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g()V

    .line 135
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->t()V

    .line 141
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->b(Z)V

    .line 142
    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p_()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    .line 112
    const v1, 0x102000a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a(Landroid/widget/ListView;)V

    .line 114
    :cond_0
    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onDestroy()V

    .line 192
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/ee;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cv;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 197
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onPause()V

    .line 184
    const-string/jumbo v0, "ADD_REVIEW_SUGGESTIONS"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/ee;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 185
    const-string/jumbo v0, "ADD_REVIEW_NEARBY"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cv;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 186
    const-string/jumbo v0, "ADD_REVIEW_SEARCH"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 187
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 147
    const-string/jumbo v0, "ADD_REVIEW_SUGGESTIONS"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/ee;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->v:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ee;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/ee;

    .line 150
    const-string/jumbo v0, "ADD_REVIEW_NEARBY"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cv;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->w:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cv;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cv;

    .line 155
    const-string/jumbo v0, "ADD_REVIEW_SEARCH"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->x:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->u:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 157
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->n:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p_()V

    .line 165
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    const-string/jumbo v0, "saved_suggestions"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 171
    const-string/jumbo v0, "saved_nearby"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 172
    const-string/jumbo v0, "saved_requests_completed"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    const-string/jumbo v0, "saved_review_flow"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    const-string/jumbo v0, "saved_search_flow"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 175
    const-string/jumbo v0, "saved_main_error"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 176
    const-string/jumbo v0, "saved_search_header"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v0, "saved_search_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "saved_location_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public p_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l()V

    .line 224
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->z()V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->clear()V

    .line 228
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p:Ljava/lang/String;

    .line 229
    const v0, 0x7f07040a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->s:Ljava/lang/String;

    .line 230
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    .line 232
    iput v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->j:I

    .line 233
    iput v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->k:I

    .line 234
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->m:Z

    .line 235
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_ERROR:Lcom/yelp/android/util/ErrorType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->l:Lcom/yelp/android/util/ErrorType;

    .line 236
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->n:Z

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/ee;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 239
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->d:Lcom/yelp/android/appdata/webrequests/ee;

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cv;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 241
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->e:Lcom/yelp/android/appdata/webrequests/cv;

    .line 243
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->f:Ljava/util/ArrayList;

    .line 244
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->g:Ljava/util/ArrayList;

    .line 245
    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->i:Ljava/util/ArrayList;

    .line 247
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->j()V

    .line 248
    return-void
.end method

.method public q_()V
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->o:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->z()V

    .line 254
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->h()V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ReviewSuggestionsPageFragment;->p_()V

    goto :goto_0
.end method
