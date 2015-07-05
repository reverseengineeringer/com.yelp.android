.class Lcom/yelp/android/ui/activities/deals/ag;
.super Ljava/lang/Object;
.source "DialogDealPurchaseSelection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/af;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/af;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ag;->a:Lcom/yelp/android/ui/activities/deals/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ag;->a:Lcom/yelp/android/ui/activities/deals/af;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ag;->a:Lcom/yelp/android/ui/activities/deals/af;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/deals/af;->c:Lcom/yelp/android/ui/util/s;

    invoke-virtual {v1, p2}, Lcom/yelp/android/ui/util/s;->a(I)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/af;->b:Lcom/yelp/android/serializable/DealPurchase;

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ag;->a:Lcom/yelp/android/ui/activities/deals/af;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/af;->d:Lcom/yelp/android/ui/activities/deals/ah;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ag;->a:Lcom/yelp/android/ui/activities/deals/af;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/deals/ah;->a(Lcom/yelp/android/ui/activities/deals/af;)V

    .line 71
    return-void
.end method
