.class Lcom/yelp/android/ui/activities/g;
.super Ljava/lang/Object;
.source "ActivityBadges.java"


# instance fields
.field public a:Lcom/yelp/android/ui/widgets/WebImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const v0, 0x7f0c01d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/g;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 259
    const v0, 0x7f0c00ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/g;->c:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f0c01d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/g;->b:Landroid/widget/TextView;

    .line 261
    return-void
.end method
