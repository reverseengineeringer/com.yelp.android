.class public Lcom/yelp/android/ui/activities/messaging/apimanagers/e;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager;
.source "ApiMessagesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/messaging/apimanagers/e$3;
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/cl/b;

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/m$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/messaging/apimanagers/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/c;)V

    .line 27
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$1;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 73
    new-instance v0, Lcom/yelp/android/cl/b;

    invoke-direct {v0, p1}, Lcom/yelp/android/cl/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    .line 74
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b:Z

    .line 75
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->c:Z

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;)V

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

    .line 194
    sget-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    if-ne p2, v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/cl/b;->c(Ljava/util/List;)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    invoke-virtual {v0}, Lcom/yelp/android/cl/b;->notifyDataSetChanged()V

    .line 222
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->NewerThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    if-eq p2, v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->c:Z

    .line 237
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cl/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v1, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-direct {v1}, Lcom/yelp/android/serializable/ConversationMessage;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    invoke-virtual {v1, v0}, Lcom/yelp/android/cl/b;->c(Ljava/util/List;)V

    .line 242
    :cond_1
    return-void

    .line 200
    :cond_2
    invoke-virtual {p0, p1, p2, v2}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    invoke-virtual {v0}, Lcom/yelp/android/cl/b;->clear()V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/cl/b;->c(Ljava/util/List;)V

    goto :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/cl/b;->d(Ljava/util/Collection;)V

    .line 207
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/cl/b;->a(Ljava/util/Collection;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 222
    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;)Lcom/yelp/android/cl/b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 87
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    .line 91
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/b;

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$2;-><init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/e;)V

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/messaging/b;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 120
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yelp/android/cl/b;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    return-object v0
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Z)Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e$3;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 189
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    :goto_0
    return-object v0

    .line 183
    :pswitch_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_TOP:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    .line 185
    :pswitch_1
    if-eqz p2, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->NO_NEW_CONTENT:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_BOTTOM:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    goto :goto_0

    .line 181
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
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/cl/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->c()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/yelp/android/appdata/webrequests/messaging/m;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->h()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->OlderThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/yelp/android/appdata/webrequests/messaging/m;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 133
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->h()V

    .line 160
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b:Z

    .line 161
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b(Ljava/lang/String;)Z

    .line 162
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Conversation;)V
    .locals 5

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    invoke-virtual {v0}, Lcom/yelp/android/cl/b;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a()Lcom/yelp/android/cl/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a:Lcom/yelp/android/cl/b;

    invoke-virtual {v1}, Lcom/yelp/android/cl/b;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/cl/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ConversationMessage;

    .line 140
    new-instance v1, Lcom/yelp/android/appdata/webrequests/messaging/m;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->h()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;->NewerThan:Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ConversationMessage;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/yelp/android/appdata/webrequests/messaging/m;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b:Z

    return v0
.end method
