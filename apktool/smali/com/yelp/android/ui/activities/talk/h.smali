.class Lcom/yelp/android/ui/activities/talk/h;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "AllTalkTab.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/AllTalkTab;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/h;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/dx;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/h;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Z)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/h;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_TALK_TOPICS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/h;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->r()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/h;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/h;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Lcom/yelp/android/ui/activities/talk/AllTalkTab;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Lcom/yelp/android/ui/activities/talk/AllTalkTab;Landroid/view/View;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/h;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/dx;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/h;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->j()V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/h;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/i;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/i;-><init>(Lcom/yelp/android/ui/activities/talk/h;)V

    invoke-virtual {v0, p2, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/panels/aa;)V

    .line 139
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dx;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dx;)V

    return-void
.end method
