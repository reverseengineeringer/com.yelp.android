.class Lcom/yelp/android/ui/activities/search/SearchOverlay$11;
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
        "Lcom/yelp/android/serializable/RichSearchSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->f(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/a;->notifyDataSetInvalidated()V

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 384
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
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
    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/b;->clear()V

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->f(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/search/a;->a(Ljava/util/List;)V

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/b;->notifyDataSetChanged()V

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 378
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->e(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/b;->a(Ljava/util/List;)V

    goto :goto_0
.end method
