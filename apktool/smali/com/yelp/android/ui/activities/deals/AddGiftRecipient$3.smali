.class Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$3;
.super Ljava/lang/Object;
.source "AddGiftRecipient.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$3;->b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$3;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 148
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$3;->a:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$3;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$3;->b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$3;->b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setNextFocusDownId(I)V

    .line 153
    if-eqz p2, :cond_2

    .line 154
    const v0, 0x10000005

    .line 158
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$3;->b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 159
    return-void

    .line 148
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$3;->b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->b(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    goto :goto_1

    .line 156
    :cond_2
    const v0, 0x10000006

    goto :goto_2
.end method
