.class Lcom/yelp/android/ui/activities/search/ah;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 576
    const v0, 0x7f0c040d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 577
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 579
    instance-of v1, v0, Lcom/yelp/android/database/savedsearch/k;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 585
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.search_text"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.location"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->m(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->setResult(ILandroid/content/Intent;)V

    .line 590
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->finish()V

    .line 592
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.yelp.android.search"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    const-string/jumbo v2, "extra.search_text"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string/jumbo v2, "extra.location"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->m(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->sendBroadcast(Landroid/content/Intent;)V

    .line 599
    check-cast v0, Lcom/yelp/android/database/savedsearch/k;

    .line 600
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/q;->b()Lcom/yelp/android/database/savedsearch/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/savedsearch/c;->a(Lcom/yelp/android/database/savedsearch/k;)V

    .line 602
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchExecuteSaved:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 603
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/database/savedsearch/k;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivity(Landroid/content/Intent;)V

    .line 650
    :goto_0
    return-void

    .line 605
    :cond_0
    instance-of v1, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getRichSearchSuggestionType()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->BUSINESS:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    if-ne v1, v2, :cond_2

    move-object v6, v0

    .line 610
    check-cast v6, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 611
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v7

    .line 613
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contribution.type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/yelp/android/appdata/BusinessContributionType;

    .line 616
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->BUSINESS:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->toString()Ljava/lang/String;

    move-result-object v2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/util/bz;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/bz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 619
    sget-object v0, Lcom/yelp/android/ui/activities/search/aj;->a:[I

    invoke-virtual {v6}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 624
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v6, v1, v7}, Lcom/yelp/android/appdata/BusinessContributionType;->getAddIntent(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 621
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1, v7}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v1

    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getRichSearchSuggestionType()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->toString()Ljava/lang/String;

    move-result-object v2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/util/bz;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/bz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 630
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 634
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 638
    instance-of v1, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v1, :cond_3

    .line 639
    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getRichSearchSuggestionType()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 645
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/util/bz;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/bz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 647
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ah;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->m(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 642
    :cond_3
    sget-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
