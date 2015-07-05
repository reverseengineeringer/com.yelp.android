.class public Lcom/yelp/android/ba/i;
.super Ljava/lang/Object;
.source "FeedUserReviewViewHolder.java"


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 29
    const v0, 0x7f0c0296

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ba/i;->e:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0c0335

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ba/i;->f:Landroid/widget/ImageView;

    .line 31
    const v0, 0x7f0c0334

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ba/i;->a:Landroid/widget/ImageView;

    .line 32
    const v0, 0x7f0c0298

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ba/i;->b:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f0c0297

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ba/i;->c:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f0c0336

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ba/i;->d:Landroid/widget/ImageView;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/ReviewFeedEntry;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/yelp/android/ba/i;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getRating()F

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/ImageView;F)V

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ba/i;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getText()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getPhotoCount()I

    move-result v0

    .line 44
    if-lez v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/yelp/android/ba/i;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v1, p0, Lcom/yelp/android/ba/i;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object v1, p0, Lcom/yelp/android/ba/i;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserCheckInCount()I

    move-result v0

    .line 54
    if-lez v0, :cond_1

    .line 55
    iget-object v1, p0, Lcom/yelp/android/ba/i;->e:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ba/i;->f:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserLocationRank()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ba/i;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ba/i;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    :goto_1
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ba/i;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ba/i;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ba/i;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ba/i;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
