.class Lcom/yelp/android/ui/activities/gallery/j;
.super Ljava/lang/Object;
.source "ContributionButtonAdapter.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const v0, 0x7f0c02e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/j;->a:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f0c02e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/j;->b:Landroid/widget/RelativeLayout;

    .line 100
    return-void
.end method
