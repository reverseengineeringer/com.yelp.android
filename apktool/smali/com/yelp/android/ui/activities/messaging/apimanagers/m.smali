.class public Lcom/yelp/android/ui/activities/messaging/apimanagers/m;
.super Ljava/lang/Object;
.source "ApiMessagingActionSavedResult.java"


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/yelp/android/appdata/webrequests/YelpException;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 13
    iput-object p2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;->b:Ljava/lang/Object;

    .line 14
    iput-object p3, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;->c:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/p;)V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;->c:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;)V

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/m;->c:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method
