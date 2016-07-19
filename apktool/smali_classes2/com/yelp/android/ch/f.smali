.class public Lcom/yelp/android/ch/f;
.super Lcom/yelp/android/cg/b;
.source "FeedViewHolder.java"


# instance fields
.field public k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/cg/b;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 18
    const v0, 0x7f0f041f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ch/f;->g:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 19
    const v0, 0x7f0f0422

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ch/f;->h:Landroid/widget/ImageView;

    .line 20
    const v0, 0x7f0f0423

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ch/f;->i:Landroid/widget/TextView;

    .line 21
    const v0, 0x7f0f03cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ch/f;->j:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f0f0426

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ch/f;->f:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f0f0421

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ch/f;->k:Landroid/widget/TextView;

    .line 24
    return-void
.end method
