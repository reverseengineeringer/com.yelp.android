.class Lcom/yelp/android/ui/activities/deals/bb;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/az;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/az;)V
    .locals 0

    .prologue
    .line 940
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/bb;->a:Lcom/yelp/android/ui/activities/deals/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bb;->a:Lcom/yelp/android/ui/activities/deals/az;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/az;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    .line 945
    return-void
.end method
