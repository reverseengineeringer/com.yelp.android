.class public Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "CategorySuggestionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Suggest::",
        "Lcom/yelp/android/serializable/CategorySuggestion;",
        ">",
        "Landroid/support/v4/app/ListFragment;"
    }
.end annotation


# instance fields
.field protected i:Lcom/yelp/android/ui/activities/categorypicker/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/categorypicker/a",
            "<TSuggest;>;"
        }
    .end annotation
.end field

.field private j:Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a",
            "<TSuggest;>;"
        }
    .end annotation
.end field

.field private k:Lcom/yelp/android/ui/activities/categorypicker/b$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;)Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->j:Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a;

    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Suggest::",
            "Lcom/yelp/android/serializable/CategorySuggestion;",
            ">(",
            "Ljava/util/ArrayList",
            "<TSuggest;>;)",
            "Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string/jumbo v2, "args_suggestions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 101
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->k:Lcom/yelp/android/ui/activities/categorypicker/b$a;

    invoke-interface {v0, p3}, Lcom/yelp/android/ui/activities/categorypicker/b$a;->b(I)V

    .line 103
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->j:Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->i:Lcom/yelp/android/ui/activities/categorypicker/a;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/categorypicker/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/CategorySuggestion;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a;->b(Lcom/yelp/android/serializable/CategorySuggestion;)V

    .line 104
    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TSuggest;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->i:Lcom/yelp/android/ui/activities/categorypicker/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/categorypicker/a;->a(Ljava/util/List;)V

    .line 109
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/b$b;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/categorypicker/b$b;->a()Lcom/yelp/android/ui/activities/categorypicker/b;

    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->j:Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$a;

    .line 73
    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/b$a;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->k:Lcom/yelp/android/ui/activities/categorypicker/b$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yelp/android/co/a$c;->transparent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment$1;-><init>(Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 97
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The corresponding activity must implement CategoryPickerHelperInterface and the helper must implement CategorySelectedListener."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_suggestions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/yelp/android/ui/activities/categorypicker/a;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/categorypicker/a;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->i:Lcom/yelp/android/ui/activities/categorypicker/a;

    .line 50
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->i:Lcom/yelp/android/ui/activities/categorypicker/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/categorypicker/a;->a(Ljava/util/List;)V

    .line 51
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    .line 52
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->i:Lcom/yelp/android/ui/activities/categorypicker/a;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    sget v2, Lcom/yelp/android/co/a$f;->business_category_suggest_container:I

    invoke-virtual {v1, v2, v3, v3}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/yelp/android/co/a$h;->simple_list_view_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
