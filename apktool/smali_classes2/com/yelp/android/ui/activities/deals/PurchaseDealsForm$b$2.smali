.class Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b$2;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b;->a(ILcom/yelp/android/ui/widgets/QuantityDropDownView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b;)V
    .locals 0

    .prologue
    .line 987
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b$2;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b$2;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    .line 992
    return-void
.end method
