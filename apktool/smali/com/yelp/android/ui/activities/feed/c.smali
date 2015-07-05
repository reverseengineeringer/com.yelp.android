.class public abstract Lcom/yelp/android/ui/activities/feed/c;
.super Lcom/yelp/android/ui/activities/feed/av;
.source "BaseFeedViewHolder.java"


# instance fields
.field public a:Lcom/yelp/android/ui/widgets/WebImageView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:I

.field protected g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/av;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/feed/av;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;ILcom/yelp/android/serializable/FeedEntry;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/av;->a(Landroid/content/Context;ILcom/yelp/android/serializable/FeedEntry;)V

    return-void
.end method

.method public a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V
    .locals 6

    .prologue
    .line 69
    iput p2, p0, Lcom/yelp/android/ui/activities/feed/c;->f:I

    .line 70
    invoke-virtual {p0, p3, p2, p1}, Lcom/yelp/android/ui/activities/feed/c;->a(Landroid/content/Context;ILcom/yelp/android/serializable/FeedEntry;)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->u:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/FeedEntry;->getPhotoURL(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedEntry;->getRating()F

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedEntry;->getPhotoCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedEntry;->getReviewCount()I

    move-result v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedEntry;->getInfoString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/feed/c;->a(Ljava/lang/String;FIILjava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedEntry;->getTextMaxLineCount()I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/c;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 75
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->e:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;FIILjava/lang/CharSequence;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WebImageView;->reset()V

    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    const v1, 0x7f020090

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 36
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->b:Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/ImageView;F)V

    .line 44
    :goto_0
    if-lez p3, :cond_2

    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/c;->t:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e001d

    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v1, v2, p3, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :goto_1
    const/4 v0, -0x1

    if-eq p4, v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0022

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, p4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/c;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
