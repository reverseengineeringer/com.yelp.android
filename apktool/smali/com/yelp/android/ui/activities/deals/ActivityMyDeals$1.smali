.class Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$1;
.super Ljava/lang/Object;
.source "ActivityMyDeals.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/deals/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$1;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/deals/b;)V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$1;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;Lcom/yelp/android/serializable/YelpDeal;)Lcom/yelp/android/serializable/YelpDeal;

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$1;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$1;->a:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/deals/b;->a()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/deals/b;->b()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method
