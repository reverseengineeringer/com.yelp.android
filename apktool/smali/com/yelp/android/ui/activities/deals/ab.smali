.class final Lcom/yelp/android/ui/activities/deals/ab;
.super Landroid/widget/Filter;
.source "AddGiftRecipient.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yelp/android/ui/activities/deals/aa;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/yelp/android/ui/activities/deals/aa;)V
    .locals 1

    .prologue
    .line 341
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 342
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ab;->a:Ljava/lang/ref/WeakReference;

    .line 343
    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/ab;->b:Lcom/yelp/android/ui/activities/deals/aa;

    .line 344
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 369
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 370
    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/yelp/android/util/ContactsFetcher$Contact;

    if-eqz v1, :cond_0

    .line 371
    new-instance v2, Landroid/text/SpannableString;

    move-object v1, p1

    check-cast v1, Lcom/yelp/android/util/ContactsFetcher$Contact;

    invoke-virtual {v1, v0}, Lcom/yelp/android/util/ContactsFetcher$Contact;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 373
    const/16 v0, 0x11

    invoke-virtual {v2, p1, v3, v3, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v2

    .line 376
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5

    .prologue
    .line 348
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/yelp/android/util/ContactsFetcher;->b()Lcom/yelp/android/util/ContactsFetcher;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v0, v3, v4}, Lcom/yelp/android/util/ContactsFetcher;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 355
    :goto_0
    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 356
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 357
    return-object v2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 364
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ab;->b:Lcom/yelp/android/ui/activities/deals/aa;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/deals/aa;->a(Ljava/util/List;)V

    .line 365
    return-void
.end method
