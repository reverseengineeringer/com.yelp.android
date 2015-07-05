.class Lcom/yelp/android/ui/activities/deals/m;
.super Ljava/lang/Object;
.source "ActivityDealRedemption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/m;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/m;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->finish()V

    .line 280
    return-void
.end method
