.class Lcom/yelp/android/ui/activities/deals/ax;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/PendingIntent;

.field final synthetic b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ax;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/ax;->a:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ax;->a:Landroid/app/PendingIntent;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    goto :goto_0
.end method
