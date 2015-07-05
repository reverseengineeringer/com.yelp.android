.class Lcom/yelp/android/ui/activities/deals/ar;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ar;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 320
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 321
    return-void
.end method
