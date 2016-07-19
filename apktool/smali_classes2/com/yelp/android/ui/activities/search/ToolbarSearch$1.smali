.class Lcom/yelp/android/ui/activities/search/ToolbarSearch$1;
.super Ljava/lang/Object;
.source "ToolbarSearch.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/ToolbarSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/ToolbarSearch;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch$1;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch$1;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch$1;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a(Lcom/yelp/android/ui/activities/search/ToolbarSearch;)Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a(Lcom/yelp/android/ui/activities/search/ToolbarSearch;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch$1;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch$1;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a(Lcom/yelp/android/ui/activities/search/ToolbarSearch;)Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->b(Lcom/yelp/android/ui/activities/search/ToolbarSearch;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch$1;->a:Lcom/yelp/android/ui/activities/search/ToolbarSearch;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a()V

    .line 130
    return-void
.end method
