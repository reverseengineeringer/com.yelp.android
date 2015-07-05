.class public Lcom/yelp/android/ui/activities/events/EventRequestFragment;
.super Landroid/support/v4/app/Fragment;
.source "EventRequestFragment.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/activities/events/EventFragment;

.field private c:Lcom/yelp/android/ui/activities/events/ae;

.field private d:Lcom/yelp/android/appdata/webrequests/bp;

.field private e:Lcom/yelp/android/ui/activities/events/ae;

.field private final f:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/EventAttendees;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/yelp/android/av/i;

.field private final j:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/EventRsvp;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/yelp/android/av/i;

.field private final l:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/EventRsvp;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/yelp/android/av/i;

.field private final n:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 204
    new-instance v0, Lcom/yelp/android/ui/activities/events/v;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/v;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->f:Lcom/yelp/android/appdata/webrequests/m;

    .line 220
    new-instance v0, Lcom/yelp/android/ui/activities/events/w;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/w;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->g:Lcom/yelp/android/appdata/webrequests/m;

    .line 245
    new-instance v0, Lcom/yelp/android/ui/activities/events/x;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/x;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->h:Lcom/yelp/android/appdata/webrequests/m;

    .line 260
    new-instance v0, Lcom/yelp/android/ui/activities/events/y;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/y;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->i:Lcom/yelp/android/av/i;

    .line 274
    new-instance v0, Lcom/yelp/android/ui/activities/events/z;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/z;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->j:Lcom/yelp/android/appdata/webrequests/m;

    .line 287
    new-instance v0, Lcom/yelp/android/ui/activities/events/aa;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/aa;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->k:Lcom/yelp/android/av/i;

    .line 301
    new-instance v0, Lcom/yelp/android/ui/activities/events/ab;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/ab;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->l:Lcom/yelp/android/appdata/webrequests/m;

    .line 316
    new-instance v0, Lcom/yelp/android/ui/activities/events/ac;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/ac;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->m:Lcom/yelp/android/av/i;

    .line 330
    new-instance v0, Lcom/yelp/android/ui/activities/events/ad;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/ad;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->n:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/bp;)Lcom/yelp/android/appdata/webrequests/bp;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bp;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/ui/activities/events/ae;)Lcom/yelp/android/ui/activities/events/ae;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->e:Lcom/yelp/android/ui/activities/events/ae;

    return-object p1
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/yelp/android/ui/activities/events/ae;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/yelp/android/ui/activities/events/ae;-><init>(Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->c:Lcom/yelp/android/ui/activities/events/ae;

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Ljava/lang/Object;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/yelp/android/ui/activities/events/ae;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/ui/activities/events/ae;-><init>(Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->c:Lcom/yelp/android/ui/activities/events/ae;

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Event;)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bp;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bp;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bp;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bp;->cancel(Z)V

    .line 106
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bp;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->g:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/bp;-><init>(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bp;

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bp;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bp;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 109
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Event;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gf;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->m:Lcom/yelp/android/av/i;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/gf;-><init>(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 144
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 145
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Event;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bv;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->j:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/yelp/android/appdata/webrequests/bv;-><init>(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 138
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 139
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bs;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->i:Lcom/yelp/android/av/i;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/bs;-><init>(Ljava/lang/String;Lcom/yelp/android/av/i;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 115
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;)V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bw;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->f:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/bw;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;Lcom/yelp/android/appdata/webrequests/m;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 80
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bx;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->h:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/bx;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/Event$SubscriptionStatus;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 132
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 133
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bt;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->n:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/bt;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 126
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 127
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/serializable/Event;)V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bq;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->l:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/bq;-><init>(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 150
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 151
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/yelp/android/appdata/webrequests/br;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->k:Lcom/yelp/android/av/i;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/br;-><init>(Ljava/lang/String;Lcom/yelp/android/av/i;)V

    .line 120
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 121
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/EventFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->c:Lcom/yelp/android/ui/activities/events/ae;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->c:Lcom/yelp/android/ui/activities/events/ae;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/ae;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    .line 64
    iput-object v2, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->c:Lcom/yelp/android/ui/activities/events/ae;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->e:Lcom/yelp/android/ui/activities/events/ae;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->e:Lcom/yelp/android/ui/activities/events/ae;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/ae;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    .line 68
    iput-object v2, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->e:Lcom/yelp/android/ui/activities/events/ae;

    .line 70
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->setRetainInstance(Z)V

    .line 56
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    .line 76
    return-void
.end method
