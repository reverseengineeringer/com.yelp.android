.class public Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "CategoryPickerFragment.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/yelp/android/ui/activities/categorypicker/e;

.field private e:Lcom/yelp/android/ui/panels/s;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 155
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)",
            "Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;-><init>()V

    .line 42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    const-string/jumbo v2, "args_categories"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;)Lcom/yelp/android/ui/activities/categorypicker/e;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->d:Lcom/yelp/android/ui/activities/categorypicker/e;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030072

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->b:Landroid/view/View;

    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030073

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->c:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->b:Landroid/view/View;

    const v1, 0x7f0c0215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->a:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->a:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/categorypicker/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/categorypicker/d;-><init>(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    .line 139
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    .line 140
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->e:Lcom/yelp/android/ui/panels/s;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    const v2, 0x7f0c0210

    invoke-virtual {v1, v2, v3, v3}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->a(Landroid/widget/ListAdapter;)V

    .line 145
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->f()V

    .line 146
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 147
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    :cond_0
    return-void
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->g:Ljava/util/ArrayList;

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->e:Lcom/yelp/android/ui/panels/s;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/s;->a(Ljava/util/List;)V

    .line 122
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->e()V

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onAttach(Landroid/app/Activity;)V

    .line 52
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/categorypicker/e;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->d:Lcom/yelp/android/ui/activities/categorypicker/e;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The corresponding activity must implement the AddNewCategoryFragment interface."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04f3

    if-ne v0, v1, :cond_0

    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 93
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 94
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->e:Lcom/yelp/android/ui/panels/s;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/s;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 95
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->e:Lcom/yelp/android/ui/panels/s;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/s;->b(Ljava/lang/Object;)V

    .line 96
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->f()V

    .line 97
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_categories"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->g:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/yelp/android/ui/panels/s;

    invoke-direct {v0}, Lcom/yelp/android/ui/panels/s;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->e:Lcom/yelp/android/ui/panels/s;

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->e:Lcom/yelp/android/ui/panels/s;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/s;->a(Ljava/util/List;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->setHasOptionsMenu(Z)V

    .line 66
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 79
    const v1, 0x7f100006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 81
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 83
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 84
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->e:Lcom/yelp/android/ui/panels/s;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/s;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 85
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/categorypicker/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 105
    const v0, 0x7f10000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04fd

    if-ne v0, v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->g:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->a(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
