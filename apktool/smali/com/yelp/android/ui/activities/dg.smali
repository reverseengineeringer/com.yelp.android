.class Lcom/yelp/android/ui/activities/dg;
.super Ljava/lang/Object;
.source "ActivityPhotoFeedbackAlerts.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/yelp/android/ui/widgets/WebImageView;

.field c:Lcom/yelp/android/ui/widgets/WebImageView;

.field final synthetic d:Lcom/yelp/android/ui/activities/de;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/de;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yelp/android/ui/activities/dg;->d:Lcom/yelp/android/ui/activities/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const v0, 0x7f0c0419

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/dg;->a:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0c0246

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/dg;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 79
    const v0, 0x7f0c028f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/dg;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 80
    return-void
.end method
