.class public abstract Lcom/yelp/android/ui/activities/support/YelpListFragment;
.super Lcom/yelp/android/ui/util/AndroidListFragment;
.source "YelpListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:I

.field private e:I

.field private g:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c:Z

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 253
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/support/q;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/support/q;-><init>(Lcom/yelp/android/ui/activities/support/YelpListFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->g:Landroid/widget/ListAdapter;

    .line 206
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->g:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/AndroidListFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->y()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c(Landroid/view/View;)V

    .line 120
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c:Z

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b(I)V

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b()V

    .line 133
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:I

    .line 159
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:I

    .line 163
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a:Landroid/view/View;

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 183
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public i_()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->i_()V

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->B()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c(Landroid/view/View;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected j_()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 221
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 222
    return-void
.end method

.method public m()Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->t()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Z)V

    .line 151
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Z)V

    .line 155
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/AndroidListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    const-string/jumbo v0, "limit"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    .line 72
    const-string/jumbo v0, "offset"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:I

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e()V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->g:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->g:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/AndroidListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    const-string/jumbo v0, "limit"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    .line 48
    const-string/jumbo v0, "offset"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:I

    .line 49
    const-string/jumbo v0, "completed"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c:Z

    .line 55
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b:Ljava/util/List;

    .line 56
    return-void

    .line 51
    :cond_0
    iput v2, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    .line 52
    iput v1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 60
    const v0, 0x7f0300b7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

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
    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 112
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/k;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    .line 106
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/AndroidListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/AndroidListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    const-string/jumbo v0, "limit"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string/jumbo v0, "offset"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string/jumbo v0, "completed"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method public p()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    return v0
.end method

.method public r()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->g:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected s()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c:Z

    return v0
.end method

.method public synthetic t()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    return-object v0
.end method
