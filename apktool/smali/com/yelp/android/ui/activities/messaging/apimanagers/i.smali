.class public Lcom/yelp/android/ui/activities/messaging/apimanagers/i;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager;
.source "ApiMessagesManager.java"


# instance fields
.field private final a:Lcom/yelp/android/bb/d;

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/messaging/apimanagers/g;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/g;)V

    .line 27
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/j;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->e:Lcom/yelp/android/appdata/webrequests/m;

    .line 63
    new-instance v0, Lcom/yelp/android/bb/d;

    invoke-direct {v0, p1}, Lcom/yelp/android/bb/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    .line 64
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b:Z

    .line 65
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->c:Z

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;)Lcom/yelp/android/appdata/webrequests/m;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->e:Lcom/yelp/android/appdata/webrequests/m;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ConversationMessage;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 172
    sget-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    if-ne p2, v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/bb/d;->c(Ljava/util/List;)V

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    invoke-virtual {v0}, Lcom/yelp/android/bb/d;->notifyDataSetChanged()V

    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->NewerThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    if-eq p2, v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->c:Z

    .line 215
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    invoke-virtual {v0, v1}, Lcom/yelp/android/bb/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    new-instance v1, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-direct {v1}, Lcom/yelp/android/serializable/ConversationMessage;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    invoke-virtual {v1, v0}, Lcom/yelp/android/bb/d;->c(Ljava/util/List;)V

    .line 220
    :cond_1
    return-void

    .line 178
    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    invoke-virtual {v0}, Lcom/yelp/android/bb/d;->clear()V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/bb/d;->c(Ljava/util/List;)V

    goto :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/bb/d;->d(Ljava/util/Collection;)V

    .line 186
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/bb/d;->a(Ljava/util/Collection;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 201
    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;)Lcom/yelp/android/bb/d;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 77
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 81
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/b;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/k;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/k;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/i;)V

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/messaging/b;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 106
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yelp/android/bb/d;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    return-object v0
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Z)Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;
    .locals 2

    .prologue
    .line 159
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/l;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    :goto_0
    return-object v0

    .line 161
    :pswitch_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_TOP:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    .line 163
    :pswitch_1
    if-eqz p2, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->NO_NEW_CONTENT:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_BOTTOM:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/yelp/android/serializable/Conversation;)V
    .locals 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/bb/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/yelp/android/appdata/webrequests/messaging/l;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->e:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/yelp/android/appdata/webrequests/messaging/l;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 114
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->h()V

    .line 138
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b:Z

    .line 139
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b(Ljava/lang/String;)Z

    .line 140
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;)V
    .locals 5

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    invoke-virtual {v0}, Lcom/yelp/android/bb/d;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a()Lcom/yelp/android/bb/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a:Lcom/yelp/android/bb/d;

    invoke-virtual {v1}, Lcom/yelp/android/bb/d;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/bb/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ConversationMessage;

    .line 122
    new-instance v1, Lcom/yelp/android/appdata/webrequests/messaging/l;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->NewerThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->e:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/yelp/android/appdata/webrequests/messaging/l;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b:Z

    return v0
.end method
