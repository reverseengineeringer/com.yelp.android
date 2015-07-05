.class public Lcom/yelp/android/ui/activities/feed/FeedFragment;
.super Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;
.source "FeedFragment.java"


# static fields
.field private static final a:I


# instance fields
.field private b:Lcom/yelp/android/ui/activities/feed/FeedType;

.field private c:Lcom/yelp/android/ui/activities/feed/aq;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private g:Lcom/yelp/android/appdata/webrequests/ce;

.field private h:Lcom/yelp/android/appdata/webrequests/gx;

.field private i:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

.field private j:Lcom/yelp/android/appdata/webrequests/fq;

.field private k:Lcom/yelp/android/ui/widgets/SpannedTextView;

.field private l:Lcom/yelp/android/ui/widgets/SpannedTextView;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Lcom/bumptech/glide/j;

.field private final q:Lcom/yelp/android/av/i;

.field private final r:Lcom/yelp/android/av/i;

.field private final s:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/ui/activities/feed/FeedRequestResult;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/yelp/android/ui/activities/feed/bd;

.field private final u:Lcom/yelp/android/ui/activities/feed/bh;

.field private final v:Lcom/yelp/android/ui/panels/aa;

.field private final w:Lcom/yelp/android/ui/panels/aa;

.field private final x:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Landroid/widget/AbsListView$RecyclerListener;

.field private final z:Landroid/support/v7/widget/bt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/yelp/android/appdata/ao;->c:I

    sput v0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;-><init>()V

    .line 112
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m:Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/lang/String;

    .line 118
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Z

    .line 523
    new-instance v0, Lcom/yelp/android/ui/activities/feed/ap;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/ap;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->q:Lcom/yelp/android/av/i;

    .line 568
    new-instance v0, Lcom/yelp/android/ui/activities/feed/y;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/y;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r:Lcom/yelp/android/av/i;

    .line 598
    new-instance v0, Lcom/yelp/android/ui/activities/feed/z;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/z;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->s:Lcom/yelp/android/appdata/webrequests/j;

    .line 657
    new-instance v0, Lcom/yelp/android/ui/activities/feed/aa;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/aa;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->t:Lcom/yelp/android/ui/activities/feed/bd;

    .line 681
    new-instance v0, Lcom/yelp/android/ui/activities/feed/ab;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/ab;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u:Lcom/yelp/android/ui/activities/feed/bh;

    .line 694
    new-instance v0, Lcom/yelp/android/ui/activities/feed/ac;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/ac;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->v:Lcom/yelp/android/ui/panels/aa;

    .line 703
    new-instance v0, Lcom/yelp/android/ui/activities/feed/ad;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/ad;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Lcom/yelp/android/ui/panels/aa;

    .line 712
    new-instance v0, Lcom/yelp/android/ui/activities/feed/ae;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/ae;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Lcom/yelp/android/appdata/webrequests/m;

    .line 735
    new-instance v0, Lcom/yelp/android/ui/activities/feed/af;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/af;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y:Landroid/widget/AbsListView$RecyclerListener;

    .line 755
    new-instance v0, Lcom/yelp/android/ui/activities/feed/ag;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/ag;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/v7/widget/bt;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;)Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->i:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Lcom/yelp/android/appdata/webrequests/fq;)Lcom/yelp/android/appdata/webrequests/fq;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/fq;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Lcom/yelp/android/appdata/webrequests/gx;)Lcom/yelp/android/appdata/webrequests/gx;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/aq;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/LayoutInflater;)V
    .locals 3

    .prologue
    .line 370
    const v0, 0x7f0300a3

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 374
    new-instance v0, Lcom/yelp/android/ui/activities/feed/x;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/x;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 383
    const v0, 0x7f0c0299

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->k:Lcom/yelp/android/ui/widgets/SpannedTextView;

    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->k:Lcom/yelp/android/ui/widgets/SpannedTextView;

    new-instance v2, Lcom/yelp/android/ui/activities/feed/ai;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/feed/ai;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const v0, 0x7f0c029b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/ui/widgets/SpannedTextView;

    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/ui/widgets/SpannedTextView;

    new-instance v2, Lcom/yelp/android/ui/activities/feed/aj;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/feed/aj;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->f()V

    .line 399
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    .line 400
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z
    .locals 0

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/aa;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->v:Lcom/yelp/android/ui/panels/aa;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/m;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Lcom/yelp/android/appdata/webrequests/m;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/gx;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const v5, 0x7f020083

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 403
    invoke-static {}, Lcom/yelp/android/appdata/ab;->a()Lcom/yelp/android/appdata/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ab;->f()I

    move-result v2

    .line 406
    if-lez v2, :cond_1

    .line 407
    new-instance v0, Lcom/yelp/android/bd/c;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, v5, v2}, Lcom/yelp/android/bd/c;-><init>(Landroid/content/Context;II)V

    .line 409
    sget v2, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/bd/c;->a(F)V

    .line 410
    invoke-virtual {v0}, Lcom/yelp/android/bd/c;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/yelp/android/bd/c;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Lcom/yelp/android/bd/c;->setBounds(IIII)V

    .line 413
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->k:Lcom/yelp/android/ui/widgets/SpannedTextView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->k:Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {v3}, Lcom/yelp/android/ui/widgets/SpannedTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1, v0, v1}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 416
    invoke-static {}, Lcom/yelp/android/appdata/ab;->a()Lcom/yelp/android/appdata/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ab;->e()I

    move-result v2

    .line 419
    if-lez v2, :cond_0

    .line 420
    new-instance v0, Lcom/yelp/android/bd/c;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3, v5, v2}, Lcom/yelp/android/bd/c;-><init>(Landroid/content/Context;II)V

    .line 421
    sget v2, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/bd/c;->a(F)V

    .line 422
    invoke-virtual {v0}, Lcom/yelp/android/bd/c;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/yelp/android/bd/c;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Lcom/yelp/android/bd/c;->setBounds(IIII)V

    .line 425
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/ui/widgets/SpannedTextView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {v3}, Lcom/yelp/android/ui/widgets/SpannedTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v1, v0, v1}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 427
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 430
    const-string/jumbo v0, "com.yelp.android.review.state.update"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/ak;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/ak;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 473
    const-string/jumbo v0, "com.yelp.android.tips.update"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/al;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/al;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 485
    const-string/jumbo v0, "com.yelp.android.tips.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/am;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/am;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 495
    const-string/jumbo v0, "com.yelp.android.media.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/an;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/an;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 510
    const-string/jumbo v0, "com.yelp.android.review.update"

    new-instance v1, Lcom/yelp/android/ui/activities/feed/ao;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/feed/ao;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 521
    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/FeedType;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b:Lcom/yelp/android/ui/activities/feed/FeedType;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/av/i;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->q:Lcom/yelp/android/av/i;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->i:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/av/i;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r:Lcom/yelp/android/av/i;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/fq;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/fq;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/aa;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Lcom/yelp/android/ui/panels/aa;

    return-object v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 220
    instance-of v0, v1, Lcom/yelp/android/serializable/FeedEntry;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 221
    check-cast v0, Lcom/yelp/android/serializable/FeedEntry;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/serializable/FeedEntry;)V

    .line 223
    :cond_2
    instance-of v0, v1, Lcom/yelp/android/serializable/ReviewFeedEntry;

    if-eqz v0, :cond_3

    .line 227
    check-cast v1, Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getIntentForClick(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x416

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 229
    :cond_3
    instance-of v0, v1, Lcom/yelp/android/serializable/TipFeedEntry;

    if-eqz v0, :cond_4

    .line 230
    check-cast v1, Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/TipFeedEntry;->getIntentForClick(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    :cond_4
    instance-of v0, v1, Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    if-eqz v0, :cond_5

    .line 232
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v1, Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 234
    :cond_5
    instance-of v0, v1, Lcom/yelp/android/serializable/FeedEntry;

    if-eqz v0, :cond_0

    .line 235
    check-cast v1, Lcom/yelp/android/serializable/FeedEntry;

    .line 236
    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedEntry;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    if-nez v0, :cond_6

    .line 237
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedEntry;->getBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 240
    :cond_6
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedEntry;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/FeedEntry;)V
    .locals 3

    .prologue
    .line 309
    instance-of v0, p1, Lcom/yelp/android/serializable/ReviewFeedEntry;

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/FeedEntry;->setupIriParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 314
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 3

    .prologue
    .line 286
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 287
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 288
    new-instance v0, Lcom/yelp/android/ui/activities/feed/aq;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/v;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/feed/v;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ui/activities/feed/aq;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ui/activities/feed/at;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    .line 290
    new-instance v0, Lcom/yelp/android/ui/activities/feed/ba;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->t:Lcom/yelp/android/ui/activities/feed/bd;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/feed/ba;-><init>(Lcom/yelp/android/ui/activities/feed/bd;)V

    .line 292
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    const-class v2, Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V

    .line 294
    new-instance v0, Lcom/yelp/android/ui/activities/feed/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/v7/widget/bt;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->p:Lcom/bumptech/glide/j;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/d;-><init>(Landroid/support/v7/widget/bt;Lcom/bumptech/glide/j;)V

    .line 296
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    const-class v2, Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V

    .line 298
    new-instance v0, Lcom/yelp/android/ui/activities/feed/i;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/i;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    const-class v2, Lcom/yelp/android/serializable/BookmarkFeedEntry;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V

    .line 301
    new-instance v0, Lcom/yelp/android/ui/activities/feed/bg;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u:Lcom/yelp/android/ui/activities/feed/bh;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/feed/bg;-><init>(Lcom/yelp/android/ui/activities/feed/bh;)V

    .line 302
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    const-class v2, Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V

    .line 303
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    const-class v2, Lcom/yelp/android/ui/activities/feed/UserIdOverridenTipFeedEntry;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Landroid/widget/ListAdapter;)V

    .line 306
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/util/Collection;)V

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(I)V

    .line 329
    return-void
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 209
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m:Z

    .line 210
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b()V

    .line 211
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Z

    if-nez v0, :cond_0

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Z

    .line 277
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->b()V

    .line 278
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 279
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ce;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b:Lcom/yelp/android/ui/activities/feed/FeedType;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->s:Lcom/yelp/android/appdata/webrequests/j;

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/yelp/android/appdata/webrequests/ce;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/appdata/webrequests/j;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g:Lcom/yelp/android/appdata/webrequests/ce;

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g:Lcom/yelp/android/appdata/webrequests/ce;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ce;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 283
    :cond_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Ljava/util/ArrayList;

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/aq;->clear()V

    .line 334
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/util/List;)V

    .line 335
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public d()Lcom/yelp/android/ui/activities/feed/aq;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    return-object v0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/aq;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 344
    const/4 v0, 0x0

    .line 346
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/feed/at;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/feed/at;->a()I

    move-result v1

    add-int/2addr v1, v2

    .line 348
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/at;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/feed/at;->b()V

    move v2, v1

    .line 349
    goto :goto_0

    .line 350
    :cond_0
    if-lez v2, :cond_1

    .line 351
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 352
    const-string/jumbo v1, "seen_item_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string/jumbo v1, "total_media_count"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 355
    const-string/jumbo v1, "user_did_scroll"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->h()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->i()V

    .line 360
    :goto_1
    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 362
    :cond_1
    return-void

    .line 358
    :cond_2
    const-string/jumbo v1, "user_did_scroll"

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Ljava/util/ArrayList;

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const-string/jumbo v0, "all_entries"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 136
    const-string/jumbo v0, "feed_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/FeedType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 137
    const-string/jumbo v0, "has_user_scrolled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e:Z

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(I)V

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g()V

    .line 142
    invoke-static {p0}, Lcom/bumptech/glide/h;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->p:Lcom/bumptech/glide/j;

    .line 145
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->FRIEND:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a_()V

    .line 153
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f01004a

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;I)I

    move-result v0

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setClipToPadding(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setPadding(IIII)V

    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y:Landroid/widget/AbsListView$RecyclerListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackgroundColor(I)V

    .line 159
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Landroid/view/LayoutInflater;)V

    .line 161
    if-eqz p1, :cond_1

    .line 162
    const-string/jumbo v0, "next_page_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/lang/String;

    .line 164
    :cond_1
    return-void

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Ljava/util/List;)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 248
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 249
    sparse-switch p1, :sswitch_data_0

    .line 264
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 265
    return-void

    .line 253
    :sswitch_0
    invoke-static {}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->popData()Ljava/lang/Object;

    goto :goto_0

    .line 256
    :sswitch_1
    invoke-static {p3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_0

    .line 258
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getFeedUpdate(Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x416 -> :sswitch_1
        0x422 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onDetach()V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g:Lcom/yelp/android/appdata/webrequests/ce;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->i:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/fq;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 202
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onPause()V

    .line 179
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e:Z

    .line 180
    const-string/jumbo v0, "feed"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g:Lcom/yelp/android/appdata/webrequests/ce;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 181
    const-string/jumbo v0, "user"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 182
    const-string/jumbo v0, "review_vote"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->i:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 183
    const-string/jumbo v0, "tip_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/fq;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 184
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onResume()V

    .line 169
    const-string/jumbo v0, "feed"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g:Lcom/yelp/android/appdata/webrequests/ce;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->s:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    .line 170
    const-string/jumbo v0, "user"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h:Lcom/yelp/android/appdata/webrequests/gx;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 171
    const-string/jumbo v0, "review_vote"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->i:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->q:Lcom/yelp/android/av/i;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 172
    const-string/jumbo v0, "tip_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/fq;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r:Lcom/yelp/android/av/i;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 173
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->f()V

    .line 174
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpSwipeRefreshListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    const-string/jumbo v0, "all_entries"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 190
    const-string/jumbo v0, "feed_type"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 191
    const-string/jumbo v0, "has_user_scrolled"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    const-string/jumbo v0, "next_page_index"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method
