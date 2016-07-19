.class Lcom/yelp/android/ui/activities/search/SearchOverlay$6;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;


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
    .line 938
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$6;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$6;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$6;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/TextWatcher;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$6;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$6;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/TextWatcher;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$6;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 947
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$6;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$6;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivity(Landroid/content/Intent;)V

    .line 950
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v1, "search_bar_suggest"

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 951
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 953
    return-void
.end method
