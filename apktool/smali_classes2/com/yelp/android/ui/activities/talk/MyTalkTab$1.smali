.class Lcom/yelp/android/ui/activities/talk/MyTalkTab$1;
.super Ljava/lang/Object;
.source "MyTalkTab.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/talk/MyTalkTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/es$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/MyTalkTab;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab$1;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/es$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/es$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab$1;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->l()V

    .line 66
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/es$a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab$1;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->b(Z)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab$1;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->c:Lcom/yelp/android/ui/activities/talk/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/d;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab$1;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_TALK_TOPICS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab$1;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/es$a;->a()Ljava/util/ArrayList;

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
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/MyTalkTab$1;->a:Lcom/yelp/android/ui/activities/talk/MyTalkTab;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/talk/MyTalkTab$1$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/talk/MyTalkTab$1$1;-><init>(Lcom/yelp/android/ui/activities/talk/MyTalkTab$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/talk/MyTalkTab;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 61
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 48
    check-cast p2, Lcom/yelp/android/appdata/webrequests/es$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/MyTalkTab$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/es$a;)V

    return-void
.end method
