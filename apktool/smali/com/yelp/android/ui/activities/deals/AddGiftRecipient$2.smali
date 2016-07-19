.class Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$2;
.super Ljava/lang/Object;
.source "AddGiftRecipient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$2;->b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$2;->b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$2;->a:Landroid/content/Intent;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    return-void
.end method
