.class public Lcom/yelp/android/ui/activities/talk/AllTalkTab;
.super Lcom/yelp/android/ui/activities/talk/TalkTopicList;
.source "AllTalkTab.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/talk/TalkTopicList",
        "<",
        "Lcom/yelp/android/appdata/webrequests/da$a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/da$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;-><init>()V

    .line 138
    new-instance v0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;-><init>(Lcom/yelp/android/ui/activities/talk/AllTalkTab;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a:Lcom/yelp/android/appdata/webrequests/k$b;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/AllTalkTab;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/AllTalkTab;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->d(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected f()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    .line 95
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 96
    const v4, 0x7f070705

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/Context;Landroid/support/v4/app/l;Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->z()V

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->h()V

    move v0, v1

    .line 113
    :goto_0
    return v0

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v2, Lcom/yelp/android/appdata/webrequests/da;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->p()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v2, v3, v0, v4}, Lcom/yelp/android/appdata/webrequests/da;-><init>(ILjava/lang/String;Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/da;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/da;->a([Ljava/lang/Object;)V

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected g()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/da$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a:Lcom/yelp/android/appdata/webrequests/k$b;

    return-object v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_TALK_LOCATION:Lcom/yelp/android/util/ErrorType;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/AllTalkTab$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab$1;-><init>(Lcom/yelp/android/ui/activities/talk/AllTalkTab;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 136
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030181

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->e:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->e:Landroid/view/View;

    const v1, 0x7f0f0420

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->f:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->p_()V

    .line 69
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_0

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onActivityResult(IILandroid/content/Intent;)V

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_0
    const/16 v0, 0x425

    if-ne p1, v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->h()V

    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->p_()V

    goto :goto_0

    .line 88
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->q()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->e:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->d(Landroid/view/View;)V

    .line 45
    :cond_0
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onPause()V

    .line 57
    const-string/jumbo v0, "request_all_talk_topics"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 58
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onResume()V

    .line 51
    const-string/jumbo v0, "request_all_talk_topics"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->g()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 52
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method
