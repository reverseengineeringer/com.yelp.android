.class public abstract Lcom/yelp/android/ui/util/YelpListActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "YelpListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# instance fields
.field private a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/widget/AdapterView;I)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 171
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    sget v0, Lcom/yelp/android/appdata/n;->a:I

    sget v2, Lcom/yelp/android/appdata/n;->a:I

    sget v3, Lcom/yelp/android/appdata/n;->a:I

    sget v4, Lcom/yelp/android/appdata/n;->a:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 176
    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 177
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    const v0, 0x7f0900ce

    invoke-virtual {v1, p0, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 179
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0f020d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 181
    return-object v1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 167
    return-void
.end method

.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 131
    iput p1, p0, Lcom/yelp/android/ui/util/YelpListActivity;->b:I

    .line 132
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/yelp/android/ui/util/YelpListActivity;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/ui/util/YelpListActivity;->b:I

    .line 136
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f03020f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/YelpListActivity;->setContentView(I)V

    .line 40
    if-eqz p1, :cond_0

    .line 41
    const-string/jumbo v0, "yelp:limit"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/YelpListActivity;->c:I

    .line 42
    const-string/jumbo v0, "yelp:offset"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/YelpListActivity;->b:I

    .line 47
    :goto_0
    return-void

    .line 44
    :cond_0
    iput v2, p0, Lcom/yelp/android/ui/util/YelpListActivity;->c:I

    .line 45
    iput v1, p0, Lcom/yelp/android/ui/util/YelpListActivity;->b:I

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->a()V

    .line 85
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 98
    iget-object v1, p0, Lcom/yelp/android/ui/util/YelpListActivity;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/util/YelpListActivity;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 99
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    const-string/jumbo v0, "yelp:limit"

    iget v1, p0, Lcom/yelp/android/ui/util/YelpListActivity;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string/jumbo v0, "yelp:offset"

    iget v1, p0, Lcom/yelp/android/ui/util/YelpListActivity;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 3

    .prologue
    const v1, 0x102000a

    const/4 v2, 0x0

    .line 51
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSupportContentChanged()V

    .line 56
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/util/YelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/util/YelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/YelpListActivity;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpListActivity;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 59
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/YelpListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/yelp/android/ui/util/YelpListActivity;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpListActivity;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "known empty"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->t()V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->h()I

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->h()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/util/YelpListActivity;->a(Landroid/widget/AdapterView;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/YelpListActivity;->c(I)V

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->c()V

    .line 94
    return-void
.end method

.method public q_()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->clearError()V

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->p_()V

    .line 79
    return-void
.end method

.method public r()Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/util/YelpListActivity;->a:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/yelp/android/ui/util/YelpListActivity;->b:I

    return v0
.end method

.method public s_()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/yelp/android/ui/util/YelpListActivity;->c:I

    return v0
.end method

.method public t()V
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/util/YelpListActivity$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/util/YelpListActivity$1;-><init>(Lcom/yelp/android/ui/util/YelpListActivity;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnLoadNeeded(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method
