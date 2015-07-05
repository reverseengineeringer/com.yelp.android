.class public final Lcom/yelp/android/ui/util/bb;
.super Landroid/support/v7/widget/ce;
.source "MediaAdapter.java"


# instance fields
.field public final j:Landroid/widget/ImageView;

.field public final k:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ce;-><init>(Landroid/view/View;)V

    .line 265
    const v0, 0x7f0c0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/bb;->j:Landroid/widget/ImageView;

    .line 266
    const v0, 0x7f0c045e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/bb;->k:Landroid/widget/ImageView;

    .line 267
    return-void
.end method
