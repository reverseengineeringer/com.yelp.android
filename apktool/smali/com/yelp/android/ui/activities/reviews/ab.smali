.class public final Lcom/yelp/android/ui/activities/reviews/ab;
.super Ljava/lang/Object;
.source "ReviewAdapterTiny.java"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Lcom/yelp/android/ui/widgets/WebImageView;

.field public final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const v0, 0x7f0c036f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ab;->a:Landroid/widget/ImageView;

    .line 108
    const v0, 0x7f0c0370

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ab;->b:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0c036e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ab;->c:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0c036d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ab;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 111
    const v0, 0x7f0c0372

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ab;->e:Landroid/widget/TextView;

    .line 112
    return-void
.end method
