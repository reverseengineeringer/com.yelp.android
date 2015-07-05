.class final Lcom/yelp/android/ui/activities/events/az;
.super Ljava/lang/Object;
.source "NearbyEventAdapter.java"


# instance fields
.field a:Lcom/yelp/android/ui/widgets/RoundedImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const v0, 0x7f0c0311

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/az;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 75
    const v0, 0x7f0c0312

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/az;->b:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0c0314

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/az;->c:Landroid/widget/TextView;

    .line 77
    return-void
.end method
