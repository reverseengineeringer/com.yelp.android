.class Lcom/yelp/android/ui/activities/feed/bi;
.super Ljava/lang/Object;
.source "TipFeedViewBinder.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/bg;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/CompoundButton;

.field private d:Lcom/yelp/android/ba/f;

.field private e:Lcom/yelp/android/ba/d;

.field private f:Lcom/yelp/android/ba/j;

.field private g:I

.field private h:Lcom/yelp/android/serializable/TipFeedEntry;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/bg;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 60
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bi;->a:Lcom/yelp/android/ui/activities/feed/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/yelp/android/ba/f;

    const v1, 0x7f0c033c

    invoke-direct {v0, p2, p3, v1}, Lcom/yelp/android/ba/f;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->d:Lcom/yelp/android/ba/f;

    .line 62
    new-instance v0, Lcom/yelp/android/ba/d;

    const v1, 0x7f0c032a

    invoke-direct {v0, p3, v1}, Lcom/yelp/android/ba/d;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->e:Lcom/yelp/android/ba/d;

    .line 63
    new-instance v0, Lcom/yelp/android/ba/j;

    const v1, 0x7f0c0337

    invoke-direct {v0, p3, v1}, Lcom/yelp/android/ba/j;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->f:Lcom/yelp/android/ba/j;

    .line 64
    const v0, 0x7f0c0339

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 65
    const v0, 0x7f0c033a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->b:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0c033b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->c:Landroid/widget/CompoundButton;

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->c:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/bj;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/feed/bj;-><init>(Lcom/yelp/android/ui/activities/feed/bi;Lcom/yelp/android/ui/activities/feed/bg;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 85
    sget v1, Lcom/yelp/android/ui/util/cw;->f:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 86
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 88
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 90
    sget v2, Lcom/yelp/android/ui/util/cw;->f:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 93
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/bi;->c:Landroid/widget/CompoundButton;

    new-instance v3, Lcom/yelp/android/ui/activities/feed/bk;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/feed/bk;-><init>(Lcom/yelp/android/ui/activities/feed/bi;Lcom/yelp/android/ui/activities/feed/bg;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/bi;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->g:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/bi;I)I
    .locals 0

    .prologue
    .line 50
    iput p1, p0, Lcom/yelp/android/ui/activities/feed/bi;->g:I

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/bi;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/bi;)Lcom/yelp/android/serializable/TipFeedEntry;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->h:Lcom/yelp/android/serializable/TipFeedEntry;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/feed/bi;)Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->c:Landroid/widget/CompoundButton;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->h:Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TipFeedEntry;->getTip()Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->getPositiveFeedbackCount()I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/feed/bi;->g:I

    .line 125
    iget v1, p0, Lcom/yelp/android/ui/activities/feed/bi;->g:I

    if-lez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bi;->b:Landroid/widget/TextView;

    const v2, 0x7f0e003c

    iget v3, p0, Lcom/yelp/android/ui/activities/feed/bi;->g:I

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1, v2, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bi;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bi;->c:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 133
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bi;->b:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/TipFeedEntry;ILandroid/content/Context;)V
    .locals 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bi;->h:Lcom/yelp/android/serializable/TipFeedEntry;

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->d:Lcom/yelp/android/ba/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ba/f;->a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->e:Lcom/yelp/android/ba/d;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/ba/d;->a(Lcom/yelp/android/serializable/FeedEntry;Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bi;->f:Lcom/yelp/android/ba/j;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bi;->h:Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-virtual {v0, v1, p3}, Lcom/yelp/android/ba/j;->a(Lcom/yelp/android/serializable/TipFeedEntry;Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0, p3}, Lcom/yelp/android/ui/activities/feed/bi;->a(Landroid/content/Context;)V

    .line 120
    return-void
.end method
