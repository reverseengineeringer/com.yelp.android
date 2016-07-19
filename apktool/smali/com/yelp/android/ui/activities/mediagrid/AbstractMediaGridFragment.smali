.class public abstract Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "AbstractMediaGridFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/serializable/YelpBusiness;

.field protected b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

.field protected c:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;

.field protected d:Lcom/yelp/android/ui/activities/mediagrid/a;

.field protected e:I

.field protected f:Z

.field private g:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;

.field private i:Landroid/view/View;

.field private j:Z

.field private final k:Landroid/widget/AdapterView$OnItemClickListener;

.field private final l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 50
    const v0, 0x7fffffff

    iput v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->e:I

    .line 195
    new-instance v0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$1;-><init>(Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->k:Landroid/widget/AdapterView$OnItemClickListener;

    .line 208
    new-instance v0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$2;-><init>(Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->l:Landroid/view/View$OnClickListener;

    .line 220
    return-void
.end method

.method protected static a(Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;Z)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    const-string/jumbo v1, "media_request"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    const-string/jumbo v1, "media_list"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 67
    const-string/jumbo v1, "show_likes"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;)Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->g:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->a(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    return-void
.end method

.method protected abstract a()Z
.end method

.method protected abstract b()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;"
        }
    .end annotation
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->b(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->d(I)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->f()Lcom/yelp/android/appdata/webrequests/MediaRequest;

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    const-string/jumbo v0, "media_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 110
    const-string/jumbo v0, "media_request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 111
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 112
    const-string/jumbo v0, "total_media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->e:I

    .line 113
    const-string/jumbo v0, "show_likes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->j:Z

    .line 114
    const-string/jumbo v0, "show_add_media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->f:Z

    move-object v0, v1

    .line 123
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->setHasOptionsMenu(Z)V

    .line 125
    new-instance v1, Lcom/yelp/android/ui/activities/mediagrid/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->l:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/ui/activities/mediagrid/a;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    .line 126
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->j:Z

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/a;->a(Z)V

    .line 127
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->f:Z

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/a;->b(Z)V

    .line 128
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->c:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->c:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->k:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->c:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;

    invoke-virtual {v1, p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;->setScrollToLoadCallback(Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView$a;)V

    .line 132
    if-nez v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The list of media must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 117
    const-string/jumbo v0, "business"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 118
    const-string/jumbo v0, "media_request"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 119
    const-string/jumbo v0, "media_list"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    const-string/jumbo v2, "show_likes"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->j:Z

    goto :goto_0

    .line 135
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/content/Context;)V

    .line 87
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;

    move-object v1, v0

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->g:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must implement MediaGridFragmentListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 97
    const v0, 0x7f0300d3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 98
    const v0, 0x7f0f032c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->c:Lcom/yelp/android/ui/activities/mediagrid/MediaBrowserGridView;

    .line 99
    const v0, 0x7f0f0329

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->i:Landroid/view/View;

    .line 100
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0f0626

    if-ne v1, v2, :cond_0

    .line 163
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->g:Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment$a;->a(Lcom/yelp/android/serializable/YelpBusiness;Z)V

    .line 166
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 146
    const-string/jumbo v0, "media_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 147
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 140
    const-string/jumbo v0, "media_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/MediaRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 141
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    const-string/jumbo v0, "business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    const-string/jumbo v0, "media_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/mediagrid/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 154
    const-string/jumbo v0, "media_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 155
    const-string/jumbo v0, "total_media"

    iget v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const-string/jumbo v0, "show_likes"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    const-string/jumbo v0, "show_add_media"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    return-void
.end method
