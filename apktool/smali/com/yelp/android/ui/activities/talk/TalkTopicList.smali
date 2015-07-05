.class public abstract Lcom/yelp/android/ui/activities/talk/TalkTopicList;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "TalkTopicList.java"

# interfaces
.implements Lcom/yelp/android/ui/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/ui/activities/support/YelpListFragment;",
        "Lcom/yelp/android/ui/p;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/TalkTopic;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "TResponseType;>;"
        }
    .end annotation
.end field

.field protected c:Lcom/yelp/android/ui/activities/talk/w;

.field protected d:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 140
    const/16 v1, 0x41b

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lcom/yelp/android/serializable/TalkTopic;

    if-nez v1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v0, Lcom/yelp/android/serializable/TalkTopic;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/content/Context;Lcom/yelp/android/serializable/TalkTopic;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/TalkTopic;)V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/w;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/w;->notifyDataSetChanged()V

    .line 146
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/TalkTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->j()V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/w;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/w;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a(Z)V

    .line 108
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/w;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/talk/w;->a(Ljava/util/Collection;)V

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/w;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/w;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->b(I)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/w;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/w;->notifyDataSetChanged()V

    .line 112
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->r()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/w;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/w;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/w;->clear()V

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 189
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->a_()V

    .line 190
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->is(Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->e()Z

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/w;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/w;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/w;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 81
    :cond_1
    return-void
.end method

.method protected abstract e()Z
.end method

.method protected abstract f()Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<TResponseType;>;"
        }
    .end annotation
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->h()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->TalkListTopics:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method protected i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->d:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    if-nez v0, :cond_0

    .line 194
    const v0, 0x7f0706d3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->d:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->d:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 117
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const/16 v0, 0x41b

    if-ne p1, v0, :cond_3

    .line 123
    const-string/jumbo v0, "talk_topic"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a(Lcom/yelp/android/serializable/TalkTopic;)V

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->i()V

    goto :goto_0

    .line 128
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->e:Z

    goto :goto_0

    .line 130
    :cond_3
    const/16 v0, 0x413

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->g()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    const-string/jumbo v0, "talk_topics"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    .line 57
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/talk/w;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/talk/w;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/w;

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/w;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/w;->a(Ljava/util/List;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->setHasOptionsMenu(Z)V

    .line 60
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 151
    const v0, 0x7f100021

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 152
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 177
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 159
    :sswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030168

    const v3, 0x7f0c0466

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 161
    const/16 v2, 0x41c

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 164
    :sswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a_()V

    goto :goto_0

    .line 167
    :sswitch_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0705d1

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 170
    const/16 v2, 0x413

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->g()V

    goto :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x7f0c0506 -> :sswitch_1
        0x7f0c0514 -> :sswitch_2
        0x7f0c0515 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 65
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->e:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->i()V

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->e:Z

    .line 70
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 98
    const-string/jumbo v0, "talk_topics"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 99
    return-void
.end method
