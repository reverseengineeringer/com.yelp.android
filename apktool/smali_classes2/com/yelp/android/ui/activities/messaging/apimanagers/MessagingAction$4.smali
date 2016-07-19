.class final enum Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$4;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;
.source "MessagingAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$1;)V

    return-void
.end method


# virtual methods
.method public getErrorMessage(Landroid/content/Context;Lcom/yelp/android/serializable/e;Lcom/yelp/android/appdata/webrequests/YelpException;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f07061b

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 72
    if-eqz p4, :cond_0

    .line 73
    new-array v0, v0, [Ljava/lang/Object;

    check-cast p2, Lcom/yelp/android/serializable/BusinessUser;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessUser;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/yelp/android/serializable/e;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSuccessMessage(Landroid/content/Context;Lcom/yelp/android/serializable/e;Z)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 58
    if-eqz p3, :cond_0

    .line 59
    const v0, 0x7f0705d4

    new-array v1, v1, [Ljava/lang/Object;

    check-cast p2, Lcom/yelp/android/serializable/BusinessUser;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessUser;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f07061c

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/yelp/android/serializable/e;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
