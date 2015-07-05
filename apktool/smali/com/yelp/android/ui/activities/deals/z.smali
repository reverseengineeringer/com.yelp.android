.class Lcom/yelp/android/ui/activities/deals/z;
.super Ljava/lang/Object;
.source "AddGiftRecipient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/z;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/z;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 218
    invoke-static {}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/z;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->setResult(ILandroid/content/Intent;)V

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/z;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->finish()V

    .line 221
    return-void
.end method
