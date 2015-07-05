.class public Lcom/yelp/android/ui/activities/talk/MyTalkTab;
.super Lcom/yelp/android/ui/activities/talk/TalkTopicList;
.source "MyTalkTab.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/talk/TalkTopicList",
        "<",
        "Lcom/yelp/android/appdata/webrequests/gc;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;-><init>()V

    .line 47
    new-instance v0, Lcom/yelp/android/ui/activities/talk/o;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/o;-><init>(Lcom/yelp/android/ui/activities/talk/MyTalkTab;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method


# virtual methods
.method protected e()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 39
    :goto_0
    return v0

    .line 37
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gb;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->p()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/gb;-><init>(ILcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/gb;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gb;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 39
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
            "Lcom/yelp/android/appdata/webrequests/gc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a:Lcom/yelp/android/appdata/webrequests/m;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onPause()V

    .line 29
    const-string/jumbo v0, "request_my_talk_topics"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 30
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/ui/activities/talk/TalkTopicList;->onResume()V

    .line 19
    const-string/jumbo v0, "request_my_talk_topics"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->f()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a_()V

    .line 24
    :cond_1
    return-void
.end method
