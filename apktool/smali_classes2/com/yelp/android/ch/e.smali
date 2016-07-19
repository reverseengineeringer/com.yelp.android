.class public Lcom/yelp/android/ch/e;
.super Ljava/lang/Object;
.source "FeedUserReviewViewHolder.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/view/View;

.field private final i:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

.field private final j:Lcom/yelp/android/ui/widgets/AwardBanner;

.field private final k:Lcom/yelp/android/ui/widgets/AwardBanner;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    const v1, 0x7f0f03f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ch/e;->f:Landroid/widget/TextView;

    .line 45
    iget-object v0, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    const v1, 0x7f0f03f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ch/e;->g:Landroid/widget/ImageView;

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    const v1, 0x7f0f03cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ch/e;->b:Landroid/widget/ImageView;

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    const v1, 0x7f0f02e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ch/e;->c:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    const v1, 0x7f0f03d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ch/e;->d:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    const v1, 0x7f0f03f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ch/e;->e:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    const v1, 0x7f0f0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ch/e;->h:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    const v1, 0x7f0f03c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    iput-object v0, p0, Lcom/yelp/android/ch/e;->i:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    const v1, 0x7f0f03f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/AwardBanner;

    iput-object v0, p0, Lcom/yelp/android/ch/e;->j:Lcom/yelp/android/ui/widgets/AwardBanner;

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    const v1, 0x7f0f03f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/AwardBanner;

    iput-object v0, p0, Lcom/yelp/android/ch/e;->k:Lcom/yelp/android/ui/widgets/AwardBanner;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 9

    .prologue
    const/16 v5, 0x20

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 61
    const-class v0, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedReviewActivity;->d()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v4

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ch/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->C()I

    move-result v1

    int-to-double v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ch/e;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->e()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v8, p0, Lcom/yelp/android/ch/e;->a:Landroid/view/View;

    new-instance v0, Lcom/yelp/android/ch/e$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ch/e$1;-><init>(Lcom/yelp/android/ch/e;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/serializable/YelpBusinessReview;Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->j()I

    move-result v0

    if-lez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ch/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ch/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ch/e;->d:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :goto_0
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->z()I

    move-result v0

    .line 106
    if-lez v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/yelp/android/ch/e;->f:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ch/e;->g:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->n()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ch/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ch/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ch/e;->i:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    new-instance v1, Lcom/yelp/android/ch/e$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/yelp/android/ch/e$2;-><init>(Lcom/yelp/android/ch/e;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setHotAndNewClickListener(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;)V

    .line 128
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ch/e;->j:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ch/e;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ch/e;->i:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ch/e;->k:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    .line 166
    :goto_2
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ch/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ch/e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ch/e;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ch/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 135
    :cond_2
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->V()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ch/e;->j:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ch/e;->k:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    .line 142
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->D()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ch/e;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ch/e;->i:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setVisibility(I)V

    goto :goto_2

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ch/e;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/yelp/android/ch/e;->i:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    :goto_3
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v0, v7

    goto :goto_3

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ch/e;->j:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->V()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const v1, 0x20004

    invoke-static {p2, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/AwardBanner;->setRightText(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ch/e;->j:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ch/e;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ch/e;->i:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ch/e;->k:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    goto :goto_2
.end method
