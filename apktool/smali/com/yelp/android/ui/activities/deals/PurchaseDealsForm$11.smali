.class Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$11;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$11;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$11;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$11;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$11;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    const/16 v2, 0x410

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 370
    return-void
.end method
