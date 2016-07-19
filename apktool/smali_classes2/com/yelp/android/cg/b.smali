.class public abstract Lcom/yelp/android/cg/b;
.super Lcom/yelp/android/ui/activities/feed/d;
.source "BaseFeedViewHolder.java"


# instance fields
.field public f:Landroid/widget/TextView;

.field protected g:Lcom/yelp/android/ui/widgets/WebImageView;

.field protected h:Landroid/widget/ImageView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;DIILjava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 32
    iget-object v0, p0, Lcom/yelp/android/cg/b;->g:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WebImageView;->reset()V

    .line 33
    iget-object v0, p0, Lcom/yelp/android/cg/b;->g:Lcom/yelp/android/ui/widgets/WebImageView;

    const v1, 0x7f0200bb

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 35
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/yelp/android/cg/b;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/yelp/android/cg/b;->h:Landroid/widget/ImageView;

    invoke-static {v0, p2, p3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 43
    :goto_0
    if-lez p4, :cond_1

    .line 44
    iget-object v0, p0, Lcom/yelp/android/cg/b;->i:Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/yelp/android/cg/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    :goto_1
    if-lez p5, :cond_2

    .line 51
    iget-object v0, p0, Lcom/yelp/android/cg/b;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/cg/b;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/cg/b;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080025

    invoke-static {v1, v2, p5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/cg/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/cg/b;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/yelp/android/cg/b;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/cg/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/cg/b;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
