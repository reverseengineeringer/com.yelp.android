.class public abstract Lcom/yelp/android/ui/activities/talk/TalkTopicList;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "TalkTopicList.java"

# interfaces
.implements Lcom/yelp/android/ui/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/ui/activities/support/YelpListFragment;",
        "Lcom/yelp/android/ui/k;"
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

.field protected c:Lcom/yelp/android/ui/activities/talk/d;

.field protected d:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->a(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    const/16 v1, 0x424

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 83
    instance-of v1, v0, Lcom/yelp/android/serializable/TalkTopic;

    if-nez v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v0, Lcom/yelp/android/serializable/TalkTopic;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/content/Context;Lcom/yelp/android/serializable/TalkTopic;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/TalkTopic;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/d;->notifyDataSetChanged()V

    .line 142
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
    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->l()V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/d;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->b(Z)V

    .line 104
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/talk/d;->a(Ljava/util/Collection;)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/d;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->b(I)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/d;->notifyDataSetChanged()V

    .line 108
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->q()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/d;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->f()Z

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/d;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/d;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 78
    :cond_1
    return-void
.end method

.method protected abstract f()Z
.end method

.method protected abstract g()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<TResponseType;>;"
        }
    .end annotation
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->i()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->TalkListTopics:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method protected j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->d:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    if-nez v0, :cond_0

    .line 195
    const v0, 0x7f0706a3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->d:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->d:Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 113
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/16 v0, 0x424

    if-ne p1, v0, :cond_3

    .line 119
    const-string/jumbo v0, "talk_topic"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a(Lcom/yelp/android/serializable/TalkTopic;)V

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->j()V

    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->e:Z

    goto :goto_0

    .line 126
    :cond_3
    const/16 v0, 0x418

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->h()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const-string/jumbo v0, "talk_topics"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    .line 53
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/talk/d;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/talk/d;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/d;

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/d;->a(Ljava/util/List;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->setHasOptionsMenu(Z)V

    .line 56
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 147
    const v0, 0x7f100026

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 148
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 178
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 155
    :sswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0301d5

    const v3, 0x7f070557

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 160
    const/16 v2, 0x425

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 163
    :sswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->p_()V

    goto :goto_0

    .line 166
    :sswitch_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070208

    const v3, 0x7f0705b9

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v1

    .line 172
    const/16 v2, 0x418

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->h()V

    goto :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f060f -> :sswitch_1
        0x7f0f061f -> :sswitch_2
        0x7f0f0620 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onResume()V

    .line 61
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->e:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->j()V

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->e:Z

    .line 66
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    const-string/jumbo v0, "talk_topics"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 95
    return-void
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->c:Lcom/yelp/android/ui/activities/talk/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/d;->clear()V

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 190
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->p_()V

    .line 191
    return-void
.end method
