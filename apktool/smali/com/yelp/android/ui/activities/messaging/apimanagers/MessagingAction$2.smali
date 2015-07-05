.class final enum Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$2;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;
.source "MessagingAction.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;-><init>(Ljava/lang/String;ILcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction$1;)V

    return-void
.end method


# virtual methods
.method public getErrorMessage(Landroid/content/Context;Lcom/yelp/android/serializable/bg;Lcom/yelp/android/appdata/webrequests/YelpException;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f070629

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
