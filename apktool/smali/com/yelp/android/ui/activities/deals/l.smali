.class Lcom/yelp/android/ui/activities/deals/l;
.super Lcom/yelp/android/ui/util/au;
.source "ActivityDealRedemption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/l;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    if-nez p2, :cond_0

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/l;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fc

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 244
    :cond_0
    const v0, 0x7f0c0119

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/deals/l;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 246
    return-object p2
.end method
