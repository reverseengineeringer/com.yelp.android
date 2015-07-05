.class public Lcom/yelp/android/ui/activities/dk;
.super Ljava/lang/Object;
.source "ActivityRankedBusinesses.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Lcom/yelp/android/ui/widgets/WebImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const v0, 0x7f0c00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/dk;->a:Landroid/widget/TextView;

    .line 332
    const v0, 0x7f0c00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/dk;->b:Landroid/widget/TextView;

    .line 333
    const v0, 0x7f0c00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/dk;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 334
    return-void
.end method
