.class Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;
.super Ljava/lang/Object;
.source "EventRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/events/EventRequestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/yelp/android/appdata/webrequests/YelpException;

.field private final c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;->a:Ljava/lang/Object;

    .line 190
    iput-object p2, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;->b:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 191
    iput-object p3, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;->c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    .line 192
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/events/EventFragment;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;->b:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;->c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;->b:Lcom/yelp/android/appdata/webrequests/YelpException;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventRequestFragment$a;->c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    goto :goto_0
.end method
