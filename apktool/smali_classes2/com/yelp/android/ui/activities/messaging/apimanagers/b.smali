.class public Lcom/yelp/android/ui/activities/messaging/apimanagers/b;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager;
.source "ApiConversationsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/messaging/apimanagers/b$2;
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/cl/c;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/yelp/android/ui/activities/messaging/apimanagers/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;",
            "Lcom/yelp/android/ui/activities/messaging/apimanagers/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/c;)V

    .line 28
    new-instance v0, Lcom/yelp/android/cl/c;

    invoke-direct {v0, p1}, Lcom/yelp/android/cl/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->b:Z

    .line 30
    if-eqz p2, :cond_0

    .line 31
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Ljava/util/List;)V

    .line 33
    :cond_0
    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/f;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$1;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/b;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/messaging/f;-><init>(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 136
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/apimanagers/b;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->clear()V

    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/cl/c;->a(Ljava/util/Collection;)V

    .line 38
    return-void
.end method

.method private a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    const/4 v0, 0x0

    .line 140
    sget-object v1, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    if-ne p2, v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v1, p1}, Lcom/yelp/android/cl/c;->a(Ljava/util/Collection;)V

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v1}, Lcom/yelp/android/cl/c;->notifyDataSetChanged()V

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->b:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->NewerThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    if-eq p2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->b:Z

    .line 171
    return-void

    .line 143
    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v1}, Lcom/yelp/android/cl/c;->clear()V

    .line 149
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v1, p1}, Lcom/yelp/android/cl/c;->a(Ljava/util/Collection;)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v1, p1}, Lcom/yelp/android/cl/c;->d(Ljava/util/Collection;)V

    .line 155
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v1, p1, v0}, Lcom/yelp/android/cl/c;->a(Ljava/util/Collection;I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Z)Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b$2;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_BOTTOM:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    .line 81
    :pswitch_1
    if-eqz p2, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->NO_NEW_CONTENT:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_TOP:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->b:Z

    return v0
.end method

.method public b()Lcom/yelp/android/cl/c;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->h()V

    .line 52
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->Default:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/cl/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->b()Lcom/yelp/android/serializable/ConversationMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->c()Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->NewerThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a:Lcom/yelp/android/cl/c;

    invoke-virtual {v1}, Lcom/yelp/android/cl/c;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cl/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    .line 69
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->b()Lcom/yelp/android/serializable/ConversationMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->c()Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
