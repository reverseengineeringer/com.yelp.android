.class public abstract Lcom/yelp/android/az/a;
.super Ljava/lang/Object;
.source "BaseBusinessFeedViewHolder.java"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/view/View;

.field private final f:Lcom/bumptech/glide/j;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/az/a;->e:Landroid/view/View;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/az/a;->f:Lcom/bumptech/glide/j;

    .line 41
    const v0, 0x7f0c0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/az/a;->a:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0c032b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/az/a;->b:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0c032c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/az/a;->c:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f0c032d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/az/a;->d:Landroid/widget/TextView;

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;FI)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/yelp/android/az/a;->f:Lcom/bumptech/glide/j;

    invoke-virtual {p0, p2}, Lcom/yelp/android/az/a;->a(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    const v1, 0x7f020090

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->b(I)Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/az/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/az/a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yelp/android/az/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/az/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :goto_0
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/yelp/android/az/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    :goto_1
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/az/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/az/a;->c:Landroid/widget/ImageView;

    invoke-static {v0, p3}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/ImageView;F)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/az/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/az/a;->d:Landroid/widget/TextView;

    const v1, 0x7f0e0022

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, v1, p4, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/serializable/FeedEntry;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedEntry;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedEntry;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedEntry;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v2

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/yelp/android/az/a;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;FI)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/az/a;->e:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/az/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/yelp/android/az/b;-><init>(Lcom/yelp/android/az/a;Lcom/yelp/android/serializable/FeedEntry;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method
