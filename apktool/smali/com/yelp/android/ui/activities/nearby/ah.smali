.class public final Lcom/yelp/android/ui/activities/nearby/ah;
.super Ljava/lang/Object;
.source "NearbySearchSuggestAdapter.java"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const v0, 0x7f0c040d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ah;->a:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0c0083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ah;->b:Landroid/widget/ImageView;

    .line 79
    return-void
.end method
