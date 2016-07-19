.class Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$11;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$11;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 630
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 631
    instance-of v1, v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v1, :cond_0

    .line 632
    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 634
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(ILjava/lang/String;)V

    .line 636
    sget-object v1, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$3;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 644
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$11;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;Ljava/lang/String;)Ljava/lang/String;

    .line 645
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$11;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CATEGORY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;Z)Z

    .line 649
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$11;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->q(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$11;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$11;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 638
    :pswitch_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$11;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->g()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
