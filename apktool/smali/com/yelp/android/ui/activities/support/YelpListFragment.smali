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

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:I

.field private f:I

.field private g:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:Z

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 274
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/support/YelpListFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment$1;-><init>(Lcom/yelp/android/ui/activities/support/YelpListFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public H_()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->H_()V

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->C()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c(Landroid/view/View;)V

    .line 135
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 220
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->g:Landroid/widget/ListAdapter;

    .line 222
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->g:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Lcom/yelp/android/services/ShareFormatter;)V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showShareSheet(Lcom/yelp/android/services/ShareFormatter;)V

    .line 242
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/AndroidListFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->A()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c(Landroid/view/View;)V

    .line 127
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 165
    iput p1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    .line 166
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:Z

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->f()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    .line 170
    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a:Landroid/view/View;

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 190
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 203
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected e(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public m()Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->s()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b(Z)V

    .line 158
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b(Z)V

    .line 162
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/AndroidListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    if-eqz p1, :cond_0

    .line 74
    const-string/jumbo v0, "limit"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->f:I

    .line 75
    const-string/jumbo v0, "offset"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->f()V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c(Landroid/view/View;)V

    .line 80
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

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;)V

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->g:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->g:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/AndroidListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    const-string/jumbo v0, "limit"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->f:I

    .line 49
    const-string/jumbo v0, "offset"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    .line 50
    const-string/jumbo v0, "completed"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:Z

    .line 56
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->c:Ljava/util/List;

    .line 58
    return-void

    .line 52
    :cond_0
    iput v2, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->f:I

    .line 53
    iput v1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 63
    const v0, 0x7f0300d1

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
    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 119
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/f;->a(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    .line 113
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/AndroidListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/AndroidListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string/jumbo v0, "limit"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string/jumbo v0, "offset"

    iget v1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string/jumbo v0, "completed"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    return-void
.end method

.method public p()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->e:I

    return v0
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b(I)V

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b()V

    .line 140
    return-void
.end method

.method public q()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->g:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected r()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/YelpListFragment;->d:Z

    return v0
.end method

.method public synthetic s()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    return-object v0
.end method

.method protected u_()V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 237
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 238
    return-void
.end method
