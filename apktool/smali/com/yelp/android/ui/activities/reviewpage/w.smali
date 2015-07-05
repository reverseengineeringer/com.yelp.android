.class final Lcom/yelp/android/ui/activities/reviewpage/w;
.super Ljava/lang/Object;
.source "BusinessReviewHighlightsAdapter.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Lcom/yelp/android/ui/widgets/WebImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const v0, 0x7f0c02f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/w;->a:Landroid/widget/ImageView;

    .line 255
    const v0, 0x7f0c042a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/w;->b:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f0c042b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/w;->c:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0c0429

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/w;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 258
    return-void
.end method
