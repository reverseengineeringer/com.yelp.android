.class Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;
.super Ljava/lang/Object;
.source "ActivityContributionSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityContributionSearch;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/BusinessContributionType;

.field final synthetic b:Lcom/yelp/android/ui/activities/ActivityContributionSearch;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityContributionSearch;Lcom/yelp/android/appdata/BusinessContributionType;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;->b:Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_0

    .line 229
    sget-object v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->NAME:Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v7

    .line 233
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;->b:Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;->b:Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070231

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;->b:Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->a(Lcom/yelp/android/ui/activities/ActivityContributionSearch;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;->b:Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->b(Lcom/yelp/android/ui/activities/ActivityContributionSearch;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    sget-object v6, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->CONTRIBUTION:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;->b:Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 246
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityContributionSearch$1;->b:Lcom/yelp/android/ui/activities/ActivityContributionSearch;

    const/16 v2, 0x41f

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/ActivityContributionSearch;->startActivityForResult(Landroid/content/Intent;I)V

    .line 247
    return-void

    .line 231
    :cond_0
    const-class v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    goto :goto_0
.end method
