.class Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$13;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/GiftRecipient;Landroid/app/PendingIntent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/PendingIntent;

.field final synthetic b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$13;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$13;->a:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$13;->a:Landroid/app/PendingIntent;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    goto :goto_0
.end method
