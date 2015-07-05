.class Lcom/yelp/android/ui/activities/search/az;
.super Ljava/lang/Object;
.source "ToolbarSearch.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/at;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/ToolbarSearch;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/az;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/az;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/az;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a(Lcom/yelp/android/ui/activities/search/ToolbarSearch;)Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a(Lcom/yelp/android/ui/activities/search/ToolbarSearch;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/az;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/az;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a(Lcom/yelp/android/ui/activities/search/ToolbarSearch;)Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->b(Lcom/yelp/android/ui/activities/search/ToolbarSearch;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/az;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a()V

    .line 107
    return-void
.end method
