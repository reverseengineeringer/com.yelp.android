.class Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "AllTalkTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/talk/AllTalkTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/da$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/AllTalkTab;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/da$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/da$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/da$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->b(Z)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_TALK_TOPICS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 171
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->q()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Lcom/yelp/android/ui/activities/talk/AllTalkTab;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Lcom/yelp/android/ui/activities/talk/AllTalkTab;Landroid/view/View;)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/da$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 142
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
    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->l()V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;->a:Lcom/yelp/android/ui/activities/talk/AllTalkTab;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2$1;-><init>(Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;)V

    invoke-virtual {v0, p2, v1}, Lcom/yelp/android/ui/activities/talk/AllTalkTab;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 158
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 139
    check-cast p2, Lcom/yelp/android/appdata/webrequests/da$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/AllTalkTab$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/da$a;)V

    return-void
.end method
