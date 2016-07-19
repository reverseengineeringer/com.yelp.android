.class Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$5;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"

# interfaces
.implements Lcom/yelp/android/ui/util/SuggestionFilter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/util/SuggestionFilter$b",
        "<",
        "Lcom/yelp/android/serializable/RichSearchSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->k(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/search/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/a;->notifyDataSetInvalidated()V

    .line 221
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->k(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/search/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/search/a;->a(Ljava/util/List;)V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->k(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/activities/search/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/a;->notifyDataSetChanged()V

    .line 216
    return-void
.end method
