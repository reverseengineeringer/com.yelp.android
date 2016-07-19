.class Lcom/yelp/android/ui/activities/search/SearchOverlay$4;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 6

    .prologue
    .line 789
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contribution.type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BusinessContributionType;

    .line 792
    sget-object v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$7;->b:[I

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BusinessContributionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 808
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->g()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/BusinessContributionType;->getAddIntent(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivity(Landroid/content/Intent;)V

    .line 812
    :goto_0
    return-void

    .line 796
    :pswitch_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->g()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v5, "extra.contribution"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v3, v4, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/BusinessContributionType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x411

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/TextWatcher;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 817
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 818
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->k(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    const/4 v7, 0x0

    .line 691
    const v0, 0x7f0f0522

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 693
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 694
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 695
    instance-of v1, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v1, :cond_2

    move-object v6, v0

    .line 696
    check-cast v6, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 697
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/af;

    move-result-object v1

    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->h()Ljava/lang/String;

    move-result-object v3

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/SuggestionFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 705
    sget-object v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$7;->a:[I

    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 774
    invoke-direct {p0, v8}, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a(Ljava/lang/String;)V

    .line 786
    :goto_0
    return-void

    .line 711
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->CONTRIBUTION:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    if-ne v0, v1, :cond_0

    .line 712
    invoke-direct {p0, v6}, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a(Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    goto :goto_0

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->g()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 722
    :pswitch_1
    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->o()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v0

    .line 724
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchBarPlatformOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 725
    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->n()Lcom/yelp/android/serializable/PlatformRSSTermMap;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "search_bar"

    invoke-static {v1, v2, v3, v0, v4}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/PlatformRSSTermMap;Ljava/lang/String;Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    move-result-object v0

    .line 732
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;)V

    .line 733
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "PLATFORM_DIALOG"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :pswitch_2
    new-instance v1, Lcom/yelp/android/serializable/PlatformFilter;

    const-string/jumbo v0, "delivery_current_location"

    invoke-direct {v1, v0, v7}, Lcom/yelp/android/serializable/PlatformFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 744
    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v0

    .line 748
    :goto_1
    sget-object v2, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v3, "search_bar_suggest"

    iput-object v3, v2, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 750
    sget-object v2, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v3, "delivery"

    iput-object v3, v2, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 752
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v0, v7}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 745
    :cond_1
    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->n()Lcom/yelp/android/serializable/PlatformRSSTermMap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 746
    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->n()Lcom/yelp/android/serializable/PlatformRSSTermMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformRSSTermMap;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 757
    :pswitch_3
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v1, "search_bar_suggest"

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 759
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v1, "reservation"

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->k(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/lang/String;

    move-result-object v0

    .line 761
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 764
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {}, Lcom/yelp/android/ui/activities/reservations/c;->a()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v6}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v7}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/serializable/ReservationFilter;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/af;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v8

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/SuggestionFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 784
    invoke-direct {p0, v8}, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object v7, v0

    goto :goto_2

    :cond_4
    move-object v0, v7

    goto :goto_1

    .line 705
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
