.class Lcom/yelp/android/ui/activities/deals/aq;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/aq;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/aq;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    .line 301
    return-void
.end method
