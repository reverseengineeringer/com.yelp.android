.class Lcom/yelp/android/ui/activities/search/SearchOverlay$5;
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
    .line 823
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 828
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 829
    const v0, 0x7f0f0522

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 831
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/TextWatcher;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 839
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 840
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 841
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/y;

    move-result-object v1

    const/4 v2, 0x0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/SuggestionFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 848
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/TextWatcher;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method
