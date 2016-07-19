.class Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;
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
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->d(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->e(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 174
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 176
    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->f(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 178
    :cond_0
    const/4 v0, 0x0

    .line 179
    new-instance v7, Lcom/yelp/android/ui/activities/account/a$b;

    invoke-direct {v7}, Lcom/yelp/android/ui/activities/account/a$b;-><init>()V

    .line 181
    if-eqz v1, :cond_1

    new-instance v1, Lcom/yelp/android/ui/activities/account/a$a;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/account/a$a;-><init>()V

    iget-object v8, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v8}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/yelp/android/ui/activities/account/a$a;->a(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    const v8, 0x7f070494

    invoke-virtual {v1, v8}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v6

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-interface {v7, v1}, Lcom/yelp/android/ui/activities/account/a;->a(Landroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->c(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    const v7, 0x7f07033b

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    move v0, v6

    .line 194
    :cond_2
    if-eqz v0, :cond_4

    .line 214
    :goto_1
    return-void

    :cond_3
    move-object v5, v4

    .line 174
    goto :goto_0

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 199
    invoke-static {}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/GiftRecipient;

    .line 200
    if-nez v1, :cond_5

    .line 202
    new-instance v0, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/yelp/android/serializable/GiftRecipient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_2
    invoke-static {}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    invoke-static {}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v7}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->setResult(ILandroid/content/Intent;)V

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient$4;->a:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->finish()V

    goto :goto_1

    .line 207
    :cond_5
    new-instance v0, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/GiftRecipient;-><init>(Lcom/yelp/android/serializable/GiftRecipient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
