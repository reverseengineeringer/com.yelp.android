.class public Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "CategorySuggestionsFragment.java"


# instance fields
.field private a:Lcom/yelp/android/ui/panels/p;

.field private b:Lcom/yelp/android/ui/activities/categorypicker/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 104
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
            ">;)",
            "Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string/jumbo v2, "args_suggestions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;)Lcom/yelp/android/ui/activities/categorypicker/h;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->b:Lcom/yelp/android/ui/activities/categorypicker/h;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a:Lcom/yelp/android/ui/panels/p;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/p;->a(Ljava/util/List;)V

    .line 102
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/categorypicker/g;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/categorypicker/g;-><init>(Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 90
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 46
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/categorypicker/h;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->b:Lcom/yelp/android/ui/activities/categorypicker/h;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The corresponding activity must implement the CategorySelectedListener interface."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_suggestions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/yelp/android/ui/panels/p;

    invoke-direct {v1}, Lcom/yelp/android/ui/panels/p;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a:Lcom/yelp/android/ui/panels/p;

    .line 59
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a:Lcom/yelp/android/ui/panels/p;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/p;->a(Ljava/util/List;)V

    .line 60
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    .line 61
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a:Lcom/yelp/android/ui/panels/p;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    const v2, 0x7f0c01da

    invoke-virtual {v1, v2, v3, v3}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 71
    const v0, 0x7f0300c3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 94
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->a:Lcom/yelp/android/ui/panels/p;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/panels/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessCategorySuggest;

    .line 96
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategorySuggestionsFragment;->b:Lcom/yelp/android/ui/activities/categorypicker/h;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/categorypicker/h;->a(Lcom/yelp/android/serializable/BusinessCategorySuggest;)V

    .line 97
    return-void
.end method
