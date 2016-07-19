.class public abstract Lcom/yelp/android/cg/a;
.super Ljava/lang/Object;
.source "BaseBusinessFeedViewHolder.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ToggleButton;

.field private final h:Lcom/yelp/android/ui/util/t;

.field private final i:Lcom/yelp/android/ui/activities/feed/FeedType;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cg/a;->f:Landroid/view/View;

    .line 43
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cg/a;->h:Lcom/yelp/android/ui/util/t;

    .line 44
    const v0, 0x7f0f0158

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/cg/a;->a:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f0f03c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cg/a;->b:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0f03ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/cg/a;->c:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f0f03cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cg/a;->d:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0f03cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cg/a;->e:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0f03c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/cg/a;->g:Landroid/widget/ToggleButton;

    .line 50
    iput-object p1, p0, Lcom/yelp/android/cg/a;->i:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/cg/a;)Lcom/yelp/android/ui/activities/feed/FeedType;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/cg/a;->i:Lcom/yelp/android/ui/activities/feed/FeedType;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
.end method

.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 59
    iget-object v0, p0, Lcom/yelp/android/cg/a;->h:Lcom/yelp/android/ui/util/t;

    invoke-virtual {p0, v1}, Lcom/yelp/android/cg/a;->a(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v2, 0x7f0200bb

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/cg/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/cg/a;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yelp/android/cg/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/cg/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    :goto_0
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    if-gez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/yelp/android/cg/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/cg/a;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aR()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->ay()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/cg/a;->f:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/cg/a$1;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/yelp/android/cg/a$1;-><init>(Lcom/yelp/android/cg/a;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/cg/a;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/cg/a;->g:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/yelp/android/cg/a$2;

    invoke-direct {v2, p0, p3, p1, v1}, Lcom/yelp/android/cg/a$2;-><init>(Lcom/yelp/android/cg/a;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/cg/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/cg/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/cg/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/cg/a;->d:Landroid/widget/TextView;

    const v2, 0x7f080025

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p2, v2, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070414

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aR()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->ay()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
