.class public Lcom/yelp/android/ui/activities/talk/AllTalkTab;
.super Lcom/yelp/android/ui/activities/talk/TalkTopicList;
.source "AllTalkTab.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/talk/TalkTopicList",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dx;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dx;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;-><init>()V

    .line 122
    new-instance v0, Lcom/yelp/android/ui/activities/talk/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/h;-><init>(Lcom/yelp/android/ui/activities/talk/AllTalkTab;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a:Lcom/yelp/android/appdata/webrequests/j;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/AllTalkTab;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/AllTalkTab;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->d(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected e()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->x()V

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->g()V

    move v0, v1

    .line 102
    :goto_0
    return v0

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v2, Lcom/yelp/android/appdata/webrequests/dw;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->p()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v2, v3, v0, v4}, Lcom/yelp/android/appdata/webrequests/dw;-><init>(ILjava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dw;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dw;->executeWithLocation([Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected f()Lcom/yelp/android/appdata/webrequests/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a:Lcom/yelp/android/appdata/webrequests/j;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_TALK_LOCATION:Lcom/yelp/android/util/ErrorType;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/g;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/g;-><init>(Lcom/yelp/android/ui/activities/talk/AllTalkTab;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 120
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011e

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->e:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->e:Landroid/view/View;

    const v1, 0x7f0c0348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->g:Landroid/widget/TextView;

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a_()V

    .line 65
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_0

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    const/16 v0, 0x41c

    if-ne p1, v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->g()V

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a_()V

    goto :goto_0

    .line 84
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->r()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->e:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->d(Landroid/view/View;)V

    .line 42
    :cond_0
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onPause()V

    .line 54
    const-string/jumbo v0, "request_all_talk_topics"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 55
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 47
    invoke-super {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onResume()V

    .line 48
    const-string/jumbo v0, "request_all_talk_topics"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->f()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 49
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    return-void
.end method
