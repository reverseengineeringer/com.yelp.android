.class public Lcom/yelp/android/ui/activities/messaging/apimanagers/f;
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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    .line 14
    iput-object p2, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;->b:Ljava/lang/Object;

    .line 15
    iput-object p3, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;->c:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;)V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;->c:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;)V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;->a:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/apimanagers/f;->c:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method
