.class public Lcom/yelp/android/ui/activities/events/EventRequestFragment;
.super Landroid/support/v4/app/Fragment;
.source "EventRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;,
        Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/activities/events/EventFragment;

.field private c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

.field private d:Lcom/yelp/android/appdata/webrequests/bi;

.field private e:Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

.field private final f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/EventAttendees;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/EventRsvp;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final l:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/EventRsvp;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
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

    .line 203
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$1;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 219
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$2;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 247
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$3;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 263
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$4;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->i:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 278
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$5;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 291
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$6;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->k:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 306
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$7;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 321
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$8;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->m:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 336
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$9;-><init>(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/appdata/webrequests/bi;)Lcom/yelp/android/appdata/webrequests/bi;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bi;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;)Lcom/yelp/android/ui/activities/events/EventFragment;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/events/EventRequestFragment;Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;)Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->e:Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    return-object p1
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "**>;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;-><init>(Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    .line 180
    :goto_0
    return-void

    .line 178
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
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;-><init>(Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    .line 172
    :goto_0
    return-void

    .line 170
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
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bi;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bi;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bi;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bi;->a(Z)V

    .line 106
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bi;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/bi;-><init>(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bi;

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/bi;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bi;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 108
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
    .line 141
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ew;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->m:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/ew;-><init>(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 143
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 144
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
    .line 135
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bo;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/yelp/android/appdata/webrequests/bo;-><init>(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 137
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 138
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bl;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->i:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/bl;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 114
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;)V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bp;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/bp;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 80
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bq;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/bq;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/Event$SubscriptionStatus;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 131
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 132
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bm;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/bm;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 125
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 126
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

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
    .line 147
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->l:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/bj;-><init>(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 149
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 150
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bk;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->k:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/bk;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 119
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 120
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
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    .line 64
    iput-object v2, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->e:Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->e:Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    .line 68
    iput-object v2, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->e:Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;

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
