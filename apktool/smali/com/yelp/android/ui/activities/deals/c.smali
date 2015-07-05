.class Lcom/yelp/android/ui/activities/deals/c;
.super Lcom/yelp/android/ui/util/au;
.source "ActivityDealDetail.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/c;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 546
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 547
    const/16 v0, 0xf

    invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 548
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->OpenUrl:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/AnalyticsSpan;->addAnalyticsToSpannedWithUrls(Landroid/text/Spanned;Lcom/yelp/android/analytics/iris/b;)Landroid/text/Spannable;

    move-result-object v0

    .line 551
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    :cond_0
    invoke-super {p0, v2}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;)V

    .line 555
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 526
    if-nez p2, :cond_0

    .line 527
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/c;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fc

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/c;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 530
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/deals/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 531
    const v1, 0x7f0c0119

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 532
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 533
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 535
    return-object p2

    :cond_1
    move v0, v2

    .line 534
    goto :goto_0
.end method
