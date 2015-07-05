.class public final Lcom/yelp/android/ui/activities/leaderboard/c;
.super Lcom/yelp/android/ui/util/cn;
.source "CheckinRankAdapter.java"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/cn;-><init>(Landroid/view/View;Z)V

    .line 170
    const v0, 0x7f0c03f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/c;->a:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0c03f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/leaderboard/c;->b:Landroid/widget/TextView;

    .line 172
    return-void
.end method
