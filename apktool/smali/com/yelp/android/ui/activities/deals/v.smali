.class Lcom/yelp/android/ui/activities/deals/v;
.super Ljava/lang/Object;
.source "AddGiftRecipient.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/aa;

.field final synthetic b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Lcom/yelp/android/ui/activities/deals/aa;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/v;->b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/v;->a:Lcom/yelp/android/ui/activities/deals/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    if-eqz p1, :cond_1

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 102
    check-cast p1, Landroid/text/Spanned;

    .line 103
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v1, Lcom/yelp/android/util/ContactsFetcher$Contact;

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/ContactsFetcher$Contact;

    .line 104
    array-length v1, v0

    if-lez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/v;->b:Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;Lcom/yelp/android/util/ContactsFetcher$Contact;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/v;->a:Lcom/yelp/android/ui/activities/deals/aa;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/aa;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
