.class Lcom/yelp/android/ui/activities/talk/o;
.super Ljava/lang/Object;
.source "MyTalkTab.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/gc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/MyTalkTab;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/o;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/gc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/o;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->j()V

    .line 63
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/gc;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/o;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a(Z)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/o;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->c:Lcom/yelp/android/ui/activities/talk/w;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/w;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/o;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_TALK_TOPICS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/o;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/gc;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/o;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/talk/p;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/talk/p;-><init>(Lcom/yelp/android/ui/activities/talk/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 58
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p2, Lcom/yelp/android/appdata/webrequests/gc;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/o;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gc;)V

    return-void
.end method
