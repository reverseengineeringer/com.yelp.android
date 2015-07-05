.class Lcom/yelp/android/ui/activities/businesspage/s;
.super Ljava/lang/Object;
.source "BusinessListButtonAdapter.java"


# instance fields
.field final a:Lcom/yelp/android/ui/widgets/WebImageView;

.field final b:Landroid/widget/TextView;

.field final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const v0, 0x7f0c01ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/s;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 213
    const v0, 0x7f0c01f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/s;->b:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0c01f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    .line 215
    return-void
.end method
