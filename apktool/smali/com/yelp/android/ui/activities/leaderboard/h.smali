.class public final Lcom/yelp/android/ui/activities/leaderboard/h;
.super Lcom/yelp/android/ui/util/cn;
.source "RoyaltyAdapter.java"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/cn;-><init>(Landroid/view/View;Z)V

    .line 64
    const v0, 0x7f0c03f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/h;->a:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0c03f4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/h;->b:Landroid/widget/TextView;

    .line 66
    return-void
.end method
