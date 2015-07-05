.class Lcom/yelp/android/ui/activities/feed/bb;
.super Ljava/lang/Object;
.source "ReviewFeedViewBinder.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/ba;

.field private b:Lcom/yelp/android/ba/f;

.field private c:Lcom/yelp/android/ba/d;

.field private d:Lcom/yelp/android/ba/i;

.field private final e:Lcom/yelp/android/az/c;

.field private final f:Lcom/yelp/android/az/c;

.field private final g:Lcom/yelp/android/az/c;

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/yelp/android/serializable/ReviewFeedEntry;

.field private final l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/ba;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bb;->a:Lcom/yelp/android/ui/activities/feed/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/yelp/android/ui/activities/feed/bc;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/bc;-><init>(Lcom/yelp/android/ui/activities/feed/bb;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->l:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v0, Lcom/yelp/android/ba/f;

    const v1, 0x7f0c033c

    invoke-direct {v0, p2, p3, v1}, Lcom/yelp/android/ba/f;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->b:Lcom/yelp/android/ba/f;

    .line 62
    new-instance v0, Lcom/yelp/android/ba/d;

    const v1, 0x7f0c032a

    invoke-direct {v0, p3, v1}, Lcom/yelp/android/ba/d;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->c:Lcom/yelp/android/ba/d;

    .line 63
    new-instance v0, Lcom/yelp/android/ba/i;

    const v1, 0x7f0c0333

    invoke-direct {v0, p3, v1}, Lcom/yelp/android/ba/i;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->d:Lcom/yelp/android/ba/i;

    .line 64
    new-instance v0, Lcom/yelp/android/az/c;

    const v2, 0x7f0c00be

    const v3, 0x7f0a0117

    const v4, 0x7f020400

    iget-object v5, p0, Lcom/yelp/android/ui/activities/feed/bb;->l:Landroid/view/View$OnClickListener;

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/az/c;-><init>(Landroid/view/View;IIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->e:Lcom/yelp/android/az/c;

    .line 66
    new-instance v0, Lcom/yelp/android/az/c;

    const v2, 0x7f0c00bf

    const v3, 0x7f0a0110

    const v4, 0x7f020204

    iget-object v5, p0, Lcom/yelp/android/ui/activities/feed/bb;->l:Landroid/view/View$OnClickListener;

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/az/c;-><init>(Landroid/view/View;IIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->f:Lcom/yelp/android/az/c;

    .line 68
    new-instance v0, Lcom/yelp/android/az/c;

    const v2, 0x7f0c00c0

    const v3, 0x7f0a010f

    const v4, 0x7f020169

    iget-object v5, p0, Lcom/yelp/android/ui/activities/feed/bb;->l:Landroid/view/View$OnClickListener;

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/az/c;-><init>(Landroid/view/View;IIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->g:Lcom/yelp/android/az/c;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/bb;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->h:I

    return v0
.end method

.method private a(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 100
    if-lez p3, :cond_0

    .line 101
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 103
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/bb;Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/bb;->a(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/bb;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->h:I

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/bb;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->h:I

    return v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/feed/bb;)Lcom/yelp/android/az/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->e:Lcom/yelp/android/az/c;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/feed/bb;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->i:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->i:I

    return v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/feed/bb;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->i:I

    return v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/feed/bb;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->i:I

    return v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/feed/bb;)Lcom/yelp/android/az/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->f:Lcom/yelp/android/az/c;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/feed/bb;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->j:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->j:I

    return v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/feed/bb;)I
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->j:I

    return v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/feed/bb;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->j:I

    return v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/feed/bb;)Lcom/yelp/android/az/c;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->g:Lcom/yelp/android/az/c;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/feed/bb;)Lcom/yelp/android/serializable/ReviewFeedEntry;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->k:Lcom/yelp/android/serializable/ReviewFeedEntry;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->k:Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getFeedback()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getUsefulVotes()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->h:I

    .line 83
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getFunnyVotes()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->i:I

    .line 84
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getCoolVotes()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->j:I

    .line 85
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->e:Lcom/yelp/android/az/c;

    const v2, 0x7f070653

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getUsefulVotes()I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lcom/yelp/android/ui/activities/feed/bb;->a(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/az/c;->a(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->f:Lcom/yelp/android/az/c;

    const v2, 0x7f0702b5

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getFunnyVotes()I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Lcom/yelp/android/ui/activities/feed/bb;->a(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/az/c;->a(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->g:Lcom/yelp/android/az/c;

    const v2, 0x7f0701d8

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getCoolVotes()I

    move-result v0

    invoke-direct {p0, p1, v2, v0}, Lcom/yelp/android/ui/activities/feed/bb;->a(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/az/c;->a(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->k:Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserFeedback()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->e:Lcom/yelp/android/az/c;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->isVotedUseful()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/az/c;->a(Z)V

    .line 94
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->f:Lcom/yelp/android/az/c;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->isVotedFunny()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/az/c;->a(Z)V

    .line 95
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->g:Lcom/yelp/android/az/c;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->isVotedCool()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/az/c;->a(Z)V

    .line 96
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/ReviewFeedEntry;ILandroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bb;->k:Lcom/yelp/android/serializable/ReviewFeedEntry;

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->b:Lcom/yelp/android/ba/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ba/f;->a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->c:Lcom/yelp/android/ba/d;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/ba/d;->a(Lcom/yelp/android/serializable/FeedEntry;Landroid/content/Context;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bb;->d:Lcom/yelp/android/ba/i;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bb;->k:Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-virtual {v0, v1, p3}, Lcom/yelp/android/ba/i;->a(Lcom/yelp/android/serializable/ReviewFeedEntry;Landroid/content/Context;)V

    .line 77
    invoke-virtual {p0, p3}, Lcom/yelp/android/ui/activities/feed/bb;->a(Landroid/content/Context;)V

    .line 78
    return-void
.end method
