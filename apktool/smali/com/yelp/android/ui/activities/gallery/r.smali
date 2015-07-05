.class Lcom/yelp/android/ui/activities/gallery/r;
.super Ljava/lang/Object;
.source "MediaBucketAdapter.java"


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/r;->a:Landroid/widget/TextView;

    .line 123
    return-void
.end method
