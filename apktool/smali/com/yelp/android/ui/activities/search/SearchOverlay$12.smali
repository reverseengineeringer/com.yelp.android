.class Lcom/yelp/android/ui/activities/search/SearchOverlay$12;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Lcom/yelp/android/ui/util/SuggestionFilter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/SearchOverlay;->a()V
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
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$12;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$12;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/c;->notifyDataSetInvalidated()V

    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$12;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 416
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
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
    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$12;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/search/c;->a(Ljava/util/List;)V

    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$12;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 410
    return-void
.end method
