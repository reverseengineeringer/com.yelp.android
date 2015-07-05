.class Lcom/yelp/android/ui/activities/events/ae;
.super Ljava/lang/Object;
.source "EventRequestFragment.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/yelp/android/appdata/webrequests/YelpException;

.field private final c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/ae;->a:Ljava/lang/Object;

    .line 191
    iput-object p2, p0, Lcom/yelp/android/ui/activities/events/ae;->b:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 192
    iput-object p3, p0, Lcom/yelp/android/ui/activities/events/ae;->c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    .line 193
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/events/EventFragment;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ae;->b:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ae;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ae;->c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ae;->b:Lcom/yelp/android/appdata/webrequests/YelpException;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ae;->c:Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/ui/activities/events/EventRequestFragment$RequestType;)V

    goto :goto_0
.end method
