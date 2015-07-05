.class public Lcom/yelp/android/ui/activities/messaging/apimanagers/d;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager;
.source "ApiConversationsManager.java"


# instance fields
.field private final a:Lcom/yelp/android/bb/h;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/yelp/android/ui/activities/messaging/apimanagers/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;",
            "Lcom/yelp/android/ui/activities/messaging/apimanagers/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/g;)V

    .line 26
    new-instance v0, Lcom/yelp/android/bb/h;

    invoke-direct {v0, p1}, Lcom/yelp/android/bb/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->b:Z

    .line 28
    if-eqz p2, :cond_0

    .line 29
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a(Ljava/util/List;)V

    .line 31
    :cond_0
    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/f;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/d;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/messaging/f;-><init>(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/apimanagers/d;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V

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
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0}, Lcom/yelp/android/bb/h;->clear()V

    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/bb/h;->a(Ljava/util/Collection;)V

    .line 36
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

    .line 124
    sget-object v1, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    if-ne p2, v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v1, p1}, Lcom/yelp/android/bb/h;->a(Ljava/util/Collection;)V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v1}, Lcom/yelp/android/bb/h;->notifyDataSetChanged()V

    .line 152
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->b:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->NewerThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    if-eq p2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->b:Z

    .line 154
    return-void

    .line 127
    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v1}, Lcom/yelp/android/bb/h;->clear()V

    .line 133
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v1, p1}, Lcom/yelp/android/bb/h;->a(Ljava/util/Collection;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v1, p1}, Lcom/yelp/android/bb/h;->d(Ljava/util/Collection;)V

    .line 139
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v1, p1, v0}, Lcom/yelp/android/bb/h;->a(Ljava/util/Collection;I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Z)Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_BOTTOM:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    .line 79
    :pswitch_1
    if-eqz p2, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->NO_NEW_CONTENT:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_TOP:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    .line 75
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
    .line 39
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->b:Z

    return v0
.end method

.method public b()Lcom/yelp/android/bb/h;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    return-object v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->h()V

    .line 50
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->Default:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0}, Lcom/yelp/android/bb/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/bb/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getLatestMessage()Lcom/yelp/android/serializable/ConversationMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->NewerThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v0}, Lcom/yelp/android/bb/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a:Lcom/yelp/android/bb/h;

    invoke-virtual {v1}, Lcom/yelp/android/bb/h;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/bb/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Conversation;

    .line 67
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->getLatestMessage()Lcom/yelp/android/serializable/ConversationMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method
