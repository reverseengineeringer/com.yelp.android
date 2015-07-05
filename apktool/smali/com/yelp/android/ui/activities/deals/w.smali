.class Lcom/yelp/android/ui/activities/deals/w;
.super Ljava/lang/Object;
.source "AddGiftRecipient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/w;->b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/w;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/w;->b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/w;->a:Landroid/content/Intent;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void
.end method
