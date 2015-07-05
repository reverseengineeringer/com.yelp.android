.class public Lcom/yelp/android/ui/activities/deals/aa;
.super Lcom/yelp/android/ui/util/au;
.source "AddGiftRecipient.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/util/ContactsFetcher$Contact;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


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


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 299
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/aa;->a:Ljava/lang/ref/WeakReference;

    .line 300
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 330
    new-instance v1, Lcom/yelp/android/ui/activities/deals/ab;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/aa;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p0}, Lcom/yelp/android/ui/activities/deals/ab;-><init>(Landroid/app/Activity;Lcom/yelp/android/ui/activities/deals/aa;)V

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 304
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 306
    if-nez p2, :cond_0

    .line 307
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 309
    const v0, 0x7f0c0354

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 310
    const v1, 0x7f0c0080

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 311
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 313
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/deals/aa;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ContactsFetcher$Contact;

    .line 315
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 316
    if-eqz v1, :cond_1

    .line 317
    invoke-virtual {v0, v3}, Lcom/yelp/android/util/ContactsFetcher$Contact;->getPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 318
    if-eqz v4, :cond_2

    .line 319
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 323
    :goto_0
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/util/ContactsFetcher$Contact;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_1
    return-object p2

    .line 321
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/widget/ImageView;

    const v4, 0x7f02009c

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
