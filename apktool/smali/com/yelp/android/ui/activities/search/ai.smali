.class Lcom/yelp/android/ui/activities/search/ai;
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
    .line 653
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

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
    .line 658
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 659
    const v0, 0x7f0c040d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 666
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 667
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 668
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->r(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/aw;

    move-result-object v1

    const/4 v2, 0x0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/util/bz;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/bz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 670
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ai;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Landroid/widget/EditText;Ljava/lang/String;)V

    goto :goto_0
.end method
